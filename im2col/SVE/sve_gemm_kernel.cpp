#include <stdlib.h>
#include <assert.h>
#include <stdio.h>
#include "../../utility/helper.h"
#include "./sve_gemm_kernel.h"

#include <arm_sve.h>

#define _ASM_

const int simd_width = 16;

typedef void (*InnerKernel)(int, float *, float *, float *, int, const int, const int, const int);

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

        "mov    x8, 0x2     \n"
        "lsl    x8, x8, #56 \n"
        "orr    %[pC0], %[pC0], x8 \n"

        "mov    x8, 0x1     \n"
        "lsl    x8, x8, #56 \n"
        "orr    %[pB], %[pB], x8 \n"

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
    : "memory", "cc", "p0", "x4", "x5", "x6", "x7","x8",
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


		//"mov    x18, 0x40   \n"
        //"lsl    x18, x18, 56      \n"
        //"orr    %[pB], %[pB], x18 \n"

        "cmp x5, #0x2\n"
        
        "prfm	pstl1keep, [%[pC0], 256] \n"
		"prfm	pstl1keep, [%[pC1], 256] \n"
		"prfm	pstl1keep, [%[pC2], 256] \n"
		"prfm	pstl1keep, [%[pC3], 256] \n"
		"prfm	pstl1keep, [%[pC4], 256] \n"
		"prfm	pstl1keep, [%[pC5], 256] \n"
		"prfm	pstl1keep, [%[pC6], 256] \n"
		"prfm	pstl1keep, [%[pC7], 256] \n"

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


		"prfm	pldl1keep, [%[pA],256*0]              \n"
        "prfm	pldl1keep, [%[pA],256*1]              \n"
/*
        "prfm	pldl1keep, [%[pA],256*2]              \n"
        "prfm	pldl1keep, [%[pA],256*3]              \n"
        "prfm	pldl1keep, [%[pA],256*4]              \n"
        "prfm	pldl1keep, [%[pA],256*5]              \n"
        "prfm	pldl1keep, [%[pA],256*6]              \n"
        "prfm	pldl1keep, [%[pA],256*7]              \n"
        "prfm	pldl1keep, [%[pA],256*8]              \n"
  */      

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
        "prfm	pldl1keep, [%[pA], #256 * 3]                \n"
        //"prfm	pldl1keep, [%[pB],256]              \n"
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
        //"prfm	pldl1keep, [%[pA], #256 * 10]                \n"
        //"prfm	pldl1keep, [%[pB],256*2]              \n"
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
    : "memory", "cc", "p0", "x4", "x18", "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
      "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
      "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");
#endif
}

