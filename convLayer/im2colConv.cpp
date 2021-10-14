#include "im2colConv.h"
#include "../utility/common.h"
#include <dirent.h>
#include <sys/types.h>
#include <sys/stat.h> 
#include <vector>
#include <omp.h>
#include "fj_tool/fapp.h"	// profiler header

struct RegisterKernel {
    int row_batch;
    int col_batch;

    RegisterKernel() {}
    RegisterKernel(int row, int col) : row_batch(row), col_batch(col) {}
};

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
    this->num_threads = num_threads;
    // this->kernel_data = static_cast<float*>(realloc(this->kernel_data, sizeof(float) * M * K));
    // this->transform_input_data = static_cast<float*>(malloc(sizeof(float) * output_height * output_width * input_channels * kernel_height * kernel_width));
    // this->output_data = static_cast<float*>(realloc(this->output_data ,sizeof(float) * (output_height * output_width * output_channels + 128))); 
    // memset(output_data, 0, sizeof(float) * (output_height * output_width * output_channels + 128));

    // indicate M N K directly
    // this->M = 128; this->N = 12544; this->K = 576;
//    this->kernel_data = static_cast<float*>(realloc(this->kernel_data, sizeof(float) * M * K));
//    this->transform_input_data = static_cast<float*>(malloc(sizeof(float) * N * K));
//    this->output_data = static_cast<float*>(realloc(this->output_data, sizeof(float) * (M * N + 128))); 	
    free(this->kernel_data);
    free(this->output_data);
    this->kernel_data = static_cast<float*>(_mm_malloc(sizeof(float) * M * K, 256));
    this->transform_input_data = static_cast<float*>(_mm_malloc(sizeof(float) * N * K, 256));
    this->output_data = static_cast<float*>(_mm_malloc(sizeof(float) * (M * N + 128), 256)); 	
    
    memset(output_data, 0, sizeof(float) * (M * N + 128));

    if (this->num_threads > 1) {
        this->gemm_version = GEMM_BLOCKS_MULTI_THREADS;
    } else {
        if (M <= 32 && N <= 32 && K <= 32)
            this->gemm_version = GEMM_NO_BLOCKS;
        else
            this->gemm_version = GEMM_BLOCKS_SINGLE_THREAD;
    }

    // initialize data
    this->im2col_v1();
}

ConvIm2colLayer::~ConvIm2colLayer() {
    free(this->transform_input_data);
}

