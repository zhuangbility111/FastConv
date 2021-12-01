#ifndef SVE_GEMM_KERNEL_NO_PACK_H_
#define SVE_GEMM_KERNEL_NO_PACK_H_

#include <arm_sve.h>

typedef void (*inner_kernel_no_packa_for_corner_func_t)(int, float *, float *, float *, int, int, int, svbool_t*);

void kernel_12x32_no_packa(int, float *, float *, float *, int, const int, const int, const int);

void kernel_8x48_no_packa(int, float *, float *, float *, int, const int, const int, const int);

void kernel_5x64_no_packa(int, float *, float *, float *, int, const int, const int, const int);

void kernel_5x64_no_packa_v1(int, float *, float *, float *, int, const int, const int, const int);

void kernel_14x32_no_packa(int, float *, float *, float *, int, const int, const int, const int);


template<int M, int N>
void kernel_MxN_for_8x48_no_packa(int, float *, float *, float *, int, int, int, svbool_t*);

extern const inner_kernel_no_packa_for_corner_func_t kernel_MxN_for_8x48_no_packa_func_tab[8][3];

template<int M, int N>
void kernel_MxN_for_12x32_no_packa(int, float *, float *, float *, int, int, int, svbool_t*);

extern const inner_kernel_no_packa_for_corner_func_t kernel_MxN_for_12x32_no_packa_func_tab[12][2];

template<int M, int N>
void kernel_MxN_for_5x64_no_packa(int, float *, float *, float *, int, int, int, svbool_t*);

extern const inner_kernel_no_packa_for_corner_func_t kernel_MxN_for_5x64_no_packa_func_tab[5][4];

#endif
