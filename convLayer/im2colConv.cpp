#include "im2colConv.h"
#include "../utility/common.h"
#include "../utility/fast_division.h"
#include <dirent.h>
#include <sys/types.h>
#include <sys/stat.h> 
#include <vector>
#include <omp.h>
#include "fj_tool/fapp.h"	// profiler header

#ifdef __ARM_FEATURE_SVE
#include <arm_sve.h>
#endif /* __ARM_FEATURE_SVE */


struct RegisterKernel {
    int row_batch;
    int col_batch;

    RegisterKernel() {}
    RegisterKernel(int row, int col) : row_batch(row), col_batch(col) {}
};

void fill_test_data(float* input, int M, int N) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            input[i*N + j] = 256 *rand() / double(RAND_MAX);
        }
    }
}

ConvIm2colLayer::ConvIm2colLayer(float *input, float *kernel, float *biasw, float *output_ref,
                size_t ic, size_t ih, size_t iw, size_t oc,
                size_t kh, size_t kw, size_t sh, size_t sw, 
                size_t pad_left, size_t pad_right, size_t pad_top, size_t pad_bottom,
                size_t g, bool bias, size_t nt, size_t iter,
                int mc, int nc, int kc, int gemm_version, int row_batch, int col_batch,
                int pack_c_version, int mt_pack_b_version, int prefetch_a, int prefetch_b, int prefetch_c)
                : ConvLayer(input, kernel, biasw, output_ref, ic, ih, iw, oc, kh, kw, sh, sw, pad_left, pad_right, pad_top, pad_bottom, g, bias, nt, iter),
                mc(mc), nc(nc), kc(kc), row_batch(row_batch), col_batch(col_batch),
                pack_c_version(pack_c_version), mt_pack_b_version(mt_pack_b_version), prefetch_a(prefetch_a), prefetch_b(prefetch_b), prefetch_c(prefetch_c) {
    
   	this->M = output_channels;
   	this->N = output_height * output_width;
   	this->K = input_channels * kernel_height * kernel_width;
    // this->kernel_data = static_cast<float*>(realloc(this->kernel_data, sizeof(float) * M * K));
    // this->transform_input_data = static_cast<float*>(malloc(sizeof(float) * output_height * output_width * input_channels * kernel_height * kernel_width));
    // this->output_data = static_cast<float*>(realloc(this->output_data ,sizeof(float) * (output_height * output_width * output_channels + 128))); 
    // memset(output_data, 0, sizeof(float) * (output_height * output_width * output_channels + 128));

    // indicate M N K directly
    // this->M = 1536; this->N = 1536; this->K = 1536;
//    this->kernel_data = static_cast<float*>(realloc(this->kernel_data, sizeof(float) * M * K));
//    this->transform_input_data = static_cast<float*>(malloc(sizeof(float) * N * K));
//    this->output_data = static_cast<float*>(realloc(this->output_data, sizeof(float) * (M * N + 128))); 	
	float *tmp = static_cast<float*>(malloc(sizeof(float) * M * K));
	memcpy(tmp, this->kernel_data, sizeof(float) * M * K);

    free(this->kernel_data);
    free(this->output_data);

    int padding_input_size = (input_width  + padding_left + padding_right) 
                            * (input_height + padding_top  + padding_bottom);

    this->kernel_data = static_cast<float*>(_mm_malloc(sizeof(float) * M * K, 256));
    this->transform_input_data = static_cast<float*>(_mm_malloc(sizeof(float) * N * K, 256));
    this->padding_input_data = static_cast<float*>(_mm_malloc(sizeof(float) * padding_input_size * input_channels, 256));
    this->output_data = static_cast<float*>(_mm_malloc(sizeof(float) * (M * N + 128), 256)); 	

    memcpy(kernel_data, tmp, sizeof(float) * M * K);
    memset(padding_input_data, 0, sizeof(float) * padding_input_size * input_channels);
    memset(output_data, 0, sizeof(float) * (M * N + 128));

	fill_test_data(kernel_data, M, K);
    fill_test_data(transform_input_data, K, N);

    output_data_ref = new float[M * N + 32];
    memset(output_data_ref, 0, sizeof(float) * (M * N + 32));
    GEMM(kernel_data, transform_input_data, output_data_ref);

	free(tmp);

    if (this->num_threads > 1) {
        this->gemm_version = GEMM_BLOCKS_MULTI_THREADS;
    } else {
        if (M <= 32 && N <= 32 && K <= 32)
            this->gemm_version = GEMM_NO_BLOCKS;
        else
            // this->gemm_version = GEMM_BLOCKS_SINGLE_THREAD;
        	this->gemm_version = GEMM_BLOCKS_MULTI_THREADS;
    }
}

ConvIm2colLayer::~ConvIm2colLayer() {
    free(this->transform_input_data);
    free(this->padding_input_data);
	delete [] output_data_ref;
}

void ConvIm2colLayer::select_tuning_range_for_mnk(size_t &l1_bound, size_t &l2_bound,
                                                  int &mc_begin, int &mc_end, int &mc_step, 
                                                  int &nc_begin, int &nc_end, int &nc_step, 
                                                  int &kc_begin, int &kc_end, int &kc_step) {
    
    int max_tuning_num = 1024;
    int N_range = N;
    int K_range = K / this->num_nodes;

	if (this->num_threads == 8) {
		N_range = N / 4;	
	}

    // int mc_num = ((M < 128 ? M : 128) - 1) / row_batch + 1;
    int mc_num = (M - 1) / row_batch + 1;
    int nc_num = (N_range - 1) / col_batch + 1;
    int kc_num = (K_range < 8 ? K : 8);

    if(mc_num * nc_num > max_tuning_num)	{
        //OC will be divided at most 64 parts.
        if(mc_num >= 64)
            mc_num = 64;	
        //All the others will be used on tile
        if(nc_num > max_tuning_num / mc_num)  
            nc_num = max_tuning_num / mc_num; 
    }

    int M_step = (M - 1) / (row_batch * mc_num) + 1;
    int N_step = (N_range - 1) / (col_batch * nc_num) + 1;
    int K_step = (K_range - 1) / kc_num + 1;

    mc_step = M_step * row_batch;
    nc_step = N_step * col_batch;
    kc_step = K_step;

    mc_begin = M_step * row_batch;
    mc_end   = M_step * row_batch * mc_num;

    nc_begin = N_step * col_batch;
    nc_end   = N_step * col_batch * nc_num;

    kc_begin = K_step;
    kc_end   = K_step * kc_num;

    // mc_begin = 8;
    // mc_end   = 32 - 1;
    // mc_step  = 24;
    
    // kc_step  = this->col_batch;
    // kc_end   = ((size_t)(this->K * mc_begin) < l1_bound 
    //                 ? align_ceil(this->K, kc_step) 
    //                 : align_ceil(l1_bound/(size_t)mc_begin, kc_step));
    // kc_begin = align_ceil(kc_end/8, kc_step);

    // nc_step  = this->col_batch;
    // nc_end   = (this->N < 1024 ? align_ceil(this->N, this->col_batch) : 1024);
    // nc_begin = align_ceil(nc_end/8, nc_step);
    
}

void ConvIm2colLayer::select_tuning_range_for_pack(int &pc_begin, int &pc_end, int &pc_step,
                                                   int &pb_begin, int &pb_end, int &pb_step) {
    pb_begin = 0;
    pb_step  = 1;
    pb_end   = 1 - 1;
    // if (gemm_version == GEMM_BLOCKS_MULTI_THREADS)
    //     pb_end = 2;
    
    pc_begin = 0;
    pc_step  = 1;
    pc_end   = 1 - 1;
}

void ConvIm2colLayer::select_tuning_range_for_prefetch(int &pre_a_begin, int &pre_a_end, int &pre_a_step,
                                                       int &pre_b_begin, int &pre_b_end, int &pre_b_step,
                                                       int &pre_c_begin, int &pre_c_end, int &pre_c_step) {
    pre_a_begin = 256;
    pre_a_step  = 256;
    pre_a_end   = 512 - 1;

    pre_b_begin = 256;
    pre_b_step  = 256;
    pre_b_end   = 512 - 1;

    pre_c_begin = 0;
    pre_c_step  = 256;
    pre_c_end   = 256 - 1;
}

bool ConvIm2colLayer::search_log_file_and_entry(const char *log_path) {
    bool is_log_entry_exist = false;
    FILE *log_file = fopen(log_path, "a+");
    fseek(log_file, 0, SEEK_SET);
    int M, N, K, mc, nc, kc, row_batch, col_batch, gemm_version, pc_version, pb_version, pre_a, pre_b, pre_c, num_thrd;
    if (log_file != nullptr) {
        while (fscanf(log_file, "%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d", 
                    &M, &N, &K, &mc, &nc, &kc, &row_batch, &col_batch, &gemm_version, &pc_version, &pb_version, &pre_a, &pre_b, &pre_c, &num_thrd) != EOF) {
	    if (M == this->M && N == this->N && K == this->K && gemm_version == this->gemm_version && num_thrd == this->num_threads) {
                is_log_entry_exist = true;
                this->mc = mc;
                this->nc = nc; 
                this->kc = kc;
                this->row_batch = row_batch;
                this->col_batch = col_batch;
                this->pack_c_version = pc_version; 
                this->mt_pack_b_version = pb_version;
                this->prefetch_a = pre_a;
                this->prefetch_b = pre_b;
                this->prefetch_c = pre_c;
                break;
            }
        }
    }
    fclose(log_file);
    return is_log_entry_exist;
}