void kernel_5x64(int kc_adjust, float *packA, float* packB, float *packC, int ldc, const int PREFETCH_A, const int PREFETCH_B, const int PREFETCH_C) {

    float* packAPtr = packA;
    float* packBPtr = packB;
    float* packCPtr = packC;

    float* packCPtr0  = packC;
    float* packCPtr1  = packC + 1 * ldc;
    float* packCPtr2  = packC + 2 * ldc;
    float* packCPtr3  = packC + 3 * ldc;
    float* packCPtr4  = packC + 4 * ldc;

    asm volatile(
        "ptrue  p0.s  \n"
        "lsr    x6, %[kc], 0x1  \n"
		"lsl    x7, x6, 0x1  \n"

        "mov    x18, 0x2   \n"
        "lsl    x18, x18, 56      \n"
        "orr    %[pC0], %[pC0], x18 \n"
        "orr    %[pC1], %[pC1], x18 \n"
        "orr    %[pC2], %[pC2], x18 \n"
        "orr    %[pC3], %[pC3], x18 \n"
        "orr    %[pC4], %[pC4], x18 \n"

        "mov    x18, 0x41   \n"
        "lsl    x18, x18, 56      \n"
        "orr    %[pB], %[pB], x18 \n"

        "mov    x8,  %[pA]   \n"            // a00

        "cmp    %[kc], #0  \n"
        "b.eq   3f      \n"

		// "add	%[pC0], %[pC0], 256*2 \n"
		"prfm	pstl1keep, [%[pC0], 256] \n"
		"prfm	pstl1keep, [%[pC1], 256] \n"
		"prfm	pstl1keep, [%[pC2], 256] \n"
		"prfm	pstl1keep, [%[pC3], 256] \n"
		"prfm	pstl1keep, [%[pC4], 256] \n"
		// "sub	%[pC0], %[pC0], 256*2 \n"

        "ld1w	{ z2.s }, p0/z, [%[pC0]]      \n"  // load C
        "ld1w	{ z3.s }, p0/z, [%[pC1]]      \n"
        "ld1w	{ z4.s }, p0/z, [%[pC2]]      \n"
        "ld1w	{ z5.s }, p0/z, [%[pC3]]      \n"
        "ld1w	{ z6.s }, p0/z, [%[pC4]]      \n"

        "ld1w	{ z7.s },  p0/z, [%[pC0], #1, MUL VL]    \n"
        "ld1w	{ z8.s },  p0/z, [%[pC1], #1, MUL VL]    \n"
        "ld1w	{ z9.s },  p0/z, [%[pC2], #1, MUL VL]    \n"
        "ld1w	{ z10.s }, p0/z, [%[pC3], #1, MUL VL]    \n"
        "ld1w	{ z11.s }, p0/z, [%[pC4], #1, MUL VL]    \n"

        "ld1w	{ z12.s }, p0/z, [%[pC0], #2, MUL VL]    \n"
        "ld1w	{ z13.s }, p0/z, [%[pC1], #2, MUL VL]    \n"
        "ld1w	{ z14.s }, p0/z, [%[pC2], #2, MUL VL]    \n"
        "ld1w	{ z15.s }, p0/z, [%[pC3], #2, MUL VL]    \n"
        "ld1w	{ z16.s }, p0/z, [%[pC4], #2, MUL VL]    \n"

        "ld1w	{ z17.s }, p0/z, [%[pC0], #3, MUL VL]    \n"
        "ld1w	{ z18.s }, p0/z, [%[pC1], #3, MUL VL]    \n"
        "ld1w	{ z19.s }, p0/z, [%[pC2], #3, MUL VL]    \n"
        "ld1w	{ z20.s }, p0/z, [%[pC3], #3, MUL VL]    \n"
        "ld1w	{ z21.s }, p0/z, [%[pC4], #3, MUL VL]    \n"

        "prfm	pldl1keep, [%[pB],256*0]              \n"
        "prfm	pldl1keep, [%[pB],256*1]              \n"
        "prfm	pldl1keep, [%[pB],256*2]              \n"
        "prfm	pldl1keep, [%[pB],256*3]              \n"
        "prfm	pldl1keep, [%[pB],256*4]              \n"
        "prfm	pldl1keep, [%[pB],256*5]              \n"
        "prfm	pldl1keep, [%[pB],256*6]              \n"
        "prfm	pldl1keep, [%[pB],256*7]              \n"
        "prfm	pldl1keep, [%[pB],256*8]              \n"
        
        "ld1rw	{ z22.s }, p0/z, [%[pA]]              \n"
	    "ld1rw	{ z23.s }, p0/z, [%[pA], #4]          \n"
        "ld1rw	{ z24.s }, p0/z, [%[pA], #8]          \n"
	    "ld1rw	{ z25.s }, p0/z, [%[pA], #12]         \n"
	    "ld1rw	{ z26.s }, p0/z, [%[pA], #16]         \n"

        "ld1rw	{ z27.s }, p0/z, [%[pA], #20]         \n"
	    "ld1rw	{ z28.s }, p0/z, [%[pA], #24]         \n"
        // "ld1rw	{ z29.s }, p0/z, [x10, 4]         \n"
	    // "ld1rw	{ z30.s }, p0/z, [x11, 4]         \n"
	    // "ld1rw	{ z31.s }, p0/z, [x12, 4]         \n"

        "ld1w	{ z0.s }, p0/z, [%[pB]]                 \n"
	    // "ld1w	{ z1.s }, p0/z, [%[pB], #1, MUL VL]     \n"

        "cmp    w6, #0                                  \n"
        "b.eq   1f                                      \n"
/*
        "prfm	pldl2keep, [x8, 1024]                \n"
        "prfm	pldl2keep, [x9, 1024]                \n"
        "prfm	pldl2keep, [x10,1024]                \n"
        "prfm	pldl2keep, [x11,1024]                \n"
        "prfm	pldl2keep, [x12,1024]                \n"
        "prfm	pldl2keep, [x13,1024]                \n"
        "prfm	pldl2keep, [x14,1024]                \n"
        "prfm	pldl2keep, [x15,1024]                \n"
        "prfm	pldl2keep, [x16,1024]                \n"
        "prfm	pldl2keep, [x17,1024]                \n"
        "prfm	pldl2keep, [x18,1024]                \n"
        "prfm	pldl2keep, [x19,1024]                \n"
*/

    "0:                                                 \n"

        // ------------- loop 1 -------------

	    "ld1w	{ z1.s }, p0/z, [%[pB], #1, MUL VL]    \n"
        "prfm   pldl1keep, [%[pB], 256*9]              \n"
        "fmla	z2.s,  p0/m, z0.s, z22.s               \n"
        "fmla	z3.s,  p0/m, z0.s, z23.s               \n"
        "ld1rw	{ z29.s }, p0/z, [%[pA], #28]          \n"
	    "ld1rw	{ z30.s }, p0/z, [%[pA], #32]          \n"
        "fmla	z4.s,  p0/m, z0.s, z24.s               \n"
        "fmla	z5.s,  p0/m, z0.s, z25.s               \n"
        "fmla	z6.s,  p0/m, z0.s, z26.s               \n"
        "fmla	z7.s,  p0/m, z1.s, z22.s               \n"

	    "ld1w	{ z0.s }, p0/z, [%[pB], #2, MUL VL]    \n"
	    "ld1rw	{ z31.s }, p0/z, [%[pA], #36]          \n"
        "fmla	z8.s,  p0/m, z1.s, z23.s               \n"
        "fmla	z9.s,  p0/m, z1.s, z24.s               \n"
        "fmla	z10.s, p0/m, z1.s, z25.s               \n"
        "fmla	z11.s, p0/m, z1.s, z26.s               \n"
	    "ld1w	{ z1.s }, p0/z, [%[pB], #3, MUL VL]    \n"
        "add	%[pA], %[pA], #40                      \n"

        "fmla	z12.s, p0/m, z0.s, z22.s               \n"
        "fmla	z13.s, p0/m, z0.s, z23.s               \n"
        "fmla	z14.s, p0/m, z0.s, z24.s               \n"
        "fmla	z15.s, p0/m, z0.s, z25.s               \n"
        "fmla	z16.s, p0/m, z0.s, z26.s               \n"
        "fmla	z17.s, p0/m, z1.s, z22.s               \n"
	    "ld1w	{ z0.s }, p0/z, [%[pB], #4, MUL VL]    \n"

        "fmla	z18.s, p0/m, z1.s, z23.s               \n"
        "fmla	z19.s, p0/m, z1.s, z24.s               \n"
        "ld1rw	{ z22.s }, p0/z, [%[pA]]               \n"
	    "ld1rw	{ z23.s }, p0/z, [%[pA], #4]           \n"
        "fmla	z20.s, p0/m, z1.s, z25.s               \n"
        "fmla	z21.s, p0/m, z1.s, z26.s               \n"



	    "ld1w	{ z1.s }, p0/z, [%[pB], #5, MUL VL]    \n"
        "prfm   pldl1keep, [%[pB], 256*10]             \n"
        "fmla	z2.s, p0/m, z0.s, z27.s               \n"
        "fmla	z3.s, p0/m, z0.s, z28.s               \n"
        "ld1rw	{ z24.s }, p0/z, [%[pA], #8]          \n"
	    "ld1rw	{ z25.s }, p0/z, [%[pA], #12]         \n"
        "fmla	z4.s, p0/m, z0.s, z29.s               \n"
        "fmla	z5.s, p0/m, z0.s, z30.s               \n"
        "fmla	z6.s, p0/m, z0.s, z31.s               \n"
        "fmla	z7.s, p0/m, z1.s, z27.s               \n"
	    "ld1w	{ z0.s }, p0/z, [%[pB], #6, MUL VL]   \n"
	    "ld1rw	{ z26.s }, p0/z, [%[pA], #16]         \n"

        "fmla	z8.s, p0/m, z1.s, z28.s               \n"
        "fmla	z9.s, p0/m, z1.s, z29.s               \n"
        "fmla	z10.s, p0/m, z1.s, z30.s               \n"
        "fmla	z11.s, p0/m, z1.s, z31.s               \n"
	    "ld1w	{ z1.s }, p0/z, [%[pB], #7, MUL VL]    \n"
        "add	%[pB], %[pB], #512                     \n"
        "fmla	z12.s, p0/m, z0.s, z27.s               \n"
        "fmla	z13.s, p0/m, z0.s, z28.s               \n"
        "fmla	z14.s, p0/m, z0.s, z29.s               \n"
        "fmla	z15.s, p0/m, z0.s, z30.s               \n"
        "fmla	z16.s, p0/m, z0.s, z31.s               \n"
        "fmla	z17.s, p0/m, z1.s, z27.s               \n"

        "ld1w	{ z0.s }, p0/z, [%[pB]]                 \n"
        "fmla	z18.s, p0/m, z1.s, z28.s               \n"
        "fmla	z19.s, p0/m, z1.s, z29.s               \n"
        "ld1rw	{ z27.s }, p0/z, [%[pA], #20]          \n"
	    "ld1rw	{ z28.s }, p0/z, [%[pA], #24]          \n"
        "fmla	z20.s, p0/m, z1.s, z30.s               \n"
        "fmla	z21.s, p0/m, z1.s, z31.s               \n"

        "subs   x6, x6, #1                              \n"
        "b.ne   0b                                      \n"

        // -------------remain one loop----------------
    "1:                                                \n"
        "cmp    x7, %[kc]                               \n"
        "b.eq   2f                                      \n"

        "ld1w	{ z1.s }, p0/z, [%[pB], #1, MUL VL]    \n"
        "fmla	z2.s,  p0/m, z0.s, z22.s               \n"
        "fmla	z3.s,  p0/m, z0.s, z23.s               \n"
        // "ld1rw	{ z29.s }, p0/z, [x10, 4]         \n"
	    // "ld1rw	{ z30.s }, p0/z, [x11, 4]         \n"
        "fmla	z4.s,  p0/m, z0.s, z24.s               \n"
        "fmla	z5.s,  p0/m, z0.s, z25.s               \n"
        "fmla	z6.s,  p0/m, z0.s, z26.s               \n"
        "fmla	z7.s,  p0/m, z1.s, z22.s               \n"

	    "ld1w	{ z0.s }, p0/z, [%[pB], #2, MUL VL]    \n"
	    // "ld1rw	{ z31.s }, p0/z, [x12, 4]              \n"
        "fmla	z8.s,  p0/m, z1.s, z23.s               \n"
        "fmla	z9.s,  p0/m, z1.s, z24.s               \n"
        "fmla	z10.s, p0/m, z1.s, z25.s               \n"
        "fmla	z11.s, p0/m, z1.s, z26.s               \n"
	    "ld1w	{ z1.s }, p0/z, [%[pB], #3, MUL VL]    \n"
        // "add	x8, x8, #8                             \n"

        "fmla	z12.s, p0/m, z0.s, z22.s               \n"
        "fmla	z13.s, p0/m, z0.s, z23.s               \n"
        // "add	x9, x9, #8                      \n"
        // "add	x10, x10, #8                      \n"
        "fmla	z14.s, p0/m, z0.s, z24.s               \n"
        "fmla	z15.s, p0/m, z0.s, z25.s               \n"
        "fmla	z16.s, p0/m, z0.s, z26.s               \n"
        "fmla	z17.s, p0/m, z1.s, z22.s               \n"
	    // "ld1w	{ z0.s }, p0/z, [%[pB], #4, MUL VL]    \n"
        // "add	x11, x11, #8                      \n"

        "fmla	z18.s, p0/m, z1.s, z23.s               \n"
        "fmla	z19.s, p0/m, z1.s, z24.s               \n"
        // "ld1rw	{ z22.s }, p0/z, [x8]                 \n"
	    // "ld1rw	{ z23.s }, p0/z, [x9]                 \n"
        "fmla	z20.s, p0/m, z1.s, z25.s               \n"
        "fmla	z21.s, p0/m, z1.s, z26.s               \n"
        

    "2:                                                 \n"        
        "st1w	{ z2.s }, p0, [%[pC0]]      \n"  // load C
        "st1w	{ z3.s }, p0, [%[pC1]]      \n"
        "st1w	{ z4.s }, p0, [%[pC2]]      \n"
        "st1w	{ z5.s }, p0, [%[pC3]]      \n"
        "st1w	{ z6.s }, p0, [%[pC4]]      \n"

        "st1w	{ z7.s },  p0, [%[pC0], #1, MUL VL]    \n"
        "st1w	{ z8.s },  p0, [%[pC1], #1, MUL VL]    \n"
        "st1w	{ z9.s },  p0, [%[pC2], #1, MUL VL]    \n"
        "st1w	{ z10.s }, p0, [%[pC3], #1, MUL VL]    \n"
        "st1w	{ z11.s }, p0, [%[pC4], #1, MUL VL]    \n"

        "st1w	{ z12.s }, p0, [%[pC0], #2, MUL VL]    \n"
        "st1w	{ z13.s }, p0, [%[pC1], #2, MUL VL]    \n"
        "st1w	{ z14.s }, p0, [%[pC2], #2, MUL VL]    \n"
        "st1w	{ z15.s }, p0, [%[pC3], #2, MUL VL]    \n"
        "st1w	{ z16.s }, p0, [%[pC4], #2, MUL VL]    \n"

        "st1w	{ z17.s }, p0, [%[pC0], #3, MUL VL]    \n"
        "st1w	{ z18.s }, p0, [%[pC1], #3, MUL VL]    \n"
        "st1w	{ z19.s }, p0, [%[pC2], #3, MUL VL]    \n"
        "st1w	{ z20.s }, p0, [%[pC3], #3, MUL VL]    \n"
        "st1w	{ z21.s }, p0, [%[pC4], #3, MUL VL]    \n"

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
      [ldc] "r"(ldc),
      [kc]  "r"(kc_adjust)
    : "memory", "cc", "p0", "x6", "x7", "x8", "x9", "x10", "x11",
      "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
      "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
      "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");
}
