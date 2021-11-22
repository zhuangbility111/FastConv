#include <stdlib.h>
#include <assert.h>
#include <stdio.h>
#include "../../utility/helper.h"
#include "./sve_gemm_kernel.h"

#include <arm_sve.h>

#define _ASM_

const int simd_width = 16;

typedef void (*InnerKernel)(int, float *, float *, float *, int, const int, const int, const int);
typedef void (*InnerKernelForCorner)(int, float *, float *, float *, int);

// old version, use indexed fmla and loop unroll by 4
void kernel_8x32(int kc_adjust, float *packA, float* packB, float *packC, int ldc, const int PREFETCH_A, const int PREFETCH_B, const int PREFETCH_C) {

    float* packAPtr = packA;
    float* packBPtr = packB;
    float* packCPtr = packC;

#ifdef _ASM_

    float* packCPtr0  = packC;
    float* packCPtr1  = packC + 1  * ldc;
    float* packCPtr2  = packC + 2  * ldc;
    float* packCPtr3  = packC + 3  * ldc;
    float* packCPtr4  = packC + 4  * ldc;
    float* packCPtr5  = packC + 5  * ldc;
    float* packCPtr6  = packC + 6  * ldc;
    float* packCPtr7  = packC + 7  * ldc;

//        "prfm	pldl1keep, [%[pA], #128]                \n"
//        "prfm	pldl1keep, [%[pB], #128]                \n"
//        "prfm	pldl1keep, [%[pA]]                      \n"
        // "prfm	pldl1keep, [%[pA], #128]                 \n"

//     asm volatile(
//         "ptrue  p0.s  \n"
//         "mov    x4, #16 \n"
//         "mov    x5, %[kc]    \n"
//         "lsr    x6, x5, 0x2  \n"

//         "cmp    w5, #0  \n"
//         "b.eq   1f     \n"

//         "ld1w	{ z16.s }, p0/z, [%[pC0]]      \n"  // load C
//         "ld1w	{ z17.s }, p0/z, [%[pC0], x4, lsl #2]    \n"
//         "ld1w	{ z18.s }, p0/z, [%[pC1]]      \n"
//         "ld1w	{ z19.s }, p0/z, [%[pC1], x4, lsl #2]    \n"
//         "ld1w	{ z20.s }, p0/z, [%[pC2]]      \n"
//         "ld1w	{ z21.s }, p0/z, [%[pC2], x4, lsl #2]    \n"
//         "ld1w	{ z22.s }, p0/z, [%[pC3]]      \n"
//         "ld1w	{ z23.s }, p0/z, [%[pC3], x4, lsl #2]    \n"
//         "ld1w	{ z24.s }, p0/z, [%[pC4]]      \n"
//         "ld1w	{ z25.s }, p0/z, [%[pC4], x4, lsl #2]    \n"
//         "ld1w	{ z26.s }, p0/z, [%[pC5]]      \n"
//         "ld1w	{ z27.s }, p0/z, [%[pC5], x4, lsl #2]    \n"
//         "ld1w	{ z28.s }, p0/z, [%[pC6]]      \n"
//         "ld1w	{ z29.s }, p0/z, [%[pC6], x4, lsl #2]    \n"
//         "ld1w	{ z30.s }, p0/z, [%[pC7]]      \n"
//         "ld1w	{ z31.s }, p0/z, [%[pC7], x4, lsl #2]    \n"
        
//         "ld1rqw	{ z0.s }, p0/z, [%[pA]]                 \n"
// 	    "ld1rqw	{ z1.s }, p0/z, [%[pA], #16]            \n"
//         "ld1rqw	{ z2.s }, p0/z, [%[pA], #32]            \n"
// 	    "ld1rqw	{ z3.s }, p0/z, [%[pA], #48]            \n"
//         "ld1rqw	{ z4.s }, p0/z, [%[pA], #64]            \n"
// 	    "ld1rqw	{ z5.s }, p0/z, [%[pA], #80]            \n"

//         "ld1w	{ z8.s },  p0/z, [%[pB]]                \n"
// 	    "ld1w	{ z9.s },  p0/z, [%[pB], #1, MUL VL]    \n"
//         "ld1w	{ z10.s }, p0/z, [%[pB], #2, MUL VL]    \n"
// 	    "ld1w	{ z11.s }, p0/z, [%[pB], #3, MUL VL]    \n"
//         "ld1w	{ z12.s }, p0/z, [%[pB], #4, MUL VL]    \n"
// 	    "ld1w	{ z13.s }, p0/z, [%[pB], #5, MUL VL]    \n"

//         "add	%[pA], %[pA], #96                       \n"
//         "add	%[pB], %[pB], #384                      \n" 

//     "0:                                                 \n"
	    
// 	    "ld1rqw	{ z6.s },  p0/z, [%[pA]]               \n"
// 	    "ld1rqw	{ z7.s },  p0/z, [%[pA], #16]          \n"
// //        "prfm	pldl1keep, [%[pA], #128]                \n"
//         "ld1w	{ z14.s }, p0/z, [%[pB]]               \n"
// //	    "ld1w	{ z15.s }, p0/z, [%[pB], x4, lsl #2]   \n"
// 	    "ld1w	{ z15.s }, p0/z, [%[pB], #1, MUL VL]   \n"
//         "add	%[pA], %[pA], #32                       \n"
//         "add	%[pB], %[pB], #128                      \n"

//         // loop1
//         "fmla	z16.s, z8.s, z0.s[0]                    \n"
//         "fmla	z18.s, z8.s, z0.s[1]                    \n"
//         "fmla	z20.s, z8.s, z0.s[2]                    \n"
//         "fmla	z22.s, z8.s, z0.s[3]                    \n"

//         "fmla	z17.s, z9.s, z0.s[0]                    \n"
//         "fmla	z19.s, z9.s, z0.s[1]                    \n"
//         "fmla	z21.s, z9.s, z0.s[2]                   \n"
//         "fmla	z23.s, z9.s, z0.s[3]                    \n"

//         "fmla	z24.s, z8.s, z1.s[0]                    \n"
//         "fmla	z26.s, z8.s, z1.s[1]                    \n"
//         "fmla	z28.s, z8.s, z1.s[2]                    \n"
//         "fmla	z30.s, z8.s, z1.s[3]                    \n"

//         "fmla	z25.s, z9.s, z1.s[0]                    \n"
//         "fmla	z27.s, z9.s, z1.s[1]                    \n"
//         "fmla	z29.s, z9.s, z1.s[2]                    \n"
//         "fmla	z31.s, z9.s, z1.s[3]                    \n"

// 	    "ld1rqw	{ z0.s }, p0/z, [%[pA]]                 \n"
// 	    "ld1rqw	{ z1.s }, p0/z, [%[pA], #16]            \n"
// //        "prfm	pldl1keep, [%[pA], #128]                \n"
//         "ld1w	{ z8.s }, p0/z, [%[pB]]                 \n"
// //	    "ld1w	{ z9.s }, p0/z, [%[pB], x4, lsl #2]     \n"
// 	    "ld1w	{ z9.s }, p0/z, [%[pB], #1, MUL VL]     \n"
//         "add	%[pA], %[pA], #32                       \n"
//         "add	%[pB], %[pB], #128                      \n"

//         // loop2 

//         "fmla	z16.s, z10.s, z2.s[0]                    \n"
//         "fmla	z18.s, z10.s, z2.s[1]                    \n"
//         "fmla	z20.s, z10.s, z2.s[2]                    \n"
//         "fmla	z22.s, z10.s, z2.s[3]                    \n"

//         "fmla	z17.s, z11.s, z2.s[0]                    \n"
//         "fmla	z19.s, z11.s, z2.s[1]                    \n"
//         "fmla	z21.s, z11.s, z2.s[2]                    \n"
//         "fmla	z23.s, z11.s, z2.s[3]                    \n"

//         "fmla	z24.s, z10.s, z3.s[0]                    \n"
//         "fmla	z26.s, z10.s, z3.s[1]                    \n"
//         "fmla	z28.s, z10.s, z3.s[2]                    \n"
//         "fmla	z30.s, z10.s, z3.s[3]                    \n"

//         "fmla	z25.s, z11.s, z3.s[0]                    \n"
//         "fmla	z27.s, z11.s, z3.s[1]                    \n"
//         "fmla	z29.s, z11.s, z3.s[2]                    \n"
//         "fmla	z31.s, z11.s, z3.s[3]                    \n"

// 	    "ld1rqw	{ z2.s }, p0/z, [%[pA]]                 \n"
// 	    "ld1rqw	{ z3.s }, p0/z, [%[pA], #16]            \n"
// //        "prfm	pldl1keep, [%[pA], #128]                \n"
//         "ld1w	{ z10.s }, p0/z, [%[pB]]                 \n"
// //	    "ld1w	{ z11.s }, p0/z, [%[pB], x4, lsl #2]     \n"
// 	    "ld1w	{ z11.s }, p0/z, [%[pB], #1, MUL VL]     \n"
//         "add	%[pA], %[pA], #32                       \n"
//         "add	%[pB], %[pB], #128                      \n"

//         // loop3

//         "fmla	z16.s, z12.s, z4.s[0]                    \n"
//         "fmla	z18.s, z12.s, z4.s[1]                    \n"
//         "fmla	z20.s, z12.s, z4.s[2]                    \n"
//         "fmla	z22.s, z12.s, z4.s[3]                    \n"

//         "fmla	z17.s, z13.s, z4.s[0]                    \n"
//         "fmla	z19.s, z13.s, z4.s[1]                    \n"
//         "fmla	z21.s, z13.s, z4.s[2]                    \n"
//         "fmla	z23.s, z13.s, z4.s[3]                    \n"

//         "fmla	z24.s, z12.s, z5.s[0]                    \n"
//         "fmla	z26.s, z12.s, z5.s[1]                    \n"
//         "fmla	z28.s, z12.s, z5.s[2]                    \n"
//         "fmla	z30.s, z12.s, z5.s[3]                    \n"

//         "fmla	z25.s, z13.s, z5.s[0]                    \n"
//         "fmla	z27.s, z13.s, z5.s[1]                    \n"
//         "fmla	z29.s, z13.s, z5.s[2]                    \n"
//         "fmla	z31.s, z13.s, z5.s[3]                    \n"

// 	    "ld1rqw	{ z4.s },  p0/z, [%[pA]]                 \n"
// 	    "ld1rqw	{ z5.s },  p0/z, [%[pA], #16]            \n"
// //        "prfm	pldl1keep, [%[pA], #128]                \n"
//         "ld1w	{ z12.s }, p0/z, [%[pB]]                 \n"
// //	    "ld1w	{ z13.s }, p0/z, [%[pB], x4, lsl #2]     \n"
// 	    "ld1w	{ z13.s }, p0/z, [%[pB], #1, MUL VL]     \n"
//         "add	%[pA], %[pA], #32                        \n"
//         "add	%[pB], %[pB], #128                       \n"

//         // loop4

//         "fmla	z16.s, z14.s, z6.s[0]                    \n"
//         "fmla	z18.s, z14.s, z6.s[1]                    \n"
//         "fmla	z20.s, z14.s, z6.s[2]                    \n"
//         "fmla	z22.s, z14.s, z6.s[3]                    \n"

//         "fmla	z17.s, z15.s, z6.s[0]                    \n"
//         "fmla	z19.s, z15.s, z6.s[1]                    \n"
//         "fmla	z21.s, z15.s, z6.s[2]                    \n"
//         "fmla	z23.s, z15.s, z6.s[3]                    \n"

//         "fmla	z24.s, z14.s, z7.s[0]                    \n"
//         "fmla	z26.s, z14.s, z7.s[1]                    \n"
//         "fmla	z28.s, z14.s, z7.s[2]                    \n"
//         "fmla	z30.s, z14.s, z7.s[3]                    \n"

//         "fmla	z25.s, z15.s, z7.s[0]                    \n"
//         "fmla	z27.s, z15.s, z7.s[1]                    \n"
//         "fmla	z29.s, z15.s, z7.s[2]                    \n"
//         "fmla	z31.s, z15.s, z7.s[3]                    \n"


//         "subs   x6, x6, 0x1                              \n"

//         "b.ne   0b                                      \n"
        
//         "st1w	{ z16.s }, p0, [%[pC0]]      \n"  // store C
//         "st1w	{ z17.s }, p0, [%[pC0], x4, lsl #2]    \n"
//         "st1w	{ z18.s }, p0, [%[pC1]]      \n"
//         "st1w	{ z19.s }, p0, [%[pC1], x4, lsl #2]    \n"
//         "st1w	{ z20.s }, p0, [%[pC2]]      \n"
//         "st1w	{ z21.s }, p0, [%[pC2], x4, lsl #2]    \n"
//         "st1w	{ z22.s }, p0, [%[pC3]]      \n"
//         "st1w	{ z23.s }, p0, [%[pC3], x4, lsl #2]    \n"
//         "st1w	{ z24.s }, p0, [%[pC4]]      \n"
//         "st1w	{ z25.s }, p0, [%[pC4], x4, lsl #2]    \n"
//         "st1w	{ z26.s }, p0, [%[pC5]]      \n"
//         "st1w	{ z27.s }, p0, [%[pC5], x4, lsl #2]    \n"
//         "st1w	{ z28.s }, p0, [%[pC6]]      \n"
//         "st1w	{ z29.s }, p0, [%[pC6], x4, lsl #2]    \n"
//         "st1w	{ z30.s }, p0, [%[pC7]]      \n"
//         "st1w	{ z31.s }, p0, [%[pC7], x4, lsl #2]    \n"

//     "1:                                                 \n"
        
//     : [pA]"=&r"(packAPtr),     // %0
//       [pB]"=&r"(packBPtr)      // %1
//     : "[pA]"   (packAPtr),
//       "[pB]"   (packBPtr), 
//       [pC0] "r"(packCPtr0),    // %2
//       [pC1] "r"(packCPtr1),    // %2
//       [pC2] "r"(packCPtr2),    // %3
//       [pC3] "r"(packCPtr3),    // %3
//       [pC4] "r"(packCPtr4),    // %4
//       [pC5] "r"(packCPtr5),    // %4
//       [pC6] "r"(packCPtr6),    // %5
//       [pC7] "r"(packCPtr7),    // %5
//       [ldc] "r"(ldc),
//       [kc]  "r"(kc_adjust),
//       [preA]"r"(PREFETCH_A),
//       [preB]"r"(PREFETCH_B),
//       [preC]"r"(PREFETCH_C)
//     : "memory", "cc", 
//       "p0", "x4", "x5", "x6", "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
//       "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
//       "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");

    const svbool_t p32_all = svptrue_b32();

    svfloat32_t va0,   va1, va2, va3, va4, va5, va6, va7;
    svfloat32_t vb0,   vb1;
    svfloat32_t vc00,  vc01;
    svfloat32_t vc10,  vc11;
    svfloat32_t vc20,  vc21;
    svfloat32_t vc30,  vc31;
    svfloat32_t vc40,  vc41;
    svfloat32_t vc50,  vc51;
    svfloat32_t vc60,  vc61;
    svfloat32_t vc70,  vc71;

    vc00  = svld1_f32(p32_all, packCPtr0);
    vc01  = svld1_f32(p32_all, packCPtr0 + 16);
    vc10  = svld1_f32(p32_all, packCPtr1);
    vc11  = svld1_f32(p32_all, packCPtr1 + 16);
    vc20  = svld1_f32(p32_all, packCPtr2);
    vc21  = svld1_f32(p32_all, packCPtr2 + 16);
    vc30  = svld1_f32(p32_all, packCPtr3);
    vc31  = svld1_f32(p32_all, packCPtr3 + 16);
    vc40  = svld1_f32(p32_all, packCPtr4);
    vc41  = svld1_f32(p32_all, packCPtr4 + 16);
    vc50  = svld1_f32(p32_all, packCPtr5);
    vc51  = svld1_f32(p32_all, packCPtr5 + 16);
    vc60  = svld1_f32(p32_all, packCPtr6);
    vc61  = svld1_f32(p32_all, packCPtr6 + 16);
    vc70  = svld1_f32(p32_all, packCPtr7);
    vc71  = svld1_f32(p32_all, packCPtr7 + 16);

    // 计算
    #pragma statement scache_isolate_way L1=3
    #pragma statement scache_isolate_assign packA_ptr packB_ptr
    for (int k = 0; k < kc_adjust; k++) {
        va0 = svdup_n_f32(packAPtr[0]);
        va1 = svdup_n_f32(packAPtr[1]);
        va2 = svdup_n_f32(packAPtr[2]);
        va3 = svdup_n_f32(packAPtr[3]);
        va4 = svdup_n_f32(packAPtr[4]);
        va5 = svdup_n_f32(packAPtr[5]);
        va6 = svdup_n_f32(packAPtr[6]);
        va7 = svdup_n_f32(packAPtr[7]);

        vb0 = svld1_f32(p32_all, packBPtr);
        vb1 = svld1_f32(p32_all, packBPtr + 16);
        
        vc00 = svmla_f32_x(p32_all, vc00, va0, vb0);
        vc01 = svmla_f32_x(p32_all, vc01, va0, vb1);

        vc10 = svmla_f32_x(p32_all, vc10, va1, vb0);
        vc11 = svmla_f32_x(p32_all, vc11, va1, vb1);

        vc20 = svmla_f32_x(p32_all, vc20, va2, vb0);
        vc21 = svmla_f32_x(p32_all, vc21, va2, vb1);

        vc30 = svmla_f32_x(p32_all, vc30, va3, vb0);
        vc31 = svmla_f32_x(p32_all, vc31, va3, vb1);

        vc40 = svmla_f32_x(p32_all, vc40, va4, vb0);
        vc41 = svmla_f32_x(p32_all, vc41, va4, vb1);

        vc50 = svmla_f32_x(p32_all, vc50, va5, vb0);
        vc51 = svmla_f32_x(p32_all, vc51, va5, vb1);

        vc60 = svmla_f32_x(p32_all, vc60, va6, vb0);
        vc61 = svmla_f32_x(p32_all, vc61, va6, vb1);

        vc70 = svmla_f32_x(p32_all, vc70, va7, vb0);
        vc71 = svmla_f32_x(p32_all, vc71, va7, vb1);

        packAPtr += 8;
        packBPtr += 32;
    }
	#pragma statement end_scache_isolate_assign
	#pragma statement end_scache_isolate_way       

    // 将结果写回
    svst1_f32(p32_all, packCPtr0, vc00);
    svst1_f32(p32_all, packCPtr0 + 16, vc01);
    svst1_f32(p32_all, packCPtr1, vc10);
    svst1_f32(p32_all, packCPtr1 + 16, vc11);
    svst1_f32(p32_all, packCPtr2, vc20);
    svst1_f32(p32_all, packCPtr2 + 16, vc21);
    svst1_f32(p32_all, packCPtr3, vc30);
    svst1_f32(p32_all, packCPtr3 + 16, vc31);
    svst1_f32(p32_all, packCPtr4, vc40);
    svst1_f32(p32_all, packCPtr4 + 16, vc41);
    svst1_f32(p32_all, packCPtr5, vc50);
    svst1_f32(p32_all, packCPtr5 + 16, vc51);
    svst1_f32(p32_all, packCPtr6, vc60);
    svst1_f32(p32_all, packCPtr6 + 16, vc61);
    svst1_f32(p32_all, packCPtr7, vc70);
    svst1_f32(p32_all, packCPtr7 + 16, vc71);

#endif
}

