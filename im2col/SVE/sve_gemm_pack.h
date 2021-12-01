#ifndef SVE_GEMM_PACKING_H_
#define SVE_GEMM_PACKING_H_

void pack_a_v2(int, int, float *, int, float *, int, int, int, const int, const int);

void pack_a_v2_multithread(int, int, float *, int, float *, int, int, int, int, int, const int, const int);

void pack_b_v2_12x32(int, int, float *, int, float *, const int, const int);

void pack_b_v2_12x32_multithread(int, int, float *, int, float *, int, int, const int, const int);

void pack_b_v2_12x32_multithread_2d(int, int, float *, int, float *, int, int, int, int, const int, const int);

void pack_b_v2_8x48_multithread_2d(int, int, float *, int, float *, int, int, int, int, const int, const int);

// void pack_b_v2_5x64_multithread(int, int, float *, int, float *, int, int, const int, const int);

void pack_b_v2_5x64_multithread_2d(int, int, float *, int, float *, int, int, int, int, const int, const int);

void pack_b_v2_4x64(int, int, float *, int, float *, const int, const int);

void pack_b_v2_8x48(int, int, float *, int, float *, const int, const int);

#endif
