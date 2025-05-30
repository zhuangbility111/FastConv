#ifndef SVE_GEMM_KERNEL_H_
#define SVE_GEMM_KERNEL_H_

#include <arm_sve.h>

typedef void (*InnerKernel)(int, float *, float *, float *, int, const int, const int, const int);
// typedef void (*InnerKernelPreB)(int, float *, float *, float *, int, const int, float*, const int);
typedef void (*InnerKernelForCorner)(int, float *, float *, float *, int);

void kernel_12x32_v1(int, float *, float *, float *, int, const int, const int, const int);

void kernel_12x32_v2(int, float *, float *, float *, int, const int, const int, const int);

void kernel_8x48(int, float *, float *, float *, int, const int, const int, const int);

void kernel_5x64(int, float *, float *, float *, int, const int, const int, const int);

template <int N>
void kernel_Nx32_template(int, float *, float *, float *, int);

InnerKernelForCorner get_kernel_Nx32(int k);

template <int N>
void kernel_Nx64_template(int, float *, float *, float *, int);

InnerKernelForCorner get_kernel_Nx64(int k);

#endif