// old version, use indexed fmla
void kernel_12x32(int kc_adjust, float *packA, float* packB, float *packC, int ldc, const int PREFETCH_A, const int PREFETCH_B, const int PREFETCH_C) {

    float* packAPtr = packA;
    float* packBPtr = packB;
    float* packCPtr = packC;

#ifdef _ASM_

    float* packCPtr0  = packC;
    float* packCPtr1  = packC + 1  * ldc;
    float* packCPtr2  = packC + 2  * ldc;
    float* packCPtr3  = packC + 3  * ldc;
    float* packCPtr4  = packC + 4  * ldc;
    float* packCPtr5  = packC + 5  * ldc;
    float* packCPtr6  = packC + 6  * ldc;
    float* packCPtr7  = packC + 7  * ldc;
    float* packCPtr8  = packC + 8  * ldc;
    float* packCPtr9  = packC + 9  * ldc;
    float* packCPtr10 = packC + 10 * ldc;
    float* packCPtr11 = packC + 11 * ldc;

    asm volatile(
        "ptrue  p0.s  \n"
        "mov    x4, #16 \n"
        "mov    x5, %[kc]    \n"

        "cmp    w5, #0  \n"
        "b.eq    1f     \n"

        "ld1w	{ z8.s },  p0/z, [%[pC0]]      \n"  // load C
        "ld1w	{ z9.s },  p0/z, [%[pC0], x4, lsl #2]    \n"
        "ld1w	{ z10.s }, p0/z, [%[pC1]]      \n"
        "ld1w	{ z11.s }, p0/z, [%[pC1], x4, lsl #2]    \n"
        "ld1w	{ z12.s }, p0/z, [%[pC2]]      \n"
        "ld1w	{ z13.s }, p0/z, [%[pC2], x4, lsl #2]    \n"
        "ld1w	{ z14.s }, p0/z, [%[pC3]]      \n"
        "ld1w	{ z15.s }, p0/z, [%[pC3], x4, lsl #2]    \n"
        "ld1w	{ z16.s }, p0/z, [%[pC4]]      \n"
        "ld1w	{ z17.s }, p0/z, [%[pC4], x4, lsl #2]    \n"
        "ld1w	{ z18.s }, p0/z, [%[pC5]]      \n"
        "ld1w	{ z19.s }, p0/z, [%[pC5], x4, lsl #2]    \n"
        "ld1w	{ z20.s }, p0/z, [%[pC6]]      \n"
        "ld1w	{ z21.s }, p0/z, [%[pC6], x4, lsl #2]    \n"
        "ld1w	{ z22.s }, p0/z, [%[pC7]]      \n"
        "ld1w	{ z23.s }, p0/z, [%[pC7], x4, lsl #2]    \n"
        "ld1w	{ z24.s }, p0/z, [%[pC8]]      \n"
        "ld1w	{ z25.s }, p0/z, [%[pC8], x4, lsl #2]    \n"
        "ld1w	{ z26.s }, p0/z, [%[pC9]]      \n"
        "ld1w	{ z27.s }, p0/z, [%[pC9], x4, lsl #2]    \n"
        "ld1w	{ z28.s }, p0/z, [%[pC10]]     \n"
        "ld1w	{ z29.s }, p0/z, [%[pC10], x4, lsl #2]    \n"
        "ld1w	{ z30.s }, p0/z, [%[pC11]]     \n"
        "ld1w	{ z31.s }, p0/z, [%[pC11], x4, lsl #2]    \n"

    "0:                                                 \n"

	    "ld1rqw	{ z0.s }, p0/z, [%[pA]]                 \n"
	    "ld1rqw	{ z1.s }, p0/z, [%[pA], #16]            \n"
	    "ld1rqw	{ z2.s }, p0/z, [%[pA], #32]            \n"
//        "prfm	pldl1keep, [%[pA], #128]                \n"
	    
        "ld1w	{ z3.s }, p0/z, [%[pB]]                 \n"
	    "ld1w	{ z4.s }, p0/z, [%[pB], x4, lsl #2]     \n"
//        "prfm	pldl1keep, [%[pB], #128]                \n"
        "add	%[pA], %[pA], #48                       \n"

        "fmla	z8.s,  z3.s, z0.s[0]                    \n"
        "fmla	z10.s, z3.s, z0.s[1]                    \n"
        "fmla	z12.s, z3.s, z0.s[2]                    \n"
        "fmla	z14.s, z3.s, z0.s[3]                    \n"

        "fmla	z9.s,  z4.s, z0.s[0]                    \n"
        "fmla	z11.s, z4.s, z0.s[1]                    \n"
        "fmla	z13.s, z4.s, z0.s[2]                    \n"
        "fmla	z15.s, z4.s, z0.s[3]                    \n"
        "add	%[pB], %[pB], #128                      \n"
        // "prfm	pldl1keep, [%[pA], #128]                 \n"

        "fmla	z16.s, z3.s, z1.s[0]                    \n"
        "fmla	z18.s, z3.s, z1.s[1]                    \n"
        "fmla	z20.s, z3.s, z1.s[2]                    \n"
        "fmla	z22.s, z3.s, z1.s[3]                    \n"

        "fmla	z17.s, z4.s, z1.s[0]                    \n"
        "fmla	z19.s, z4.s, z1.s[1]                    \n"
        "fmla	z21.s, z4.s, z1.s[2]                    \n"
        "fmla	z23.s, z4.s, z1.s[3]                    \n"
        "subs   x5, x5, #1                              \n"
//        "prfm	pldl1keep, [%[pA]]                      \n"

        "fmla	z24.s, z3.s, z2.s[0]                    \n"
        "fmla	z26.s, z3.s, z2.s[1]                    \n"
        "fmla	z28.s, z3.s, z2.s[2]                    \n"
        "fmla	z30.s, z3.s, z2.s[3]                    \n"

        "fmla	z25.s, z4.s, z2.s[0]                    \n"
        "fmla	z27.s, z4.s, z2.s[1]                    \n"
        "fmla	z29.s, z4.s, z2.s[2]                    \n"
        "fmla	z31.s, z4.s, z2.s[3]                    \n"


        "b.ne   0b                                      \n"
        
        "st1w	{ z8.s },  p0, [%[pC0]]      \n"  // store C
        "st1w	{ z9.s },  p0, [%[pC0], x4, lsl #2]    \n"
        "st1w	{ z10.s }, p0, [%[pC1]]      \n"
        "st1w	{ z11.s }, p0, [%[pC1], x4, lsl #2]    \n"
        "st1w	{ z12.s }, p0, [%[pC2]]      \n"
        "st1w	{ z13.s }, p0, [%[pC2], x4, lsl #2]    \n"
        "st1w	{ z14.s }, p0, [%[pC3]]      \n"
        "st1w	{ z15.s }, p0, [%[pC3], x4, lsl #2]    \n"
        "st1w	{ z16.s }, p0, [%[pC4]]      \n"
        "st1w	{ z17.s }, p0, [%[pC4], x4, lsl #2]    \n"
        "st1w	{ z18.s }, p0, [%[pC5]]      \n"
        "st1w	{ z19.s }, p0, [%[pC5], x4, lsl #2]    \n"
        "st1w	{ z20.s }, p0, [%[pC6]]      \n"
        "st1w	{ z21.s }, p0, [%[pC6], x4, lsl #2]    \n"
        "st1w	{ z22.s }, p0, [%[pC7]]      \n"
        "st1w	{ z23.s }, p0, [%[pC7], x4, lsl #2]    \n"
        "st1w	{ z24.s }, p0, [%[pC8]]      \n"
        "st1w	{ z25.s }, p0, [%[pC8], x4, lsl #2]    \n"
        "st1w	{ z26.s }, p0, [%[pC9]]      \n"
        "st1w	{ z27.s }, p0, [%[pC9], x4, lsl #2]    \n"
        "st1w	{ z28.s }, p0, [%[pC10]]     \n"
        "st1w	{ z29.s }, p0, [%[pC10], x4, lsl #2]    \n"
        "st1w	{ z30.s }, p0, [%[pC11]]     \n"
        "st1w	{ z31.s }, p0, [%[pC11], x4, lsl #2]    \n"

    "1:                                                 \n"
        
    : [pA]"=&r"(packAPtr),     // %0
      [pB]"=&r"(packBPtr)      // %1
    : "[pA]"   (packAPtr),
      "[pB]"   (packBPtr), 
      [pC0] "r"(packCPtr0),    // %2
      [pC1] "r"(packCPtr1),    // %2
      [pC2] "r"(packCPtr2),    // %3
      [pC3] "r"(packCPtr3),    // %3
      [pC4] "r"(packCPtr4),    // %4
      [pC5] "r"(packCPtr5),    // %4
      [pC6] "r"(packCPtr6),    // %5
      [pC7] "r"(packCPtr7),    // %5
      [pC8] "r"(packCPtr8),    // %6
      [pC9] "r"(packCPtr9),    // %6
      [pC10]"r"(packCPtr10),   // %7
      [pC11]"r"(packCPtr11),   // %7
      [ldc] "r"(ldc),
      [kc]  "r"(kc_adjust),
      [preA]"r"(PREFETCH_A),
      [preB]"r"(PREFETCH_B),
      [preC]"r"(PREFETCH_C)
    : "memory", "cc", "p0", "x4", "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
      "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
      "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");

#else
    float* packCPtr0  = packC;
    float* packCPtr1  = packC + 1  * ldc;
    float* packCPtr2  = packC + 2  * ldc;
    float* packCPtr3  = packC + 3  * ldc;
    float* packCPtr4  = packC + 4  * ldc;
    float* packCPtr5  = packC + 5  * ldc;
    float* packCPtr6  = packC + 6  * ldc;
    float* packCPtr7  = packC + 7  * ldc;
    float* packCPtr8  = packC + 8  * ldc;
    float* packCPtr9  = packC + 9  * ldc;
    float* packCPtr10 = packC + 10 * ldc;
    float* packCPtr11 = packC + 11 * ldc;

    const svbool_t p32_all = svptrue_b32();

    svfloat32_t va0,   va1, va2;
    svfloat32_t vb0,   vb1;
    svfloat32_t vc00,  vc01;
    svfloat32_t vc10,  vc11;
    svfloat32_t vc20,  vc21;
    svfloat32_t vc30,  vc31;
    svfloat32_t vc40,  vc41;
    svfloat32_t vc50,  vc51;
    svfloat32_t vc60,  vc61;
    svfloat32_t vc70,  vc71;
    svfloat32_t vc80,  vc81;
    svfloat32_t vc90,  vc91;
    svfloat32_t vc100, vc101;
    svfloat32_t vc110, vc111;

    vc00  = svld1_f32(p32_all, packCPtr0);
    vc01  = svld1_f32(p32_all, packCPtr0 + 16);
    vc10  = svld1_f32(p32_all, packCPtr1);
    vc11  = svld1_f32(p32_all, packCPtr1 + 16);
    vc20  = svld1_f32(p32_all, packCPtr2);
    vc21  = svld1_f32(p32_all, packCPtr2 + 16);
    vc30  = svld1_f32(p32_all, packCPtr3);
    vc31  = svld1_f32(p32_all, packCPtr3 + 16);
    vc40  = svld1_f32(p32_all, packCPtr4);
    vc41  = svld1_f32(p32_all, packCPtr4 + 16);
    vc50  = svld1_f32(p32_all, packCPtr5);
    vc51  = svld1_f32(p32_all, packCPtr5 + 16);
    vc60  = svld1_f32(p32_all, packCPtr6);
    vc61  = svld1_f32(p32_all, packCPtr6 + 16);
    vc70  = svld1_f32(p32_all, packCPtr7);
    vc71  = svld1_f32(p32_all, packCPtr7 + 16);
    vc80  = svld1_f32(p32_all, packCPtr8);
    vc81  = svld1_f32(p32_all, packCPtr8 + 16);
    vc90  = svld1_f32(p32_all, packCPtr9);
    vc91  = svld1_f32(p32_all, packCPtr9 + 16);
    vc100 = svld1_f32(p32_all, packCPtr10);
    vc101 = svld1_f32(p32_all, packCPtr10 + 16);
    vc110 = svld1_f32(p32_all, packCPtr11);
    vc111 = svld1_f32(p32_all, packCPtr11 + 16);


    // 计算
    for (int k = 0; k < kc_adjust; k++) {
        va0 = svld1rq(p32_all, packAPtr);
        va1 = svld1rq(p32_all, packAPtr + 4);
        va2 = svld1rq(p32_all, packAPtr + 8);

        vb0 = svld1_f32(p32_all, packBPtr);
        vb1 = svld1_f32(p32_all, packBPtr + 16);

        vc00 = svmla_lane_f32(vc00, vb0, va0, 0);
        vc01 = svmla_lane_f32(vc01, vb1, va0, 0);

        vc10 = svmla_lane_f32(vc10, vb0, va0, 1);
        vc11 = svmla_lane_f32(vc11, vb1, va0, 1);

        vc20 = svmla_lane_f32(vc20, vb0, va0, 2);
        vc21 = svmla_lane_f32(vc21, vb1, va0, 2);

        vc30 = svmla_lane_f32(vc30, vb0, va0, 3);
        vc31 = svmla_lane_f32(vc31, vb1, va0, 3);

        vc40 = svmla_lane_f32(vc40, vb0, va1, 0);
        vc41 = svmla_lane_f32(vc41, vb1, va1, 0);

        vc50 = svmla_lane_f32(vc50, vb0, va1, 1);
        vc51 = svmla_lane_f32(vc51, vb1, va1, 1);

        vc60 = svmla_lane_f32(vc60, vb0, va1, 2);
        vc61 = svmla_lane_f32(vc61, vb1, va1, 2);

        vc70 = svmla_lane_f32(vc70, vb0, va1, 3);
        vc71 = svmla_lane_f32(vc71, vb1, va1, 3);

        vc80 = svmla_lane_f32(vc80, vb0, va2, 0);
        vc81 = svmla_lane_f32(vc81, vb1, va2, 0);

        vc90 = svmla_lane_f32(vc90, vb0, va2, 1);
        vc91 = svmla_lane_f32(vc91, vb1, va2, 1);

        vc100 = svmla_lane_f32(vc100, vb0, va2, 2);
        vc101 = svmla_lane_f32(vc101, vb1, va2, 2);

        vc110 = svmla_lane_f32(vc110, vb0, va2, 3);
        vc111 = svmla_lane_f32(vc111, vb1, va2, 3);

        packAPtr += 12;
        packBPtr += 32;
    }

    // 将结果写回
    svst1_f32(p32_all, packCPtr0, vc00);
    svst1_f32(p32_all, packCPtr0 + 16, vc01);
    svst1_f32(p32_all, packCPtr1, vc10);
    svst1_f32(p32_all, packCPtr1 + 16, vc11);
    svst1_f32(p32_all, packCPtr2, vc20);
    svst1_f32(p32_all, packCPtr2 + 16, vc21);
    svst1_f32(p32_all, packCPtr3, vc30);
    svst1_f32(p32_all, packCPtr3 + 16, vc31);
    svst1_f32(p32_all, packCPtr4, vc40);
    svst1_f32(p32_all, packCPtr4 + 16, vc41);
    svst1_f32(p32_all, packCPtr5, vc50);
    svst1_f32(p32_all, packCPtr5 + 16, vc51);
    svst1_f32(p32_all, packCPtr6, vc60);
    svst1_f32(p32_all, packCPtr6 + 16, vc61);
    svst1_f32(p32_all, packCPtr7, vc70);
    svst1_f32(p32_all, packCPtr7 + 16, vc71);
    svst1_f32(p32_all, packCPtr8, vc80);
    svst1_f32(p32_all, packCPtr8 + 16, vc81);
    svst1_f32(p32_all, packCPtr9, vc90);
    svst1_f32(p32_all, packCPtr9 + 16, vc91);
    svst1_f32(p32_all, packCPtr10, vc100);
    svst1_f32(p32_all, packCPtr10 + 16, vc101);
    svst1_f32(p32_all, packCPtr11, vc110);
    svst1_f32(p32_all, packCPtr11 + 16, vc111);

#endif
}

// new version, use broadcast and fmla and loop unroll by 2
void kernel_4x64(int kc_adjust, float *packA, float* packB, float *packC, int ldc, const int PREFETCH_A, const int PREFETCH_B, const int PREFETCH_C) {
    float* packAPtr = packA;
    float* packBPtr = packB;
    float* packCPtr = packC;

#ifdef _ASM_

    float* packCPtr0  = packC;
    float* packCPtr1  = packC + 1  * ldc;
    float* packCPtr2  = packC + 2  * ldc;
    float* packCPtr3  = packC + 3  * ldc;

    asm volatile(
        "ptrue  p0.s  \n"
        "mov    x4, #16 \n"
        "mov    x5, %[kc]    \n"
        "lsr    x6, x5, 0x1  \n"

        "cmp    w5, #0  \n"
        "b.eq   1f     \n"

		//"add	%[pC0], %[pC0], 256*2 \n"
		//"prfm	pstl1keep, [%[pC0]] \n"
		//"sub	%[pC0], %[pC0], 256*2 \n"

        "ld1w	{ z16.s }, p0/z, [%[pC0]]      \n"
        "ld1w	{ z17.s }, p0/z, [%[pC0], #1, MUL VL]    \n"
        "ld1w	{ z18.s }, p0/z, [%[pC0], #2, MUL VL]    \n"
        "ld1w	{ z19.s }, p0/z, [%[pC0], #3, MUL VL]    \n"
        "ld1w	{ z20.s }, p0/z, [%[pC1]]      \n"
        "ld1w	{ z21.s }, p0/z, [%[pC1], #1, MUL VL]    \n"
        "ld1w	{ z22.s }, p0/z, [%[pC1], #2, MUL VL]    \n"
        "ld1w	{ z23.s }, p0/z, [%[pC1], #3, MUL VL]    \n"
        "ld1w	{ z24.s }, p0/z, [%[pC2]]      \n"
        "ld1w	{ z25.s }, p0/z, [%[pC2], #1, MUL VL]    \n"
        "ld1w	{ z26.s }, p0/z, [%[pC2], #2, MUL VL]    \n"
        "ld1w	{ z27.s }, p0/z, [%[pC2], #3, MUL VL]    \n"
        "ld1w	{ z28.s }, p0/z, [%[pC3]]     \n"
        "ld1w	{ z29.s }, p0/z, [%[pC3], #1, MUL VL]    \n"
        "ld1w	{ z30.s }, p0/z, [%[pC3], #2, MUL VL]    \n"
        "ld1w	{ z31.s }, p0/z, [%[pC3], #3, MUL VL]    \n"

        // load B
        "ld1w	{ z8.s },  p0/z, [%[pB]]                \n"
	    "ld1w	{ z9.s },  p0/z, [%[pB], #1, MUL VL]    \n"
        "ld1w	{ z10.s }, p0/z, [%[pB], #2, MUL VL]    \n"
	    "ld1w	{ z11.s }, p0/z, [%[pB], #3, MUL VL]    \n"

        // load A
        "ld1rw	{ z0.s }, p0/z, [%[pA]]                 \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #4]             \n"
        "ld1rw	{ z2.s }, p0/z, [%[pA], #8]             \n"
	    "ld1rw	{ z3.s }, p0/z, [%[pA], #12]            \n"

    "0:                                                 \n"

        // ------------- loop 1 -------------
        // load B
        "ld1w	{ z12.s }, p0/z, [%[pB], #4, MUL VL]    \n"
	    "ld1w	{ z13.s }, p0/z, [%[pB], #5, MUL VL]    \n"
        "ld1w	{ z14.s }, p0/z, [%[pB], #6, MUL VL]    \n"
	    "ld1w	{ z15.s }, p0/z, [%[pB], #7, MUL VL]    \n"

        // load A
        "ld1rw	{ z4.s }, p0/z, [%[pA], #16]            \n"
	    "ld1rw	{ z5.s }, p0/z, [%[pA], #20]            \n"
        "ld1rw	{ z6.s }, p0/z, [%[pA], #24]            \n"
	    "ld1rw	{ z7.s }, p0/z, [%[pA], #28]            \n"
        
        "prfm	pldl1keep, [%[pA], #768]                \n"
        
        "fmla	z16.s, p0/m, z8.s,  z0.s                \n"
        "fmla	z17.s, p0/m, z9.s,  z0.s                \n"
        "fmla	z18.s, p0/m, z10.s, z0.s                \n"
        "fmla	z19.s, p0/m, z11.s, z0.s                \n"

        "fmla	z20.s, p0/m, z8.s,  z1.s                \n"
        "fmla	z21.s, p0/m, z9.s,  z1.s                \n"
        "fmla	z22.s, p0/m, z10.s, z1.s                \n"
        "fmla	z23.s, p0/m, z11.s, z1.s                \n"

        "prfm	pldl1keep, [%[pA], #1024]               \n"
        "add	%[pB], %[pB], #512                      \n"

        "fmla	z24.s, p0/m, z8.s,  z2.s                \n"
        "fmla	z25.s, p0/m, z9.s,  z2.s                \n"
        "fmla	z26.s, p0/m, z10.s, z2.s                \n"
        "fmla	z27.s, p0/m, z11.s, z2.s                \n"

        "add	%[pA], %[pA], #32                       \n"

        "fmla	z28.s, p0/m, z8.s,  z3.s                \n"
        "fmla	z29.s, p0/m, z9.s,  z3.s                \n"
        "fmla	z30.s, p0/m, z10.s, z3.s                \n"
        "fmla	z31.s, p0/m, z11.s, z3.s                \n"

        // -------------- loop 2 -----------------

        // load B
        "ld1w	{ z8.s },  p0/z, [%[pB]]                \n"
	    "ld1w	{ z9.s },  p0/z, [%[pB], #1, MUL VL]    \n"
        "ld1w	{ z10.s }, p0/z, [%[pB], #2, MUL VL]    \n"
	    "ld1w	{ z11.s }, p0/z, [%[pB], #3, MUL VL]    \n"

        // load A
        "ld1rw	{ z0.s }, p0/z, [%[pA]]                 \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #4]             \n"
        "ld1rw	{ z2.s }, p0/z, [%[pA], #8]             \n"
	    "ld1rw	{ z3.s }, p0/z, [%[pA], #12]            \n"

        "prfm	pldl1keep, [%[pA], #256]                \n"

        "fmla	z16.s, p0/m, z12.s, z4.s                \n"
        "fmla	z17.s, p0/m, z13.s, z4.s                \n"
        "fmla	z18.s, p0/m, z14.s, z4.s                \n"
        "fmla	z19.s, p0/m, z15.s, z4.s                \n"

        "fmla	z20.s, p0/m, z12.s, z5.s                \n"
        "fmla	z21.s, p0/m, z13.s, z5.s                \n"
        "fmla	z22.s, p0/m, z14.s, z5.s                \n"
        "fmla	z23.s, p0/m, z15.s, z5.s                \n"

        "prfm	pldl1keep, [%[pA], #512]                \n"
        "fmla	z24.s, p0/m, z12.s, z6.s                \n"
        "fmla	z25.s, p0/m, z13.s, z6.s                \n"
        "fmla	z26.s, p0/m, z14.s, z6.s                \n"
        "fmla	z27.s, p0/m, z15.s, z6.s                \n"

        "fmla	z28.s, p0/m, z12.s, z7.s                \n"
        "fmla	z29.s, p0/m, z13.s, z7.s                \n"
        "fmla	z30.s, p0/m, z14.s, z7.s                \n"
        "fmla	z31.s, p0/m, z15.s, z7.s                \n"

        "subs   x6, x6, #1                              \n"
        "b.ne   0b                                      \n"
        
        "st1w	{ z16.s }, p0, [%[pC0]]      \n"
        "st1w	{ z17.s }, p0, [%[pC0], #1, MUL VL]    \n"
        "st1w	{ z18.s }, p0, [%[pC0], #2, MUL VL]    \n"
        "st1w	{ z19.s }, p0, [%[pC0], #3, MUL VL]    \n"
        "st1w	{ z20.s }, p0, [%[pC1]]      \n"
        "st1w	{ z21.s }, p0, [%[pC1], #1, MUL VL]    \n"
        "st1w	{ z22.s }, p0, [%[pC1], #2, MUL VL]    \n"
        "st1w	{ z23.s }, p0, [%[pC1], #3, MUL VL]    \n"
        "st1w	{ z24.s }, p0, [%[pC2]]      \n"
        "st1w	{ z25.s }, p0, [%[pC2], #1, MUL VL]    \n"
        "st1w	{ z26.s }, p0, [%[pC2], #2, MUL VL]    \n"
        "st1w	{ z27.s }, p0, [%[pC2], #3, MUL VL]    \n"
        "st1w	{ z28.s }, p0, [%[pC3]]     \n"
        "st1w	{ z29.s }, p0, [%[pC3], #1, MUL VL]    \n"
        "st1w	{ z30.s }, p0, [%[pC3], #2, MUL VL]    \n"
        "st1w	{ z31.s }, p0, [%[pC3], #3, MUL VL]    \n"

    "1:                                                \n"
        
    : [pA]"=&r"(packAPtr),     // %0
      [pB]"=&r"(packBPtr)      // %1
    : "[pA]"   (packAPtr),
      "[pB]"   (packBPtr), 
      [pC0] "r"(packCPtr0),    // %2
      [pC1] "r"(packCPtr1),    // %2
      [pC2] "r"(packCPtr2),    // %3
      [pC3] "r"(packCPtr3),    // %3
      [ldc] "r"(ldc),
      [kc]  "r"(kc_adjust),
      [preA]"r"(PREFETCH_A),
      [preB]"r"(PREFETCH_B),
      [preC]"r"(PREFETCH_C)
    : "memory", "cc", "p0", "x4", "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
      "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
      "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");

#else
#endif
}

