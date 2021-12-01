#ifndef SVE_GEMM_KERNEL_H_
#define SVE_GEMM_KERNEL_H_

#include <arm_sve.h>

typedef void (*InnerKernel)(int, float *, float *, float *, int, const int, const int, const int);
typedef void (*InnerKernelForCorner)(int, float *, float *, float *, int);

typedef void (*inner_kernel_for_corner_func_t)(int, float *, float *, float *, int, int, int, svbool_t*);

void kernel_8x32(int, float *, float *, float *, int, const int, const int, const int);

void kernel_4x64(int, float *, float *, float *, int, const int, const int, const int);

void kernel_12x32(int, float *, float *, float *, int, const int, const int, const int);

void kernel_12x32_v1(int, float *, float *, float *, int, const int, const int, const int);

void kernel_12x32_v2(int, float *, float *, float *, int, const int, const int, const int);

void kernel_8x32_v1(int, float *, float *, float *, int, const int, const int, const int);

void kernel_8x48(int, float *, float *, float *, int, const int, const int, const int);

void kernel_14x32(int, float *, float *, float *, int, const int, const int, const int);

template <int N>
void kernel_Nx32_template(int, float *, float *, float *, int);

InnerKernelForCorner get_kernel_Nx32(int k);

template <int N>
void kernel_Nx64_template(int, float *, float *, float *, int);

InnerKernelForCorner get_kernel_Nx64(int k);

template<int M, int N>
void kernel_MxN_for_8x48(int, float *, float *, float *, int, int, int, svbool_t*);

extern const inner_kernel_for_corner_func_t kernel_MxN_for_8x48_func_tab[8][3];

template<int M, int N>
void kernel_MxN_for_12x32(int, float *, float *, float *, int, int, int, svbool_t*);

extern const inner_kernel_for_corner_func_t kernel_MxN_for_12x32_func_tab[12][2];

#endif