void ConvIm2colLayer::search_best_param(int &best_mc, int &best_nc, int &best_kc, int &best_rb, int &best_cb,
                                        int &best_pc, int &best_pb, int &best_pre_a, int &best_pre_b, int &best_pre_c) {
    size_t l1_cache_size_per_core = 65536;
    size_t l2_cache_size_per_core = 524288;
    get_cache_info(l1_cache_size_per_core, l2_cache_size_per_core);
    size_t l1_bound = l1_cache_size_per_core / 2 / sizeof(float);
    size_t l2_bound = l2_cache_size_per_core / 2 / sizeof(float);
    printf("l1cache:%ubytes\n",(size_t)l1_cache_size_per_core);
    printf("l2cache:%ubytes\n",(size_t)l2_cache_size_per_core);

    Timer timer;
    int n_loop = 1;
    double elapsed_time;
    double best_time = static_cast<double>(INT64_MAX);
    RegisterKernel best_kernel;

    std::vector<RegisterKernel> kernels;
    // kernels.push_back(RegisterKernel(8, 8));
    // kernels.push_back(RegisterKernel(8, 12));
    // kernels.push_back(RegisterKernel(4, 16));
    // kernels.push_back(RegisterKernel(4, 64));
    // kernels.push_back(RegisterKernel(14, 32));
    // kernels.push_back(RegisterKernel(10, 32));
    // kernels.push_back(RegisterKernel(8, 32));
    // kernels.push_back(RegisterKernel(8, 48));
    kernels.push_back(RegisterKernel(12, 32));
    int mc_begin, mc_end, mc_step, nc_begin, nc_end, nc_step, kc_begin, kc_end, kc_step;
    int pc_begin, pc_end, pc_step, pb_begin, pb_end, pb_step;
    int pre_a_begin, pre_a_end, pre_a_step, pre_b_begin, pre_b_end, pre_b_step, pre_c_begin, pre_c_end, pre_c_step;

    printf("tuning begin...\n");
    printf("M=%d, N=%d, K=%d\n", this->M, this->N, this->K);
    
    for (std::vector<RegisterKernel>::iterator it = kernels.begin(); it != kernels.end(); it++) {
        this->row_batch = it->row_batch;
        this->col_batch = it->col_batch;
        select_tuning_range_for_mnk(l1_cache_size_per_core, l2_cache_size_per_core, mc_begin, mc_end, mc_step, nc_begin, nc_end, nc_step, kc_begin, kc_end, kc_step);
        select_tuning_range_for_pack(pc_begin, pc_end, pc_step, pb_begin, pb_end, pb_step);
        select_tuning_range_for_prefetch(pre_a_begin, pre_a_end, pre_a_step, pre_b_begin, pre_b_end, pre_b_step, pre_c_begin, pre_c_end, pre_c_step);

        size_t cur_round = 0;
        size_t total_round = ((size_t)((mc_end - mc_begin) / mc_step + 1) 
                            * (size_t)((nc_end - nc_begin) / nc_step + 1) 
                            * (size_t)((kc_end - kc_begin) / kc_step + 1));

        printf("mc_begin=%d, mc_end=%d, mc_num=%u\n", mc_begin, mc_end, (size_t)((mc_end - mc_begin) / mc_step + 1));
        printf("nc_begin=%d, nc_end=%d, nc_num=%u\n", nc_begin, nc_end, (size_t)((nc_end - nc_begin) / nc_step + 1));
        printf("kc_begin=%d, kc_end=%d, kc_num=%u\n", kc_begin, kc_end, (size_t)((kc_end - kc_begin) / kc_step + 1));

        printf("This register kernel is %d x %d\n", this->row_batch, this->col_batch);
        printf("==============================\n");
        printf("cur/total round of this kernel: %d/%lld\n", 1, total_round);

        for (int m = mc_begin; m <= mc_end; m += mc_step) {
            for (int n = nc_begin; n <= nc_end; n += nc_step) {
                for (int k = kc_begin; k <= kc_end; k += kc_step) {
//                    if ((size_t)(m * k) > l1_bound || (size_t)(k * n) > l2_bound) {
//                        cur_round += (kc_end - k) / kc_step + 1;
//                        break;
//                    }
					if (n > this->N)
						break;
                    cur_round++;
		    if (cur_round == total_round) {
                        printf("==============================\n");
                        printf("cur/total round of this kernel: %d/%lld\n", cur_round, total_round);
                        printf("best time: %fms\n", best_time);
		    } else if (cur_round % 50 == 0) {
                        printf("==============================\n");
                        printf("cur/total round of this kernel: %d/%lld\n", cur_round, total_round);
                        printf("best time: %fms\n", best_time);
                    }
                    for (int pc_version = pc_begin; pc_version <= pc_end; pc_version += pc_step) {
                        for (int pb_version = pb_begin; pb_version <= pb_end; pb_version += pb_step) {
                            for (int pre_a = pre_a_begin; pre_a <= pre_a_end; pre_a += pre_a_step) {
                                for (int pre_b = pre_b_begin; pre_b <= pre_b_end; pre_b += pre_b_step) {
                                    for (int pre_c = pre_c_begin; pre_c <= pre_c_end; pre_c += pre_b_step) {
                                        this->mc = m; 
                                        this->nc = n; 
                                        this->kc = k;
										printf("mc = %d, nc = %d, kc = %d\n", this->mc, this->nc, this->kc);
                                        this->pack_c_version = pc_version; 
                                        this->mt_pack_b_version = pb_version;
                                        this->prefetch_a = pre_a;
                                        this->prefetch_b = pre_b;
                                        this->prefetch_c = pre_c;
                                        
                                        this->Init();
                                        int warmup_loop = 5;
                                        for (int i = 0; i < warmup_loop; i++) {
                                            // this->im2col_v1();
    										// this->padding_input();
                                            this->sgemm();
                                        }

                                        timer.startBench();
                                        for (int i = 0; i < n_loop; i++) 
                                            this->Forward();
                                        elapsed_time = timer.endBench(n_loop);

                                        // this->Init();
                                        // timer.startBench();
                                        // for (int i = 0; i < n_loop; i++) 
                                        //     this->Forward();
                                        // elapsed_time = timer.endBench(n_loop);
                                        if (elapsed_time < best_time) {
                                            best_time = elapsed_time;
                                            printf("update best time: %fms\n", best_time);
                                            best_mc = m;
                                            best_nc = n;
                                            best_kc = k;
                                            best_rb = it->row_batch;
                                            best_cb = it->col_batch;
                                            best_pc = pc_version;
                                            best_pb = pb_version;
                                            best_pre_a = pre_a;
                                            best_pre_b = pre_b;
                                            best_pre_c = pre_c;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

void ConvIm2colLayer::write_best_param(const char *log_path, int &best_mc, int &best_nc, int &best_kc, int &best_rb, int &best_cb, 
                                       int &best_pc, int &best_pb, int &best_pre_a, int &best_pre_b, int &best_pre_c) {
    FILE *log_file = fopen(log_path, "a+");
    this->mc = best_mc;
    this->nc = best_nc;
    this->kc = best_kc;
    this->row_batch = best_rb;
    this->col_batch = best_cb;
    this->pack_c_version = best_pc;
    this->mt_pack_b_version = best_pb;
    this->prefetch_a = best_pre_a;
    this->prefetch_b = best_pre_b;
    this->prefetch_c = best_pre_c;
    if (log_file != nullptr)
    	fprintf(log_file, "%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d\n", 
                this->M, this->N, this->K, best_mc, best_nc, best_kc, best_rb, best_cb, 
                this->gemm_version, best_pc, best_pb, best_pre_a, best_pre_b, best_pre_c, this->num_threads);
    else 
	    printf("write best param error.\n");
    fclose(log_file);
}

int ConvIm2colLayer::Init() {
    printf("Algorithm: im2col\n");
    this->set_pack_a();
    this->set_pack_b();
    this->set_pack_c();
    this->set_unpack_c();
    this->set_inner_kernel();
    this->set_inner_kernel_for_corner(this->M % row_batch);
    if (gemm_version == GEMM_BLOCKS_MULTI_THREADS) {
        this->set_pack_a_mt();
        this->set_pack_b_mt();
    }
    return 1;
}

void printf_matrix(float* res, int M, int N) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            printf("%.4f ", res[i * N + j]);
        }
        printf("\n");
    }
}

int ConvIm2colLayer::Forward() {
    Timer im2col_profiler;
    Timer gemm_profiler;
    Timer total;

    int warmup_loop = 5;
    for (int i = 0; i < warmup_loop; i++) {
        // this->im2col_v1();
    	// this->padding_input();
        this->sgemm();
    }


    memset(output_data, 0, sizeof(float) * (M * N + 32));

    for (int i = 0; i < iterations; i++) {
        total.startBench();
        im2col_profiler.startBench();
        // this->im2col_v1();
    	// this->padding_input();
        im2col_profiler.accumBench();

        gemm_profiler.startBench();
        this->sgemm();
        gemm_profiler.accumBench();
        total.accumBench();
    }

    im2col_profiler.printBench("Im2colTran time:", iterations);
    gemm_profiler.printBench("Gemm time:", iterations);
    total.printBench("Total time:", iterations);

    double gflops = (2.0 * this->M * this->N * this->K) / 1000000.0 / total.getBench(iterations);
    double efficiency = gflops / 128.0 * 100.0;
    // printf("M = %d, N = %d, K = %d\n", this->M, this->N, this->K);
    printf("Efficency: %lf \%, GFlops: %lf \n", efficiency, gflops);

    if (output_data_ref != NULL)
       float dis = diff(output_data_ref, output_data, this->M, this->N);
    // printf("c[0] = %f, c[1] = %f, c[2] = %f\n", output_data[0], output_data[1], output_data[2]);
    // printf("c_data_ref[0] = %f, c_data_ref[1] = %f, c_data_ref[2] = %f\n", output_data_ref[0], output_data_ref[1], output_data_ref[2]);

//    printf_matrix(output_data, M, N);
//    printf("---------------\n");
//    printf_matrix(output_data_ref, M, N);


    // if (output_ref != NULL)
    //    float dis = diff(output_ref, output_data, output_channels *  output_height * output_width);
    

    return 1;
}

int ConvIm2colLayer::Tuning() {
    const char *log_path;
    bool is_log_entry_exist = false;
    if(opendir("./gemm_log") == nullptr)
        mkdir("./gemm_log", 0775);
#ifdef __APPLE__
    log_path = "./gemm_log/mac_tuning_log";
#else
    log_path = "./gemm_log/linux_tuning_log";
#endif

    is_log_entry_exist = search_log_file_and_entry(log_path);
    if (is_log_entry_exist) {   // the entry exists
        printf("log entry exists.\n");
	return 1;
    } else {     // the entry dosen't exist
        printf("log entry doesn't exist.\n");
        int best_mc, best_nc, best_kc, best_rb, best_cb, best_pc, best_pb, best_pre_a, best_pre_b, best_pre_c;
        this->search_best_param(best_mc, best_nc, best_kc, best_rb, best_cb, best_pc, best_pb, best_pre_a, best_pre_b, best_pre_c);
        this->write_best_param(log_path, best_mc, best_nc, best_kc, best_rb, best_cb, best_pc, best_pb, best_pre_a, best_pre_b, best_pre_c);
    }
    return 1;
}

void ConvIm2colLayer::im2col() {
    int stride = output_height * output_width * kernel_height * kernel_width;
    float* ret = transform_input_data;
    for (int ic = 0; ic < input_channels; ic++) {
        int ret_idx = ic * stride;
        for (int u = 0; u < kernel_height; u++) {
            for (int v = 0; v < kernel_width; v++) {
                for (int i = 0; i < output_height; i++) {
                    for (int j = 0; j < output_width; j++) {
                        int row = u - padding_top + i * stride_height;
                        int col = v - padding_left + j * stride_width;
                        if (row < 0 || row >= input_height || col < 0 || col >= input_width) {
                            ret[ret_idx] = 0;
                        }
                        else {
                            int idx = ic * input_height * input_width + row * input_width + col;
                            ret[ret_idx] = input_data[idx];
                        }
                        ++ret_idx;
                    }
                }
            }
        }
    }
}

void ConvIm2colLayer::im2col_v1() {
    int padding_input_width  = input_width  + padding_left + padding_right;
    int padding_input_height = input_height + padding_top  + padding_bottom;
    int padding_input_size   = padding_input_height * padding_input_width;
    int input_size = input_height * input_width;
	int v_len = svcntw();
	svbool_t pg = svptrue_b32();

    // float* padding_input_data = static_cast<float*>(_mm_malloc(sizeof(float) * padding_input_size * input_channels, 64));
    memset(padding_input_data, 0, sizeof(float) * padding_input_size * input_channels);

    for (int ic = 0; ic < input_channels; ic++) {
        float* padding_input_ptr = padding_input_data + ic * padding_input_size + padding_top * padding_input_width + padding_left;
        float* input_ptr         = input_data + ic * input_size;
        for (int row = 0; row < input_height; row++) {
            // memcpy(padding_input_ptr, input_ptr, sizeof(float) * input_width);
            for (int j = 0; j < input_width; j += v_len) {
				pg = svwhilelt_b32(j, input_width);
				svst1(pg, padding_input_ptr + j, svld1_f32(pg, input_ptr + j));
			}
            padding_input_ptr += padding_input_width;
            input_ptr += input_width;
        }
    }
    int transform_input_height = input_channels * kernel_height * kernel_width;
    int transform_input_width  = output_height  * output_width;
    int transform_input_size = transform_input_height * transform_input_width;
    float* in, *in_ptr, *in_ptr_copy;
    float* transform_in_ptr = transform_input_data;


    int padding_width = padding_left + padding_right;
    int step = stride_height * padding_input_width;
    // input transform
    for (int ic = 0; ic < input_channels; ic++) {
        in = padding_input_data + ic*padding_input_size;
        for (int u = 0; u < kernel_height; u++) {
            for (int v = 0; v < kernel_width; v++) {
                in_ptr_copy = in + u*padding_input_width + v;
                for (int i = 0; i < output_height; i++) {
                    in_ptr = in_ptr_copy + i*step;
					for (int j = 0; j < output_width; j += v_len) {
						pg = svwhilelt_b32(j, output_width);
						svst1(pg, transform_in_ptr + j, svld1_f32(pg, in_ptr + j));
					}
                    transform_in_ptr += output_width;
                    in_ptr += output_width;
                    // for (int j = 0; j < output_width; j++) {
                    //     *transform_in_ptr = *in_ptr;
                    //     ++transform_in_ptr;
                    //     in_ptr += stride_width;
                    // }
                }
            }
        }
    }
	// fill_test_data(kernel_data, M, K);
    // fill_test_data(transform_input_data, K, N);
}

void ConvIm2colLayer::padding_input() {
    int padding_input_width  = input_width  + padding_left + padding_right;
    int padding_input_height = input_height + padding_top  + padding_bottom;
    int padding_input_size   = padding_input_height * padding_input_width;
    int input_size = input_height * input_width;
	int v_len = svcntw();
	svbool_t pg = svptrue_b32();

    for (int ic = 0; ic < input_channels; ic++) {
        float* padding_input_ptr = padding_input_data + ic * padding_input_size + padding_top * padding_input_width + padding_left;
        float* input_ptr         = input_data + ic * input_size;
        for (int row = 0; row < input_height; row++) {
            // memcpy(padding_input_ptr, input_ptr, sizeof(float) * input_width);
			for (int j = 0; j < input_width; j += v_len) {
				pg = svwhilelt_b32(j, input_width);
				svst1(pg, padding_input_ptr + j, svld1_f32(pg, input_ptr + j));
			}
            padding_input_ptr += padding_input_width;
            input_ptr += input_width;
        }
    }
}

void ConvIm2colLayer::im2col_v1_fused_packB_Nx32(int kc_adjust, int nc_adjust, float* src, float* packB_copy, 
                                                int begin_k, int begin_n, const int ROW_BATCH, const int COL_BATCH) {
    int padding_input_width  = input_width  + padding_left + padding_right;
    int padding_input_height = input_height + padding_top  + padding_bottom;
    int padding_input_size   = padding_input_height * padding_input_width;
    int output_size = output_height * output_width;
    int kernel_size = kernel_height * kernel_width;
    // convert the index of GEMM to the param of src
    int nt_res, nt_res1, kt_res, ic_idx;
    int kw_idx, kh_idx, oh_begin_idx, oh_end_idx, ow_begin_idx, ow_end_idx;

#ifdef __ARM_FEATURE_SVE
    float* in, *in_ptr, *in_ptr_copy;
    svbool_t pg_all_true = svptrue_b32();
    svbool_t pg = svptrue_b32();
    svfloat32_t v_zero = svdup_f32(0.0);
	int v_len = svcntw();
    int remain_col_start = nc_adjust - nc_adjust % COL_BATCH;

	fapp_start("bar",1,0);
    for (int kt = 0; kt < kc_adjust; kt++) {
        ic_idx = (begin_k + kt) / kernel_size; 
        kt_res = (begin_k + kt) % kernel_size;
        kh_idx = kt_res / kernel_width;
        kw_idx = kt_res % kernel_width;
        in = src + ic_idx * padding_input_size 
                 + kh_idx * padding_input_width + kw_idx;
        float *packB_copy_copy = packB_copy + kt * COL_BATCH;
		float *tmp = packB_copy_copy;

		#pragma loop swp
        for (int nt = 0; nt < remain_col_start; nt += COL_BATCH) {
			asm volatile("prfm pldl1keep, [%[in], #256]\n" ::[in]"r"(in_ptr):);
			asm volatile("prfm pldl1keep, [%[in], #512]\n" ::[in]"r"(in_ptr):);

            oh_begin_idx = (begin_n + nt) / output_width;
            ow_begin_idx = (begin_n + nt) % output_width;
            // oh_begin_idx = fast_division::divide32<56>::quotient(begin_n + nt);
            // ow_begin_idx = fast_division::divide32<56>::remainder(begin_n + nt);

            oh_end_idx = (begin_n + nt + COL_BATCH - 1) / output_width;
            ow_end_idx = (begin_n + nt + COL_BATCH - 1) % output_width;
            // oh_end_idx = fast_division::divide32<56>::quotient(begin_n + nt + remain - 1);
            // ow_end_idx = fast_division::divide32<56>::remainder(begin_n + nt + remain - 1);

            in_ptr = in + oh_begin_idx * padding_input_width + ow_begin_idx;
			tmp = packB_copy_copy + nt * kc_adjust;

            // COL_BATCH numbers of elems are stored in one row
            if (oh_begin_idx == oh_end_idx) {
				// memcpy(tmp, in_ptr, sizeof(float)*remain);
                svst1_f32(pg_all_true, tmp,      svld1_f32(pg_all_true, in_ptr));
                svst1_f32(pg_all_true, tmp + 16, svld1_f32(pg_all_true, in_ptr + 16));
				tmp += COL_BATCH;
				in_ptr += COL_BATCH;
/*
                for (int i = 0; i < remain; i++) {
                    *tmp = *in_ptr;
                    tmp++;
                    // in_ptr += stride_width;
                    in_ptr++;
                }
*/
            // COL_BATCH numbers of elems are across several rows
			} else {
 				for (int i = oh_begin_idx; i <= oh_end_idx; i++) {
 					int j_begin = 0, j_end = output_width;
 					if (i == oh_begin_idx) {
 						j_begin = ow_begin_idx;
 					} else if (i == oh_end_idx) {
 						j_end = ow_end_idx + 1;
 					}

					int num = j_end - j_begin;

                    for (int j = 0; j < num; j += v_len) {
                     	pg = svwhilelt_b32(j, num);
                        svst1_f32(pg, tmp + j, svld1_f32(pg, in_ptr + j));
 					}
                    tmp += num;
                 	in_ptr += num + kernel_width - 1;
                     
 					// memcpy(tmp, in_ptr, sizeof(float)*(j_end-j_begin+1));
 					// tmp += j_end-j_begin+1;
/*
 					for (int j = j_begin; j <= j_end; j++) {
                     	*tmp = *in_ptr;
                     	tmp++;
                     	// in_ptr += stride_width;
                     	in_ptr++;
 					}
*/
//                 	in_ptr += (stride_height - 1) * padding_input_width - stride_width + kernel_width;
				}
			}
        }


        if (remain_col_start < nc_adjust) {
            int remain = nc_adjust - remain_col_start;

			asm volatile("prfm pldl1keep, [%[in]]\n" ::[in]"r"(in_ptr):);

            oh_begin_idx = (begin_n + remain_col_start) / output_width;
            ow_begin_idx = (begin_n + remain_col_start) % output_width;
            oh_end_idx = (begin_n + remain_col_start + remain - 1) / output_width;
            ow_end_idx = (begin_n + remain_col_start + remain - 1) % output_width;

            in_ptr = in + oh_begin_idx * padding_input_width + ow_begin_idx;
			tmp = packB_copy_copy + remain_col_start * kc_adjust;

            // remain numbers of elems are stored in one row
            if (oh_begin_idx == oh_end_idx) {
                // for (int i = 0; i < remain; i++) {
                //     *tmp = *in_ptr;
                //     tmp++;
                //     in_ptr++;
                // }

                for (int i = 0; i < remain; i += v_len) {
                    pg = svwhilelt_b32(i, remain);
                    svst1_f32(pg, tmp + i, svld1_f32(pg, in_ptr + i));   
                }
                tmp += remain;
                in_ptr += remain;

            // remain numbers of elems are across several rows
			} else {
                
 				for (int i = oh_begin_idx; i <= oh_end_idx; i++) {
//  					int j_begin = 0, j_end = output_width-1;
//  					if (i == oh_begin_idx) {
//  						j_begin = ow_begin_idx;
//  					} else if (i == oh_end_idx) {
//  						j_end = ow_end_idx;
//  					}

//  					for (int j = j_begin; j <= j_end; j++) {
//                      	*tmp = *in_ptr;
//                      	tmp++;
//                      	in_ptr++;
//  					}

// //                 	in_ptr += (stride_height - 1) * padding_input_width - stride_width + kernel_width;
//                  	in_ptr += padding_input_width - 1 + kernel_width;


                    int j_begin = 0, j_end = output_width;
 					if (i == oh_begin_idx) {
 						j_begin = ow_begin_idx;
 					} else if (i == oh_end_idx) {
 						j_end = ow_end_idx + 1;
 					}
					int num = j_end - j_begin;
                    for (int j = 0; j < num; j += v_len) {
                     	pg = svwhilelt_b32(j, num);
                        svst1_f32(pg, tmp + j, svld1_f32(pg, in_ptr + j));     	
 					}
                    tmp += num;
                 	in_ptr += num + kernel_width - 1;
				}
			}

            // set (COL_BATCH - remain) elems to 0
            // for (int i = remain; i < COL_BATCH; i++) {
            //     *tmp = 0;
            //     tmp++;
            // }
            int num = COL_BATCH - remain;
            for (int j = 0; j < num; j += v_len) {
                pg = svwhilelt_b32(j, num);
                svst1_f32(pg, tmp + j, v_zero);     	
            }
      	}

    }
	fapp_stop("bar",1,0);
#endif /* __ARM_FEATURE_SVE */
}

void ConvIm2colLayer::im2col_v1_fused_packB_Nx32_v1(int kc_adjust, int nc_adjust, float* src, float* packB_copy, 
                                                    int begin_k, int begin_n, const int ROW_BATCH, const int COL_BATCH) {
    int padding_input_width  = input_width  + padding_left + padding_right;
    int padding_input_height = input_height + padding_top  + padding_bottom;
    int padding_input_size   = padding_input_height * padding_input_width;
    int output_size = output_height * output_width;
    int kernel_size = kernel_height * kernel_width;
    // convert the index of GEMM to the param of src
    int nt_res, nt_res1, kt_res, ic_idx;
    int kw_idx, kh_idx, oh_begin_idx, oh_end_idx, ow_begin_idx, ow_end_idx;

// #ifdef __ARM_FEATURE_SVE
    float* in, *in_ptr, *in_ptr_copy;
    svbool_t pg_all_true = svptrue_b32();
    svbool_t pg = svptrue_b32();
    svfloat32_t v_zero = svdup_f32(0.0);
	int v_len = svcntw();
    int remain_col_start = nc_adjust - nc_adjust % COL_BATCH;

	fapp_start("bar",1,0);
    for (int nt = 0; nt < remain_col_start; nt += COL_BATCH) {
        
    }
	fapp_stop("bar",1,0);
// #endif /* __ARM_FEATURE_SVE */
}

void ConvIm2colLayer::sgemm() {
    switch(gemm_version) {
        case GEMM_NO_BLOCKS:
            GEMM(kernel_data, transform_input_data, output_data);
        break;

        case GEMM_BLOCKS_SINGLE_THREAD:
            // GEMM_v3(kernel_data, transform_input_data, output_data);
            // GEMM_v2(kernel_data, transform_input_data, output_data);
            // GEMM_v4_MKN(kernel_data, transform_input_data, output_data);
            // GEMM_multithread_v1(kernel_data, transform_input_data, output_data);
            // GEMM_multithread_v2_MKN(kernel_data, transform_input_data, output_data);
            GEMM_multithread_v3_MKN_2d(kernel_data, transform_input_data, output_data);
            // GEMM_v5_MNK(kernel_data, transform_input_data, output_data);

        break;

        case GEMM_BLOCKS_MULTI_THREADS:
            // GEMM_multithread(kernel_data, transform_input_data, output_data);
            // GEMM_multithread_v1(kernel_data, transform_input_data, output_data);
            // GEMM_multithread_v2_MKN(kernel_data, transform_input_data, output_data);
            GEMM_multithread_v3_MKN_2d(kernel_data, transform_input_data, output_data);
        break;
    }
}

void ConvIm2colLayer::GEMM(float* A, float* B, float* C) {
    int A_row = M;
    int A_col = K;
    int B_row = K;
    int B_col = N;
    int C_row = A_row;
    int C_col = B_col;

    // 这个版本虽然访存连续，但是矩阵B会被重复读取outputChannel次，增加了访存次数
    // 因此需要考虑分块，使矩阵中每一个块只需要被读一次，在访存连续的情况下，减少访存次数
/*
   float* B_ptr;
   for (int k = 0; k < A_row; k++)
   {
       B_ptr = B;
       for (int i = 0; i < A_col; i++) 
       {
          float temp = *(A + k*A_col + i);
           for (int j = 0; j < B_col; j++)
           {
               *(C + k*C_col + j) += temp * *B_ptr;
               ++B_ptr;
           }
       }
   }
*/
    for(int i=0;i<A_row;i++){
        for(int j=0;j<B_col;j++){
            for(int k=0;k<A_col;k++){
                *(C + i * C_col + j ) += *(A + i * A_col + k) * *(B + k * B_col + j);
            }
        }
    }
}

void ConvIm2colLayer::GEMM_v2(float* A, float* B, float* C) {
    int lda = K;
    int ldb = N;
    int ldc = N;

    Timer packA_timer;
    Timer packB_timer;
    Timer kernel_timer;

    // 保证row_batch 能被 mc整除，否则会有bug

    int packB_width;
    int packB_height;
    int packBC_width;
    int packBC_height;

    packBC_height = kc + mc;
    packBC_width = align_ceil(nc, col_batch);
    packB_height = kc;
    packB_width = packBC_width;
    // float *packB = new float[(kc + mc) * nc_ceil];
    // float *packC = packB + kc * nc_ceil;

    // float *packA = new float[M * kc]; 
    // float *packB = new float[packBC_height * packBC_width];
    float *packA = static_cast<float*>(_mm_malloc((M * kc + 16) * sizeof(float))); 
    float *packB = static_cast<float*>(_mm_malloc((packBC_height * packBC_width + 16) * sizeof(float)));
    float *packC = C;
    if (this->pack_c_version != 0)
        packC = packB + packB_height * packB_width;
    // A中的一大整列M * kc，B中的一大整行kc * N
    for (int kt = 0; kt < K; kt += kc)
    {
        int kc_adjust = min(kc, K - kt);
        // packA_timer.startBench();
        // 对A的一大整列做packing
        this->pack_a(M, kc_adjust, A + kt, lda, packA, mc, kc, nc, row_batch, col_batch);
        // packA_timer.accumBench();
        // B中的一大块kc * nc
        for (int nt = 0; nt < N; nt += nc)
        {
            int nc_adjust = min(nc, N - nt);
            int nc_ceil = align_ceil(nc_adjust, col_batch);
            float *packB_copy = packB;

	    // packB_timer.startBench();
            // 对B的一大块kc * nc做packing
            this->pack_b(kc_adjust, nc_adjust, B + kt*ldb + nt, ldb, packB_copy, row_batch, col_batch);
            // packB_timer.accumBench();

            // 接着就是对A的一大列M * kc和B的一大块kc * nc进行计算
            // 选择A的一大列的一小块
            for (int mt = 0; mt < M; mt += mc)
            {
                int mc_adjust = min(mc, M - mt);
                float *C_copy = C + mt * ldc + nt;
                float *packC_copy;
                int packC_ptr_step;
                int packC_copy_step;
                int packC_col;

                if (this->pack_c_version == 0) {
                    packC_ptr_step = 1;
                    packC_copy_step = ldc;
                    packC_copy = C_copy;
                    packC_col = ldc;
                }
                else if (this->pack_c_version == 1) {
                    packC_ptr_step = 1;
                    packC_copy_step = nc_ceil;
                    packC_copy = packC;
                    packC_col = nc_ceil;
                }
                else if (this->pack_c_version == 2) {
                    packC_ptr_step = mc_adjust;
                    packC_copy_step = col_batch;
                    packC_copy = packC;
                    packC_col = nc_ceil;
                }

                // kernel_timer.startBench();
                if (this->pack_c != nullptr)
                    this->pack_c(mc_adjust, nc_adjust, nc_ceil, C_copy, packC_copy, ldc, row_batch, col_batch);

                int start_remain_row = mc_adjust - mc_adjust % row_batch;
                int step = col_batch * kc_adjust;
                // 每次计算 row_batch 行
                int i = 0;
                for (; i < start_remain_row; i += row_batch) 
                {
                    float *packA_ptr = packA + (mt + i) * kc_adjust;
                    float *packB_ptr = packB_copy;
                    float *packC_copy_copy = packC_copy + i * packC_copy_step;
                    float *packC_ptr;
                    // 每次计算 col_batch 列。不足 col_batch 列的补0处理，因此也当成 col_batch 列进行计算
                    for (int j = 0; j < nc_ceil; j += col_batch)
                    {
                        packC_ptr = packC_copy_copy + j * packC_ptr_step;
                        this->inner_kernel(kc_adjust, packA_ptr, packB_ptr, packC_ptr, packC_col, prefetch_a, prefetch_b, prefetch_c);
                        packB_ptr += step;
                    }
                }

                // 剩余不足 row_batch 行，单独处理
                if (i < mc_adjust) {
                    float *packA_ptr = packA + (mt + i) * kc_adjust;
                    float *packB_ptr = packB_copy;
                    float *packC_copy_copy = packC_copy + i * packC_copy_step;
                    float *packC_ptr;
                    int num_remain_row = mc_adjust - start_remain_row;
                    //  每次计算 col_batch 列。不足 col_batch 列的补0处理，因此也当成 col_batch 列进行计算
                    for (int j = 0; j < nc_ceil; j += col_batch)
                    {
                        packC_ptr = packC_copy_copy + j * packC_ptr_step;
                        this->inner_kernel_for_corner(kc_adjust, packA_ptr, packB_ptr, packC_ptr, packC_col);
                        packB_ptr += step;
                    }
                }
                if (this->unpack_c != nullptr)
                    this->unpack_c(mc_adjust, nc_adjust, nc_ceil, C_copy, packC_copy, ldc, row_batch, col_batch);
            
                // kernel_timer.accumBench();
            }
        }
    }
    // packA_timer.printBench("packA time", 1);
    // packB_timer.printBench("packB time", 1);
    // kernel_timer.printBench("kernel time", 1);

    _mm_free(packA);
    _mm_free(packB);
}

void ConvIm2colLayer::GEMM_v3(float* A, float* B, float* C) {
    int lda = K;
    int ldb = N;
    int ldc = N;

    Timer packA_timer;
    Timer packB_timer;
    Timer kernel_timer;

    float *packA = static_cast<float*>(_mm_malloc((mc * kc + 64) * sizeof(float), 256)); 
    float *packB = static_cast<float*>(_mm_malloc((kc * (align_ceil(N, col_batch)) + 64) * sizeof(float), 256));
    float *packC = C;

    assert((mc % row_batch == 0) && (nc % col_batch == 0));

    // A中的一大整列M * kc，B中的一大整行kc * N
    for (int kt = 0; kt < K; kt += kc) {
        int kc_adjust = min(kc, K - kt);

        for (int mt = 0; mt < M; mt += mc) {
            int mc_adjust = min(mc, M - mt);
            // float *packA_copy = packA + mt * kc;
            float *packA_copy = packA;
            packA_timer.startBench();
            // 对A的一块做packing
            this->pack_a(mc_adjust, kc_adjust, A + mt*lda + kt, lda, packA_copy, mc, kc, nc, row_batch, col_batch);
            packA_timer.accumBench();
            
            for (int nt = 0; nt < N; nt += nc) {
                int nc_adjust = min(nc, N - nt);
                int nc_ceil = align_ceil(nc_adjust, col_batch);
                float *packB_copy = packB + nt * kc;
                // mt为0时才需要做pack
                if (mt == 0) {
                    packB_timer.startBench();
                    // 对B的一大块kc * nc做packing
                    this->pack_b(kc_adjust, nc_adjust, B + kt*ldb + nt, ldb, packB_copy, row_batch, col_batch);
                    // this->im2col_v1_fused_packB_Nx32(kc_adjust, nc_adjust, padding_input_data, packB_copy, kt, nt, row_batch, col_batch);
                    packB_timer.accumBench();
                }

                // 接着就是计算，对A的一块mc * kc和B的一块kc * nc进行计算
                float *C_copy = C + mt * ldc + nt;

                int remain_row_start = mc_adjust - mc_adjust % row_batch;
                int packB_step = col_batch * kc_adjust;

                kernel_timer.startBench();
                // 计算可以整除的行
                int i = 0;
                for (; i < remain_row_start; i += row_batch) {
                    float *packA_ptr = packA_copy + i * kc_adjust;
                    float *packB_ptr = packB_copy;
                    float *packC_ptr_copy = C_copy + i * ldc;
                    float *packC_ptr; 
                    // 每次计算 col_batch 列。不足 col_batch 列的补0处理，因此也当成 col_batch 列进行计算
                    for (int j = 0; j < nc_ceil; j += col_batch)
                    {
                        packC_ptr = packC_ptr_copy + j;
                        this->inner_kernel(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, prefetch_a, prefetch_b, this->prefetch_c);
                        packB_ptr += packB_step;
                    }
                }

                // 计算剩余的行
                if (i < mc_adjust) {
                    float *packA_ptr = packA_copy + i * kc_adjust;
                    float *packB_ptr = packB_copy;
                    float *packC_ptr_copy = C_copy + i * ldc;
                    float *packC_ptr;
                    //  每次计算 col_batch 列。不足 col_batch 列的补0处理，因此也当成 col_batch 列进行计算
                    for (int j = 0; j < nc_ceil; j += col_batch)
                    {
                        packC_ptr = packC_ptr_copy + j;
                        this->inner_kernel_for_corner(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc);
                        packB_ptr += packB_step;
                    }
                }
                kernel_timer.accumBench();
            }
        }
    }
    // packA_timer.printBench("packA time", 1);
    // packB_timer.printBench("packB time", 1);
    // kernel_timer.printBench("kernel time", 1);

    _mm_free(packA);
    _mm_free(packB);
}

void ConvIm2colLayer::GEMM_v4_MKN(float* A, float* B, float* C) {
    int lda = K;
    int ldb = N;
    int ldc = N;

    Timer packA_timer;
    Timer packB_timer;
    Timer kernel_timer;

    float *packA = static_cast<float*>(_mm_malloc((mc * kc + 64) * sizeof(float), 256)); 
    float *packB = static_cast<float*>(_mm_malloc((K * (align_ceil(N, col_batch)) + 256) * sizeof(float), 256));
    float *packC = C;

    assert((mc % row_batch == 0) && (nc % col_batch == 0));
    for (int mt = 0; mt < M; mt += mc) {
        int mc_adjust = min(mc, M - mt);
        int remain_row_start = mc_adjust - mc_adjust % row_batch;
        
        for (int kt = 0; kt < K; kt += kc) {
            int kc_adjust = min(kc, K - kt);
            float *packA_copy = packA;
            packA_timer.startBench();
            // 对A的一块做packing
            this->pack_a(mc_adjust, kc_adjust, A + mt*lda + kt, lda, packA_copy, mc, kc, nc, row_batch, col_batch);
            packA_timer.accumBench();

            for (int nt = 0; nt < N; nt += nc) {
                int nc_adjust = min(nc, N - nt);
                int nc_ceil = align_ceil(nc_adjust, col_batch);

                float *packB_copy = packB + kt * align_ceil(N, col_batch) + nt * kc_adjust;
                if (mt == 0) {
                    packB_timer.startBench();
                    // 对B的一大块kc * nc做packing
                    this->pack_b(kc_adjust, nc_adjust, B + kt*ldb + nt, ldb, packB_copy, row_batch, col_batch);
                    // this->im2col_v1_fused_packB_Nx32(kc_adjust, nc_adjust, padding_input_data, packB_copy, kt, nt, row_batch, col_batch);
                    packB_timer.accumBench();
                }
                
                float *C_copy = C + mt * ldc + nt;
                int packB_step = col_batch * kc_adjust;

                kernel_timer.startBench();
                // 计算可以整除的行
                int i = 0;
                for (; i < remain_row_start; i += row_batch) {
                    float *packA_ptr = packA_copy + i * kc_adjust;
                    float *packB_ptr = packB_copy;
                    float *packC_ptr_copy = C_copy + i * ldc;
                    float *packC_ptr; 
                    // 每次计算 col_batch 列。不足 col_batch 列的补0处理，因此也当成 col_batch 列进行计算
                    for (int j = 0; j < nc_ceil; j += col_batch)
                    {
                        packC_ptr = packC_ptr_copy + j;
                        this->inner_kernel(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, prefetch_a, prefetch_b, this->prefetch_c);
                        packB_ptr += packB_step;
                    }
                }

                // 计算剩余的行
                if (i < mc_adjust) {
                    float *packA_ptr = packA_copy + i * kc_adjust;
                    float *packB_ptr = packB_copy;
                    float *packC_ptr_copy = C_copy + i * ldc;
                    float *packC_ptr;
                    //  每次计算 col_batch 列。不足 col_batch 列的补0处理，因此也当成 col_batch 列进行计算
                    for (int j = 0; j < nc_ceil; j += col_batch)
                    {
                        packC_ptr = packC_ptr_copy + j;
                        this->inner_kernel_for_corner(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc);
                        packB_ptr += packB_step;
                    }
                }
                kernel_timer.accumBench();
            }
        }
    }
    // packA_timer.printBench("packA time", 1);
    // packB_timer.printBench("packB time", 1);
    // kernel_timer.printBench("kernel time", 1);

    _mm_free(packA);
    _mm_free(packB);
}

void ConvIm2colLayer::GEMM_v5_MNK(float* A, float* B, float* C) {
    int lda = K;
    int ldb = N;
    int ldc = N;

    // printf("gemm_v5\n");

    Timer packA_timer;
    Timer packB_timer;
    Timer kernel_timer;

    float *packA = static_cast<float*>(_mm_malloc((mc * K + 16) * sizeof(float))); 
    float *packB = static_cast<float*>(_mm_malloc((K * align_ceil(N, col_batch) + 16) * sizeof(float)));
    float *packC = static_cast<float*>(_mm_malloc((mc * nc + 16) * sizeof(float)));

    assert((mc % row_batch == 0) && (nc % col_batch == 0));

    for (int mt = 0; mt < M; mt += mc) {
        int mc_adjust = min(M - mt, mc);

        for (int nt = 0; nt < N; nt += nc) {
            int nc_adjust = min(N - nt, nc);
            int nc_ceil   = align_ceil(nc_adjust, col_batch);

            for (int kt = 0; kt < K; kt += kc) {
                int kc_adjust = min(K - kt, kc);
                float* packA_copy = packA + (kt/kc)*(mc*kc);
                float* packB_copy = packB + (nt/nc)*(K*nc) + (kt/kc)*(nc_ceil*kc);
                float* packC_copy = C + mt*ldc + nt;
                int packC_col = ldc;
                // float* packC_copy = packC;
                // int packC_col = nc;

                
                if (mt == 0) {
                    packB_timer.startBench();
                    this->pack_b(kc_adjust, nc_adjust, B + kt*ldb + nt, ldb, packB_copy, row_batch, col_batch);
                    packB_timer.accumBench();
                }

                if (nt == 0) {
                    packA_timer.startBench();
                    this->pack_a(mc_adjust, kc_adjust, A + mt*lda + kt, lda, packA_copy, mc, kc, nc, row_batch, col_batch);
                    packA_timer.accumBench();
                }

                kernel_timer.startBench();
                int remain_row_start = mc_adjust - mc_adjust % row_batch;
                #pragma statement scache_isolate_way L1=1
                #pragma statement scache_isolate_assign packA_ptr
                for (int i = 0; i < remain_row_start; i += row_batch) {
                    for (int j = 0; j < nc_ceil; j += col_batch) {
                        float* packA_ptr = packA_copy + i * kc_adjust;
                        float* packB_ptr = packB_copy + j * kc_adjust;
                        float* packC_ptr = packC_copy + i * packC_col + j;
                        this->inner_kernel(kc_adjust, packA_ptr, packB_ptr, packC_ptr, packC_col, this->prefetch_a, this->prefetch_b, this->prefetch_c);
                    }
                }
                #pragma statement end_scache_isolate_assign
                #pragma statement end_scache_isolate_way

                for (int i = remain_row_start; i < mc_adjust; i += row_batch) {
                    for (int j = 0; j < nc_ceil; j += col_batch) {
                        float* packA_ptr = packA_copy + i * kc_adjust;
                        float* packB_ptr = packB_copy + j * kc_adjust;
                        float* packC_ptr = packC_copy + i * packC_col + j;
                        this->inner_kernel_for_corner(kc_adjust, packA_ptr, packB_ptr, packC_ptr, packC_col);
                    }
                }
                kernel_timer.accumBench();

            }

            // 将结果写回到矩阵C中
            // for (int i = 0; i < mc_adjust; i++) {
            //     memcpy(C + (mt+i)*ldc + nt, packC + i*nc, nc_adjust * sizeof(float));
            // }
            // memset(packC, 0, mc * nc * sizeof(float));
        }

    }

    // printf("c[0] = %f, c[1] = %f, c[2] = %f\n", C[0], C[1], C[2]);

    // packA_timer.printBench("packA time", 1);
    // packB_timer.printBench("packB time", 1);
    // kernel_timer.printBench("kernel time", 1);

    _mm_free(packA);
    _mm_free(packB);
    _mm_free(packC);
}

// 多线程版本
void ConvIm2colLayer::GEMM_multithread(float* A, float* B, float* C) {
    int lda = K;
    int ldb = N;
    int ldc = N;

    int packB_width;
    int packB_height;
    int packBC_width;
    int packBC_height;

    int num_threads = this->num_threads;
    
    packBC_height = kc + num_threads * mc;
    packBC_width = align_ceil(nc, col_batch);
    packB_height = kc;
    packB_width = packBC_width;

    float *packA = new float[M * kc + 16 * num_threads];
    float *packB = new float[packBC_height * packBC_width + 16 * num_threads];
    // float *packA = _mm_malloc(M * kc * sizeof(float)); 
    // float *packB = _mm_malloc(packBC_height * packBC_width * sizeof(float));
    float *packC = packB + packB_height * packB_width;

    // 确定每个线程所负责的A中分块
    int m_num_block = (M + (mc - 1)) / mc;
    int m_num_block_per_thread = m_num_block / num_threads;
    int m_num_remain_block = m_num_block % num_threads;
    #pragma omp parallel
    {
        int tid = omp_get_thread_num();
        int m_interval = m_num_block_per_thread * mc;
        int m_from;
        int m_to;
        if (tid < m_num_remain_block) {
            m_from = tid * (m_num_block_per_thread + 1) * mc;
            m_to = m_from + (m_num_block_per_thread + 1) * mc;
        }
        else{
            m_from = (tid * m_num_block_per_thread + m_num_remain_block) * mc;
            m_to = m_from + m_num_block_per_thread * mc;
        }
        if (m_to > M) 
            m_to = M;

        if (m_to - m_from > 0) {
            m_interval = m_to - m_from;
            for (int kt = 0; kt < K; kt += kc) {
                int kc_adjust = min(kc, K - kt);

                float *packA_copy = packA + m_from * kc;
                this->pack_a(m_interval, kc_adjust, A + m_from*lda + kt, lda, packA_copy, mc, kc, nc, row_batch, col_batch);
        
                for (int nt = 0; nt < N; nt += nc) {
                    int nc_adjust = min(nc, N - nt);
                    int nc_ceil = align_ceil(nc_adjust, col_batch);

                    float *packB_copy = packB;
                    // this->pack_b_mt(kc_adjust, nc_adjust, num_threads, tid, B, ldb, packB_copy, kt, nt, row_batch, col_batch);

                    for (int mt = m_from; mt < m_to; mt += mc) {
                        int mc_adjust = min(mc, m_to - mt);
                        float *C_copy = C + mt * ldc + nt;
                        float *packC_copy;
                        int packC_ptr_step;
                        int packC_copy_step;
                        int packC_col;
                        
                        if (this->pack_c_version == 0) {
                            packC_ptr_step = 1;
                            packC_copy_step = ldc;
                            packC_copy = C_copy;
                            packC_col = ldc;
                        }
                        else if (this->pack_c_version == 1) {
                            packC_ptr_step = 1;
                            packC_copy_step = nc_ceil;
                            packC_copy = packC + tid * mc * packBC_width;
                            packC_col = nc_ceil;
                        }
                        else if (this->pack_c_version == 2) {
                            packC_ptr_step = mc_adjust;
                            packC_copy_step = col_batch;
                            packC_copy = packC + tid * mc * packBC_width;
                            packC_col = nc_ceil;
                        }

                        if (this->pack_c != nullptr)
                            this->pack_c(mc_adjust, nc_adjust, nc_ceil, C_copy, packC_copy, ldc, row_batch, col_batch);

                        int start_remain_row = mc_adjust - mc_adjust % row_batch;
                        int step = col_batch * kc_adjust;

                        // 每次计算8行
                        for (int i = 0; i < start_remain_row; i += row_batch) {
                            float *packA_ptr = packA_copy + (mt - m_from + i) * kc_adjust;
                            float *packB_ptr = packB_copy;
                            float *packC_copy_copy = packC_copy + i * packC_copy_step;
                            float *packC_ptr;
                            // 每次计算8列。不足8列的补0处理，因此也当成8列进行计算
                            for (int j = 0; j < nc_ceil; j += col_batch) {
                                packC_ptr = packC_copy_copy + j * packC_ptr_step;
                                // kernel_8x8(kc_adjust, packA_ptr, packB_ptr, packC_ptr, nc_ceil);
                                this->inner_kernel(kc_adjust, packA_ptr, packB_ptr, packC_ptr, packC_col, this->prefetch_a, this->prefetch_b, this->prefetch_c);
                                packB_ptr += step;
                            }
                        
                        }

                        // 不足8行，单独处理
                        int i = start_remain_row;
                        if (i < mc_adjust) {
                            float *packA_ptr = packA_copy + (mt - m_from + i) * kc_adjust;
                            float *packB_ptr = packB_copy;
                            float *packC_copy_copy = packC_copy + i * packC_copy_step;
                            float *packC_ptr;
                            int num_remain_row = mc_adjust - start_remain_row;
                            // 每次计算8列。不足8列的补0处理，因此也当成8列进行计算
                            for (int j = 0; j < nc_ceil; j += col_batch) {
                                packC_ptr = packC_copy_copy + j * packC_ptr_step;
                                // kernel_Nx8_for_8x8_template(num_remain_row, kc_adjust, packA_ptr, packB_ptr, packC_ptr, nc_ceil);
                                this->inner_kernel_for_corner(kc_adjust, packA_ptr, packB_ptr, packC_ptr, packC_col);
                                packB_ptr += step;
                            }
                        }
                        if (this->unpack_c != nullptr)
                            this->unpack_c(mc_adjust, nc_adjust, nc_ceil, C_copy, packC_copy, ldc, row_batch, col_batch);
                    }
                }
            }
        }
    }

    delete [] packA;
    delete [] packB;
    // delete [] packC;
}

void ConvIm2colLayer::GEMM_multithread_v3_MKN_2d(float* A, float* B, float* C) {
    int lda = K;
    int ldb = N;
    int ldc = N;

    int packB_width;
    int packB_height;
    int packBC_width;
    int packBC_height;

    const int cores_per_node = 12;
    const int num_threads = this->num_threads;
    const int num_nodes = (num_threads + cores_per_node - 1) / cores_per_node;

    svbool_t pg_true = svptrue_b32();

    const int simd_width = 16;
    printf("num_thread = %d, num_nodes = %d\n", num_threads, num_nodes);

    int parallel_dim[3] = {1, 1, 1};
	if (this-> num_threads == 8) {
		parallel_dim[1] = 4;
		parallel_dim[2] = 2;
	} else {
		parallel_dim[1] = this->num_threads;
	}
    parallel_dim[0] = num_nodes;
    int range_k[parallel_dim[0] + 1];
    int range_n[parallel_dim[1] + 1];
    int range_mc[parallel_dim[2] + 1];
    int range_mc_for_packA[parallel_dim[2]][parallel_dim[1] + 1];
    int range_nc_for_packB[parallel_dim[1]][parallel_dim[2] + 1];
    int range_kc_for_packB[parallel_dim[1]][parallel_dim[2] + 1];

    float *packA_memory_block;
    float *packC_memory_block;

	Timer init_timer, compute_timer, end_timer;
	init_timer.startBench();
    // set range K of every node
    range_k[0] = 0;
    for (int temp_k = K, temp_width = 0, temp_node_idx = 0; temp_k > 0; temp_node_idx++) {
        temp_width = (temp_k + parallel_dim[0] - temp_node_idx - 1) / (parallel_dim[0] - temp_node_idx);
        temp_k -= temp_width;
        if (temp_k < 0)
            temp_width += temp_k;
        range_k[temp_node_idx + 1] = range_k[temp_node_idx] + temp_width;
    }
    
    // set range N of every thread
    range_n[0] = 0;
    for (int temp_n = N, temp_width = 0, temp_thr_idx = 0; temp_n > 0; temp_thr_idx++) {
        temp_width = (temp_n + parallel_dim[1] - temp_thr_idx - 1) / (parallel_dim[1] - temp_thr_idx);
        temp_n -= temp_width;
        if (temp_n < 0) 
            temp_width += temp_n;
        range_n[temp_thr_idx + 1] = range_n[temp_thr_idx] + temp_width;
    }

    // printf("range_n[1] = %d, range_n[2] = %d\n", range_n[1], range_n[2]);

    const size_t packA_memory_block_size_per_node = mc * (range_k[1]-range_k[0]) + 64;
	// printf("packA_size = %u\n", packA_memory_block_size_per_node);
    const size_t packC_memory_block_size_per_node = M * N + 64;

    // numa memory initializaion
    if (num_nodes >= 1) {
        size_t size_a = packA_memory_block_size_per_node * num_nodes;
        packA_memory_block = (float*)_mm_malloc(sizeof(float) * size_a);
        // #pragma omp parallel for schedule(static)
        // for (size_t i = 0; i < size_a; i++) {
        //     packA_memory_block[i] = 0.0f;
        // }

        size_t size_c = packC_memory_block_size_per_node * num_nodes;
        packC_memory_block = (float*)_mm_malloc(sizeof(float) * size_c);
        // #pragma omp parallel for schedule(static)
        // for (size_t i = 0; i < size_c; i++) {
        //     packC_memory_block[i] = 0.0f;
        // }
    }

    // Actually it doesn't need paddings any more, since the predicate register is used in this implements
    size_t size_b = (size_t)(K) * (size_t)(N) + 64;    
    float *packB_memory_block = (float*)_mm_malloc(sizeof(float) * size_b);

	init_timer.endBench("init");
	printf("---------initializaion work done.---------\n");
	compute_timer.startBench();
    #pragma omp parallel
    {
        // Timer init_in_thread_timer, compute_in_thread_timer;
        // init_in_thread_timer.startBench();
        Timer packA_timer, packB_timer, kernel1_timer, other_timer;

        int tid = omp_get_thread_num();
        int tid_in_node = tid % (parallel_dim[1] * parallel_dim[2]);
        int tid_group_idx[3];
        tid_group_idx[0] = tid / (parallel_dim[1] * parallel_dim[2]);
        tid_group_idx[1] = tid_in_node % parallel_dim[1];
        tid_group_idx[2] = tid_in_node / parallel_dim[1];

        int tid_idx_in_group[3];
        tid_idx_in_group[0] = tid_in_node;
        tid_idx_in_group[1] = tid_in_node / parallel_dim[1];
        tid_idx_in_group[2] = tid_in_node % parallel_dim[1];

        int k_from = range_k[tid_group_idx[0]];
        int k_to = range_k[tid_group_idx[0]+1];
        int n_from = range_n[tid_group_idx[1]];
        int n_to = range_n[tid_group_idx[1]+1];
        int k_step = k_to - k_from;
        int n_step = align_ceil(n_to - n_from, this->col_batch);
        int remain_col = (n_to - n_from) % this->col_batch;

	    // printf("k_from = %d, k_to = %d\n", k_from, k_to);
		// printf("tid = %d, n_from = %d, n_to = %d, remain_col = %d\n", tid, n_from, n_to, remain_col);

        inner_kernel_for_corner_func_t inner_kernel_for_corner_fixm;
        inner_kernel_for_corner_func_t inner_kernel_for_corner_fixn;
        inner_kernel_for_corner_func_t inner_kernel_for_corner_nofix;
    
        svbool_t pg_v1 = (remain_col < 1 * simd_width                                ? svwhilelt_b32(0, remain_col) : svptrue_b32());
        svbool_t pg_v2 = (remain_col > 1 * simd_width && remain_col < 2 * simd_width ? svwhilelt_b32(0, remain_col - 1 * simd_width) : svptrue_b32());
        svbool_t pg_v3 = (remain_col > 2 * simd_width                                ? svwhilelt_b32(0, remain_col - 2 * simd_width) : svptrue_b32());

        // allocate packB memory block
        // size_t size_b = (size_t)(k_step) * (size_t)(n_step) + 256;
        // float *packB_memory_block = (float*)_mm_malloc(sizeof(float) * size_b);
        // for (size_t i = 0; i < size_b; i++)
        //    packB_memory_block[i] = 0.0f;
        
	    // init_in_thread_timer.endBench("init in thread");
        // compute_in_thread_timer.startBench();

        // GEMM main subroutine
        for (int mt = 0; mt < M; mt += mc) {
            other_timer.startBench();
            int mc_adjust = min(mc, M - mt);
            #pragma omp single 
            if (mt == 0 || mc_adjust < mc){
                // set range mc of every thread
                memset(range_mc, 0, sizeof(int) * (parallel_dim[2] + 1));
                for (int temp_mc = mc_adjust, temp_height = 0, temp_thr_idx = 0; temp_mc > 0; temp_thr_idx++) {
                    temp_height = (temp_mc + parallel_dim[2] - temp_thr_idx - 1) / (parallel_dim[2] - temp_thr_idx);
                    temp_mc -= temp_height;
                    if (temp_mc < 0) 
                        temp_height += temp_mc;
                    range_mc[temp_thr_idx + 1] = range_mc[temp_thr_idx] + temp_height;
                }
            }
            #pragma omp barrier 
            
            int mc_from = range_mc[tid_group_idx[2]];
            int mc_to = range_mc[tid_group_idx[2]+1];
            int remain_row = (mc_to - mc_from) % row_batch;

            // select kernel function based on the range
            if (row_batch == 12 && col_batch == 32) {
                inner_kernel_for_corner_fixm  = kernel_MxN_for_12x32_func_tab[row_batch - 1][(remain_col + simd_width-1)/simd_width - 1];
                inner_kernel_for_corner_fixn  = kernel_MxN_for_12x32_func_tab[remain_row - 1][col_batch/simd_width - 1];
                inner_kernel_for_corner_nofix = kernel_MxN_for_12x32_func_tab[remain_row - 1][(remain_col + simd_width-1)/simd_width - 1];
				// printf("fixm = %p, tab = %p\n", inner_kernel_for_corner_fixm, kernel_MxN_for_12x32_func_tab[row_batch - 1][(remain_col + simd_width-1)/simd_width - 1]);
            } else if (row_batch == 8 && col_batch == 48) {
                inner_kernel_for_corner_fixm  = kernel_MxN_for_8x48_func_tab[row_batch - 1][(remain_col + simd_width-1)/simd_width - 1];
                inner_kernel_for_corner_fixn  = kernel_MxN_for_8x48_func_tab[remain_row - 1][col_batch/simd_width - 1];
                inner_kernel_for_corner_nofix = kernel_MxN_for_8x48_func_tab[remain_row - 1][(remain_col + simd_width-1)/simd_width - 1];
            }

            // set the range of packA for every thread
            if (tid_idx_in_group[2] == 0) {
				memset(range_mc_for_packA[tid_group_idx[2]], 0, sizeof(int) * (parallel_dim[1] + 1));
                range_mc_for_packA[tid_group_idx[2]][0] = mc_from;
                int mc_step = mc_to - mc_from;
				// printf("tid = %d, mc_step = %d\n", tid, mc_step);
                int num_block = (mc_step + row_batch - 1) / row_batch;
                for (int temp_mc = num_block, temp_height = 0, temp_thr_idx = 0; temp_mc > 0; temp_thr_idx++) {
                    temp_height = (temp_mc + parallel_dim[1] - temp_thr_idx - 1) / (parallel_dim[1] - temp_thr_idx);
                    temp_mc -= temp_height;
                    if (temp_mc < 0) 
                        temp_height += temp_mc;
                    range_mc_for_packA[tid_group_idx[2]][temp_thr_idx + 1] = min(range_mc_for_packA[tid_group_idx[2]][temp_thr_idx] + temp_height * row_batch, mc_to);
                }
            }

            other_timer.accumBench();
            
            for (int kt = k_from; kt < k_to; kt += kc) {
                int kc_adjust = min(kc, k_to - kt);
			    // printf("tid = %d, kt = %d\n", tid, kt);

				// printf("tid_group_idx[0] = %d\n", tid_group_idx[0]);
                float *packA_copy = packA_memory_block + tid_group_idx[0]*packA_memory_block_size_per_node;

                    // printf("------mt = %d--------\n", mt);
                #pragma omp barrier
                packA_timer.startBench();
				int pack_a_from = range_mc_for_packA[tid_group_idx[2]][tid_idx_in_group[2]], pack_a_to = range_mc_for_packA[tid_group_idx[2]][tid_idx_in_group[2] + 1];
                // printf("tid = %d, pack_a_from = %d, pack_a_to = %d\n", tid, pack_a_from, pack_a_to);
				if (pack_a_to > pack_a_from)
                	this->pack_a_mt(mc_adjust, kc_adjust, A + mt*lda + kt, lda, packA_copy, mc, kc, nc, 
                    	            pack_a_from, pack_a_to, row_batch, col_batch);
                packA_timer.accumBench();
                #pragma omp barrier

                if (tid_idx_in_group[1] == 0) {
                    memset(range_kc_for_packB[tid_group_idx[1]], 0, sizeof(int) * (parallel_dim[2] + 1));
                    for (int temp_kc = kc_adjust, temp_width = 0, temp_thr_idx = 0; temp_kc > 0; temp_thr_idx++) {
                        temp_width = (temp_kc + parallel_dim[2] - temp_thr_idx - 1) / (parallel_dim[2] - temp_thr_idx);
                        temp_kc -= temp_width;
                        if (temp_kc < 0) 
                            temp_width += temp_kc;
                        range_kc_for_packB[tid_group_idx[1]][temp_thr_idx + 1] = range_kc_for_packB[tid_group_idx[1]][temp_thr_idx] + temp_width;
                    }
                }

					// printf("packA over mt = %d, tid = %d\n", mt, tid);

                for (int nt = n_from; nt < n_to; nt += nc) {
                    int nc_adjust = min(nc, n_to - nt);
                    float *packB_copy = packB_memory_block + kt * N + nt * kc_adjust;
                    // printf("tid = %d, nt = %d, n_from = %d, n_to = %d\n", tid, nt, n_from, n_to);

					// printf("tid = %d, nt = %d, nc_adjust = %d, packA[0] = %f, packA[1] = %f, packA[2] = %f \n",
                    //         tid, nt, nc_adjust, packA_copy[0], packA_copy[1], packA_copy[2]);

                    if (mt == 0) {
                        // set the range of packB for every thread
                        // if (nt == n_from || nc_adjust < nc) {
                        // 	if (tid_idx_in_group[1] == 0) {
						// 		memset(range_nc_for_packB[tid_group_idx[1]], 0, sizeof(int) * (parallel_dim[2] + 1));
                        //     	int num_block = (nc_adjust + col_batch - 1) / col_batch;
                        //     	for (int temp_nc = num_block, temp_width = 0, temp_thr_idx = 0; temp_nc > 0; temp_thr_idx++) {
                        //     	    temp_width = (temp_nc + parallel_dim[2] - temp_thr_idx - 1) / (parallel_dim[2] - temp_thr_idx);
                        //     	    temp_nc -= temp_width;
                        //     	    if (temp_nc < 0) 
                        //     	        temp_width += temp_nc;
                        //     	    range_nc_for_packB[tid_group_idx[1]][temp_thr_idx + 1] = 
						// 					min(range_nc_for_packB[tid_group_idx[1]][temp_thr_idx] + temp_width * col_batch, nc_adjust);
                        //     	}
                        // 	}

						// }
						// printf("packB nt = %d, tid = %d, range_nc_for_packB[tid_in_node] = %d, range_nc_for_packB[tid_in_node + 1] = %d\n", nt, tid, 
						//		range_nc_for_packB[tid_group_idx[1]][tid_idx_in_group[1]], range_nc_for_packB[tid_group_idx[1]][tid_idx_in_group[1] + 1]);

                        #pragma omp barrier
                        packB_timer.startBench();
						// int pack_b_from = range_nc_for_packB[tid_group_idx[1]][tid_idx_in_group[1]];
						// int pack_b_to = range_nc_for_packB[tid_group_idx[1]][tid_idx_in_group[1] + 1];
                        int pack_b_from = range_kc_for_packB[tid_group_idx[1]][tid_idx_in_group[1]];
                        int pack_b_to = range_kc_for_packB[tid_group_idx[1]][tid_idx_in_group[1] + 1];
                        // printf("tid = %d, pack_b_from = %d, pack_b_to = %d, nt = %d\n", tid, pack_b_from, pack_b_to, nt);
						if (pack_b_to > pack_b_from)
                        	this->pack_b_mt(kc_adjust, nc_adjust, B + kt*ldb + nt, ldb, packB_copy,
                            		        pack_b_from, pack_b_to, row_batch, col_batch);
                        packB_timer.accumBench();
                    	#pragma omp barrier
                    }

                    float *packC_copy = C + tid_group_idx[0]*packC_memory_block_size_per_node + mt*ldc + nt;

                    int remain_col_start = nc_adjust - nc_adjust % col_batch;
                    int packB_step = col_batch * kc_adjust;
                    // printf("tid = %d, n_from = %d, n_to = %d, nt = %d, m_from = %d, m_to = %d\n", tid, n_from, n_to, nt, mt + mc_from, mt + mc_to);

					// printf("kernel start, tid = %d, mc_from = %d, mc_to = %d.\n", tid, mc_from, mc_to);
                    kernel1_timer.startBench();
                    for (int i = mc_from; i < mc_to; i += row_batch) {
                        int row_batch_adjust = min(row_batch, mc_to - i);
                        float *packA_ptr = packA_copy + i * kc_adjust;
                        float *packB_ptr = packB_copy;
                        float *packC_ptr = packC_copy + i * ldc;
                        if (row_batch_adjust == row_batch) {
                            for (int j = 0; j < remain_col_start; j += col_batch) {
                                this->inner_kernel(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, prefetch_a, prefetch_b, prefetch_c);
                                packB_ptr += packB_step;
                                packC_ptr += col_batch;
                            }
                            // there are some remain numbers in column
                            if (remain_col_start < nc_adjust) {
								// printf("tid = %d, mc_from = %d, remain_col_start = %d, nc_adjust = %d\n", tid, mc_from, remain_col_start, nc_adjust);
                                inner_kernel_for_corner_fixm(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, nc_adjust - remain_col_start, pg_v1, pg_v2, pg_v3);
							}
							
                        } else {
                            for (int j = 0; j < remain_col_start; j += col_batch) {
                                inner_kernel_for_corner_fixn(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, col_batch, pg_true, pg_true, pg_true);
                                packB_ptr += packB_step;
                                packC_ptr += col_batch;
                            }
                            if (remain_col_start < nc_adjust)
                                inner_kernel_for_corner_nofix(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, nc_adjust - remain_col_start, pg_v1, pg_v2, pg_v3);
                        }
                        
                    }
                    kernel1_timer.accumBench();

                    // kernel2_timer.startBench();
                    // #pragma omp master
                    // {
                        // if (remain_row_start < mc_adjust) {
                        //     float *packA_ptr = packA_copy + remain_row_start * kc_adjust;
                        //     float *packB_ptr = packB_copy;
                        //     float *packC_ptr = packC_copy + remain_row_start * ldc;
                        //     for (int j = 0; j < remain_col_start; j += col_batch) {
                        //         inner_kernel_for_corner_fixn(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, pg_true, pg_true, pg_true);
                        //         packB_ptr += packB_step;
                        //         packC_ptr += col_batch;
                        //     }
                        //     if (remain_col_start < nc_adjust)
                        //         inner_kernel_for_corner_nofix(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, pg_v1, pg_v2, pg_v3);
                        // }
                    // }
                    // kernel2_timer.accumBench();
                }
            }
        }
        packA_timer.printBench("packA time", 1, tid);
        packB_timer.printBench("packB time", 1, tid);
        kernel1_timer.printBench("kernel1 time", 1, tid);
        other_timer.printBench("other time", 1, tid);
        // _mm_free(packB_memory_block);
        // compute_in_thread_timer.endBench("compute in thread");

    }
	compute_timer.endBench("compute");
	end_timer.startBench();
    // for (int i = 0; i < num_nodes; i++) {
    //     #pragma omp parallel forF
    //     for (int j = 0; j < M * N; j++) {
    //         C[j] += packC_memory_block[i*packC_memory_block_size_per_node + j];
    //     }
    // }
	end_timer.endBench("end");
    _mm_free(packB_memory_block);
    _mm_free(packA_memory_block);
    _mm_free(packC_memory_block);
        
}

void ConvIm2colLayer::GEMM_multithread_v2_MKN(float* A, float* B, float* C) {
    int lda = K;
    int ldb = N;
    int ldc = N;

    int packB_width;
    int packB_height;
    int packBC_width;
    int packBC_height;

    const int cores_per_node = 12;
    const int num_threads = this->num_threads;
    const int num_nodes = (num_threads + cores_per_node - 1) / cores_per_node;

    svbool_t pg_true = svptrue_b32();

    const int simd_width = 16;
    printf("num_thread = %d, num_nodes = %d\n", num_threads, num_nodes);

    int range_k[num_nodes + 1];
    int range_n[num_threads + 1];
    int range_m[num_threads + 1];
    
    inner_kernel_for_corner_func_t inner_kernel_array_for_corner_fixm[num_threads];
    inner_kernel_for_corner_func_t inner_kernel_array_for_corner_fixn[num_threads];
    inner_kernel_for_corner_func_t inner_kernel_array_for_corner_nofix[num_threads];

    float *packA_memory_block;
    float *packC_memory_block;

	Timer init_timer, compute_timer, end_timer;
	init_timer.startBench();
    // set range K of every node
    range_k[0] = 0;
    for (int temp_k = K, temp_width = 0, temp_node_idx = 0; temp_k > 0; temp_node_idx++) {
        temp_width = (temp_k + num_nodes - temp_node_idx - 1) / (num_nodes - temp_node_idx);
        temp_k -= temp_width;
        if (temp_k < 0)
            temp_width += temp_k;
        range_k[temp_node_idx + 1] = range_k[temp_node_idx] + temp_width;
    }
    
    // set range N of every thread
    int remain_row = this->M % this->row_batch;
    int remain_col;
    range_n[0] = 0;
    for (int temp_n = N, temp_width = 0, temp_thr_idx = 0; temp_n > 0; temp_thr_idx++) {
        temp_width = (temp_n + num_threads - temp_thr_idx - 1) / (num_threads - temp_thr_idx);
        temp_n -= temp_width;
        if (temp_n < 0) 
            temp_width += temp_n;
        range_n[temp_thr_idx + 1] = range_n[temp_thr_idx] + temp_width;
        remain_col = temp_width % this->col_batch;
        if (row_batch == 12 && col_batch == 32) {
            inner_kernel_array_for_corner_fixm[temp_thr_idx]  = kernel_MxN_for_12x32_func_tab[row_batch - 1][(remain_col + simd_width-1)/simd_width - 1];
            inner_kernel_array_for_corner_fixn[temp_thr_idx]  = kernel_MxN_for_12x32_func_tab[remain_row - 1][col_batch/simd_width - 1];
            inner_kernel_array_for_corner_nofix[temp_thr_idx] = kernel_MxN_for_12x32_func_tab[remain_row - 1][(remain_col + simd_width-1)/simd_width - 1];
        } else if (row_batch == 8 && col_batch == 48) {
            inner_kernel_array_for_corner_fixm[temp_thr_idx]  = kernel_MxN_for_8x48_func_tab[row_batch - 1][(remain_col + simd_width-1)/simd_width - 1];
            inner_kernel_array_for_corner_fixn[temp_thr_idx]  = kernel_MxN_for_8x48_func_tab[remain_row - 1][col_batch/simd_width - 1];
            inner_kernel_array_for_corner_nofix[temp_thr_idx] = kernel_MxN_for_8x48_func_tab[remain_row - 1][(remain_col + simd_width-1)/simd_width - 1];
        }
        // printf("tid = %d, remain_col = %d, remain_row = %d\n", temp_thr_idx, remain_col, remain_row);
    }
    range_n[num_threads] = N;

    // printf("range_n[1] = %d, range_n[2] = %d\n", range_n[1], range_n[2]);

    const size_t packA_memory_block_size_per_node = mc * (range_k[1]-range_k[0]) + 64;
	// printf("packA_size = %u\n", packA_memory_block_size_per_node);
    const size_t packC_memory_block_size_per_node = M * N + 64;

    // numa memory initializaion
    if (num_nodes >= 1) {
        size_t size_a = packA_memory_block_size_per_node * num_nodes;
        packA_memory_block = (float*)_mm_malloc(sizeof(float) * size_a);
        // #pragma omp parallel for schedule(static)
        // for (size_t i = 0; i < size_a; i++) {
        //     packA_memory_block[i] = 0.0f;
        // }

        size_t size_c = packC_memory_block_size_per_node * num_nodes;
        packC_memory_block = (float*)_mm_malloc(sizeof(float) * size_c);
        // #pragma omp parallel for schedule(static)
        // for (size_t i = 0; i < size_c; i++) {
        //     packC_memory_block[i] = 0.0f;
        // }
    }
    size_t size_b = (size_t)(K) * (size_t)(align_ceil(N, this->col_batch)) + 64;
    float *packB_memory_block = (float*)_mm_malloc(sizeof(float) * size_b);

	init_timer.endBench("init");
	printf("---------initializaion work done.---------\n");
	compute_timer.startBench();
    #pragma omp parallel
    {
        // Timer init_in_thread_timer, compute_in_thread_timer;
        // init_in_thread_timer.startBench();
        // Timer packA_timer, packB_timer, kernel1_timer, kernel2_timer;

        int tid = omp_get_thread_num();
        int nid = tid / cores_per_node;

        int k_from = range_k[nid];
        int k_to = range_k[nid+1];
        // int n_from = range_n[tid];
        // int n_to = range_n[tid+1];
        int n_from = 0;
        int n_to = N;
        int k_step = k_to - k_from;
        int n_step = align_ceil(n_to - n_from, this->col_batch);
        int remain_col = (n_to - n_from) % this->col_batch;

        inner_kernel_for_corner_func_t inner_kernel_for_corner_fixm = inner_kernel_array_for_corner_fixm[tid];
        inner_kernel_for_corner_func_t inner_kernel_for_corner_fixn = inner_kernel_array_for_corner_fixn[tid];
        inner_kernel_for_corner_func_t inner_kernel_for_corner_nofix = inner_kernel_array_for_corner_nofix[tid];
    
        svbool_t pg_v1 = (remain_col < 1 * simd_width                                ? svwhilelt_b32(remain_col,                  1 * simd_width) : svptrue_b32());
        svbool_t pg_v2 = (remain_col > 1 * simd_width && remain_col < 2 * simd_width ? svwhilelt_b32(remain_col - 1 * simd_width, 1 * simd_width) : svptrue_b32());
        svbool_t pg_v3 = (remain_col > 2 * simd_width                                ? svwhilelt_b32(remain_col - 2 * simd_width, 1 * simd_width) : svptrue_b32());

        // allocate packB memory block
        // size_t size_b = (size_t)(k_step) * (size_t)(n_step) + 256;
        // float *packB_memory_block = (float*)_mm_malloc(sizeof(float) * size_b);
        // for (size_t i = 0; i < size_b; i++)
        //    packB_memory_block[i] = 0.0f;
        
	    // init_in_thread_timer.endBench("init in thread");
        // compute_in_thread_timer.startBench();

        // GEMM main subroutine
        for (int mt = 0; mt < M; mt += mc) {
            int mc_adjust = min(mc, M - mt);

            for (int kt = k_from; kt < k_to; kt += kc) {
                int kc_adjust = min(kc, k_to - kt);
			    // printf("tid = %d, kt = %d\n", tid, kt);

                float *packA_copy = packA_memory_block + nid*packA_memory_block_size_per_node;

                // master thread in every node is responsible to remote load A and pack A
                // if (tid % cores_per_node == 0) {
					// printf("packA begin mt = %d, tid = %d\n", mt, tid);
                    // packA_timer.startBench();
                    // printf("------mt = %d--------\n", mt);
                    this->pack_a(mc_adjust, kc_adjust, A + mt*lda + kt, lda, packA_copy, mc, kc, nc, row_batch, col_batch);
                    // packA_timer.accumBench();
					// printf("packA over mt = %d, tid = %d\n", mt, tid);
                // }

                for (int nt = n_from; nt < n_to; nt += nc) {
                    int nc_adjust = min(nc, n_to - nt);
                    float *packB_copy = packB_memory_block + kt * n_step + (nt - n_from) * kc_adjust;

					// printf("tid = %d, nt = %d, nc_adjust = %d, packA[0] = %f, packA[1] = %f, packA[2] = %f \n",
                    //         tid, nt, nc_adjust, packA_copy[0], packA_copy[1], packA_copy[2]);

                    if (mt == 0) {
                        // packB_timer.startBench();
						// printf("packB nt = %d, tid = %d\n", nt, tid);
                        // #pragma omp master
                        // {
                            this->pack_b(kc_adjust, nc_adjust, B + kt*ldb + nt, ldb, packB_copy, row_batch, col_batch);
                        // }
                        // packB_timer.accumBench();
                    }

                    float *packC_copy = C + nid*packC_memory_block_size_per_node + mt*ldc + nt;

                    int remain_col_start = nc_adjust - nc_adjust % col_batch;
                    int remain_row_start = mc_adjust - mc_adjust % row_batch;
                    int packB_step = col_batch * kc_adjust;

                    // kernel1_timer.startBench();
                    #pragma omp for 
                    for (int i = 0; i < mc_adjust; i += row_batch) {
                        int mm = min(row_batch, mc_adjust - i);
                        float *packA_ptr = packA_copy + i * kc_adjust;
                        float *packB_ptr = packB_copy;
                        float *packC_ptr = packC_copy + i * ldc;
                        if (mm == row_batch) {
                            for (int j = 0; j < remain_col_start; j += col_batch) {
                                this->inner_kernel(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, prefetch_a, prefetch_b, prefetch_c);
                                packB_ptr += packB_step;
                                packC_ptr += col_batch;
                            }
                            // there are some remain numbers in column
                            if (remain_col_start < nc_adjust)
                                inner_kernel_for_corner_fixm(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, col_batch, pg_v1, pg_v2, pg_v3);
                        } else {
                            for (int j = 0; j < remain_col_start; j += col_batch) {
                                inner_kernel_for_corner_fixn(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, col_batch, pg_true, pg_true, pg_true);
                                packB_ptr += packB_step;
                                packC_ptr += col_batch;
                            }
                            if (remain_col_start < nc_adjust)
                                inner_kernel_for_corner_nofix(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, col_batch, pg_v1, pg_v2, pg_v3);
                        }
                        
                    }
                    // kernel1_timer.accumBench();

                    // kernel2_timer.startBench();
                    // #pragma omp master
                    // {
                        // if (remain_row_start < mc_adjust) {
                        //     float *packA_ptr = packA_copy + remain_row_start * kc_adjust;
                        //     float *packB_ptr = packB_copy;
                        //     float *packC_ptr = packC_copy + remain_row_start * ldc;
                        //     for (int j = 0; j < remain_col_start; j += col_batch) {
                        //         inner_kernel_for_corner_fixn(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, pg_true, pg_true, pg_true);
                        //         packB_ptr += packB_step;
                        //         packC_ptr += col_batch;
                        //     }
                        //     if (remain_col_start < nc_adjust)
                        //         inner_kernel_for_corner_nofix(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, pg_v1, pg_v2, pg_v3);
                        // }
                    // }
                    // kernel2_timer.accumBench();
                }
                #pragma omp barrier
            }
        }
	    // if (tid == 0) {
        //     packA_timer.printBench("t0 packA time", 1);
        //     packB_timer.printBench("t0 packB time", 1);
        //     kernel1_timer.printBench("t0 kernel1 time", 1);
        //     kernel2_timer.printBench("t0 kernel2 time", 1);
        // } else {
        //     packA_timer.printBench("t1 packA time", 1);
        //     packB_timer.printBench("t1 packB time", 1);
        //     kernel1_timer.printBench("t1 kernel1 time", 1);
        //     kernel2_timer.printBench("t1 kernel2 time", 1);
        // }
        // _mm_free(packB_memory_block);
        // compute_in_thread_timer.endBench("compute in thread");

    }
	compute_timer.endBench("compute");
	end_timer.startBench();
    // for (int i = 0; i < num_nodes; i++) {
    //     #pragma omp parallel forF
    //     for (int j = 0; j < M * N; j++) {
    //         C[j] += packC_memory_block[i*packC_memory_block_size_per_node + j];
    //     }
    // }
	end_timer.endBench("end");
    _mm_free(packB_memory_block);
    _mm_free(packA_memory_block);
    _mm_free(packC_memory_block);
        
}

void ConvIm2colLayer::GEMM_multithread_v1(float* A, float* B, float* C) {
    int lda = K;
    int ldb = N;
    int ldc = N;

    int packB_width;
    int packB_height;
    int packBC_width;
    int packBC_height;

    const int cores_per_node = 12;
    const int num_threads = this->num_threads;
    const int num_nodes = (num_threads + cores_per_node - 1) / cores_per_node;

    svbool_t pg_true = svptrue_b32();

    const int simd_width = 16;
    printf("num_thread = %d, num_nodes = %d\n", num_threads, num_nodes);

    int range_k[num_nodes + 1];
    int range_n[num_threads + 1];
    int range_m[num_threads + 1];
    
    inner_kernel_for_corner_func_t inner_kernel_array_for_corner_fixm[num_threads];
    inner_kernel_for_corner_func_t inner_kernel_array_for_corner_fixn[num_threads];
    inner_kernel_for_corner_func_t inner_kernel_array_for_corner_nofix[num_threads];

    float *packA_memory_block;
    float *packC_memory_block;

	Timer init_timer, compute_timer, end_timer;
	init_timer.startBench();
    // set range K of every node
    range_k[0] = 0;
    for (int temp_k = K, temp_width = 0, temp_node_idx = 0; temp_k > 0; temp_node_idx++) {
        temp_width = (temp_k + num_nodes - temp_node_idx - 1) / (num_nodes - temp_node_idx);
        temp_k -= temp_width;
        if (temp_k < 0)
            temp_width += temp_k;
        range_k[temp_node_idx + 1] = range_k[temp_node_idx] + temp_width;
    }
    
    // set range N of every thread
    int remain_row = this->M % this->row_batch;
    int remain_col;
    range_n[0] = 0;
    for (int temp_n = N, temp_width = 0, temp_thr_idx = 0; temp_n > 0; temp_thr_idx++) {
        temp_width = (temp_n + num_threads - temp_thr_idx - 1) / (num_threads - temp_thr_idx);
        temp_n -= temp_width;
        if (temp_n < 0) 
            temp_width += temp_n;
        range_n[temp_thr_idx + 1] = range_n[temp_thr_idx] + temp_width;
        remain_col = temp_width % this->col_batch;
        if (row_batch == 12 && col_batch == 32) {
            inner_kernel_array_for_corner_fixm[temp_thr_idx]  = kernel_MxN_for_12x32_func_tab[row_batch - 1][(remain_col + simd_width-1)/simd_width - 1];
            inner_kernel_array_for_corner_fixn[temp_thr_idx]  = kernel_MxN_for_12x32_func_tab[remain_row - 1][col_batch/simd_width - 1];
            inner_kernel_array_for_corner_nofix[temp_thr_idx] = kernel_MxN_for_12x32_func_tab[remain_row - 1][(remain_col + simd_width-1)/simd_width - 1];
        } else if (row_batch == 8 && col_batch == 48) {
            inner_kernel_array_for_corner_fixm[temp_thr_idx]  = kernel_MxN_for_8x48_func_tab[row_batch - 1][(remain_col + simd_width-1)/simd_width - 1];
            inner_kernel_array_for_corner_fixn[temp_thr_idx]  = kernel_MxN_for_8x48_func_tab[remain_row - 1][col_batch/simd_width - 1];
            inner_kernel_array_for_corner_nofix[temp_thr_idx] = kernel_MxN_for_8x48_func_tab[remain_row - 1][(remain_col + simd_width-1)/simd_width - 1];
        }
        // printf("tid = %d, remain_col = %d, remain_row = %d\n", temp_thr_idx, remain_col, remain_row);
    }
    range_n[num_threads] = N;

    // printf("range_n[1] = %d, range_n[2] = %d\n", range_n[1], range_n[2]);

    const size_t packA_memory_block_size_per_node = mc * (range_k[1]-range_k[0]) + 256;
	// printf("packA_size = %u\n", packA_memory_block_size_per_node);
    const size_t packC_memory_block_size_per_node = M * N + 256;

    // numa memory initializaion
    if (num_nodes >= 1) {
        size_t size_a = packA_memory_block_size_per_node * num_nodes;
        packA_memory_block = (float*)_mm_malloc(sizeof(float) * size_a);
        // #pragma omp parallel for schedule(static)
        // for (size_t i = 0; i < size_a; i++) {
        //     packA_memory_block[i] = 0.0f;
        // }

        size_t size_c = packC_memory_block_size_per_node * num_nodes;
        packC_memory_block = (float*)_mm_malloc(sizeof(float) * size_c);
        // #pragma omp parallel for schedule(static)
        // for (size_t i = 0; i < size_c; i++) {
        //     packC_memory_block[i] = 0.0f;
        // }
    }
	init_timer.endBench("init");
	printf("---------initializaion work done.---------\n");
	compute_timer.startBench();
    #pragma omp parallel
    {
        Timer packA_timer, packB_timer, kernel1_timer, kernel2_timer;
        // Timer init_in_thread_timer, compute_in_thread_timer;
        // init_in_thread_timer.startBench();
        int tid = omp_get_thread_num();
        int nid = tid / cores_per_node;

        int k_from = range_k[nid];
        int n_from = range_n[tid];
        int k_to = range_k[nid+1];
        int n_to = range_n[tid+1];
        int k_step = k_to - k_from;
        int n_step = align_ceil(n_to - n_from, this->col_batch);
        int remain_col = (n_to - n_from) % this->col_batch;

        inner_kernel_for_corner_func_t inner_kernel_for_corner_fixm = inner_kernel_array_for_corner_fixm[tid];
        inner_kernel_for_corner_func_t inner_kernel_for_corner_fixn = inner_kernel_array_for_corner_fixn[tid];
        inner_kernel_for_corner_func_t inner_kernel_for_corner_nofix = inner_kernel_array_for_corner_nofix[tid];
    
        svbool_t pg_v1 = (remain_col < 1 * simd_width                                ? svwhilelt_b32(remain_col,                  1 * simd_width) : svptrue_b32());
        svbool_t pg_v2 = (remain_col > 1 * simd_width && remain_col < 2 * simd_width ? svwhilelt_b32(remain_col - 1 * simd_width, 1 * simd_width) : svptrue_b32());
        svbool_t pg_v3 = (remain_col > 2 * simd_width                                ? svwhilelt_b32(remain_col - 2 * simd_width, 1 * simd_width) : svptrue_b32());

        // allocate packB memory block
        size_t size_b = (size_t)(kc) * (size_t)(n_step) + 256;
        float *packB_memory_block = (float*)_mm_malloc(sizeof(float) * size_b);
        // for (size_t i = 0; i < size_b; i++)
        //    packB_memory_block[i] = 0.0f;
        
	    // init_in_thread_timer.endBench("init in thread");
        // compute_in_thread_timer.startBench();

        // GEMM main subroutine
        for (int kt = k_from; kt < k_to; kt += kc) {
            int kc_adjust = min(kc, k_to - kt);
			// printf("tid = %d, kt = %d\n", tid, kt);

            for (int mt = 0; mt < M; mt += mc) {
                int mc_adjust = min(mc, M - mt);
                float *packA_copy = packA_memory_block + nid*packA_memory_block_size_per_node;

                #pragma omp barrier
                // master thread in every node is responsible to remote load A and pack A
                // if (tid % cores_per_node == 0) {
					// printf("packA begin mt = %d, tid = %d\n", mt, tid);
                    // packA_timer.startBench();
                    // printf("------mt = %d--------\n", mt);
                    packA_timer.startBench();
                    this->pack_a(mc_adjust, kc_adjust, A + mt*lda + kt, lda, packA_copy, mc, kc, nc, row_batch, col_batch);
                    packA_timer.accumBench();
                    // packA_timer.accumBench();
					// printf("packA over mt = %d, tid = %d\n", mt, tid);
                // }

                for (int nt = n_from; nt < n_to; nt += nc) {
                    int nc_adjust = min(nc, n_to - nt);
                    float *packB_copy = packB_memory_block + (nt - n_from) * kc;

					// printf("tid = %d, nt = %d, nc_adjust = %d, packA[0] = %f, packA[1] = %f, packA[2] = %f \n",
                    //         tid, nt, nc_adjust, packA_copy[0], packA_copy[1], packA_copy[2]);

                    if (mt == 0) {
                        // packB_timer.startBench();
						// printf("packB nt = %d, tid = %d\n", nt, tid);
                        packB_timer.startBench();
                        this->pack_b(kc_adjust, nc_adjust, B + kt*ldb + nt, ldb, packB_copy, row_batch, col_batch);
                        packB_timer.accumBench();
                        // packB_timer.accumBench();
                    }

                    float *packC_copy = C + nid*packC_memory_block_size_per_node + mt*ldc + nt;

                    int remain_col_start = nc_adjust - nc_adjust % col_batch;
                    int remain_row_start = mc_adjust - mc_adjust % row_batch;
                    int packB_step = col_batch * kc_adjust;

                    kernel1_timer.startBench();
                    for (int i = 0; i < remain_row_start; i += row_batch) {
                        float *packA_ptr = packA_copy + i * kc_adjust;
                        float *packB_ptr = packB_copy;
                        float *packC_ptr = packC_copy + i * ldc;
                        for (int j = 0; j < remain_col_start; j += col_batch) {
                            this->inner_kernel(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, prefetch_a, prefetch_b, prefetch_c);
                            packB_ptr += packB_step;
                            packC_ptr += col_batch;
                        }
                        // there are some remain numbers in column
                        if (remain_col_start < nc_adjust)
                            inner_kernel_for_corner_fixm(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, col_batch, pg_v1, pg_v2, pg_v3);
                    }

                    if (remain_row_start < mc_adjust) {
                        float *packA_ptr = packA_copy + remain_row_start * kc_adjust;
                        float *packB_ptr = packB_copy;
                        float *packC_ptr = packC_copy + remain_row_start * ldc;
                        for (int j = 0; j < remain_col_start; j += col_batch) {
                            inner_kernel_for_corner_fixn(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, col_batch, pg_true, pg_true, pg_true);
                            packB_ptr += packB_step;
                            packC_ptr += col_batch;
                        }
                        if (remain_col_start < nc_adjust)
                            inner_kernel_for_corner_nofix(kc_adjust, packA_ptr, packB_ptr, packC_ptr, ldc, col_batch, pg_v1, pg_v2, pg_v3);
                    }
                    kernel1_timer.accumBench();
                }
            }
        }

        if (tid == 0) {
            packA_timer.printBench("t0 packA time", 1);
            packB_timer.printBench("t0 packB time", 1);
            kernel1_timer.printBench("t0 kernel1 time", 1);
        } else {
            packA_timer.printBench("t1 packA time", 1);
            packB_timer.printBench("t1 packB time", 1);
            kernel1_timer.printBench("t1 kernel1 time", 1);
        }
	    
        _mm_free(packB_memory_block);
        // compute_in_thread_timer.endBench("compute in thread");
    }
	compute_timer.endBench("compute");
	end_timer.startBench();
    // for (int i = 0; i < num_nodes; i++) {
    //     #pragma omp parallel forF
    //     for (int j = 0; j < M * N; j++) {
    //         C[j] += packC_memory_block[i*packC_memory_block_size_per_node + j];
    //     }
    // }
	end_timer.endBench("end");
    _mm_free(packA_memory_block);
    _mm_free(packC_memory_block);
        
}

void ConvIm2colLayer::set_pack_a() {
    this->pack_a = pack_a_v2;
}

void ConvIm2colLayer::set_pack_a_mt() {
    this->pack_a_mt = pack_a_v2_multithread;
}


void ConvIm2colLayer::set_pack_b() {
    if (col_batch == 32)
        this->pack_b = pack_b_v2_12x32;
    else if (col_batch == 64)
        this->pack_b = pack_b_v2_4x64;
    else if (col_batch == 48)
        this->pack_b = pack_b_v2_8x48;
    // if (row_batch == 8 && col_batch == 8) 
    //     this->pack_b = pack_b_v2_8x8;
    // else if (row_batch == 8 && col_batch == 12)
    //     this->pack_b = pack_b_v2_8x12;
    // else if (row_batch == 4 && col_batch == 16)
    //     this->pack_b = pack_b_v2_4x16;
}

void ConvIm2colLayer::set_pack_b_mt() {
    if (row_batch == 12 && col_batch == 32)
        this->pack_b_mt = pack_b_v2_12x32_multithread;
    // if (row_batch == 8 && col_batch == 8) {
    //     switch (gemm_version) {
    //         case 0:
    //             this->pack_b_mt = pack_b_multithread_8x8_v1;
    //         case 1:
    //             this->pack_b_mt = pack_b_multithread_8x8_v2;
    //         case 2:
    //             this->pack_b_mt = pack_b_multithread_8x8_v3;
    //         default:
    //             break;
    //     }
    // }
    // else if (row_batch == 8 && col_batch == 12) {
    //     switch (gemm_version) {
    //         case 0:
    //             this->pack_b_mt = pack_b_multithread_8x12_v1;
    //         case 1:
    //             this->pack_b_mt = pack_b_multithread_8x12_v2;
    //         case 2:
    //             this->pack_b_mt = pack_b_multithread_8x12_v3;
    //         default:
    //             break;
    //     }
        
    // }
    // else if (row_batch == 4 && col_batch == 16) {
    //     switch (gemm_version) {
    //         case 0:
    //             this->pack_b_mt = pack_b_multithread_4x16_v1;
    //         case 1:
    //             this->pack_b_mt = pack_b_multithread_4x16_v2;
    //         case 2:
    //             this->pack_b_mt = pack_b_multithread_4x16_v3;
    //         default:
    //             break;
    //     }
    // }
}

void ConvIm2colLayer::set_pack_c() {
    this->pack_c = nullptr;
    // if (row_batch == 8 && col_batch == 8) {
    //     if (pack_c_version == 0)
    //         this->pack_c = nullptr;
    //     else if (pack_c_version == 1)
    //         this->pack_c = load_c_v2_8x8;
    //     else
    //         this->pack_c = load_c_v2_8x8_pack;
    // } else if (row_batch == 8 && col_batch == 12) {
    //     if (pack_c_version == 0)
    //         this->pack_c = nullptr;
    //     else if (pack_c_version == 1)
    //         this->pack_c = load_c_v2_8x12;
    //     else
    //         this->pack_c = load_c_v2_8x12_pack;
    // } else if (row_batch == 4 && col_batch == 16) {
    //     if (pack_c_version == 0)
    //         this->pack_c = nullptr;
    //     else if (pack_c_version == 1)
    //         this->pack_c = load_c_v2_4x16;
    //     else
    //         this->pack_c = load_c_v2_4x16_pack;
    // }
}

void ConvIm2colLayer::set_unpack_c() {
    this->unpack_c = nullptr;
    // if (row_batch == 8 && col_batch == 8) {
    //     if (pack_c_version == 0)
    //         this->unpack_c = nullptr;
    //     else if (pack_c_version == 1)
    //         this->unpack_c = write_c_v2_8x8;
    //     else
    //         this->unpack_c = write_c_v2_8x8_unpack;
    // } else if (row_batch == 8 && col_batch == 12) {
    //     if (pack_c_version == 0)
    //         this->unpack_c = nullptr;
    //     else if (pack_c_version == 1)
    //         this->unpack_c = write_c_v2_8x12;
    //     else
    //         this->unpack_c = write_c_v2_8x12_unpack;
    // } else if (row_batch == 4 && col_batch == 16) {
    //     if (pack_c_version == 0)
    //         this->unpack_c = nullptr;
    //     else if (pack_c_version == 1)
    //         this->unpack_c = write_c_v2_4x16;
    //     else
    //         this->unpack_c = write_c_v2_4x16_unpack;
    // }
}

void ConvIm2colLayer::set_inner_kernel() {
    if (row_batch == 12 && col_batch == 32) {
        // this->inner_kernel = kernel_12x32_v1;
        this->inner_kernel = kernel_12x32_v2;
    } else if (row_batch == 8 && col_batch == 32) {
        this->inner_kernel = kernel_8x32;
    } else if (row_batch == 14 && col_batch == 32) {
        this->inner_kernel = kernel_14x32;
    } else if (row_batch == 4 && col_batch == 64) {
        this->inner_kernel = kernel_4x64;
    } else if (row_batch == 8 && col_batch == 48) {
        this->inner_kernel = kernel_8x48;
    }
    // if (row_batch == 8 && col_batch == 8) {
    //     if (pack_c_version == 0 || pack_c_version == 1)
    //         this->inner_kernel = kernel_8x8;
    //     else
    //         this->inner_kernel = kernel_8x8_packC;
    // } else if (row_batch == 8 && col_batch == 12) {
    //     if (pack_c_version == 0 || pack_c_version == 1)
    //         this->inner_kernel = kernel_8x12;
    //     else
    //         this->inner_kernel = kernel_8x12_packC;
    // } else if (row_batch == 4 && col_batch == 16) {
    //     if (pack_c_version == 0 || pack_c_version == 1)
    //         this->inner_kernel = kernel_4x16;
    //     else
    //         this->inner_kernel = kernel_4x16_packC;
    // }
}

void ConvIm2colLayer::set_inner_kernel_for_corner(int k) {
    if (col_batch == 32) {
        this->inner_kernel_for_corner = get_kernel_Nx32(k);
    } else if (col_batch == 64) {
        this->inner_kernel_for_corner = get_kernel_Nx64(k);
    }
    // if (row_batch == 8 && col_batch == 8) {
    //     if (pack_c_version == 0 || pack_c_version == 1)
    //         this->inner_kernel_for_corner = get_kernel_Nx8(k);
    //     else
    //         this->inner_kernel_for_corner = get_kernel_Nx8_packC(k);
    // } else if (row_batch == 8 && col_batch == 12) {
    //     if (pack_c_version == 0 || pack_c_version == 1)
    //         this->inner_kernel_for_corner = get_kernel_Nx12(k);
    //     else
    //         this->inner_kernel_for_corner = get_kernel_Nx12_packC(k);
    // } else if (row_batch == 4 && col_batch == 16) {
    //     if (pack_c_version == 0 || pack_c_version == 1)
    //         this->inner_kernel_for_corner = get_kernel_Nx16(k);
    //     else
    //         this->inner_kernel_for_corner = get_kernel_Nx16_packC(k);
    // }
}

// void ConvIm2colLayer::set_inner_kernel_for_corner_mask(int remain_row, int remain_col) {
//     if (row_batch == 12 && col_batch == 32) {
//         inner_kernel_for_corner_fixm  = kernel_MxN_for_12x32_func_tab[12 - 1][remain_col/simd_width - 1];
//         inner_kernel_for_corner_fixn  = kernel_MxN_for_12x32_func_tab[remain_row - 1][32/simd_width - 1];
//         inner_kernel_for_corner_nofix = kernel_MxN_for_12x32_func_tab[remain_row - 1][remain_col/simd_width - 1];
//     } else if (row_batch == 8 && col_batch == 48) {
//         inner_kernel_for_corner_fixm  = kernel_MxN_for_12x32_func_tab[8 - 1][remain_col/simd_width - 1];
//         inner_kernel_for_corner_fixn  = kernel_MxN_for_12x32_func_tab[remain_row - 1][48/simd_width - 1];
//         inner_kernel_for_corner_nofix = kernel_MxN_for_12x32_func_tab[remain_row - 1][remain_col/simd_width - 1];
//     }
// }