// new version, use broadcast and fmla
void kernel_12x32_v1(int kc_adjust, float *packA, float* packB, float *packC, int ldc, const int PREFETCH_A, const int PREFETCH_B, const int PREFETCH_C) {

    float* packAPtr = packA;
    float* packBPtr = packB;
    float* packCPtr = packC;

#ifdef _ASM_

    float* packCPtr0  = packC;
    float* packCPtr1  = packC + 1  * ldc;
    float* packCPtr2  = packC + 2  * ldc;
    float* packCPtr3  = packC + 3  * ldc;
    float* packCPtr4  = packC + 4  * ldc;
    float* packCPtr5  = packC + 5  * ldc;
    float* packCPtr6  = packC + 6  * ldc;
    float* packCPtr7  = packC + 7  * ldc;
    float* packCPtr8  = packC + 8  * ldc;
    float* packCPtr9  = packC + 9  * ldc;
    float* packCPtr10 = packC + 10 * ldc;
    float* packCPtr11 = packC + 11 * ldc;

    asm volatile(
        "ptrue  p0.s  \n"
        "mov    x4, #16 \n"
        "mov    x5, %[kc]    \n"

        "cmp    w5, #0  \n"
        "b.eq    1f     \n"

        "ld1w	{ z8.s },  p0/z, [%[pC0]]      \n"  // load C
        "ld1w	{ z9.s },  p0/z, [%[pC0], x4, lsl #2]    \n"
        "ld1w	{ z10.s }, p0/z, [%[pC1]]      \n"
        "ld1w	{ z11.s }, p0/z, [%[pC1], x4, lsl #2]    \n"
        "ld1w	{ z12.s }, p0/z, [%[pC2]]      \n"
        "ld1w	{ z13.s }, p0/z, [%[pC2], x4, lsl #2]    \n"
        "ld1w	{ z14.s }, p0/z, [%[pC3]]      \n"
        "ld1w	{ z15.s }, p0/z, [%[pC3], x4, lsl #2]    \n"
        "ld1w	{ z16.s }, p0/z, [%[pC4]]      \n"
        "ld1w	{ z17.s }, p0/z, [%[pC4], x4, lsl #2]    \n"
        "ld1w	{ z18.s }, p0/z, [%[pC5]]      \n"
        "ld1w	{ z19.s }, p0/z, [%[pC5], x4, lsl #2]    \n"
        "ld1w	{ z20.s }, p0/z, [%[pC6]]      \n"
        "ld1w	{ z21.s }, p0/z, [%[pC6], x4, lsl #2]    \n"
        "ld1w	{ z22.s }, p0/z, [%[pC7]]      \n"
        "ld1w	{ z23.s }, p0/z, [%[pC7], x4, lsl #2]    \n"
        "ld1w	{ z24.s }, p0/z, [%[pC8]]      \n"
        "ld1w	{ z25.s }, p0/z, [%[pC8], x4, lsl #2]    \n"
        "ld1w	{ z26.s }, p0/z, [%[pC9]]      \n"
        "ld1w	{ z27.s }, p0/z, [%[pC9], x4, lsl #2]    \n"
        "ld1w	{ z28.s }, p0/z, [%[pC10]]     \n"
        "ld1w	{ z29.s }, p0/z, [%[pC10], x4, lsl #2]    \n"
        "ld1w	{ z30.s }, p0/z, [%[pC11]]     \n"
        "ld1w	{ z31.s }, p0/z, [%[pC11], x4, lsl #2]    \n"

    "0:                                                 \n"
	
        "ld1rw	{ z0.s }, p0/z, [%[pA]]                 \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #4]             \n"
	    "ld1rw	{ z2.s }, p0/z, [%[pA], #8]             \n"
	    "ld1rw	{ z5.s }, p0/z, [%[pA], #12]            \n"
	    "ld1rw	{ z6.s }, p0/z, [%[pA], #16]            \n"

//        "prfm	pldl1keep, [%[pA], #128]                \n"
	    
        "ld1w	{ z3.s }, p0/z, [%[pB]]                 \n"
	    "ld1w	{ z4.s }, p0/z, [%[pB], x4, lsl #2]     \n"

        "fmla	z8.s,  p0/m, z3.s, z0.s                 \n"
        "fmla	z9.s,  p0/m, z4.s, z0.s                 \n"
        
        "fmla	z10.s, p0/m, z3.s, z1.s                 \n"
        "fmla	z11.s, p0/m, z4.s, z1.s                 \n"

        "fmla	z12.s, p0/m, z3.s, z2.s                 \n"
        "fmla	z13.s, p0/m, z4.s, z2.s                 \n"

        "fmla	z14.s, p0/m, z3.s, z5.s                 \n"
        "fmla	z15.s, p0/m, z4.s, z5.s                 \n"
        
        "fmla	z16.s, p0/m, z3.s, z6.s                 \n"
        "fmla	z17.s, p0/m, z4.s, z6.s                 \n"

        "ld1rw	{ z0.s }, p0/z, [%[pA], #20]            \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #24]            \n"
	    "ld1rw	{ z2.s }, p0/z, [%[pA], #28]            \n"
	    "ld1rw	{ z5.s }, p0/z, [%[pA], #32]            \n"
	    "ld1rw	{ z6.s }, p0/z, [%[pA], #36]            \n"

        "fmla	z18.s, p0/m, z3.s, z0.s                 \n"
        "fmla	z19.s, p0/m, z4.s, z0.s                 \n"

        "fmla	z20.s, p0/m, z3.s, z1.s                 \n"
        "fmla	z21.s, p0/m, z4.s, z1.s                 \n"
        
        "fmla	z22.s, p0/m, z3.s, z2.s                 \n"
        "fmla	z23.s, p0/m, z4.s, z2.s                 \n"

        "fmla	z24.s, p0/m, z3.s, z5.s                 \n"
        "fmla	z25.s, p0/m, z4.s, z5.s                 \n"

        "fmla	z26.s, p0/m, z3.s, z6.s                 \n"
        "fmla	z27.s, p0/m, z4.s, z6.s                 \n"

        "ld1rw	{ z0.s }, p0/z, [%[pA], #40]            \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #44]            \n"

        "fmla	z28.s, p0/m, z3.s, z0.s                 \n"
        "fmla	z29.s, p0/m, z4.s, z0.s                 \n"

        "add	%[pB], %[pB], #128                      \n"
        "add	%[pA], %[pA], #48                       \n"
        "subs   x5, x5, #1                              \n"

        "fmla	z30.s, p0/m, z3.s, z1.s                 \n"
        "fmla	z31.s, p0/m, z4.s, z1.s                 \n"

        "b.ne   0b                                      \n"
        
        "st1w	{ z8.s },  p0, [%[pC0]]      \n"  // store C
        "st1w	{ z9.s },  p0, [%[pC0], x4, lsl #2]    \n"
        "st1w	{ z10.s }, p0, [%[pC1]]      \n"
        "st1w	{ z11.s }, p0, [%[pC1], x4, lsl #2]    \n"
        "st1w	{ z12.s }, p0, [%[pC2]]      \n"
        "st1w	{ z13.s }, p0, [%[pC2], x4, lsl #2]    \n"
        "st1w	{ z14.s }, p0, [%[pC3]]      \n"
        "st1w	{ z15.s }, p0, [%[pC3], x4, lsl #2]    \n"
        "st1w	{ z16.s }, p0, [%[pC4]]      \n"
        "st1w	{ z17.s }, p0, [%[pC4], x4, lsl #2]    \n"
        "st1w	{ z18.s }, p0, [%[pC5]]      \n"
        "st1w	{ z19.s }, p0, [%[pC5], x4, lsl #2]    \n"
        "st1w	{ z20.s }, p0, [%[pC6]]      \n"
        "st1w	{ z21.s }, p0, [%[pC6], x4, lsl #2]    \n"
        "st1w	{ z22.s }, p0, [%[pC7]]      \n"
        "st1w	{ z23.s }, p0, [%[pC7], x4, lsl #2]    \n"
        "st1w	{ z24.s }, p0, [%[pC8]]      \n"
        "st1w	{ z25.s }, p0, [%[pC8], x4, lsl #2]    \n"
        "st1w	{ z26.s }, p0, [%[pC9]]      \n"
        "st1w	{ z27.s }, p0, [%[pC9], x4, lsl #2]    \n"
        "st1w	{ z28.s }, p0, [%[pC10]]     \n"
        "st1w	{ z29.s }, p0, [%[pC10], x4, lsl #2]    \n"
        "st1w	{ z30.s }, p0, [%[pC11]]     \n"
        "st1w	{ z31.s }, p0, [%[pC11], x4, lsl #2]    \n"

    "1:                                                 \n"
        
    : [pA]"=&r"(packAPtr),     // %0
      [pB]"=&r"(packBPtr)      // %1
    : "[pA]"   (packAPtr),
      "[pB]"   (packBPtr), 
      [pC0] "r"(packCPtr0),    // %2
      [pC1] "r"(packCPtr1),    // %2
      [pC2] "r"(packCPtr2),    // %3
      [pC3] "r"(packCPtr3),    // %3
      [pC4] "r"(packCPtr4),    // %4
      [pC5] "r"(packCPtr5),    // %4
      [pC6] "r"(packCPtr6),    // %5
      [pC7] "r"(packCPtr7),    // %5
      [pC8] "r"(packCPtr8),    // %6
      [pC9] "r"(packCPtr9),    // %6
      [pC10]"r"(packCPtr10),   // %7
      [pC11]"r"(packCPtr11),   // %7
      [ldc] "r"(ldc),
      [kc]  "r"(kc_adjust),
      [preA]"r"(PREFETCH_A),
      [preB]"r"(PREFETCH_B),
      [preC]"r"(PREFETCH_C)
    : "memory", "cc", "p0", "x4", "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
      "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
      "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");

#else
#endif
}