void ConvIm2colLayer::select_tuning_range_for_mnk(size_t &l1_bound, size_t &l2_bound,
                                                  int &mc_begin, int &mc_end, int &mc_step, 
                                                  int &nc_begin, int &nc_end, int &nc_step, 
                                                  int &kc_begin, int &kc_end, int &kc_step) {
    
    int max_tuning_num = 1024;

    // int mc_num = ((M < 128 ? M : 128) - 1) / row_batch + 1;
    int mc_num = (M - 1) / row_batch + 1;
    int nc_num = (N - 1) / col_batch + 1;
    int kc_num = (K < 8 ? K : 8);

    if(mc_num * nc_num > max_tuning_num)	{
        //OC will be divided at most 64 parts.
        if(mc_num >= 64)	          
            mc_num = 64;	
        //All the others will be used on tile
        if(nc_num > max_tuning_num / mc_num)  
            nc_num = max_tuning_num / mc_num; 
    }

    int M_step = (M - 1) / (row_batch * mc_num) + 1;
    int N_step = (N - 1) / (col_batch * nc_num) + 1;
    int K_step = (K - 1) / kc_num + 1;

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
    if (gemm_version == GEMM_BLOCKS_MULTI_THREADS)
        pb_end = 2;
    
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
    int M, N, K, mc, nc, kc, row_batch, col_batch, gemm_version, pc_version, pb_version, pre_a, pre_b, pre_c;
    if (log_file != nullptr) {
        while (fscanf(log_file, "%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d", 
                    &M, &N, &K, &mc, &nc, &kc, &row_batch, &col_batch, &gemm_version, &pc_version, &pb_version, &pre_a, &pre_b, &pre_c) != EOF) {
	    if (M == this->M && N == this->N && K == this->K && gemm_version == this->gemm_version) {
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
    kernels.push_back(RegisterKernel(12, 32));
    // kernels.push_back(RegisterKernel(4, 64));
    kernels.push_back(RegisterKernel(14, 32));
    // kernels.push_back(RegisterKernel(10, 32));
    // kernels.push_back(RegisterKernel(8, 32));
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
                                        this->im2col_v1();
                                        int warmup_loop = 5;
                                        for (int i = 0; i < warmup_loop; i++) {
                                            // this->im2col_v1();
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
    	fprintf(log_file, "%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d\n", 
                this->M, this->N, this->K, best_mc, best_nc, best_kc, best_rb, best_cb, 
                this->gemm_version, best_pc, best_pb, best_pre_a, best_pre_b, best_pre_c);
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
    if (gemm_version == GEMM_BLOCKS_MULTI_THREADS)
        this->set_pack_b_mt();
    return 1;
}

void fill_test_data(float* input, int M, int N) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            input[i*N + j] = 256 *rand() / double(RAND_MAX);
        }
    }
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
        this->sgemm();
    }

    memset(output_data, 0, sizeof(float) * (M * N + 32));

    for (int i = 0; i < iterations; i++) {
        total.startBench();
        im2col_profiler.startBench();
        // this->im2col();
        // this->im2col_v1();
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
    printf("M = %d, N = %d, K = %d\n", this->M, this->N, this->K);
    printf("Efficency: %lf \%, GFlops: %lf \n", efficiency, gflops);

    // float *output_data_ref = new float[M * N + 32];
    // memset(output_data_ref, 0, sizeof(float) * (M * N + 32));
    // GEMM(kernel_data, transform_input_data, output_data_ref);
    // if (output_data_ref != NULL)
    //   float dis = diff(output_data_ref, output_data, this->M, this->N);
	// delete [] output_data_ref;

//    printf_matrix(output_data, M, N);
//    printf("---------------\n");
//    printf_matrix(output_data_ref, M, N);


    // printf("c[0] = %f, c[1] = %f, c[2] = %f\n", output_data[0], output_data[1], output_data[2]);
    // printf("c_ref[0] = %f, c_ref[1] = %f, c_ref[2] = %f\n", output_data_ref[0], output_data_ref[1], output_data_ref[2]);
    

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
    // int padding_input_width  = input_width  + padding_left + padding_right;
    // int padding_input_height = input_height + padding_top  + padding_bottom;
    // int padding_input_size   = padding_input_height * padding_input_width;
    // int input_size = input_height * input_width;

    // float* padding_input_data = static_cast<float*>(_mm_malloc(sizeof(float) * padding_input_size * input_channels, 64));
    // memset(padding_input_data, 0, sizeof(float) * padding_input_size * input_channels);

    // for (int ic = 0; ic < input_channels; ic++) {
    //     float* padding_input_ptr = padding_input_data + ic * padding_input_size + padding_top * padding_input_width + padding_left;
    //     float* input_ptr         = input_data + ic * input_size;
    //     for (int row = 0; row < input_height; row++) {
    //         memcpy(padding_input_ptr, input_ptr, sizeof(float) * input_width);
    //         padding_input_ptr += padding_input_width;
    //         input_ptr += input_width;
    //     }
    // }
    // int transform_input_height = input_channels * kernel_height * kernel_width;
    // int transform_input_width  = output_height  * output_width;
    // int transform_input_size = transform_input_height * transform_input_width;
    // float* in, *in_ptr, *in_ptr_copy;
    // float* transform_in_ptr = transform_input_data;


    // int padding_width = padding_left + padding_right;
    // int step = stride_height * padding_input_width;
    // // input transform
    // for (int ic = 0; ic < input_channels; ic++) {
    //     in = padding_input_data + ic*padding_input_size;
    //     for (int u = 0; u < kernel_height; u++) {
    //         for (int v = 0; v < kernel_width; v++) {
    //             in_ptr_copy = in + u*padding_input_width + v;
    //             for (int i = 0; i < output_height; i++) {
    //                 in_ptr = in_ptr_copy + i*step;
    //                 for (int j = 0; j < output_width; j++) {
    //                     *transform_in_ptr = *in_ptr;
    //                     ++transform_in_ptr;
    //                     in_ptr += stride_width;
    //                 }
    //             }
    //         }
    //     }
    // }
    // _mm_free(padding_input_data);

	fill_test_data(kernel_data, M, K);
    fill_test_data(transform_input_data, K, N);
}

void ConvIm2colLayer::sgemm() {
    switch(gemm_version) {
        case GEMM_NO_BLOCKS:
            GEMM(kernel_data, transform_input_data, output_data);
        break;

        case GEMM_BLOCKS_SINGLE_THREAD:
            GEMM_v3(kernel_data, transform_input_data, output_data);
            // GEMM_v2(kernel_data, transform_input_data, output_data);
            // GEMM_v5_MNK(kernel_data, transform_input_data, output_data);

        break;

        case GEMM_BLOCKS_MULTI_THREADS:
            GEMM_multithread(kernel_data, transform_input_data, output_data);
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
                    packB_timer.accumBench();
                }

                // 接着就是计算，对A的一块mc * kc和B的一块kc * nc进行计算
                float *C_copy = C + mt * ldc + nt;

                int remain_row_start = mc_adjust - mc_adjust % row_batch;
                int packB_step = col_batch * kc_adjust;

                kernel_timer.startBench();
                // 计算可以整除的行
                int i = 0;
				// fapp_start("bar",1,0);
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
				// fapp_stop("bar",1,0);

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
                    this->pack_b_mt(kc_adjust, nc_adjust, num_threads, tid, B, ldb, packB_copy, kt, nt, row_batch, col_batch);

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

void ConvIm2colLayer::set_pack_a() {
    this->pack_a = pack_a_v2;
}

void ConvIm2colLayer::set_pack_b() {
    if (col_batch == 32)
        this->pack_b = pack_b_v2_12x32;
    else if (col_batch == 64)
        this->pack_b = pack_b_v2_4x64;
    // if (row_batch == 8 && col_batch == 8) 
    //     this->pack_b = pack_b_v2_8x8;
    // else if (row_batch == 8 && col_batch == 12)
    //     this->pack_b = pack_b_v2_8x12;
    // else if (row_batch == 4 && col_batch == 16)
    //     this->pack_b = pack_b_v2_4x16;
}

void ConvIm2colLayer::set_pack_b_mt() {
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
