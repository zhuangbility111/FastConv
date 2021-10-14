#ifndef SVE_GEMM_KERNEL_H_
#define SVE_GEMM_KERNEL_H_

typedef void (*InnerKernel)(int, float *, float *, float *, int, const int, const int, const int);
typedef void (*InnerKernelForCorner)(int, float *, float *, float *, int);

void kernel_8x32(int, float *, float *, float *, int, const int, const int, const int);

void kernel_4x64(int, float *, float *, float *, int, const int, const int, const int);

void kernel_12x32(int, float *, float *, float *, int, const int, const int, const int);

void kernel_12x32_v1(int, float *, float *, float *, int, const int, const int, const int);

void kernel_12x32_v2(int, float *, float *, float *, int, const int, const int, const int);

void kernel_8x32_v1(int, float *, float *, float *, int, const int, const int, const int);

void kernel_14x32(int, float *, float *, float *, int, const int, const int, const int);

template <int N>
void kernel_Nx32_template(int, float *, float *, float *, int);

InnerKernelForCorner get_kernel_Nx32(int k);

template <int N>
void kernel_Nx64_template(int, float *, float *, float *, int);

InnerKernelForCorner get_kernel_Nx64(int k);

#endif