// new version, use broadcast and fmla and loop unroll by 2
void kernel_12x32_v2(int kc_adjust, float *packA, float* packB, float *packC, int ldc, const int PREFETCH_A, const int PREFETCH_B, const int PREFETCH_C) {

    float* packAPtr = packA;
    float* packBPtr = packB;
    float* packCPtr = packC;

#ifdef _ASM_

    float* packCPtr0  = packC;
    float* packCPtr1  = packC + 1  * ldc;
    float* packCPtr2  = packC + 2  * ldc;
    float* packCPtr3  = packC + 3  * ldc;
    float* packCPtr4  = packC + 4  * ldc;
    float* packCPtr5  = packC + 5  * ldc;
    float* packCPtr6  = packC + 6  * ldc;
    float* packCPtr7  = packC + 7  * ldc;
    float* packCPtr8  = packC + 8  * ldc;
    float* packCPtr9  = packC + 9  * ldc;
    float* packCPtr10 = packC + 10 * ldc;
    float* packCPtr11 = packC + 11 * ldc;

    asm volatile(
        "ptrue  p0.s  \n"
        "mov    x4, #16 \n"
        "mov    x5, %[kc]    \n"
        "lsr    x6, x5, 0x1  \n"
		"lsl    x7, x6, 0x1  \n"

        "cmp    w5, #0  \n"
        "b.eq   3f      \n"

		//"add	%[pC0], %[pC0], 256*2 \n"
		//"prfm	pstl1keep, [%[pC0]] \n"
		//"sub	%[pC0], %[pC0], 256*2 \n"

        "ld1w	{ z8.s },  p0/z, [%[pC0]]      \n"  // load C
        "ld1w	{ z9.s },  p0/z, [%[pC0], x4, lsl #2]    \n"
        "ld1w	{ z10.s }, p0/z, [%[pC1]]      \n"
        "ld1w	{ z11.s }, p0/z, [%[pC1], x4, lsl #2]    \n"
        "ld1w	{ z12.s }, p0/z, [%[pC2]]      \n"
        "ld1w	{ z13.s }, p0/z, [%[pC2], x4, lsl #2]    \n"
        "ld1w	{ z14.s }, p0/z, [%[pC3]]      \n"
        "ld1w	{ z15.s }, p0/z, [%[pC3], x4, lsl #2]    \n"
        "ld1w	{ z16.s }, p0/z, [%[pC4]]      \n"
        "ld1w	{ z17.s }, p0/z, [%[pC4], x4, lsl #2]    \n"
        "ld1w	{ z18.s }, p0/z, [%[pC5]]      \n"
        "ld1w	{ z19.s }, p0/z, [%[pC5], x4, lsl #2]    \n"
        "ld1w	{ z20.s }, p0/z, [%[pC6]]      \n"
        "ld1w	{ z21.s }, p0/z, [%[pC6], x4, lsl #2]    \n"
        "ld1w	{ z22.s }, p0/z, [%[pC7]]      \n"
        "ld1w	{ z23.s }, p0/z, [%[pC7], x4, lsl #2]    \n"
        "ld1w	{ z24.s }, p0/z, [%[pC8]]      \n"
        "ld1w	{ z25.s }, p0/z, [%[pC8], x4, lsl #2]    \n"
        "ld1w	{ z26.s }, p0/z, [%[pC9]]      \n"
        "ld1w	{ z27.s }, p0/z, [%[pC9], x4, lsl #2]    \n"
        "ld1w	{ z28.s }, p0/z, [%[pC10]]     \n"
        "ld1w	{ z29.s }, p0/z, [%[pC10], x4, lsl #2]    \n"
        "ld1w	{ z30.s }, p0/z, [%[pC11]]     \n"
        "ld1w	{ z31.s }, p0/z, [%[pC11], x4, lsl #2]    \n"


        "ld1w	{ z4.s }, p0/z, [%[pB]]                 \n"
	    "ld1w	{ z5.s }, p0/z, [%[pB], #1, MUL VL]     \n"

//        "prfm	pldl1keep, [%[pA],256*0]                \n"
//        "prfm	pldl1keep, [%[pA],256*1]                \n"
//        "prfm	pldl1keep, [%[pA],256*2]                \n"
//        "prfm	pldl1keep, [%[pA],256*3]                \n"
//        "prfm	pldl1keep, [%[pA],256*4]                \n"
//        "prfm	pldl1keep, [%[pA],256*5]                \n"
//        "prfm	pldl1keep, [%[pA],256*6]                \n"
//        "prfm	pldl1keep, [%[pA],256*7]                \n"
//        "prfm	pldl1keep, [%[pA],256*8]                \n"

        "ld1rw	{ z0.s }, p0/z, [%[pA]]                 \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #4]             \n"

        "cmp    w6, #0                                  \n"
        "b.eq   1f                                      \n"

    "0:                                                 \n"

        // ------------- loop 1 -------------
	    "ld1w	{ z6.s }, p0/z, [%[pB], #2, MUL VL]    \n"
	    "ld1w	{ z7.s }, p0/z, [%[pB], #3, MUL VL]    \n"

        "fmla	z8.s,  p0/m, z4.s, z0.s                 \n"
        "fmla	z9.s,  p0/m, z5.s, z0.s                 \n"

        "prfm	pldl1keep, [%[pA], 256]               \n"
	    "ld1rw	{ z2.s }, p0/z, [%[pA], #8]             \n"
	    "ld1rw	{ z3.s }, p0/z, [%[pA], #12]            \n"
        "fmla	z10.s, p0/m, z4.s, z1.s                 \n"
        "fmla	z11.s, p0/m, z5.s, z1.s                 \n"
        
        "ld1rw	{ z0.s }, p0/z, [%[pA], #16]            \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #20]            \n"
        
        "fmla	z12.s, p0/m, z4.s, z2.s                 \n"
        "fmla	z13.s, p0/m, z5.s, z2.s                 \n"
        "fmla	z14.s, p0/m, z4.s, z3.s                 \n"
        "fmla	z15.s, p0/m, z5.s, z3.s                 \n"

	    "ld1rw	{ z2.s }, p0/z, [%[pA], #24]            \n"
	    "ld1rw	{ z3.s }, p0/z, [%[pA], #28]            \n"
        
        "fmla	z16.s, p0/m, z4.s, z0.s                 \n"
        "fmla	z17.s, p0/m, z5.s, z0.s                 \n"
        "fmla	z18.s, p0/m, z4.s, z1.s                 \n"
        "fmla	z19.s, p0/m, z5.s, z1.s                 \n"

        "prfm	pldl1keep, [%[pA], 256*2]               \n"
        "ld1rw	{ z0.s }, p0/z, [%[pA], #32]            \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #36]            \n"

        "fmla	z20.s, p0/m, z4.s, z2.s                 \n"
        "fmla	z21.s, p0/m, z5.s, z2.s                 \n"
        "fmla	z22.s, p0/m, z4.s, z3.s                 \n"
        "fmla	z23.s, p0/m, z5.s, z3.s                 \n"

        "ld1rw	{ z2.s }, p0/z, [%[pA], #40]            \n"
	    "ld1rw	{ z3.s }, p0/z, [%[pA], #44]            \n"

        "add	%[pB], %[pB], #256                      \n"

        "fmla	z24.s, p0/m, z4.s, z0.s                 \n"
        "fmla	z25.s, p0/m, z5.s, z0.s                 \n"
        "fmla	z26.s, p0/m, z4.s, z1.s                 \n"
        "fmla	z27.s, p0/m, z5.s, z1.s                 \n"

        "ld1rw	{ z0.s }, p0/z, [%[pA], #48]            \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #52]            \n" 

        "fmla	z28.s, p0/m, z4.s, z2.s                 \n"
        "fmla	z29.s, p0/m, z5.s, z2.s                 \n"
        "fmla	z30.s, p0/m, z4.s, z3.s                 \n"
        "fmla	z31.s, p0/m, z5.s, z3.s                 \n"

        // -------------- loop 2 -----------------
        "ld1w	{ z4.s },  p0/z, [%[pB]]                \n"
	    "ld1w	{ z5.s },  p0/z, [%[pB], #1, MUL VL]    \n"

        "prfm	pldl1keep, [%[pA], #256*3]             \n"
	    "ld1rw	{ z2.s }, p0/z, [%[pA], #56]            \n"
	    "ld1rw	{ z3.s }, p0/z, [%[pA], #60]            \n"

        "fmla	z8.s,  p0/m, z6.s, z0.s                 \n"
        "fmla	z9.s,  p0/m, z7.s, z0.s                 \n"
        "fmla	z10.s, p0/m, z6.s, z1.s                 \n"
        "fmla	z11.s, p0/m, z7.s, z1.s                 \n"

        "ld1rw	{ z0.s }, p0/z, [%[pA], #64]            \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #68]            \n"

        "fmla	z12.s, p0/m, z6.s, z2.s                 \n"
        "fmla	z13.s, p0/m, z7.s, z2.s                 \n"
        "fmla	z14.s, p0/m, z6.s, z3.s                 \n"
        "fmla	z15.s, p0/m, z7.s, z3.s                 \n"

	    "ld1rw	{ z2.s }, p0/z, [%[pA], #72]            \n"
	    "ld1rw	{ z3.s }, p0/z, [%[pA], #76]            \n"
        
        "fmla	z16.s, p0/m, z6.s, z0.s                 \n"
        "fmla	z17.s, p0/m, z7.s, z0.s                 \n"
        "fmla	z18.s, p0/m, z6.s, z1.s                 \n"
        "fmla	z19.s, p0/m, z7.s, z1.s                 \n"

        "prfm	pldl1keep, [%[pA], #1024]               \n"
        "ld1rw	{ z0.s }, p0/z, [%[pA], #80]            \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #84]            \n"

        "fmla	z20.s, p0/m, z6.s, z2.s                 \n"
        "fmla	z21.s, p0/m, z7.s, z2.s                 \n"
        "fmla	z22.s, p0/m, z6.s, z3.s                 \n"
        "fmla	z23.s, p0/m, z7.s, z3.s                 \n"

        "ld1rw	{ z2.s }, p0/z, [%[pA], #88]            \n"
	    "ld1rw	{ z3.s }, p0/z, [%[pA], #92]            \n"

        "add	%[pA], %[pA], #96                       \n"

        "fmla	z24.s, p0/m, z6.s, z0.s                 \n"
        "fmla	z25.s, p0/m, z7.s, z0.s                 \n"
        "fmla	z26.s, p0/m, z6.s, z1.s                 \n"
        "fmla	z27.s, p0/m, z7.s, z1.s                 \n"

        "ld1rw	{ z0.s }, p0/z, [%[pA]]                 \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #4]             \n"

        "fmla	z28.s, p0/m, z6.s, z2.s                 \n"
        "fmla	z29.s, p0/m, z7.s, z2.s                 \n"
        "fmla	z30.s, p0/m, z6.s, z3.s                 \n"
        "fmla	z31.s, p0/m, z7.s, z3.s                 \n"

        "subs   x6, x6, #1                              \n"
        "b.ne   0b                                      \n"

        // ---------- remain loop (last one) -----------
    "1:                                                 \n"
        "cmp    x7, x5                                  \n"
        "b.eq   2f                                      \n"

        "fmla	z8.s,  p0/m, z4.s, z0.s                 \n"
        "fmla	z9.s,  p0/m, z5.s, z0.s                 \n"

        // "prfm	pldl1keep, [%[pA], 256]                 \n"
	    "ld1rw	{ z2.s }, p0/z, [%[pA], #8]             \n"
	    "ld1rw	{ z3.s }, p0/z, [%[pA], #12]            \n"
        "fmla	z10.s, p0/m, z4.s, z1.s                 \n"
        "fmla	z11.s, p0/m, z5.s, z1.s                 \n"
        
        "ld1rw	{ z0.s }, p0/z, [%[pA], #16]            \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #20]            \n"
        
        "fmla	z12.s, p0/m, z4.s, z2.s                 \n"
        "fmla	z13.s, p0/m, z5.s, z2.s                 \n"
        "fmla	z14.s, p0/m, z4.s, z3.s                 \n"
        "fmla	z15.s, p0/m, z5.s, z3.s                 \n"

	    "ld1rw	{ z2.s }, p0/z, [%[pA], #24]            \n"
	    "ld1rw	{ z3.s }, p0/z, [%[pA], #28]            \n"
        
        "fmla	z16.s, p0/m, z4.s, z0.s                 \n"
        "fmla	z17.s, p0/m, z5.s, z0.s                 \n"
        "fmla	z18.s, p0/m, z4.s, z1.s                 \n"
        "fmla	z19.s, p0/m, z5.s, z1.s                 \n"

        // "prfm	pldl1keep, [%[pA], 256*2]               \n"
        "ld1rw	{ z0.s }, p0/z, [%[pA], #32]            \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #36]            \n"

        "fmla	z20.s, p0/m, z4.s, z2.s                 \n"
        "fmla	z21.s, p0/m, z5.s, z2.s                 \n"
        "fmla	z22.s, p0/m, z4.s, z3.s                 \n"
        "fmla	z23.s, p0/m, z5.s, z3.s                 \n"

        "ld1rw	{ z2.s }, p0/z, [%[pA], #40]            \n"
	    "ld1rw	{ z3.s }, p0/z, [%[pA], #44]            \n"

        // "add	%[pB], %[pB], #256                      \n"

        "fmla	z24.s, p0/m, z4.s, z0.s                 \n"
        "fmla	z25.s, p0/m, z5.s, z0.s                 \n"
        "fmla	z26.s, p0/m, z4.s, z1.s                 \n"
        "fmla	z27.s, p0/m, z5.s, z1.s                 \n"

        "fmla	z28.s, p0/m, z4.s, z2.s                 \n"
        "fmla	z29.s, p0/m, z5.s, z2.s                 \n"
        "fmla	z30.s, p0/m, z4.s, z3.s                 \n"
        "fmla	z31.s, p0/m, z5.s, z3.s                 \n"


    "2:                                                 \n"        
        "st1w	{ z8.s },  p0, [%[pC0]]      \n"  // store C
        "st1w	{ z9.s },  p0, [%[pC0], x4, lsl #2]    \n"
        "st1w	{ z10.s }, p0, [%[pC1]]      \n"
        "st1w	{ z11.s }, p0, [%[pC1], x4, lsl #2]    \n"
        "st1w	{ z12.s }, p0, [%[pC2]]      \n"
        "st1w	{ z13.s }, p0, [%[pC2], x4, lsl #2]    \n"
        "st1w	{ z14.s }, p0, [%[pC3]]      \n"
        "st1w	{ z15.s }, p0, [%[pC3], x4, lsl #2]    \n"
        "st1w	{ z16.s }, p0, [%[pC4]]      \n"
        "st1w	{ z17.s }, p0, [%[pC4], x4, lsl #2]    \n"
        "st1w	{ z18.s }, p0, [%[pC5]]      \n"
        "st1w	{ z19.s }, p0, [%[pC5], x4, lsl #2]    \n"
        "st1w	{ z20.s }, p0, [%[pC6]]      \n"
        "st1w	{ z21.s }, p0, [%[pC6], x4, lsl #2]    \n"
        "st1w	{ z22.s }, p0, [%[pC7]]      \n"
        "st1w	{ z23.s }, p0, [%[pC7], x4, lsl #2]    \n"
        "st1w	{ z24.s }, p0, [%[pC8]]      \n"
        "st1w	{ z25.s }, p0, [%[pC8], x4, lsl #2]    \n"
        "st1w	{ z26.s }, p0, [%[pC9]]      \n"
        "st1w	{ z27.s }, p0, [%[pC9], x4, lsl #2]    \n"
        "st1w	{ z28.s }, p0, [%[pC10]]     \n"
        "st1w	{ z29.s }, p0, [%[pC10], x4, lsl #2]    \n"
        "st1w	{ z30.s }, p0, [%[pC11]]     \n"
        "st1w	{ z31.s }, p0, [%[pC11], x4, lsl #2]    \n"


    "3:                                                 \n"
        
    : [pA]"=&r"(packAPtr),     // %0
      [pB]"=&r"(packBPtr)      // %1
    : "[pA]"   (packAPtr),
      "[pB]"   (packBPtr), 
      [pC0] "r"(packCPtr0),    // %2
      [pC1] "r"(packCPtr1),    // %2
      [pC2] "r"(packCPtr2),    // %3
      [pC3] "r"(packCPtr3),    // %3
      [pC4] "r"(packCPtr4),    // %4
      [pC5] "r"(packCPtr5),    // %4
      [pC6] "r"(packCPtr6),    // %5
      [pC7] "r"(packCPtr7),    // %5
      [pC8] "r"(packCPtr8),    // %6
      [pC9] "r"(packCPtr9),    // %6
      [pC10]"r"(packCPtr10),   // %7
      [pC11]"r"(packCPtr11),   // %7
      [ldc] "r"(ldc),
      [kc]  "r"(kc_adjust),
      [preA]"r"(PREFETCH_A),
      [preB]"r"(PREFETCH_B),
      [preC]"r"(PREFETCH_C)
    : "memory", "cc", "p0", "x4", "x5", "x6", "x7",
      "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
      "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
      "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");

#else
    float* packCPtr0  = packC;
    float* packCPtr1  = packC + 1  * ldc;
    float* packCPtr2  = packC + 2  * ldc;
    float* packCPtr3  = packC + 3  * ldc;
    float* packCPtr4  = packC + 4  * ldc;
    float* packCPtr5  = packC + 5  * ldc;
    float* packCPtr6  = packC + 6  * ldc;
    float* packCPtr7  = packC + 7  * ldc;
    float* packCPtr8  = packC + 8  * ldc;
    float* packCPtr9  = packC + 9  * ldc;
    float* packCPtr10 = packC + 10 * ldc;
    float* packCPtr11 = packC + 11 * ldc;

    const svbool_t p32_all = svptrue_b32();

    svfloat32_t va0,   va1, va2, va3;
    svfloat32_t vb4,   vb5, vb6, vb7;
    svfloat32_t vc00,  vc01;
    svfloat32_t vc10,  vc11;
    svfloat32_t vc20,  vc21;
    svfloat32_t vc30,  vc31;
    svfloat32_t vc40,  vc41;
    svfloat32_t vc50,  vc51;
    svfloat32_t vc60,  vc61;
    svfloat32_t vc70,  vc71;
    svfloat32_t vc80,  vc81;
    svfloat32_t vc90,  vc91;
    svfloat32_t vc100, vc101;
    svfloat32_t vc110, vc111;

    vc00  = svld1_f32(p32_all, packCPtr0);
    vc01  = svld1_f32(p32_all, packCPtr0 + 16);
    vc10  = svld1_f32(p32_all, packCPtr1);
    vc11  = svld1_f32(p32_all, packCPtr1 + 16);
    vc20  = svld1_f32(p32_all, packCPtr2);
    vc21  = svld1_f32(p32_all, packCPtr2 + 16);
    vc30  = svld1_f32(p32_all, packCPtr3);
    vc31  = svld1_f32(p32_all, packCPtr3 + 16);
    vc40  = svld1_f32(p32_all, packCPtr4);
    vc41  = svld1_f32(p32_all, packCPtr4 + 16);
    vc50  = svld1_f32(p32_all, packCPtr5);
    vc51  = svld1_f32(p32_all, packCPtr5 + 16);
    vc60  = svld1_f32(p32_all, packCPtr6);
    vc61  = svld1_f32(p32_all, packCPtr6 + 16);
    vc70  = svld1_f32(p32_all, packCPtr7);
    vc71  = svld1_f32(p32_all, packCPtr7 + 16);
    vc80  = svld1_f32(p32_all, packCPtr8);
    vc81  = svld1_f32(p32_all, packCPtr8 + 16);
    vc90  = svld1_f32(p32_all, packCPtr9);
    vc91  = svld1_f32(p32_all, packCPtr9 + 16);
    vc100 = svld1_f32(p32_all, packCPtr10);
    vc101 = svld1_f32(p32_all, packCPtr10 + 16);
    vc110 = svld1_f32(p32_all, packCPtr11);
    vc111 = svld1_f32(p32_all, packCPtr11 + 16);

    va0 = svdup_n_f32(packAPtr[0]);
    va1 = svdup_n_f32(packAPtr[1]);

    vb4 = svld1_f32(p32_all, packBPtr);
    vb5 = svld1_f32(p32_all, packBPtr + 16);

    // 计算
    for (int k = 0; k < kc_adjust; k += 2) {
        va2 = svdup_n_f32(packAPtr[2]);
        va3 = svdup_n_f32(packAPtr[3]);

        vb6 = svld1_f32(p32_all, packBPtr + 32);
        vb7 = svld1_f32(p32_all, packBPtr + 48); 

        vc00 = svmla_f32_x(p32_all, vc00, va0, vb4); 
        vc01 = svmla_f32_x(p32_all, vc01, va0, vb5); 
        vc10 = svmla_f32_x(p32_all, vc10, va1, vb4); 
        vc11 = svmla_f32_x(p32_all, vc11, va1, vb5); 

        va0 = svdup_n_f32(packAPtr[4]);
        va1 = svdup_n_f32(packAPtr[5]);
        
        vc20 = svmla_f32_x(p32_all, vc20, va2, vb4); 
        vc21 = svmla_f32_x(p32_all, vc21, va2, vb5); 
        vc30 = svmla_f32_x(p32_all, vc30, va3, vb4); 
        vc31 = svmla_f32_x(p32_all, vc31, va3, vb5); 
        
        va2 = svdup_n_f32(packAPtr[6]);
        va3 = svdup_n_f32(packAPtr[7]);

        vc40 = svmla_f32_x(p32_all, vc40, va0, vb4); 
        vc41 = svmla_f32_x(p32_all, vc41, va0, vb5); 
        vc50 = svmla_f32_x(p32_all, vc50, va1, vb4); 
        vc51 = svmla_f32_x(p32_all, vc51, va1, vb5); 

        va0 = svdup_n_f32(packAPtr[8]);
        va1 = svdup_n_f32(packAPtr[9]);

        vc60 = svmla_f32_x(p32_all, vc60, va2, vb4); 
        vc61 = svmla_f32_x(p32_all, vc61, va3, vb5); 
        vc70 = svmla_f32_x(p32_all, vc70, va2, vb4); 
        vc71 = svmla_f32_x(p32_all, vc71, va3, vb5); 

        va2 = svdup_n_f32(packAPtr[10]);
        va3 = svdup_n_f32(packAPtr[11]);

        packBPtr += 64;

        vc80 = svmla_f32_x(p32_all, vc80, va0, vb4); 
        vc81 = svmla_f32_x(p32_all, vc81, va0, vb5); 
        vc90 = svmla_f32_x(p32_all, vc90, va1, vb4); 
        vc91 = svmla_f32_x(p32_all, vc91, va1, vb5); 

        va0 = svdup_n_f32(packAPtr[12]);
        va1 = svdup_n_f32(packAPtr[13]);

        vc100 = svmla_f32_x(p32_all, vc100, va2, vb4); 
        vc101 = svmla_f32_x(p32_all, vc101, va3, vb5); 
        vc110 = svmla_f32_x(p32_all, vc110, va2, vb4); 
        vc111 = svmla_f32_x(p32_all, vc111, va3, vb5);

        // ----------loop 2--------------
        vb4 = svld1_f32(p32_all, packBPtr);
        vb5 = svld1_f32(p32_all, packBPtr + 16); 
        
        va2 = svdup_n_f32(packAPtr[14]);
        va3 = svdup_n_f32(packAPtr[15]);

        vc00 = svmla_f32_x(p32_all, vc00, va0, vb6); 
        vc01 = svmla_f32_x(p32_all, vc01, va0, vb7); 
        vc10 = svmla_f32_x(p32_all, vc10, va1, vb6); 
        vc11 = svmla_f32_x(p32_all, vc11, va1, vb7); 

        va0 = svdup_n_f32(packAPtr[16]);
        va1 = svdup_n_f32(packAPtr[17]);
        
        vc20 = svmla_f32_x(p32_all, vc20, va2, vb6); 
        vc21 = svmla_f32_x(p32_all, vc21, va2, vb7); 
        vc30 = svmla_f32_x(p32_all, vc30, va3, vb6); 
        vc31 = svmla_f32_x(p32_all, vc31, va3, vb7); 
        
        va2 = svdup_n_f32(packAPtr[18]);
        va3 = svdup_n_f32(packAPtr[19]);

        vc40 = svmla_f32_x(p32_all, vc40, va0, vb6); 
        vc41 = svmla_f32_x(p32_all, vc41, va0, vb7); 
        vc50 = svmla_f32_x(p32_all, vc50, va1, vb6); 
        vc51 = svmla_f32_x(p32_all, vc51, va1, vb7); 

        va0 = svdup_n_f32(packAPtr[20]);
        va1 = svdup_n_f32(packAPtr[21]);

        vc60 = svmla_f32_x(p32_all, vc60, va2, vb6); 
        vc61 = svmla_f32_x(p32_all, vc61, va3, vb7); 
        vc70 = svmla_f32_x(p32_all, vc70, va2, vb6); 
        vc71 = svmla_f32_x(p32_all, vc71, va3, vb7); 

        va2 = svdup_n_f32(packAPtr[22]);
        va3 = svdup_n_f32(packAPtr[23]);

        vc80 = svmla_f32_x(p32_all, vc80, va0, vb6); 
        vc81 = svmla_f32_x(p32_all, vc81, va0, vb7); 
        vc90 = svmla_f32_x(p32_all, vc90, va1, vb6); 
        vc91 = svmla_f32_x(p32_all, vc91, va1, vb7); 

        packAPtr += 24;

        va0 = svdup_n_f32(packAPtr[0]);
        va1 = svdup_n_f32(packAPtr[1]);

        vc100 = svmla_f32_x(p32_all, vc100, va2, vb6); 
        vc101 = svmla_f32_x(p32_all, vc101, va3, vb7); 
        vc110 = svmla_f32_x(p32_all, vc110, va2, vb6); 
        vc111 = svmla_f32_x(p32_all, vc111, va3, vb7);

    }

    // 将结果写回
    svst1_f32(p32_all, packCPtr0, vc00);
    svst1_f32(p32_all, packCPtr0 + 16, vc01);
    svst1_f32(p32_all, packCPtr1, vc10);
    svst1_f32(p32_all, packCPtr1 + 16, vc11);
    svst1_f32(p32_all, packCPtr2, vc20);
    svst1_f32(p32_all, packCPtr2 + 16, vc21);
    svst1_f32(p32_all, packCPtr3, vc30);
    svst1_f32(p32_all, packCPtr3 + 16, vc31);
    svst1_f32(p32_all, packCPtr4, vc40);
    svst1_f32(p32_all, packCPtr4 + 16, vc41);
    svst1_f32(p32_all, packCPtr5, vc50);
    svst1_f32(p32_all, packCPtr5 + 16, vc51);
    svst1_f32(p32_all, packCPtr6, vc60);
    svst1_f32(p32_all, packCPtr6 + 16, vc61);
    svst1_f32(p32_all, packCPtr7, vc70);
    svst1_f32(p32_all, packCPtr7 + 16, vc71);
    svst1_f32(p32_all, packCPtr8, vc80);
    svst1_f32(p32_all, packCPtr8 + 16, vc81);
    svst1_f32(p32_all, packCPtr9, vc90);
    svst1_f32(p32_all, packCPtr9 + 16, vc91);
    svst1_f32(p32_all, packCPtr10, vc100);
    svst1_f32(p32_all, packCPtr10 + 16, vc101);
    svst1_f32(p32_all, packCPtr11, vc110);
    svst1_f32(p32_all, packCPtr11 + 16, vc111);


#endif
}

