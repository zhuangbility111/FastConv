#ifndef IM2COLCONV_H
#define IM2COLCONV_H

#include "../conv_layer.h"
// #include "../im2col/NEON/neon_gemm_pack.h"
// #include "../im2col/NEON/neon_gemm_kernel.h"
#include "../im2col/SVE/sve_gemm_pack.h"
#include "../im2col/SVE/sve_gemm_kernel.h"
#include "../im2col/SVE/sve_gemm_kernel_no_packa.h"

struct Thread_group_idx{
    size_t m;
    size_t n;
    size_t mc;
    size_t nc;
};

struct Thread_idx_in_group{
    size_t m;
    size_t n;
    size_t mc;
    size_t nc;
};

class ConvIm2colLayer : public ConvLayer {

public:
    ConvIm2colLayer(float *input, float *kernel, float *biasw, float *output_ref,
                    size_t ic, size_t ih, size_t iw, size_t oc,
                    size_t kh=3, size_t kw=3, size_t sh=1, size_t sw=1, 
                    size_t pad_left=1, size_t pad_right=1, size_t pad_top=1, size_t pad_bottom=1,
                    size_t g=1, bool bias=0, size_t nt=1, size_t iter=10,
                    int mc=8, int nc=256, int kc=384, int gemm_version=1, int row_batch=8, int col_batch=32,
                    int pack_c_version=0, int mt_pack_b_version=2, int prefetch_a=256, int prefetch_b=256, int prefetch_c=0);
        
    ~ConvIm2colLayer();
        
    int Init();
    int Tuning();
    int Forward();

    void im2col();
    void im2col_v1();
    void im2col_v1_fused_packB_Nx32(int kc_adjust, int nc_adjust, float* src, float* packB_copy, 
                                    int begin_k, int begin_n, const int ROW_BATCH, const int COL_BATCH);
    void im2col_v1_fused_packB_Nx32_v1(int kc_adjust, int nc_adjust, float* src, float* packB_copy, 
                                        int begin_k, int begin_n, const int ROW_BATCH, const int COL_BATCH);
    void padding_input();

    void sgemm(); 
    void GEMM(float* A, float* B, float* C);
    void GEMM_v2(float* A, float* B, float* C);
    void GEMM_v3(float* A, float* B, float* C);
    void GEMM_v4_MKN(float* A, float* B, float* C);
    void GEMM_v5_MNK(float* A, float* B, float* C);
    void GEMM_multithread(float* A, float* B, float* C);
    void GEMM_multithread_v1(float* A, float* B, float* C);
    void GEMM_multithread_v2_MKN(float* A, float* B, float* C);
    void GEMM_multithread_v3_MKN_2d(float* A, float* B, float* C);
    void GEMM_multithread_v4_MKN_2d_no_packa(float* A, float* B, float* C);
    void GEMM_multithread_v5_MKN_2d_outer_no_packa(float* A, float* B, float* C);
    void GEMM_multithread_v6_MKN_2d_outer(float* A, float* B, float* C);

protected:
    typedef void (*PackA)(int, int, float *, int, float *, int, int, int, const int, const int);
    typedef void (*PackAMT)(int, int, float *, int, float *, int, int, int, int, int, const int, const int);
    typedef void (*PackB)(int, int, float *, int, float *, const int, const int);
    typedef void (*PackBMT)(int, int, float *, int, float *, int, int, const int, const int);
    typedef void (*PackBMT2D)(int, int, float *, int, float *, int, int, int, int, const int, const int);
    typedef void (*PackC)(int, int, int, float*, float*, int, const int, const int);
    typedef void (*UnpackC)(int, int, int, float*, float*, int, const int, const int);
    typedef void (*InnerKernel)(int, float *, float *, float *, int, const int, const int, const int);
    typedef void (*InnerKernelForCorner)(int, float *, float *, float *, int);
    typedef void (*inner_kernel_for_corner_func_t)(int, float *, float *, float *, int, int, int, svbool_t, svbool_t, svbool_t, svbool_t);

    PackA pack_a;
    PackAMT pack_a_mt;
    PackB pack_b;
    PackBMT pack_b_mt;
    PackBMT2D pack_b_mt_2d;
    PackC pack_c;
    UnpackC unpack_c;
    InnerKernel inner_kernel;
    InnerKernelForCorner inner_kernel_for_corner;

    int M;
    int N;
    int K;
    int mc;
    int nc;
    int kc;
    int kc_parallel_ways = 1;
    int mc_parallel_ways = 1;
    int nc_parallel_ways = 1;
    int mr_parallel_ways = 1;
    int nr_parallel_ways = 1;
    int row_batch;
    int col_batch;
    int pack_c_version;
    int mt_pack_b_version;
    int prefetch_a;
    int prefetch_b;
    int prefetch_c;
    int gemm_version;
    float *transform_input_data;
    float *padding_input_data;
    float *output_data_ref = NULL;

    static const int GEMM_NO_BLOCKS = 0;
    static const int GEMM_BLOCKS_SINGLE_THREAD = 1;
    static const int GEMM_BLOCKS_MULTI_THREADS = 2;
    static const int GEMM_BLOCKS_MULTI_THREADS_2D = 3;

    void set_parallelism_ways();

    void set_pack_a();
    void set_pack_a_mt();
    void set_pack_b();
    void set_pack_b_mt();
    void set_pack_c();
    void set_unpack_c();
    void set_inner_kernel();
    void set_inner_kernel_for_corner(int k);
    // void set_inner_kernel_for_corner_mask(int remain_row, int remain_col);

    void select_tuning_range_for_mnk(size_t&, size_t&, int&, int&, int&, int&, int&, int&, int&, int&, int&);
    void select_tuning_range_for_pack(int&, int&, int&, int&, int&, int&);
    void select_tuning_range_for_prefetch(int&, int&, int&, int&, int&, int&, int&, int&, int&);

    bool search_log_file_and_entry(const char *log_path);
    void search_best_param(int &best_mc, int &best_nc, int &best_kc, int &best_rb, int &best_cb, int &best_pc, int &best_pb, int &best_pre_a, int &best_pre_b, int &best_pre_c);
    void write_best_param(const char *log_path, int &best_mc, int &best_nc, int &best_kc, int &best_rb, int &best_cb, int &best_pc, int &best_pb, int &best_pre_a, int &best_pre_b, int &best_pre_c);
};

#endif 