template <int M, int N>
void kernel_MxN_for_12x32(int kc_adjust, float *packA, float *packB, float *packC, int ldc, int remain_col,
                            svbool_t p32_v0, svbool_t p32_v1, svbool_t p32_v2) {
    float* packAPtr = packA;
    float* packBPtr = packB;
    float* cPtr = packC;

    svfloat32_t va0,   va1, va2, va3;
    svfloat32_t vb0,   vb1;
    svfloat32_t vc00,  vc01;
    svfloat32_t vc10,  vc11;
    svfloat32_t vc20,  vc21;
    svfloat32_t vc30,  vc31;
    svfloat32_t vc40,  vc41;
    svfloat32_t vc50,  vc51;
    svfloat32_t vc60,  vc61;
    svfloat32_t vc70,  vc71;
    svfloat32_t vc80,  vc81;
    svfloat32_t vc90,  vc91;
    svfloat32_t vc100, vc101;
    svfloat32_t vc110, vc111;
    svfloat32_t vc120, vc121;
    svfloat32_t vc130, vc131;

    // load C
    if (M >= 1) {
        if (N >= 1 * simd_width) 
            vc00 = svld1_f32(p32_v0, cPtr + 0 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc01 = svld1_f32(p32_v1, cPtr + 0 * ldc + 1 * simd_width);
    }
    if (M >= 2) {
        if (N >= 1 * simd_width)
            vc10 = svld1_f32(p32_v0, cPtr + 1 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc11 = svld1_f32(p32_v1, cPtr + 1 * ldc + 1 * simd_width);
    }
    if (M >= 3) {
        if (N >= 1 * simd_width) 
            vc20 = svld1_f32(p32_v0, cPtr + 2 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc21 = svld1_f32(p32_v1, cPtr + 2 * ldc + 1 * simd_width);
    }
    if (M >= 4) {
        if (N >= 1 * simd_width) 
            vc30 = svld1_f32(p32_v0, cPtr + 3 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc31 = svld1_f32(p32_v1, cPtr + 3 * ldc + 1 * simd_width);
    }
    if (M >= 5) {
        if (N >= 1 * simd_width) 
            vc40 = svld1_f32(p32_v0, cPtr + 4 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc41 = svld1_f32(p32_v1, cPtr + 4 * ldc + 1 * simd_width);
    }
    if (M >= 6) {
        if (N >= 1 * simd_width) 
            vc50 = svld1_f32(p32_v0, cPtr + 5 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc51 = svld1_f32(p32_v1, cPtr + 5 * ldc + 1 * simd_width);
    }
    if (M >= 7) {
        if (N >= 1 * simd_width) 
            vc60 = svld1_f32(p32_v0, cPtr + 6 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc61 = svld1_f32(p32_v1, cPtr + 6 * ldc + 1 * simd_width);
    }
    if (M >= 8) {
        if (N >= 1 * simd_width) 
            vc70 = svld1_f32(p32_v0, cPtr + 7 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc71 = svld1_f32(p32_v1, cPtr + 7 * ldc + 1 * simd_width);
    }
    if (M >= 9) {
        if (N >= 1 * simd_width) 
            vc80 = svld1_f32(p32_v0, cPtr + 8 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc81 = svld1_f32(p32_v1, cPtr + 8 * ldc + 1 * simd_width);
    }
    if (M >= 10) {
        if (N >= 1 * simd_width) 
            vc90 = svld1_f32(p32_v0, cPtr + 9 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc91 = svld1_f32(p32_v1, cPtr + 9 * ldc + 1 * simd_width);
    }
    if (M >= 11) {
        if (N >= 1 * simd_width) 
            vc100 = svld1_f32(p32_v0, cPtr + 10 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc101 = svld1_f32(p32_v1, cPtr + 10 * ldc + 1 * simd_width);
    }
    if (M >= 12) {
        if (N >= 1 * simd_width) 
            vc110 = svld1_f32(p32_v0, cPtr + 11 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc111 = svld1_f32(p32_v1, cPtr + 11 * ldc + 1 * simd_width);
    }


    for (int k = 0; k < kc_adjust; k++) {
        // load B
        if (N >= 1 * simd_width) 
            vb0 = svld1_f32(p32_v0, packBPtr);
        if (N >= 2 * simd_width)
            vb1 = svld1_f32(p32_v1, packBPtr + 1 * simd_width);
        
        if (M >= 1) {
            va0 = svdup_n_f32(packAPtr[0]);
            if (N >= 1 * simd_width)
                vc00 = svmla_f32_x(p32_v0, vc00, va0, vb0);
            if (N >= 2 * simd_width)
                vc01 = svmla_f32_x(p32_v1, vc01, va0, vb1);
        }
        if (M >= 2) {
            va1 = svdup_n_f32(packAPtr[1]);
            if (N >= 1 * simd_width)
                vc10 = svmla_f32_x(p32_v0, vc10, va1, vb0);
            if (N >= 2 * simd_width)
                vc11 = svmla_f32_x(p32_v1, vc11, va1, vb1);
        }
        if (M >= 3) {
            va2 = svdup_n_f32(packAPtr[2]);
            if (N >= 1 * simd_width)
                vc20 = svmla_f32_x(p32_v0, vc20, va2, vb0);
            if (N >= 2 * simd_width)
                vc21 = svmla_f32_x(p32_v1, vc21, va2, vb1);
        }
        if (M >= 4) {
            va3 = svdup_n_f32(packAPtr[3]);
            if (N >= 1 * simd_width)
                vc30 = svmla_f32_x(p32_v0, vc30, va3, vb0);
            if (N >= 2 * simd_width)
                vc31 = svmla_f32_x(p32_v1, vc31, va3, vb1);
        }
        if (M >= 5) {
            va0 = svdup_n_f32(packAPtr[4]);
            if (N >= 1 * simd_width)
                vc40 = svmla_f32_x(p32_v0, vc40, va0, vb0);
            if (N >= 2 * simd_width)
                vc41 = svmla_f32_x(p32_v1, vc41, va0, vb1);
        }
        if (M >= 6) {
            va1 = svdup_n_f32(packAPtr[5]);
            if (N >= 1 * simd_width)
                vc50 = svmla_f32_x(p32_v0, vc50, va1, vb0);
            if (N >= 2 * simd_width)
                vc51 = svmla_f32_x(p32_v1, vc51, va1, vb1);
        }
        if (M >= 7) {
            va2 = svdup_n_f32(packAPtr[6]);
            if (N >= 1 * simd_width)
                vc60 = svmla_f32_x(p32_v0, vc60, va2, vb0);
            if (N >= 2 * simd_width)
                vc61 = svmla_f32_x(p32_v1, vc61, va2, vb1);
        }
        if (M >= 8) {
            va3 = svdup_n_f32(packAPtr[7]);
            if (N >= 1 * simd_width)
                vc70 = svmla_f32_x(p32_v0, vc70, va3, vb0);
            if (N >= 2 * simd_width)
                vc71 = svmla_f32_x(p32_v1, vc71, va3, vb1);
        }
        if (M >= 9) {
            va0 = svdup_n_f32(packAPtr[8]);
            if (N >= 1 * simd_width)
                vc80 = svmla_f32_x(p32_v0, vc80, va0, vb0);
            if (N >= 2 * simd_width)
                vc81 = svmla_f32_x(p32_v1, vc81, va0, vb1);
        }
        if (M >= 10) {
            va1 = svdup_n_f32(packAPtr[9]);
            if (N >= 1 * simd_width)
                vc90 = svmla_f32_x(p32_v0, vc90, va1, vb0);
            if (N >= 2 * simd_width)
                vc91 = svmla_f32_x(p32_v1, vc91, va1, vb1);
        }
        if (M >= 11) {
            va2 = svdup_n_f32(packAPtr[10]);
            if (N >= 1 * simd_width)
                vc100 = svmla_f32_x(p32_v0, vc100, va2, vb0);
            if (N >= 2 * simd_width)
                vc101 = svmla_f32_x(p32_v1, vc101, va2, vb1);
        }
        if (M >= 12) {
            va3 = svdup_n_f32(packAPtr[11]);
            if (N >= 1 * simd_width)
                vc110 = svmla_f32_x(p32_v0, vc110, va3, vb0);
            if (N >= 2 * simd_width)
                vc111 = svmla_f32_x(p32_v1, vc111, va3, vb1);
        }

        packAPtr += M;
        packBPtr += remain_col;
    }

    // store C
    if (M >= 1) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 0 * ldc + 0 * simd_width, vc00);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 0 * ldc + 1 * simd_width, vc01);
    }
    if (M >= 2) {
        if (N >= 1 * simd_width)
            svst1_f32(p32_v0, cPtr + 1 * ldc + 0 * simd_width, vc10);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 1 * ldc + 1 * simd_width, vc11);
    }
    if (M >= 3) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 2 * ldc + 0 * simd_width, vc20);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 2 * ldc + 1 * simd_width, vc21);
    }
    if (M >= 4) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 3 * ldc + 0 * simd_width, vc30);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 3 * ldc + 1 * simd_width, vc31);
    }
    if (M >= 5) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 4 * ldc + 0 * simd_width, vc40);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 4 * ldc + 1 * simd_width, vc41);
    }
    if (M >= 6) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 5 * ldc + 0 * simd_width, vc50);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 5 * ldc + 1 * simd_width, vc51);
    }
    if (M >= 7) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 6 * ldc + 0 * simd_width, vc60);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 6 * ldc + 1 * simd_width, vc61);
    }
    if (M >= 8) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 7 * ldc + 0 * simd_width, vc70);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 7 * ldc + 1 * simd_width, vc71);
    }
    if (M >= 9) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 8 * ldc + 0 * simd_width, vc80);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 8 * ldc + 1 * simd_width, vc81);
    }
    if (M >= 10) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 9 * ldc + 0 * simd_width, vc90);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 9 * ldc + 1 * simd_width, vc91);
    }
    if (M >= 11) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 10 * ldc + 0 * simd_width, vc100);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 10 * ldc + 1 * simd_width, vc101);
    }
    if (M >= 12) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 11 * ldc + 0 * simd_width, vc110);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 11 * ldc + 1 * simd_width, vc111);
    }
}

const inner_kernel_for_corner_func_t kernel_MxN_for_12x32_func_tab[12][2] = {
    {
        kernel_MxN_for_12x32<1, 16>,
        kernel_MxN_for_12x32<1, 32>
    },
    {
        kernel_MxN_for_12x32<2, 16>,
        kernel_MxN_for_12x32<2, 32>
    },
    {
        kernel_MxN_for_12x32<3, 16>,
        kernel_MxN_for_12x32<3, 32>
    },
    {
        kernel_MxN_for_12x32<4, 16>,
        kernel_MxN_for_12x32<4, 32>
    },
    {
        kernel_MxN_for_12x32<5, 16>,
        kernel_MxN_for_12x32<5, 32>
    },
    {
        kernel_MxN_for_12x32<6, 16>,
        kernel_MxN_for_12x32<6, 32>
    },
    {
        kernel_MxN_for_12x32<7, 16>,
        kernel_MxN_for_12x32<7, 32>
    },
    {
        kernel_MxN_for_12x32<8, 16>,
        kernel_MxN_for_12x32<8, 32>
    },
    {
        kernel_MxN_for_12x32<9, 16>,
        kernel_MxN_for_12x32<9, 32>
    },
    {
        kernel_MxN_for_12x32<10, 16>,
        kernel_MxN_for_12x32<10, 32>
    },
    {
        kernel_MxN_for_12x32<11, 16>,
        kernel_MxN_for_12x32<11, 32>
    },
    {
        kernel_MxN_for_12x32<12, 16>,
        kernel_MxN_for_12x32<12, 32>
    },
};

// new version, use broadcast and fmla and loop unroll by 2
void kernel_8x32_v1(int kc_adjust, float *packA, float* packB, float *packC, int ldc, const int PREFETCH_A, const int PREFETCH_B, const int PREFETCH_C) {

    float* packAPtr = packA;
    float* packBPtr = packB;
    float* packCPtr = packC;

#ifdef _ASM_

    float* packCPtr0  = packC;
    float* packCPtr1  = packC + 1  * ldc;
    float* packCPtr2  = packC + 2  * ldc;
    float* packCPtr3  = packC + 3  * ldc;
    float* packCPtr4  = packC + 4  * ldc;
    float* packCPtr5  = packC + 5  * ldc;
    float* packCPtr6  = packC + 6  * ldc;
    float* packCPtr7  = packC + 7  * ldc;

    asm volatile(
        "ptrue  p0.s  \n"
        "mov    x4, #16 \n"
        "mov    x5, %[kc]    \n"
        "lsr    x6, x5, 0x1  \n"

        "cmp    w5, #0  \n"
        "b.eq    1f     \n"

        
        "ld1w	{ z16.s }, p0/z, [%[pC0]]      \n"
        "ld1w	{ z17.s }, p0/z, [%[pC0], x4, lsl #2]    \n"
        "ld1w	{ z18.s }, p0/z, [%[pC1]]      \n"
        "ld1w	{ z19.s }, p0/z, [%[pC1], x4, lsl #2]    \n"
        "ld1w	{ z20.s }, p0/z, [%[pC2]]      \n"
        "ld1w	{ z21.s }, p0/z, [%[pC2], x4, lsl #2]    \n"
        "ld1w	{ z22.s }, p0/z, [%[pC3]]      \n"
        "ld1w	{ z23.s }, p0/z, [%[pC3], x4, lsl #2]    \n"
        "ld1w	{ z24.s }, p0/z, [%[pC4]]      \n"
        "ld1w	{ z25.s }, p0/z, [%[pC4], x4, lsl #2]    \n"
        "ld1w	{ z26.s }, p0/z, [%[pC5]]      \n"
        "ld1w	{ z27.s }, p0/z, [%[pC5], x4, lsl #2]    \n"
        "ld1w	{ z28.s }, p0/z, [%[pC6]]     \n"
        "ld1w	{ z29.s }, p0/z, [%[pC6], x4, lsl #2]    \n"
        "ld1w	{ z30.s }, p0/z, [%[pC7]]     \n"
        "ld1w	{ z31.s }, p0/z, [%[pC7], x4, lsl #2]    \n"


        "ld1w	{ z12.s }, p0/z, [%[pB]]                 \n"
	    "ld1w	{ z13.s }, p0/z, [%[pB], #1, MUL VL]     \n"

        "ld1rw	{ z0.s }, p0/z, [%[pA]]                 \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #4]             \n"
	    "ld1rw	{ z2.s }, p0/z, [%[pA], #8]             \n"
	    "ld1rw	{ z3.s }, p0/z, [%[pA], #12]            \n"
        "ld1rw	{ z4.s }, p0/z, [%[pA], #16]            \n"
	    "ld1rw	{ z5.s }, p0/z, [%[pA], #20]            \n"
	    "ld1rw	{ z6.s }, p0/z, [%[pA], #24]            \n"
	    "ld1rw	{ z7.s }, p0/z, [%[pA], #28]            \n"

    "0:                                                 \n"
        // ------------- loop 1 -------------
	    "ld1w	{ z14.s }, p0/z, [%[pB], #2, MUL VL]    \n"
	    "ld1w	{ z15.s }, p0/z, [%[pB], #3, MUL VL]    \n"

        "prfm	pldl1keep, [%[pA], #256]                \n"

        "fmla	z16.s, p0/m, z12.s, z0.s                 \n"
        "fmla	z17.s, p0/m, z13.s, z0.s                 \n"
        "fmla	z18.s, p0/m, z12.s, z1.s                 \n"
        "fmla	z19.s, p0/m, z13.s, z1.s                 \n" 
        
        "fmla	z20.s, p0/m, z12.s, z2.s                 \n"
        "fmla	z21.s, p0/m, z13.s, z2.s                 \n"
        "fmla	z22.s, p0/m, z12.s, z3.s                 \n"
        "fmla	z23.s, p0/m, z13.s, z3.s                 \n"

        "ld1rw	{ z0.s }, p0/z, [%[pA], #32]            \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #36]            \n"
	    "ld1rw	{ z2.s }, p0/z, [%[pA], #40]            \n"
	    "ld1rw	{ z3.s }, p0/z, [%[pA], #44]            \n"
        "ld1rw	{ z8.s },  p0/z, [%[pA], #48]            \n"
	    "ld1rw	{ z9.s },  p0/z, [%[pA], #52]            \n"
        "ld1rw	{ z10.s }, p0/z, [%[pA], #56]            \n"
	    "ld1rw	{ z11.s }, p0/z, [%[pA], #60]            \n"

        "fmla	z24.s, p0/m, z12.s, z4.s                 \n"
        "fmla	z25.s, p0/m, z13.s, z4.s                 \n"
        "fmla	z26.s, p0/m, z12.s, z5.s                 \n"
        "fmla	z27.s, p0/m, z13.s, z5.s                 \n"

        "add	%[pB], %[pB], #256                      \n"

        "fmla	z28.s, p0/m, z12.s, z6.s                 \n"
        "fmla	z29.s, p0/m, z13.s, z6.s                 \n"
        "fmla	z30.s, p0/m, z12.s, z7.s                 \n"
        "fmla	z31.s, p0/m, z13.s, z7.s                 \n"

        // -------------- loop 2 -----------------
        "ld1w	{ z12.s },  p0/z, [%[pB]]                \n"
	    "ld1w	{ z13.s },  p0/z, [%[pB], #1, MUL VL]    \n"

        "prfm	pldl1keep, [%[pA], #512]                \n"

        "fmla	z16.s, p0/m, z14.s, z0.s                 \n"
        "fmla	z17.s, p0/m, z15.s, z0.s                 \n"
        "fmla	z18.s, p0/m, z14.s, z1.s                 \n"
        "fmla	z19.s, p0/m, z15.s, z1.s                 \n"

        "add	%[pA], %[pA], #64                       \n"
        
        "fmla	z20.s, p0/m, z14.s, z2.s                 \n"
        "fmla	z21.s, p0/m, z15.s, z2.s                 \n"
        "fmla	z22.s, p0/m, z14.s, z3.s                 \n"
        "fmla	z23.s, p0/m, z15.s, z3.s                 \n"

        "ld1rw	{ z0.s }, p0/z, [%[pA]]                 \n"
	    "ld1rw	{ z1.s }, p0/z, [%[pA], #4]             \n"
	    "ld1rw	{ z2.s }, p0/z, [%[pA], #8]             \n"
	    "ld1rw	{ z3.s }, p0/z, [%[pA], #12]            \n"
        "ld1rw	{ z4.s }, p0/z, [%[pA], #16]            \n"
	    "ld1rw	{ z5.s }, p0/z, [%[pA], #20]            \n"
	    "ld1rw	{ z6.s }, p0/z, [%[pA], #24]            \n"
	    "ld1rw	{ z7.s }, p0/z, [%[pA], #28]            \n"

        "fmla	z24.s, p0/m, z14.s, z8.s                 \n"
        "fmla	z25.s, p0/m, z15.s, z8.s                 \n"
        "fmla	z26.s, p0/m, z14.s, z9.s                 \n"
        "fmla	z27.s, p0/m, z15.s, z9.s                 \n"

        "fmla	z28.s, p0/m, z14.s, z10.s                \n"
        "fmla	z29.s, p0/m, z15.s, z10.s                \n"
        "fmla	z30.s, p0/m, z14.s, z11.s                \n"
        "fmla	z31.s, p0/m, z15.s, z11.s                \n"

        "subs   x6, x6, #1                              \n"
        "b.ne   0b                                      \n"

        "st1w	{ z16.s }, p0, [%[pC0]]      \n"
        "st1w	{ z17.s }, p0, [%[pC0], x4, lsl #2]    \n"
        "st1w	{ z18.s }, p0, [%[pC1]]      \n"
        "st1w	{ z19.s }, p0, [%[pC1], x4, lsl #2]    \n"
        "st1w	{ z20.s }, p0, [%[pC2]]      \n"
        "st1w	{ z21.s }, p0, [%[pC2], x4, lsl #2]    \n"
        "st1w	{ z22.s }, p0, [%[pC3]]      \n"
        "st1w	{ z23.s }, p0, [%[pC3], x4, lsl #2]    \n"
        "st1w	{ z24.s }, p0, [%[pC4]]      \n"
        "st1w	{ z25.s }, p0, [%[pC4], x4, lsl #2]    \n"
        "st1w	{ z26.s }, p0, [%[pC5]]      \n"
        "st1w	{ z27.s }, p0, [%[pC5], x4, lsl #2]    \n"
        "st1w	{ z28.s }, p0, [%[pC6]]     \n"
        "st1w	{ z29.s }, p0, [%[pC6], x4, lsl #2]    \n"
        "st1w	{ z30.s }, p0, [%[pC7]]     \n"
        "st1w	{ z31.s }, p0, [%[pC7], x4, lsl #2]    \n"


    "1:                                                 \n"
        
    : [pA]"=&r"(packAPtr),     // %0
      [pB]"=&r"(packBPtr)      // %1
    : "[pA]"   (packAPtr),
      "[pB]"   (packBPtr), 
      [pC0] "r"(packCPtr0),    // %2
      [pC1] "r"(packCPtr1),    // %2
      [pC2] "r"(packCPtr2),    // %3
      [pC3] "r"(packCPtr3),    // %3
      [pC4] "r"(packCPtr4),    // %4
      [pC5] "r"(packCPtr5),    // %4
      [pC6] "r"(packCPtr6),    // %5
      [pC7] "r"(packCPtr7),    // %5
      [ldc] "r"(ldc),
      [kc]  "r"(kc_adjust),
      [preA]"r"(PREFETCH_A),
      [preB]"r"(PREFETCH_B),
      [preC]"r"(PREFETCH_C)
    : "memory", "cc", "p0", "x4", "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
      "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
      "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");
#endif
}

void kernel_8x48(int kc_adjust, float *packA, float* packB, float *packC, int ldc, const int PREFETCH_A, const int PREFETCH_B, const int PREFETCH_C) {

    float* packAPtr = packA;
    float* packBPtr = packB;
    float* packCPtr = packC;

#ifdef _ASM_

    float* packCPtr0  = packC;
    float* packCPtr1  = packC + 1  * ldc;
    float* packCPtr2  = packC + 2  * ldc;
    float* packCPtr3  = packC + 3  * ldc;
    float* packCPtr4  = packC + 4  * ldc;
    float* packCPtr5  = packC + 5  * ldc;
    float* packCPtr6  = packC + 6  * ldc;
    float* packCPtr7  = packC + 7  * ldc;

    asm volatile(
        "ptrue  p0.s  \n"
        "mov    x4, #16 \n"
        "mov    x5, %[kc]    \n"

        "cmp x5, #0x2\n"
        
        "ld1w	{ z8.s },  p0/z, [%[pC0]]      \n"
        "ld1w	{ z9.s },  p0/z, [%[pC0], #1, MUL VL]    \n"
        "ld1w	{ z10.s }, p0/z, [%[pC0], #2, MUL VL]    \n"
        "ld1w	{ z11.s }, p0/z, [%[pC1]]      \n"
        "ld1w	{ z12.s }, p0/z, [%[pC1], #1, MUL VL]    \n"
        "ld1w	{ z13.s }, p0/z, [%[pC1], #2, MUL VL]    \n"
        "ld1w	{ z14.s }, p0/z, [%[pC2]]      \n"
        "ld1w	{ z15.s }, p0/z, [%[pC2], #1, MUL VL]    \n"
        "ld1w	{ z16.s }, p0/z, [%[pC2], #2, MUL VL]    \n"
        "ld1w	{ z17.s }, p0/z, [%[pC3]]      \n"
        "ld1w	{ z18.s }, p0/z, [%[pC3], #1, MUL VL]    \n"
        "ld1w	{ z19.s }, p0/z, [%[pC3], #2, MUL VL]    \n"
        "ld1w	{ z20.s }, p0/z, [%[pC4]]      \n"
        "ld1w	{ z21.s }, p0/z, [%[pC4], #1, MUL VL]    \n"
        "ld1w	{ z22.s }, p0/z, [%[pC4], #2, MUL VL]    \n"
        "ld1w	{ z23.s }, p0/z, [%[pC5]]      \n"
        "ld1w	{ z24.s }, p0/z, [%[pC5], #1, MUL VL]    \n"
        "ld1w	{ z25.s }, p0/z, [%[pC5], #2, MUL VL]    \n"
        "ld1w	{ z26.s }, p0/z, [%[pC6]]     \n"
        "ld1w	{ z27.s }, p0/z, [%[pC6], #1, MUL VL]    \n"
        "ld1w	{ z28.s }, p0/z, [%[pC6], #2, MUL VL]    \n"
        "ld1w	{ z29.s }, p0/z, [%[pC7]]     \n"
        "ld1w	{ z30.s }, p0/z, [%[pC7], #1, MUL VL]    \n"
        "ld1w	{ z31.s }, p0/z, [%[pC7], #2, MUL VL]    \n"

        "ld1w	{ z0.s }, p0/z, [%[pB]]                 \n"
	    "ld1w	{ z1.s }, p0/z, [%[pB], #1, MUL VL]     \n"
	    "ld1w	{ z2.s }, p0/z, [%[pB], #2, MUL VL]     \n"

        "ld1rw	{ z3.s }, p0/z, [%[pA]]                 \n"
	    "ld1rw	{ z4.s }, p0/z, [%[pA], #4]             \n"
	    "ld1rw	{ z5.s }, p0/z, [%[pA], #8]             \n"
	    "ld1rw	{ z6.s }, p0/z, [%[pA], #12]            \n"
        
		"blt 4f\n"

    "3:"  // main loop head
        "fmla z8.s, p0/M, z0.s, z3.s\n"
        "fmla z9.s, p0/M, z1.s, z3.s\n"
        "sub  x5, x5, #0x2\n"
        "fmla z10.s, p0/M, z2.s, z3.s\n"

        "ld1rw { z3.s }, p0/Z, [%x[pA], #16]\n"
        "prfm	pldl1keep, [%[pA], #256]                \n"
        "fmla z11.s, p0/M, z0.s, z4.s\n"
        "fmla z12.s, p0/M, z1.s, z4.s\n"
        "fmla z13.s, p0/M, z2.s, z4.s\n"

        "ld1rw { z4.s }, p0/Z, [%x[pA], #20]\n"
        "fmla z14.s, p0/M, z0.s, z5.s\n"
        "fmla z15.s, p0/M, z1.s, z5.s\n"
        "fmla z16.s, p0/M, z2.s, z5.s\n"
        "cmp x5, #0x2\n"

        "ld1rw { z5.s }, p0/Z, [%x[pA], #24]\n"
        "fmla z17.s, p0/M, z0.s, z6.s\n"
        "fmla z18.s, p0/M, z1.s, z6.s\n"
        "fmla z19.s, p0/M, z2.s, z6.s\n"

        "ld1rw { z6.s }, p0/Z, [%x[pA], #28]\n"
        "fmla z20.s, p0/M, z0.s, z3.s\n"
        "fmla z21.s, p0/M, z1.s, z3.s\n"
        "fmla z22.s, p0/M, z2.s, z3.s\n"

        "ld1rw { z3.s }, p0/Z, [%x[pA], #32]\n"
        "fmla z23.s, p0/M, z0.s, z4.s\n"
        "fmla z24.s, p0/M, z1.s, z4.s\n"
        "fmla z25.s, p0/M, z2.s, z4.s\n"

        "ld1rw { z4.s }, p0/Z, [%x[pA], #36]\n"
        "prfm	pldl1keep, [%[pA], #512]                \n"
        "fmla z26.s, p0/M, z0.s, z5.s\n"
        "fmla z27.s, p0/M, z1.s, z5.s\n"
        "fmla z28.s, p0/M, z2.s, z5.s\n"

        "ld1rw { z5.s }, p0/Z, [%x[pA], #40]\n"
        "fmla z29.s, p0/M, z0.s, z6.s\n"
        "ld1w { z0.s }, p0/Z, [%[pB], #3, MUL VL]\n"
        "fmla z30.s, p0/M, z1.s, z6.s\n"
        "fmla z31.s, p0/M, z2.s, z6.s\n"

        "ld1w { z1.s }, p0/Z, [%[pB], #4, MUL VL]\n"
        "ld1w { z2.s }, p0/Z, [%[pB], #5, MUL VL]\n"
        "fmla z8.s, p0/M, z0.s, z3.s\n"
        "ld1rw { z6.s }, p0/Z, [%x[pA], #44]\n"
        "fmla z9.s, p0/M, z1.s, z3.s\n"
        "fmla z10.s, p0/M, z2.s, z3.s\n"

        "fmla z11.s, p0/M, z0.s, z4.s\n"
        "ld1rw { z3.s }, p0/Z, [%x[pA], #48]\n"
        "fmla z12.s, p0/M, z1.s, z4.s\n"
        "fmla z13.s, p0/M, z2.s, z4.s\n"

        // "prfm	pldl1keep, [%[pA], #768]                \n"
        "ld1rw { z4.s }, p0/Z, [%x[pA], #52]\n"
        "fmla z14.s, p0/M, z0.s, z5.s\n"
        "fmla z15.s, p0/M, z1.s, z5.s\n"
        "add %[pB], %[pB], #384\n"
        "fmla z16.s, p0/M, z2.s, z5.s\n"

        "ld1rw { z5.s }, p0/Z, [%x[pA], #56]\n"
        "fmla z17.s, p0/M, z0.s, z6.s\n"
        "fmla z18.s, p0/M, z1.s, z6.s\n"
        "fmla z19.s, p0/M, z2.s, z6.s\n"

        "ld1rw { z6.s }, p0/Z, [%x[pA], #60]\n"
        "add %x[pA], %x[pA], #0x40\n"
        "fmla z20.s, p0/M, z0.s, z3.s\n"
        "fmla z21.s, p0/M, z1.s, z3.s\n"
        "fmla z22.s, p0/M, z2.s, z3.s\n"

        "fmla z23.s, p0/M, z0.s, z4.s\n"
        "ld1rw { z3.s }, p0/Z, [%x[pA]]\n"
        "fmla z24.s, p0/M, z1.s, z4.s\n"
        "fmla z25.s, p0/M, z2.s, z4.s\n"

        "ld1rw { z4.s }, p0/Z, [%x[pA], #4]\n"
        "fmla z26.s, p0/M, z0.s, z5.s\n"
        "fmla z27.s, p0/M, z1.s, z5.s\n"
        "fmla z28.s, p0/M, z2.s, z5.s\n"

        "fmla z29.s, p0/M, z0.s, z6.s\n"
        "ld1w { z0.s }, p0/Z, [%[pB]]\n"
        "fmla z30.s, p0/M, z1.s, z6.s\n"
        "fmla z31.s, p0/M, z2.s, z6.s\n"
        
        "ld1w { z1.s }, p0/Z, [%[pB], #1, MUL VL]\n"
        "ld1w { z2.s }, p0/Z, [%[pB], #2, MUL VL]\n"
        "ld1rw { z5.s }, p0/Z, [%x[pA], #8]\n"
        "ld1rw { z6.s }, p0/Z, [%x[pA], #12]\n"
        "bge 3b\n"
        "cbz x5, 5f\n"

        "4:"  // main loop skip
        "fmla z8.s, p0/M, z0.s, z3.s\n"
        "fmla z9.s, p0/M, z1.s, z3.s\n"
        "add %[pB], %[pB], #192\n"
        "fmla z10.s, p0/M, z2.s, z3.s\n"
        "ld1rw { z3.s }, p0/Z, [%x[pA], #16]\n"
        "fmla z11.s, p0/M, z0.s, z4.s\n"
        "fmla z12.s, p0/M, z1.s, z4.s\n"
        "fmla z13.s, p0/M, z2.s, z4.s\n"
        "ld1rw { z4.s }, p0/Z, [%x[pA], #20]\n"
        "fmla z14.s, p0/M, z0.s, z5.s\n"
        "fmla z15.s, p0/M, z1.s, z5.s\n"
        "fmla z16.s, p0/M, z2.s, z5.s\n"
        "ld1rw { z5.s }, p0/Z, [%x[pA], #24]\n"
        "fmla z17.s, p0/M, z0.s, z6.s\n"
        "fmla z18.s, p0/M, z1.s, z6.s\n"
        "fmla z19.s, p0/M, z2.s, z6.s\n"
        "ld1rw { z6.s }, p0/Z, [%x[pA], #28]\n"
        "fmla z20.s, p0/M, z0.s, z3.s\n"
        "fmla z21.s, p0/M, z1.s, z3.s\n"
        "add %x[pA], %x[pA], #0x20\n"
        "fmla z22.s, p0/M, z2.s, z3.s\n"
        "fmla z23.s, p0/M, z0.s, z4.s\n"
        "fmla z24.s, p0/M, z1.s, z4.s\n"
        "fmla z25.s, p0/M, z2.s, z4.s\n"
        "fmla z26.s, p0/M, z0.s, z5.s\n"
        "fmla z27.s, p0/M, z1.s, z5.s\n"
        "fmla z28.s, p0/M, z2.s, z5.s\n"
        "fmla z29.s, p0/M, z0.s, z6.s\n"
        "fmla z30.s, p0/M, z1.s, z6.s\n"
        "fmla z31.s, p0/M, z2.s, z6.s\n"
        // "cbz x5, 5f\n"
        // "ld1w { z0.s }, p0/Z, [%[pB]]\n"
        // "ld1w { z1.s }, p0/Z, [%[pB], #1, MUL VL]\n"
        // "ld1w { z2.s }, p0/Z, [%[pB], #2, MUL VL]\n"
        // "ld1rw { z3.s }, p0/Z, [%x[pA]]\n"
        // "fmla z8.s, p0/M, z0.s, z3.s\n"
        // "ld1rw { z4.s }, p0/Z, [%x[pA], #4]\n"
        // "ld1rw { z5.s }, p0/Z, [%x[pA], #8]\n"
        // "fmla z9.s, p0/M, z1.s, z3.s\n"
        // "ld1rw { z6.s }, p0/Z, [%x[pA], #12]\n"
        // "fmla z10.s, p0/M, z2.s, z3.s\n"
        // "fmla z11.s, p0/M, z0.s, z4.s\n"
        // "ld1rw { z3.s }, p0/Z, [%x[pA], #16]\n"
        // "fmla z12.s, p0/M, z1.s, z4.s\n"
        // "fmla z13.s, p0/M, z2.s, z4.s\n"
        // "ld1rw { z4.s }, p0/Z, [%x[pA], #20]\n"
        // "fmla z14.s, p0/M, z0.s, z5.s\n"
        // "fmla z15.s, p0/M, z1.s, z5.s\n"
        // "fmla z16.s, p0/M, z2.s, z5.s\n"
        // "fmla z17.s, p0/M, z0.s, z6.s\n"
        // "ld1rw { z5.s }, p0/Z, [%x[pA], #24]\n"
        // "fmla z18.s, p0/M, z1.s, z6.s\n"
        // "fmla z19.s, p0/M, z2.s, z6.s\n"
        // "ld1rw { z6.s }, p0/Z, [%x[pA], #28]\n"
        // "add %[pB], %[pB], #192\n"
        // "fmla z20.s, p0/M, z0.s, z3.s\n"
        // "fmla z21.s, p0/M, z1.s, z3.s\n"
        // "add %x[pA], %x[pA], #0x20\n"
        // "fmla z22.s, p0/M, z2.s, z3.s\n"
        // "fmla z23.s, p0/M, z0.s, z4.s\n"
        // "fmla z24.s, p0/M, z1.s, z4.s\n"
        // "fmla z25.s, p0/M, z2.s, z4.s\n"
        // "fmla z26.s, p0/M, z0.s, z5.s\n"
        // "fmla z27.s, p0/M, z1.s, z5.s\n"
        // "fmla z28.s, p0/M, z2.s, z5.s\n"
        // "fmla z29.s, p0/M, z0.s, z6.s\n"
        // "fmla z30.s, p0/M, z1.s, z6.s\n"
        // "fmla z31.s, p0/M, z2.s, z6.s\n"

        "5:"  // multiply loop done

        "st1w	{ z8.s },  p0, [%[pC0]]      \n"
        "st1w	{ z9.s },  p0, [%[pC0], #1, MUL VL]    \n"
        "st1w	{ z10.s }, p0, [%[pC0], #2, MUL VL]    \n"
        "st1w	{ z11.s }, p0, [%[pC1]]      \n"
        "st1w	{ z12.s }, p0, [%[pC1], #1, MUL VL]    \n"
        "st1w	{ z13.s }, p0, [%[pC1], #2, MUL VL]    \n"
        "st1w	{ z14.s }, p0, [%[pC2]]      \n"
        "st1w	{ z15.s }, p0, [%[pC2], #1, MUL VL]    \n"
        "st1w	{ z16.s }, p0, [%[pC2], #2, MUL VL]    \n"
        "st1w	{ z17.s }, p0, [%[pC3]]      \n"
        "st1w	{ z18.s }, p0, [%[pC3], #1, MUL VL]    \n"
        "st1w	{ z19.s }, p0, [%[pC3], #2, MUL VL]    \n"
        "st1w	{ z20.s }, p0, [%[pC4]]      \n"
        "st1w	{ z21.s }, p0, [%[pC4], #1, MUL VL]    \n"
        "st1w	{ z22.s }, p0, [%[pC4], #2, MUL VL]    \n"
        "st1w	{ z23.s }, p0, [%[pC5]]      \n"
        "st1w	{ z24.s }, p0, [%[pC5], #1, MUL VL]    \n"
        "st1w	{ z25.s }, p0, [%[pC5], #2, MUL VL]    \n"
        "st1w	{ z26.s }, p0, [%[pC6]]     \n"
        "st1w	{ z27.s }, p0, [%[pC6], #1, MUL VL]    \n"
        "st1w	{ z28.s }, p0, [%[pC6], #2, MUL VL]    \n"
        "st1w	{ z29.s }, p0, [%[pC7]]     \n"
        "st1w	{ z30.s }, p0, [%[pC7], #1, MUL VL]    \n"
        "st1w	{ z31.s }, p0, [%[pC7], #2, MUL VL]    \n"


    : [pA]"=&r"(packAPtr),     // %0
      [pB]"=&r"(packBPtr)      // %1
    : "[pA]"   (packAPtr),
      "[pB]"   (packBPtr), 
      [pC0] "r"(packCPtr0),    // %2
      [pC1] "r"(packCPtr1),    // %2
      [pC2] "r"(packCPtr2),    // %3
      [pC3] "r"(packCPtr3),    // %3
      [pC4] "r"(packCPtr4),    // %4
      [pC5] "r"(packCPtr5),    // %4
      [pC6] "r"(packCPtr6),    // %5
      [pC7] "r"(packCPtr7),    // %5
      [ldc] "r"(ldc),
      [kc]  "r"(kc_adjust),
      [preA]"r"(PREFETCH_A),
      [preB]"r"(PREFETCH_B),
      [preC]"r"(PREFETCH_C)
    : "memory", "cc", "p0", "x4", "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
      "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
      "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");
#endif
}

template <int M, int N>
void kernel_MxN_for_8x48(int kc_adjust, float *packA, float *packB, float *packC, int ldc, int remain_col,
                            svbool_t p32_v0, svbool_t p32_v1, svbool_t p32_v2) {
    float* packAPtr = packA;
    float* packBPtr = packB;
    float* cPtr = packC;

    svfloat32_t va0,  va1,  va2,  va3;
    svfloat32_t vb0,  vb1,  vb2;
    svfloat32_t vc00, vc01, vc02;
    svfloat32_t vc10, vc11, vc12;
    svfloat32_t vc20, vc21, vc22;
    svfloat32_t vc30, vc31, vc32;
    svfloat32_t vc40, vc41, vc42;
    svfloat32_t vc50, vc51, vc52;
    svfloat32_t vc60, vc61, vc62;
    svfloat32_t vc70, vc71, vc72;

    // load C
    if (M >= 1) {
        if (N >= 1 * simd_width) 
            vc00 = svld1_f32(p32_v0, cPtr + 0 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc01 = svld1_f32(p32_v1, cPtr + 0 * ldc + 1 * simd_width);
        if (N >= 3 * simd_width)
            vc02 = svld1_f32(p32_v2, cPtr + 0 * ldc + 2 * simd_width);
    }
    if (M >= 2) {
        if (N >= 1 * simd_width)
            vc10 = svld1_f32(p32_v0, cPtr + 1 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc11 = svld1_f32(p32_v1, cPtr + 1 * ldc + 1 * simd_width);
        if (N >= 3 * simd_width)
            vc12 = svld1_f32(p32_v2, cPtr + 1 * ldc + 2 * simd_width);
    }
    if (M >= 3) {
        if (N >= 1 * simd_width) 
            vc20 = svld1_f32(p32_v0, cPtr + 2 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc21 = svld1_f32(p32_v1, cPtr + 2 * ldc + 1 * simd_width);
        if (N >= 3 * simd_width)
            vc22 = svld1_f32(p32_v2, cPtr + 2 * ldc + 2 * simd_width);
    }
    if (M >= 4) {
        if (N >= 1 * simd_width) 
            vc30 = svld1_f32(p32_v0, cPtr + 3 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc31 = svld1_f32(p32_v1, cPtr + 3 * ldc + 1 * simd_width);
        if (N >= 3 * simd_width)
            vc32 = svld1_f32(p32_v2, cPtr + 3 * ldc + 2 * simd_width);
    }
    if (M >= 5) {
        if (N >= 1 * simd_width) 
            vc40 = svld1_f32(p32_v0, cPtr + 4 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc41 = svld1_f32(p32_v1, cPtr + 4 * ldc + 1 * simd_width);
        if (N >= 3 * simd_width)
            vc42 = svld1_f32(p32_v2, cPtr + 4 * ldc + 2 * simd_width);
    }
    if (M >= 6) {
        if (N >= 1 * simd_width) 
            vc50 = svld1_f32(p32_v0, cPtr + 5 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc51 = svld1_f32(p32_v1, cPtr + 5 * ldc + 1 * simd_width);
        if (N >= 3 * simd_width)
            vc52 = svld1_f32(p32_v2, cPtr + 5 * ldc + 2 * simd_width);
    }
    if (M >= 7) {
        if (N >= 1 * simd_width) 
            vc60 = svld1_f32(p32_v0, cPtr + 6 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc61 = svld1_f32(p32_v1, cPtr + 6 * ldc + 1 * simd_width);
        if (N >= 3 * simd_width)
            vc62 = svld1_f32(p32_v2, cPtr + 6 * ldc + 2 * simd_width);
    }
    if (M >= 8) {
        if (N >= 1 * simd_width) 
            vc70 = svld1_f32(p32_v0, cPtr + 7 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc71 = svld1_f32(p32_v1, cPtr + 7 * ldc + 1 * simd_width);
        if (N >= 3 * simd_width)
            vc72 = svld1_f32(p32_v2, cPtr + 7 * ldc + 2 * simd_width);
    }

    for (int k = 0; k < kc_adjust; k++) {
        // load B
        if (N >= 1 * simd_width) 
            vb0 = svld1_f32(p32_v0, packBPtr);
        if (N >= 2 * simd_width)
            vb1 = svld1_f32(p32_v1, packBPtr + 1 * simd_width);
        if (N >= 3 * simd_width)
            vb2 = svld1_f32(p32_v2, packBPtr + 2 * simd_width);
        
        if (M >= 1) {
            va0 = svdup_n_f32(packAPtr[0]);
            if (N >= 1 * simd_width)
                vc00 = svmla_f32_x(p32_v0, vc00, va0, vb0);
            if (N >= 2 * simd_width)
                vc01 = svmla_f32_x(p32_v1, vc01, va0, vb1);
            if (N >= 3 * simd_width)
                vc02 = svmla_f32_x(p32_v2, vc02, va0, vb2);
        }
        if (M >= 2) {
            va1 = svdup_n_f32(packAPtr[1]);
            if (N >= 1 * simd_width)
                vc10 = svmla_f32_x(p32_v0, vc10, va1, vb0);
            if (N >= 2 * simd_width)
                vc11 = svmla_f32_x(p32_v1, vc11, va1, vb1);
            if (N >= 3 * simd_width)
                vc12 = svmla_f32_x(p32_v2, vc12, va1, vb2);
        }
        if (M >= 3) {
            va2 = svdup_n_f32(packAPtr[2]);
            if (N >= 1 * simd_width)
                vc20 = svmla_f32_x(p32_v0, vc20, va2, vb0);
            if (N >= 2 * simd_width)
                vc21 = svmla_f32_x(p32_v1, vc21, va2, vb1);
            if (N >= 3 * simd_width)
                vc22 = svmla_f32_x(p32_v2, vc22, va2, vb2);
        }
        if (M >= 4) {
            va3 = svdup_n_f32(packAPtr[3]);
            if (N >= 1 * simd_width)
                vc30 = svmla_f32_x(p32_v0, vc30, va3, vb0);
            if (N >= 2 * simd_width)
                vc31 = svmla_f32_x(p32_v1, vc31, va3, vb1);
            if (N >= 3 * simd_width)
                vc32 = svmla_f32_x(p32_v2, vc32, va3, vb2);
        }
        if (M >= 5) {
            va0 = svdup_n_f32(packAPtr[4]);
            if (N >= 1 * simd_width)
                vc40 = svmla_f32_x(p32_v0, vc40, va0, vb0);
            if (N >= 2 * simd_width)
                vc41 = svmla_f32_x(p32_v1, vc41, va0, vb1);
            if (N >= 3 * simd_width)
                vc42 = svmla_f32_x(p32_v2, vc42, va0, vb2);
        }
        if (M >= 6) {
            va1 = svdup_n_f32(packAPtr[5]);
            if (N >= 1 * simd_width)
                vc50 = svmla_f32_x(p32_v0, vc50, va1, vb0);
            if (N >= 2 * simd_width)
                vc51 = svmla_f32_x(p32_v1, vc51, va1, vb1);
            if (N >= 3 * simd_width)
                vc52 = svmla_f32_x(p32_v2, vc52, va1, vb2);
        }
        if (M >= 7) {
            va2 = svdup_n_f32(packAPtr[6]);
            if (N >= 1 * simd_width)
                vc60 = svmla_f32_x(p32_v0, vc60, va2, vb0);
            if (N >= 2 * simd_width)
                vc61 = svmla_f32_x(p32_v1, vc61, va2, vb1);
            if (N >= 3 * simd_width)
                vc62 = svmla_f32_x(p32_v2, vc62, va2, vb2);
        }
        if (M >= 8) {
            va3 = svdup_n_f32(packAPtr[7]);
            if (N >= 1 * simd_width)
                vc70 = svmla_f32_x(p32_v0, vc70, va3, vb0);
            if (N >= 2 * simd_width)
                vc71 = svmla_f32_x(p32_v1, vc71, va3, vb1);
            if (N >= 3 * simd_width)
                vc72 = svmla_f32_x(p32_v2, vc72, va3, vb2);
        }

        packAPtr += M;
        packBPtr += remain_col;
    }    

    // store C
    if (M >= 1) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 0 * ldc + 0 * simd_width, vc00);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 0 * ldc + 1 * simd_width, vc01);
        if (N >= 3 * simd_width)
            svst1_f32(p32_v2, cPtr + 0 * ldc + 2 * simd_width, vc02);
    }
    if (M >= 2) {
        if (N >= 1 * simd_width)
            svst1_f32(p32_v0, cPtr + 1 * ldc + 0 * simd_width, vc10);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 1 * ldc + 1 * simd_width, vc11);
        if (N >= 3 * simd_width)
            svst1_f32(p32_v2, cPtr + 1 * ldc + 2 * simd_width, vc12);
    }
    if (M >= 3) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 2 * ldc + 0 * simd_width, vc20);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 2 * ldc + 1 * simd_width, vc21);
        if (N >= 3 * simd_width)
            svst1_f32(p32_v2, cPtr + 2 * ldc + 2 * simd_width, vc22);
    }
    if (M >= 4) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 3 * ldc + 0 * simd_width, vc30);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 3 * ldc + 1 * simd_width, vc31);
        if (N >= 3 * simd_width)
            svst1_f32(p32_v2, cPtr + 3 * ldc + 2 * simd_width, vc32);
    }
    if (M >= 5) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 4 * ldc + 0 * simd_width, vc40);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 4 * ldc + 1 * simd_width, vc41);
        if (N >= 3 * simd_width)
            svst1_f32(p32_v2, cPtr + 4 * ldc + 2 * simd_width, vc42);
    }
    if (M >= 6) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 5 * ldc + 0 * simd_width, vc50);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 5 * ldc + 1 * simd_width, vc51);
        if (N >= 3 * simd_width)
            svst1_f32(p32_v2, cPtr + 5 * ldc + 2 * simd_width, vc52);
    }
    if (M >= 7) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 6 * ldc + 0 * simd_width, vc60);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 6 * ldc + 1 * simd_width, vc61);
        if (N >= 3 * simd_width)
            svst1_f32(p32_v2, cPtr + 6 * ldc + 2 * simd_width, vc62);
    }
    if (M >= 8) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 7 * ldc + 0 * simd_width, vc70);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 7 * ldc + 1 * simd_width, vc71);
        if (N >= 3 * simd_width)
            svst1_f32(p32_v2, cPtr + 7 * ldc + 2 * simd_width, vc72);
    }
}

const inner_kernel_for_corner_func_t kernel_MxN_for_8x48_func_tab[8][3] = {
    {
        kernel_MxN_for_8x48<1, 16>,
        kernel_MxN_for_8x48<1, 32>,
        kernel_MxN_for_8x48<1, 48>
    }, 
    {
        kernel_MxN_for_8x48<2, 16>,
        kernel_MxN_for_8x48<2, 32>,
        kernel_MxN_for_8x48<2, 48>
    },
    {
        kernel_MxN_for_8x48<3, 16>,
        kernel_MxN_for_8x48<3, 32>,
        kernel_MxN_for_8x48<3, 48>
    },
    {
        kernel_MxN_for_8x48<4, 16>,
        kernel_MxN_for_8x48<4, 32>,
        kernel_MxN_for_8x48<4, 48>
    },
    {
        kernel_MxN_for_8x48<5, 16>,
        kernel_MxN_for_8x48<5, 32>,
        kernel_MxN_for_8x48<5, 48>
    },
    {
        kernel_MxN_for_8x48<6, 16>,
        kernel_MxN_for_8x48<6, 32>,
        kernel_MxN_for_8x48<6, 48>
    },
    {
        kernel_MxN_for_8x48<7, 16>,
        kernel_MxN_for_8x48<7, 32>,
        kernel_MxN_for_8x48<7, 48>
    },
    {
        kernel_MxN_for_8x48<8, 16>,
        kernel_MxN_for_8x48<8, 32>,
        kernel_MxN_for_8x48<8, 48>
    }
};

// new version, use broadcast and fmla
void kernel_14x32(int kc_adjust, float *packA, float* packB, float *packC, int ldc, const int PREFETCH_A, const int PREFETCH_B, const int PREFETCH_C) {

    float* packAPtr = packA;
    float* packBPtr = packB;
    float* packCPtr = packC;

#ifdef _ASM_

    float* packCPtr0  = packC;
    float* packCPtr1  = packC + 1  * ldc;
    float* packCPtr2  = packC + 2  * ldc;
    float* packCPtr3  = packC + 3  * ldc;
    float* packCPtr4  = packC + 4  * ldc;
    float* packCPtr5  = packC + 5  * ldc;
    float* packCPtr6  = packC + 6  * ldc;
    float* packCPtr7  = packC + 7  * ldc;
    float* packCPtr8  = packC + 8  * ldc;
    float* packCPtr9  = packC + 9  * ldc;
    float* packCPtr10 = packC + 10 * ldc;
    float* packCPtr11 = packC + 11 * ldc;
    float* packCPtr12 = packC + 12 * ldc;
    float* packCPtr13 = packC + 13 * ldc;

    asm volatile(
        "ptrue  p0.s  \n"
        "mov    x4, #16 \n"
        "mov    x5, %[kc]    \n"

        "cmp    w5, #0  \n"
        "b.eq    1f     \n"

        "ld1w	{ z4.s },  p0/z, [%[pC0]]      \n"  // load C
        "ld1w	{ z5.s },  p0/z, [%[pC0], x4, lsl #2]    \n"
        "ld1w	{ z6.s },  p0/z, [%[pC1]]      \n"
        "ld1w	{ z7.s },  p0/z, [%[pC1], x4, lsl #2]    \n"
        "ld1w	{ z8.s },  p0/z, [%[pC2]]      \n"
        "ld1w	{ z9.s },  p0/z, [%[pC2], x4, lsl #2]    \n"
        "ld1w	{ z10.s }, p0/z, [%[pC3]]      \n"
        "ld1w	{ z11.s }, p0/z, [%[pC3], x4, lsl #2]    \n"
        "ld1w	{ z12.s }, p0/z, [%[pC4]]      \n"
        "ld1w	{ z13.s }, p0/z, [%[pC4], x4, lsl #2]    \n"
        "ld1w	{ z14.s }, p0/z, [%[pC5]]      \n"
        "ld1w	{ z15.s }, p0/z, [%[pC5], x4, lsl #2]    \n"
        "ld1w	{ z16.s }, p0/z, [%[pC6]]      \n"
        "ld1w	{ z17.s }, p0/z, [%[pC6], x4, lsl #2]    \n"
        "ld1w	{ z18.s }, p0/z, [%[pC7]]      \n"
        "ld1w	{ z19.s }, p0/z, [%[pC7], x4, lsl #2]    \n"
        "ld1w	{ z20.s }, p0/z, [%[pC8]]      \n"
        "ld1w	{ z21.s }, p0/z, [%[pC8], x4, lsl #2]    \n"
        "ld1w	{ z22.s }, p0/z, [%[pC9]]      \n"
        "ld1w	{ z23.s }, p0/z, [%[pC9], x4, lsl #2]    \n"
        "ld1w	{ z24.s }, p0/z, [%[pC10]]     \n"
        "ld1w	{ z25.s }, p0/z, [%[pC10], x4, lsl #2]    \n"
        "ld1w	{ z26.s }, p0/z, [%[pC11]]     \n"
        "ld1w	{ z27.s }, p0/z, [%[pC11], x4, lsl #2]    \n"
        "ld1w	{ z28.s }, p0/z, [%[pC12]]     \n"
        "ld1w	{ z29.s }, p0/z, [%[pC12], x4, lsl #2]    \n"
        "ld1w	{ z30.s }, p0/z, [%[pC13]]     \n"
        "ld1w	{ z31.s }, p0/z, [%[pC13], x4, lsl #2]    \n"

    "0:                                                 \n"
	
        "prfm	pldl1keep, [%[pA], #256]                \n"
        "ld1rw	{ z0.s }, p0/z, [%[pA]]                 \n"
        "ld1rw	{ z1.s }, p0/z, [%[pA], #4]             \n"

        "ld1w	{ z2.s }, p0/z, [%[pB]]                 \n"
	    "ld1w	{ z3.s }, p0/z, [%[pB], x4, lsl #2]     \n"

        "fmla	z4.s,  p0/m, z2.s, z0.s                 \n"
        "fmla	z5.s,  p0/m, z3.s, z0.s                 \n"

        "fmla	z6.s,  p0/m, z2.s, z1.s                 \n"
        "fmla	z7.s,  p0/m, z3.s, z1.s                 \n"

        "ld1rw	{ z0.s }, p0/z, [%[pA], #8]             \n"
        "ld1rw	{ z1.s }, p0/z, [%[pA], #12]            \n"

        "fmla	z8.s,  p0/m, z2.s, z0.s                 \n"
        "fmla	z9.s,  p0/m, z3.s, z0.s                 \n"

        "fmla	z10.s, p0/m, z2.s, z1.s                 \n"
        "fmla	z11.s, p0/m, z3.s, z1.s                 \n"

        "prfm	pldl1keep, [%[pA], #512]                \n"
        "ld1rw	{ z0.s }, p0/z, [%[pA], #16]            \n"
        "ld1rw	{ z1.s }, p0/z, [%[pA], #20]            \n"

        "fmla	z12.s, p0/m, z2.s, z0.s                 \n"
        "fmla	z13.s, p0/m, z3.s, z0.s                 \n"

        "fmla	z14.s, p0/m, z2.s, z1.s                 \n"
        "fmla	z15.s, p0/m, z3.s, z1.s                 \n"

        "ld1rw	{ z0.s }, p0/z, [%[pA], #24]            \n"
        "ld1rw	{ z1.s }, p0/z, [%[pA], #28]            \n"
        
        "fmla	z16.s, p0/m, z2.s, z0.s                 \n"
        "fmla	z17.s, p0/m, z3.s, z0.s                 \n"

        "fmla	z18.s, p0/m, z2.s, z1.s                 \n"
        "fmla	z19.s, p0/m, z3.s, z1.s                 \n"

        "prfm	pldl1keep, [%[pA], #768]                \n"
        "ld1rw	{ z0.s }, p0/z, [%[pA], #32]            \n"
        "ld1rw	{ z1.s }, p0/z, [%[pA], #36]            \n"

        "fmla	z20.s, p0/m, z2.s, z0.s                 \n"
        "fmla	z21.s, p0/m, z3.s, z0.s                 \n"
        
        "fmla	z22.s, p0/m, z2.s, z1.s                 \n"
        "fmla	z23.s, p0/m, z3.s, z1.s                 \n"

        "ld1rw	{ z0.s }, p0/z, [%[pA], #40]            \n"
        "ld1rw	{ z1.s }, p0/z, [%[pA], #44]            \n"

        "fmla	z24.s, p0/m, z2.s, z0.s                 \n"
        "fmla	z25.s, p0/m, z3.s, z0.s                 \n"

        "fmla	z26.s, p0/m, z2.s, z1.s                 \n"
        "fmla	z27.s, p0/m, z3.s, z1.s                 \n"

        "prfm	pldl1keep, [%[pA], #1024]                \n"
        "ld1rw	{ z0.s }, p0/z, [%[pA], #48]            \n"
        "ld1rw	{ z1.s }, p0/z, [%[pA], #52]            \n"

        "fmla	z28.s, p0/m, z2.s, z0.s                 \n"
        "fmla	z29.s, p0/m, z3.s, z0.s                 \n"

        "add	%[pB], %[pB], #128                      \n"
        "add	%[pA], %[pA], #56                       \n"
        "subs   x5, x5, #1                              \n"

        "fmla	z30.s, p0/m, z2.s, z1.s                 \n"
        "fmla	z31.s, p0/m, z3.s, z1.s                 \n"

        "b.ne   0b                                      \n"
        
        "st1w	{ z4.s },  p0, [%[pC0]]      \n"  // load C
        "st1w	{ z5.s },  p0, [%[pC0], x4, lsl #2]    \n"
        "st1w	{ z6.s },  p0, [%[pC1]]      \n"
        "st1w	{ z7.s },  p0, [%[pC1], x4, lsl #2]    \n"
        "st1w	{ z8.s },  p0, [%[pC2]]      \n"
        "st1w	{ z9.s },  p0, [%[pC2], x4, lsl #2]    \n"
        "st1w	{ z10.s }, p0, [%[pC3]]      \n"
        "st1w	{ z11.s }, p0, [%[pC3], x4, lsl #2]    \n"
        "st1w	{ z12.s }, p0, [%[pC4]]      \n"
        "st1w	{ z13.s }, p0, [%[pC4], x4, lsl #2]    \n"
        "st1w	{ z14.s }, p0, [%[pC5]]      \n"
        "st1w	{ z15.s }, p0, [%[pC5], x4, lsl #2]    \n"
        "st1w	{ z16.s }, p0, [%[pC6]]      \n"
        "st1w	{ z17.s }, p0, [%[pC6], x4, lsl #2]    \n"
        "st1w	{ z18.s }, p0, [%[pC7]]      \n"
        "st1w	{ z19.s }, p0, [%[pC7], x4, lsl #2]    \n"
        "st1w	{ z20.s }, p0, [%[pC8]]      \n"
        "st1w	{ z21.s }, p0, [%[pC8], x4, lsl #2]    \n"
        "st1w	{ z22.s }, p0, [%[pC9]]      \n"
        "st1w	{ z23.s }, p0, [%[pC9], x4, lsl #2]    \n"
        "st1w	{ z24.s }, p0, [%[pC10]]     \n"
        "st1w	{ z25.s }, p0, [%[pC10], x4, lsl #2]    \n"
        "st1w	{ z26.s }, p0, [%[pC11]]     \n"
        "st1w	{ z27.s }, p0, [%[pC11], x4, lsl #2]    \n"
        "st1w	{ z28.s }, p0, [%[pC12]]     \n"
        "st1w	{ z29.s }, p0, [%[pC12], x4, lsl #2]    \n"
        "st1w	{ z30.s }, p0, [%[pC13]]     \n"
        "st1w	{ z31.s }, p0, [%[pC13], x4, lsl #2]    \n"

    "1:                                                 \n"
        
    : [pA]"=&r"(packAPtr),     // %0
      [pB]"=&r"(packBPtr)      // %1
    : "[pA]"   (packAPtr),
      "[pB]"   (packBPtr), 
      [pC0] "r"(packCPtr0),    // %2
      [pC1] "r"(packCPtr1),    // %2
      [pC2] "r"(packCPtr2),    // %3
      [pC3] "r"(packCPtr3),    // %3
      [pC4] "r"(packCPtr4),    // %4
      [pC5] "r"(packCPtr5),    // %4
      [pC6] "r"(packCPtr6),    // %5
      [pC7] "r"(packCPtr7),    // %5
      [pC8] "r"(packCPtr8),    // %6
      [pC9] "r"(packCPtr9),    // %6
      [pC10]"r"(packCPtr10),   // %7
      [pC11]"r"(packCPtr11),   // %7
      [pC12]"r"(packCPtr12),   // %7
      [pC13]"r"(packCPtr13),   // %7
      [ldc] "r"(ldc),
      [kc]  "r"(kc_adjust),
      [preA]"r"(PREFETCH_A),
      [preB]"r"(PREFETCH_B),
      [preC]"r"(PREFETCH_C)
    : "memory", "cc", "p0", "x4", "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
      "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
      "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");

#else
#endif
}



template <int N>
void kernel_Nx32_template(int kc_adjust, float *packA, float *packB, float *packC, int ldc)
{
    float* packAPtr = packA;
    float* packBPtr = packB;
    float* cPtr = packC;

    const svbool_t p32_all = svptrue_b32();

    svfloat32_t va;
    svfloat32_t vb0,   vb1;
    svfloat32_t vc00,  vc01;
    svfloat32_t vc10,  vc11;
    svfloat32_t vc20,  vc21;
    svfloat32_t vc30,  vc31;
    svfloat32_t vc40,  vc41;
    svfloat32_t vc50,  vc51;
    svfloat32_t vc60,  vc61;
    svfloat32_t vc70,  vc71;
    svfloat32_t vc80,  vc81;
    svfloat32_t vc90,  vc91;
    svfloat32_t vc100, vc101;
    svfloat32_t vc110, vc111;
    svfloat32_t vc120, vc121;
    svfloat32_t vc130, vc131;

    if (N > 0)
    {
        vc00  = svld1_f32(p32_all, cPtr);
        vc01  = svld1_f32(p32_all, cPtr + 16);
        cPtr += ldc;
    }
    if (N > 1)
    {
        vc10  = svld1_f32(p32_all, cPtr);
        vc11  = svld1_f32(p32_all, cPtr + 16);
        cPtr += ldc;
    }
    if (N > 2)
    {
        vc20  = svld1_f32(p32_all, cPtr);
        vc21  = svld1_f32(p32_all, cPtr + 16);
        cPtr += ldc; 
    }
    if (N > 3)
    {
        vc30  = svld1_f32(p32_all, cPtr);
        vc31  = svld1_f32(p32_all, cPtr + 16);
        cPtr += ldc; 
    }
    if (N > 4)
    {
        vc40  = svld1_f32(p32_all, cPtr);
        vc41  = svld1_f32(p32_all, cPtr + 16);
        cPtr += ldc; 
    }
    if (N > 5)
    {
        vc50  = svld1_f32(p32_all, cPtr);
        vc51  = svld1_f32(p32_all, cPtr + 16);
        cPtr += ldc; 
    }
    if (N > 6) 
    {
        vc60  = svld1_f32(p32_all, cPtr);
        vc61  = svld1_f32(p32_all, cPtr + 16);
        cPtr += ldc; 
    }
    if (N > 7)
    {
        vc70  = svld1_f32(p32_all, cPtr);
        vc71  = svld1_f32(p32_all, cPtr + 16);
        cPtr += ldc; 
    }
    if (N > 8)
    {
        vc80  = svld1_f32(p32_all, cPtr);
        vc81  = svld1_f32(p32_all, cPtr + 16);
        cPtr += ldc; 
    }
    if (N > 9)
    {
        vc90  = svld1_f32(p32_all, cPtr);
        vc91  = svld1_f32(p32_all, cPtr + 16);
        cPtr += ldc; 
    }
    if (N > 10)
    {
        vc100 = svld1_f32(p32_all, cPtr);
        vc101 = svld1_f32(p32_all, cPtr + 16);
        cPtr += ldc; 
    }
    if (N > 11)
    {
        vc110 = svld1_f32(p32_all, cPtr);
        vc111 = svld1_f32(p32_all, cPtr + 16);
        cPtr += ldc; 
    }
    if (N > 12)
    {
        vc110 = svld1_f32(p32_all, cPtr);
        vc111 = svld1_f32(p32_all, cPtr + 16);
        cPtr += ldc; 
    }
    if (N > 13)
    {
        vc120 = svld1_f32(p32_all, cPtr);
        vc121 = svld1_f32(p32_all, cPtr + 16);
        cPtr += ldc; 
    }
    if (N > 14)
    {
        vc130 = svld1_f32(p32_all, cPtr);
        vc131 = svld1_f32(p32_all, cPtr + 16);
        cPtr += ldc; 
    }

    // to-do
    for (int p = 0; p < kc_adjust; p++)
    {
        vb0 = svld1_f32(p32_all, packBPtr);
        vb1 = svld1_f32(p32_all, packBPtr + 16);

        if (N > 0)
        {
            va   = svdup_n_f32(packAPtr[0]);
            vc00 = svmla_f32_x(p32_all, vc00, va, vb0); 
            vc01 = svmla_f32_x(p32_all, vc01, va, vb1); 
        }
        if (N > 1)
        {
            va   = svdup_n_f32(packAPtr[1]);
            vc10 = svmla_f32_x(p32_all, vc10, va, vb0); 
            vc11 = svmla_f32_x(p32_all, vc11, va, vb1); 
        }
        if (N > 2)
        {
            va   = svdup_n_f32(packAPtr[2]);
            vc20 = svmla_f32_x(p32_all, vc20, va, vb0); 
            vc21 = svmla_f32_x(p32_all, vc21, va, vb1); 
        }
        if (N > 3)
        {
            va   = svdup_n_f32(packAPtr[3]);
            vc30 = svmla_f32_x(p32_all, vc30, va, vb0); 
            vc31 = svmla_f32_x(p32_all, vc31, va, vb1); 
        }
        if (N > 4)
        {
            va   = svdup_n_f32(packAPtr[4]);
            vc40 = svmla_f32_x(p32_all, vc40, va, vb0); 
            vc41 = svmla_f32_x(p32_all, vc41, va, vb1); 
        }
        if (N > 5)
        {
            va   = svdup_n_f32(packAPtr[5]);
            vc50 = svmla_f32_x(p32_all, vc50, va, vb0); 
            vc51 = svmla_f32_x(p32_all, vc51, va, vb1); 
        }
        if (N > 6)
        {
            va  = svdup_n_f32(packAPtr[6]);
            vc60 = svmla_f32_x(p32_all, vc60, va, vb0); 
            vc61 = svmla_f32_x(p32_all, vc61, va, vb1); 
        }
        if (N > 7)
        {
            va   = svdup_n_f32(packAPtr[7]);
            vc70 = svmla_f32_x(p32_all, vc70, va, vb0); 
            vc71 = svmla_f32_x(p32_all, vc71, va, vb1); 
        }
        if (N > 8)
        {
            va   = svdup_n_f32(packAPtr[8]);
            vc80 = svmla_f32_x(p32_all, vc80, va, vb0); 
            vc81 = svmla_f32_x(p32_all, vc81, va, vb1); 
        }
        if (N > 9)
        {
            va   = svdup_n_f32(packAPtr[9]);
            vc90 = svmla_f32_x(p32_all, vc90, va, vb0); 
            vc91 = svmla_f32_x(p32_all, vc91, va, vb1); 
        }
        if (N > 10)
        {
            va    = svdup_n_f32(packAPtr[10]);
            vc100 = svmla_f32_x(p32_all, vc100, va, vb0); 
            vc101 = svmla_f32_x(p32_all, vc101, va, vb1); 
        }
        if (N > 11)
        {
            va    = svdup_n_f32(packAPtr[11]);
            vc110 = svmla_f32_x(p32_all, vc110, va, vb0); 
            vc111 = svmla_f32_x(p32_all, vc111, va, vb1); 
        }
        if (N > 12)
        {
            va    = svdup_n_f32(packAPtr[12]);
            vc110 = svmla_f32_x(p32_all, vc120, va, vb0); 
            vc111 = svmla_f32_x(p32_all, vc121, va, vb1); 
        }
        if (N > 13)
        {
            va    = svdup_n_f32(packAPtr[13]);
            vc110 = svmla_f32_x(p32_all, vc130, va, vb0); 
            vc111 = svmla_f32_x(p32_all, vc131, va, vb1); 
        }


        packBPtr += 32;
        packAPtr += N;
    }

    // 将结果写回
    cPtr = packC;
    if (N > 0)
    {
        svst1_f32(p32_all, cPtr, vc00);
        svst1_f32(p32_all, cPtr + 16, vc01);
        cPtr += ldc;
    }
    if (N > 1)
    {
        svst1_f32(p32_all, cPtr, vc10);
        svst1_f32(p32_all, cPtr + 16, vc11);
        cPtr += ldc;
    }
    if (N > 2)
    {
        svst1_f32(p32_all, cPtr, vc20);
        svst1_f32(p32_all, cPtr + 16, vc21);
        cPtr += ldc;
    }
    if (N > 3)
    {
        svst1_f32(p32_all, cPtr, vc30);
        svst1_f32(p32_all, cPtr + 16, vc31);
        cPtr += ldc;
    }
    if (N > 4)
    {
        svst1_f32(p32_all, cPtr, vc40);
        svst1_f32(p32_all, cPtr + 16, vc41);
        cPtr += ldc;
    }
    if (N > 5)
    {
        svst1_f32(p32_all, cPtr, vc50);
        svst1_f32(p32_all, cPtr + 16, vc51);
        cPtr += ldc;
    }
    if (N > 6)
    {
        svst1_f32(p32_all, cPtr, vc60);
        svst1_f32(p32_all, cPtr + 16, vc61);
        cPtr += ldc;
    }
    if (N > 7)
    {
        svst1_f32(p32_all, cPtr, vc70);
        svst1_f32(p32_all, cPtr + 16, vc71);
        cPtr += ldc;
    }
    if (N > 8)
    {
        svst1_f32(p32_all, cPtr, vc80);
        svst1_f32(p32_all, cPtr + 16, vc81);
        cPtr += ldc;
    }
    if (N > 9)
    {
        svst1_f32(p32_all, cPtr, vc90);
        svst1_f32(p32_all, cPtr + 16, vc91);
        cPtr += ldc;
    }
    if (N > 10)
    {
        svst1_f32(p32_all, cPtr, vc100);
        svst1_f32(p32_all, cPtr + 16, vc101);
        cPtr += ldc;
    }
    if (N > 11)
    {
        svst1_f32(p32_all, cPtr, vc110);
        svst1_f32(p32_all, cPtr + 16, vc111);
        cPtr += ldc;
    }
    if (N > 12)
    {
        svst1_f32(p32_all, cPtr, vc120);
        svst1_f32(p32_all, cPtr + 16, vc121);
        cPtr += ldc;
    }
    if (N > 13)
    {
        svst1_f32(p32_all, cPtr, vc130);
        svst1_f32(p32_all, cPtr + 16, vc131);
        cPtr += ldc;
    }
}

InnerKernelForCorner get_kernel_Nx32(int k) {
    if (k == 1)
        return kernel_Nx32_template<1>;
    else if (k == 2)
        return kernel_Nx32_template<2>;
    else if (k == 3)
        return kernel_Nx32_template<3>;
    else if (k == 4)
        return kernel_Nx32_template<4>;
    else if (k == 5)
        return kernel_Nx32_template<5>;
    else if (k == 6)
        return kernel_Nx32_template<6>;
    else if (k == 7)
        return kernel_Nx32_template<7>;
    else if (k == 8)
        return kernel_Nx32_template<8>;
    else if (k == 9)
        return kernel_Nx32_template<9>;
    else if (k == 10)
        return kernel_Nx32_template<10>;
    else if (k == 11)
        return kernel_Nx32_template<11>;
    else if (k == 12)
        return kernel_Nx32_template<12>;
    else if (k == 13)
        return kernel_Nx32_template<13>;
    return kernel_Nx32_template<14>;
}

template <int N>
void kernel_Nx64_template(int kc_adjust, float *packA, float *packB, float *packC, int ldc)
{
    float* packAPtr = packA;
    float* packBPtr = packB;
    float* cPtr = packC;

    const svbool_t p32_all = svptrue_b32();

    svfloat32_t va0,  va1,  va2,  va3;
    svfloat32_t vb0,  vb1,  vb2,  vb3;
    svfloat32_t vc00, vc01, vc02, vc03;
    svfloat32_t vc10, vc11, vc12, vc13;
    svfloat32_t vc20, vc21, vc22, vc23;
    svfloat32_t vc30, vc31, vc32, vc33;

    if (N > 0)
    {
        vc00  = svld1_f32(p32_all, cPtr);
        vc01  = svld1_f32(p32_all, cPtr + 16);
        vc02  = svld1_f32(p32_all, cPtr + 32);
        vc03  = svld1_f32(p32_all, cPtr + 48);
        cPtr += ldc;
    }
    if (N > 1)
    {
        vc10  = svld1_f32(p32_all, cPtr);
        vc11  = svld1_f32(p32_all, cPtr + 16);
        vc12  = svld1_f32(p32_all, cPtr + 32);
        vc13  = svld1_f32(p32_all, cPtr + 48);
        cPtr += ldc;
    }
    if (N > 2)
    {
        vc20  = svld1_f32(p32_all, cPtr);
        vc21  = svld1_f32(p32_all, cPtr + 16);
        vc22  = svld1_f32(p32_all, cPtr + 32);
        vc23  = svld1_f32(p32_all, cPtr + 48);
        cPtr += ldc; 
    }
    if (N > 3)
    {
        vc30  = svld1_f32(p32_all, cPtr);
        vc31  = svld1_f32(p32_all, cPtr + 16);
        vc32  = svld1_f32(p32_all, cPtr + 32);
        vc33  = svld1_f32(p32_all, cPtr + 48);
        cPtr += ldc; 
    }

    // to-do
    for (int p = 0; p < kc_adjust; p++)
    {
        vb0 = svld1_f32(p32_all, packBPtr);
        vb1 = svld1_f32(p32_all, packBPtr + 16);
        vb2 = svld1_f32(p32_all, packBPtr + 32);
        vb3 = svld1_f32(p32_all, packBPtr + 48);

        if (N > 0)
        {
            va0  = svdup_n_f32(packAPtr[0]);
            vc00 = svmla_f32_x(p32_all, vc00, va0, vb0); 
            vc01 = svmla_f32_x(p32_all, vc01, va0, vb1); 
            vc02 = svmla_f32_x(p32_all, vc02, va0, vb2); 
            vc03 = svmla_f32_x(p32_all, vc03, va0, vb3); 
        }
        if (N > 1)
        {
            va1  = svdup_n_f32(packAPtr[1]);
            vc10 = svmla_f32_x(p32_all, vc10, va1, vb0); 
            vc11 = svmla_f32_x(p32_all, vc11, va1, vb1); 
            vc12 = svmla_f32_x(p32_all, vc12, va1, vb2); 
            vc13 = svmla_f32_x(p32_all, vc13, va1, vb3); 
        }
        if (N > 2)
        {
            va2  = svdup_n_f32(packAPtr[2]);
            vc20 = svmla_f32_x(p32_all, vc20, va2, vb0); 
            vc21 = svmla_f32_x(p32_all, vc21, va2, vb1); 
            vc22 = svmla_f32_x(p32_all, vc22, va2, vb2); 
            vc23 = svmla_f32_x(p32_all, vc23, va2, vb3); 
        }
        if (N > 3)
        {
            va3  = svdup_n_f32(packAPtr[3]);
            vc30 = svmla_f32_x(p32_all, vc30, va3, vb0); 
            vc31 = svmla_f32_x(p32_all, vc31, va3, vb1); 
            vc32 = svmla_f32_x(p32_all, vc32, va3, vb2); 
            vc33 = svmla_f32_x(p32_all, vc33, va3, vb3); 
        }

        packBPtr += 64;
        packAPtr += N;
    }

    // 将结果写回
    cPtr = packC;
    if (N > 0)
    {
        svst1_f32(p32_all, cPtr, vc00);
        svst1_f32(p32_all, cPtr + 16, vc01);
        svst1_f32(p32_all, cPtr + 32, vc02);
        svst1_f32(p32_all, cPtr + 48, vc03);
        cPtr += ldc;
    }
    if (N > 1)
    {
        svst1_f32(p32_all, cPtr, vc10);
        svst1_f32(p32_all, cPtr + 16, vc11);
        svst1_f32(p32_all, cPtr + 32, vc12);
        svst1_f32(p32_all, cPtr + 48, vc13);
        cPtr += ldc;
    }
    if (N > 2)
    {
        svst1_f32(p32_all, cPtr, vc20);
        svst1_f32(p32_all, cPtr + 16, vc21);
        svst1_f32(p32_all, cPtr + 32, vc22);
        svst1_f32(p32_all, cPtr + 48, vc23);
        cPtr += ldc;
    }
    if (N > 3)
    {
        svst1_f32(p32_all, cPtr, vc30);
        svst1_f32(p32_all, cPtr + 16, vc31);
        svst1_f32(p32_all, cPtr + 32, vc32);
        svst1_f32(p32_all, cPtr + 48, vc33);
        cPtr += ldc;
    }
}

InnerKernelForCorner get_kernel_Nx64(int k) {
    if (k == 1)
        return kernel_Nx64_template<1>;
    else if (k == 2)
        return kernel_Nx64_template<2>;
    else if (k == 3)
        return kernel_Nx64_template<3>;
    return kernel_Nx64_template<4>;
}
