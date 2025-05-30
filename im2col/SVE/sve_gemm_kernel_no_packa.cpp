#include <stdlib.h>
#include <assert.h>
#include <stdio.h>
#include "../../utility/helper.h"
#include "./sve_gemm_kernel_no_packa.h"


#include <arm_sve.h>

#define _ASM_

const int simd_width = 16;

typedef void (*InnerKernel)(int, float *, float *, float *, int, const int, const int, const int);
typedef void (*InnerKernelForCorner)(int, float *, float *, float *, int);

// new version, use broadcast and fmla and loop unroll by 2
void kernel_12x32_no_packa(int kc_adjust, float *packA, float* packB, float *packC, int lda, const int ldc, const int PREFETCH_B, const int PREFETCH_C) {

    float* packAPtr = packA;
    float* packBPtr = packB;
    float* packCPtr = packC;

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
        "lsr    x6, %[kc], 0x1  \n"
		"lsl    x7, x6, 0x1  \n"

        "lsl    x19, %[lda], #2 \n"

        "mov    x18, 0x2   \n"
        "lsl    x18, x18, 56      \n"
        "orr    %[pC0], %[pC0], x18 \n"
        "orr    %[pC1], %[pC1], x18 \n"
        "orr    %[pC2], %[pC2], x18 \n"
        "orr    %[pC3], %[pC3], x18 \n"
        "orr    %[pC4], %[pC4], x18 \n"
        "orr    %[pC5], %[pC5], x18 \n"
        "orr    %[pC6], %[pC6], x18 \n"
        "orr    %[pC7], %[pC7], x18 \n"
        "orr    %[pC8], %[pC8], x18 \n"
        "orr    %[pC9], %[pC9], x18 \n"
        "orr    %[pC10], %[pC10], x18 \n"
        "orr    %[pC11], %[pC11], x18 \n"

        "mov    x8,  %[pA]   \n"
		"add    x10, %[pA], x19, lsl #1\n"
		"add    x12, %[pA], x19, lsl #2\n"
        "add    x14, x10,   x19, lsl #2\n"
        "add    x16, %[pA], x19, lsl #3\n"
        "add    x18, x10,   x19, lsl #3\n"

        "add    x9,  x8,    x19        \n"
        "add    x11, x10,   x19        \n"
        "add    x13, x12,   x19        \n"
        "add    x15, x14,   x19        \n"
        "add    x17, x16,   x19        \n"
        "add    x19, x18,   x19        \n"
		

        "cmp    %[kc], #0  \n"
        "b.eq   3f      \n"
/*
		"prfm	pstl1keep, [%[pC0], 256] \n"
		"prfm	pstl1keep, [%[pC1], 256] \n"
		"prfm	pstl1keep, [%[pC2], 256] \n"
		"prfm	pstl1keep, [%[pC3], 256] \n"
		"prfm	pstl1keep, [%[pC4], 256] \n"
		"prfm	pstl1keep, [%[pC5], 256] \n"
		"prfm	pstl1keep, [%[pC6], 256] \n"
		"prfm	pstl1keep, [%[pC7], 256] \n"
		"prfm	pstl1keep, [%[pC8], 256] \n"
		"prfm	pstl1keep, [%[pC9], 256] \n"
		"prfm	pstl1keep, [%[pC10], 256] \n"
		"prfm	pstl1keep, [%[pC11], 256] \n"
		
*/
		//"add	%[pC0], %[pC0], 256*2 \n"
		//"prfm	pstl1keep, [%[pC0]] \n"
		//"sub	%[pC0], %[pC0], 256*2 \n"

        "ld1w	{ z8.s },  p0/z, [%[pC0]]      \n"  // load C
        "ld1w	{ z9.s },  p0/z, [%[pC0], #1, MUL VL]    \n"
        "ld1w	{ z10.s }, p0/z, [%[pC1]]      \n"
        "ld1w	{ z11.s }, p0/z, [%[pC1], #1, MUL VL]    \n"
        "ld1w	{ z12.s }, p0/z, [%[pC2]]      \n"
        "ld1w	{ z13.s }, p0/z, [%[pC2], #1, MUL VL]    \n"
        "ld1w	{ z14.s }, p0/z, [%[pC3]]      \n"
        "ld1w	{ z15.s }, p0/z, [%[pC3], #1, MUL VL]    \n"
        "ld1w	{ z16.s }, p0/z, [%[pC4]]      \n"
        "ld1w	{ z17.s }, p0/z, [%[pC4], #1, MUL VL]    \n"
        "ld1w	{ z18.s }, p0/z, [%[pC5]]      \n"
        "ld1w	{ z19.s }, p0/z, [%[pC5], #1, MUL VL]    \n"
        "ld1w	{ z20.s }, p0/z, [%[pC6]]      \n"
        "ld1w	{ z21.s }, p0/z, [%[pC6], #1, MUL VL]    \n"
        "ld1w	{ z22.s }, p0/z, [%[pC7]]      \n"
        "ld1w	{ z23.s }, p0/z, [%[pC7], #1, MUL VL]    \n"
        "ld1w	{ z24.s }, p0/z, [%[pC8]]      \n"
        "ld1w	{ z25.s }, p0/z, [%[pC8], #1, MUL VL]    \n"
        "ld1w	{ z26.s }, p0/z, [%[pC9]]      \n"
        "ld1w	{ z27.s }, p0/z, [%[pC9], #1, MUL VL]    \n"
        "ld1w	{ z28.s }, p0/z, [%[pC10]]     \n"
        "ld1w	{ z29.s }, p0/z, [%[pC10], #1, MUL VL]    \n"
        "ld1w	{ z30.s }, p0/z, [%[pC11]]     \n"
        "ld1w	{ z31.s }, p0/z, [%[pC11], #1, MUL VL]    \n"


        "ld1w	{ z4.s }, p0/z, [%[pB]]                 \n"
	    "ld1w	{ z5.s }, p0/z, [%[pB], #1, MUL VL]     \n"


        "ld1rw	{ z0.s }, p0/z, [x8]                 \n"
	    "ld1rw	{ z1.s }, p0/z, [x9]                 \n"

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
	    "ld1w	{ z6.s }, p0/z, [%[pB], #2, MUL VL]    \n"
	    "ld1w	{ z7.s }, p0/z, [%[pB], #3, MUL VL]    \n"

        "fmla	z8.s,  p0/m, z4.s, z0.s                 \n"
        "fmla	z9.s,  p0/m, z5.s, z0.s                 \n"

	    "ld1rw	{ z2.s }, p0/z, [x10]                \n"
	    "ld1rw	{ z3.s }, p0/z, [x11]                \n"
        "fmla	z10.s, p0/m, z4.s, z1.s                 \n"
        "fmla	z11.s, p0/m, z5.s, z1.s                 \n"
        
        "ld1rw	{ z0.s }, p0/z, [x12]                \n"
	    "ld1rw	{ z1.s }, p0/z, [x13]                \n"
        
        "fmla	z12.s, p0/m, z4.s, z2.s                 \n"
        "fmla	z13.s, p0/m, z5.s, z2.s                 \n"
        //"prfm	pldl2keep, [%[pB], 1024]                \n"
        "fmla	z14.s, p0/m, z4.s, z3.s                 \n"
        "fmla	z15.s, p0/m, z5.s, z3.s                 \n"

	    "ld1rw	{ z2.s }, p0/z, [x14]                \n"
	    "ld1rw	{ z3.s }, p0/z, [x15]                \n"
        
        "fmla	z16.s, p0/m, z4.s, z0.s                 \n"
        "fmla	z17.s, p0/m, z5.s, z0.s                 \n"
        //"prfm	pldl2keep, [x9, 256]                \n"
        "fmla	z18.s, p0/m, z4.s, z1.s                 \n"
        "fmla	z19.s, p0/m, z5.s, z1.s                 \n"

        "ld1rw	{ z0.s }, p0/z, [x16]                \n"
	    "ld1rw	{ z1.s }, p0/z, [x17]                \n"

        "fmla	z20.s, p0/m, z4.s, z2.s                 \n"
        "fmla	z21.s, p0/m, z5.s, z2.s                 \n"
        //"prfm	pldl2keep, [x10,256]                \n"
        "fmla	z22.s, p0/m, z4.s, z3.s                 \n"
        "fmla	z23.s, p0/m, z5.s, z3.s                 \n"

        "ld1rw	{ z2.s }, p0/z, [x18]               \n"
	    "ld1rw	{ z3.s }, p0/z, [x19]               \n"

        "add	%[pB], %[pB], #256                      \n"

        "fmla	z24.s, p0/m, z4.s, z0.s                 \n"
        "fmla	z25.s, p0/m, z5.s, z0.s                 \n"
        //"prfm	pldl2keep, [x11,256]                \n"
        "fmla	z26.s, p0/m, z4.s, z1.s                 \n"
        "fmla	z27.s, p0/m, z5.s, z1.s                 \n"

        "ld1rw	{ z0.s }, p0/z, [x8, #4]            \n"
	    "ld1rw	{ z1.s }, p0/z, [x9, #4]            \n" 

        "add	x8, x8, #8                      \n"
        "add	x9, x9, #8                      \n"

        "prfm	pldl1keep, [x8,  256]               \n"
        "fmla	z28.s, p0/m, z4.s, z2.s                 \n"
        "fmla	z29.s, p0/m, z5.s, z2.s                 \n"
        "fmla	z30.s, p0/m, z4.s, z3.s                 \n"
        "fmla	z31.s, p0/m, z5.s, z3.s                 \n"

        // -------------- loop 2 -----------------
        "ld1w	{ z4.s },  p0/z, [%[pB]]                \n"
	    "ld1w	{ z5.s },  p0/z, [%[pB], #1, MUL VL]    \n"

	    "ld1rw	{ z2.s }, p0/z, [x10, #4]            \n"
	    "ld1rw	{ z3.s }, p0/z, [x11, #4]            \n"

        "add	x10, x10, #8                      \n"
        "add	x11, x11, #8                      \n"

        //"prfm	pldl1keep, [x16, #256]             \n"
        "fmla	z8.s,  p0/m, z6.s, z0.s                 \n"
        "fmla	z9.s,  p0/m, z7.s, z0.s                 \n"
        "fmla	z10.s, p0/m, z6.s, z1.s                 \n"
        "fmla	z11.s, p0/m, z7.s, z1.s                 \n"

        "ld1rw	{ z0.s }, p0/z, [x12, #4]            \n"
	    "ld1rw	{ z1.s }, p0/z, [x13, #4]            \n"
        "add	x12, x12, #8                      \n"
        "add	x13, x13, #8                      \n"

        "fmla	z12.s, p0/m, z6.s, z2.s                 \n"
        "fmla	z13.s, p0/m, z7.s, z2.s                 \n"
        "fmla	z14.s, p0/m, z6.s, z3.s                 \n"
        "fmla	z15.s, p0/m, z7.s, z3.s                 \n"

	    "ld1rw	{ z2.s }, p0/z, [x14, #4]            \n"
	    "ld1rw	{ z3.s }, p0/z, [x15, #4]            \n"
        "add	x14, x14, #8                      \n"
        "add	x15, x15, #8                      \n"
        
        "prfm	pldl1keep, [x17, #256]             \n"
        "fmla	z16.s, p0/m, z6.s, z0.s                 \n"
        "fmla	z17.s, p0/m, z7.s, z0.s                 \n"
        "fmla	z18.s, p0/m, z6.s, z1.s                 \n"
        "fmla	z19.s, p0/m, z7.s, z1.s                 \n"

        //"prfm	pldl1keep, [%[pA], #1024]               \n"
        "ld1rw	{ z0.s }, p0/z, [x16, #4]            \n"
	    "ld1rw	{ z1.s }, p0/z, [x17, #4]            \n"

        "add	x16, x16, #8                      \n"
        "add	x17, x17, #8                      \n"

        "fmla	z20.s, p0/m, z6.s, z2.s                 \n"
        "fmla	z21.s, p0/m, z7.s, z2.s                 \n"
        "fmla	z22.s, p0/m, z6.s, z3.s                 \n"
        "fmla	z23.s, p0/m, z7.s, z3.s                 \n"

        "ld1rw	{ z2.s }, p0/z, [x18, #4]           \n"
	    "ld1rw	{ z3.s }, p0/z, [x19, #4]           \n"

        "add	x18, x18, #8                    \n"
        "add	x19, x19, #8                    \n"

        //"prfm	pldl1keep, [x18, #256]             \n"
        "fmla	z24.s, p0/m, z6.s, z0.s                 \n"
        "fmla	z25.s, p0/m, z7.s, z0.s                 \n"
        "fmla	z26.s, p0/m, z6.s, z1.s                 \n"
        "fmla	z27.s, p0/m, z7.s, z1.s                 \n"

        "ld1rw	{ z0.s }, p0/z, [x8]                \n"
	    "ld1rw	{ z1.s }, p0/z, [x9]                \n"

        "fmla	z28.s, p0/m, z6.s, z2.s                 \n"
        "fmla	z29.s, p0/m, z7.s, z2.s                 \n"
        "fmla	z30.s, p0/m, z6.s, z3.s                 \n"
        "fmla	z31.s, p0/m, z7.s, z3.s                 \n"
        "prfm	pldl1keep, [x19, #256]             \n"

        "subs   x6, x6, #1                              \n"
        "b.ne   0b                                      \n"

        // ---------- remain loop (last one) -----------
    "1:                                                 \n"
        "cmp    x7, %[kc]                                  \n"
        "b.eq   2f                                      \n"

        "fmla	z8.s,  p0/m, z4.s, z0.s                 \n"
        "fmla	z9.s,  p0/m, z5.s, z0.s                 \n"

        // "prfm	pldl1keep, [%[pA], 256]                 \n"
	    "ld1rw	{ z2.s }, p0/z, [x10]                \n"
	    "ld1rw	{ z3.s }, p0/z, [x11]                \n"
        "fmla	z10.s, p0/m, z4.s, z1.s                 \n"
        "fmla	z11.s, p0/m, z5.s, z1.s                 \n"
        
        "ld1rw	{ z0.s }, p0/z, [x12]                \n"
	    "ld1rw	{ z1.s }, p0/z, [x13]                \n"
        
        "fmla	z12.s, p0/m, z4.s, z2.s                 \n"
        "fmla	z13.s, p0/m, z5.s, z2.s                 \n"
        "fmla	z14.s, p0/m, z4.s, z3.s                 \n"
        "fmla	z15.s, p0/m, z5.s, z3.s                 \n"

	    "ld1rw	{ z2.s }, p0/z, [x14]                \n"
	    "ld1rw	{ z3.s }, p0/z, [x15]                \n"
        
        "fmla	z16.s, p0/m, z4.s, z0.s                 \n"
        "fmla	z17.s, p0/m, z5.s, z0.s                 \n"
        "fmla	z18.s, p0/m, z4.s, z1.s                 \n"
        "fmla	z19.s, p0/m, z5.s, z1.s                 \n"

        // "prfm	pldl1keep, [%[pA], 256*2]               \n"
        "ld1rw	{ z0.s }, p0/z, [x16]                \n"
	    "ld1rw	{ z1.s }, p0/z, [x17]                \n"

        "fmla	z20.s, p0/m, z4.s, z2.s                 \n"
        "fmla	z21.s, p0/m, z5.s, z2.s                 \n"
        "fmla	z22.s, p0/m, z4.s, z3.s                 \n"
        "fmla	z23.s, p0/m, z5.s, z3.s                 \n"

        "ld1rw	{ z2.s }, p0/z, [x18]               \n"
	    "ld1rw	{ z3.s }, p0/z, [x19]               \n"

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
        "st1w	{ z9.s },  p0, [%[pC0], #1, MUL VL]    \n"
        "st1w	{ z10.s }, p0, [%[pC1]]      \n"
        "st1w	{ z11.s }, p0, [%[pC1], #1, MUL VL]    \n"
        "st1w	{ z12.s }, p0, [%[pC2]]      \n"
        "st1w	{ z13.s }, p0, [%[pC2], #1, MUL VL]    \n"
        "st1w	{ z14.s }, p0, [%[pC3]]      \n"
        "st1w	{ z15.s }, p0, [%[pC3], #1, MUL VL]    \n"
        "st1w	{ z16.s }, p0, [%[pC4]]      \n"
        "st1w	{ z17.s }, p0, [%[pC4], #1, MUL VL]    \n"
        "st1w	{ z18.s }, p0, [%[pC5]]      \n"
        "st1w	{ z19.s }, p0, [%[pC5], #1, MUL VL]    \n"
        "st1w	{ z20.s }, p0, [%[pC6]]      \n"
        "st1w	{ z21.s }, p0, [%[pC6], #1, MUL VL]    \n"
        "st1w	{ z22.s }, p0, [%[pC7]]      \n"
        "st1w	{ z23.s }, p0, [%[pC7], #1, MUL VL]    \n"
        "st1w	{ z24.s }, p0, [%[pC8]]      \n"
        "st1w	{ z25.s }, p0, [%[pC8], #1, MUL VL]    \n"
        "st1w	{ z26.s }, p0, [%[pC9]]      \n"
        "st1w	{ z27.s }, p0, [%[pC9], #1, MUL VL]    \n"
        "st1w	{ z28.s }, p0, [%[pC10]]     \n"
        "st1w	{ z29.s }, p0, [%[pC10], #1, MUL VL]    \n"
        "st1w	{ z30.s }, p0, [%[pC11]]     \n"
        "st1w	{ z31.s }, p0, [%[pC11], #1, MUL VL]    \n"


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
      [lda] "r"(lda),
      [kc]  "r"(kc_adjust)
    : "memory", "cc", "p0", "x6", "x7", "x8", "x9", "x10", "x11",
	  "x12", "x13", "x14", "x15", "x16", "x17", "x18", "x19",
      "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
      "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
      "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");
}

template <int M, int N>
void kernel_MxN(int kc_adjust, float *packA, float *packB, float *packC, int lda, int ldc, int a_step, int b_step,
                                    svbool_t pg32_0, svbool_t pg32_1, svbool_t pg32_2, svbool_t pg32_3)
{
    float* packAPtr = packA;
    float* packBPtr = packB;
    float* cPtr = packC;

    svfloat32_t va0;
    svfloat32_t vb0, vb1, vb2, vb3;
    svfloat32_t vc00, vc01, vc02, vc03;
    svfloat32_t vc10, vc11, vc12, vc13;
    svfloat32_t vc20, vc21, vc22, vc23;
    svfloat32_t vc30, vc31, vc32, vc33;
    svfloat32_t vc40, vc41, vc42, vc43;
    svfloat32_t vc50, vc51, vc52, vc53;
    svfloat32_t vc60, vc61, vc62, vc63;
    svfloat32_t vc70, vc71, vc72, vc73;
    svfloat32_t vc80, vc81, vc82, vc83;
    svfloat32_t vc90, vc91, vc92, vc93;
    svfloat32_t vc100, vc101, vc102, vc103;
    svfloat32_t vc110, vc111, vc112, vc113;

    svbool_t p32_v0 = pg32_0, p32_v1 = pg32_1, p32_v2 = pg32_2, p32_v3 = pg32_3;

}

template <int M, int N>
void kernel_MxN_for_12x32(int kc_adjust, float *packA, float *packB, float *packC, int lda, int ldc, int a_step, int b_step,
                                    svbool_t pg32_0, svbool_t pg32_1, svbool_t pg32_2, svbool_t pg32_3) {
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

    svbool_t p32_v0 = pg32_0, p32_v1 = pg32_1;

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
            va0 = svdup_n_f32(packAPtr[0 * lda]);
            if (N >= 1 * simd_width)
                vc00 = svmla_f32_x(p32_v0, vc00, va0, vb0);
            if (N >= 2 * simd_width)
                vc01 = svmla_f32_x(p32_v1, vc01, va0, vb1);
        }
        if (M >= 2) {
            va1 = svdup_n_f32(packAPtr[1 * lda]);
            if (N >= 1 * simd_width)
                vc10 = svmla_f32_x(p32_v0, vc10, va1, vb0);
            if (N >= 2 * simd_width)
                vc11 = svmla_f32_x(p32_v1, vc11, va1, vb1);
        }
        if (M >= 3) {
            va2 = svdup_n_f32(packAPtr[2 * lda]);
            if (N >= 1 * simd_width)
                vc20 = svmla_f32_x(p32_v0, vc20, va2, vb0);
            if (N >= 2 * simd_width)
                vc21 = svmla_f32_x(p32_v1, vc21, va2, vb1);
        }
        if (M >= 4) {
            va3 = svdup_n_f32(packAPtr[3 * lda]);
            if (N >= 1 * simd_width)
                vc30 = svmla_f32_x(p32_v0, vc30, va3, vb0);
            if (N >= 2 * simd_width)
                vc31 = svmla_f32_x(p32_v1, vc31, va3, vb1);
        }
        if (M >= 5) {
            va0 = svdup_n_f32(packAPtr[4 * lda]);
            if (N >= 1 * simd_width)
                vc40 = svmla_f32_x(p32_v0, vc40, va0, vb0);
            if (N >= 2 * simd_width)
                vc41 = svmla_f32_x(p32_v1, vc41, va0, vb1);
        }
        if (M >= 6) {
            va1 = svdup_n_f32(packAPtr[5 * lda]);
            if (N >= 1 * simd_width)
                vc50 = svmla_f32_x(p32_v0, vc50, va1, vb0);
            if (N >= 2 * simd_width)
                vc51 = svmla_f32_x(p32_v1, vc51, va1, vb1);
        }
        if (M >= 7) {
            va2 = svdup_n_f32(packAPtr[6 * lda]);
            if (N >= 1 * simd_width)
                vc60 = svmla_f32_x(p32_v0, vc60, va2, vb0);
            if (N >= 2 * simd_width)
                vc61 = svmla_f32_x(p32_v1, vc61, va2, vb1);
        }
        if (M >= 8) {
            va3 = svdup_n_f32(packAPtr[7 * lda]);
            if (N >= 1 * simd_width)
                vc70 = svmla_f32_x(p32_v0, vc70, va3, vb0);
            if (N >= 2 * simd_width)
                vc71 = svmla_f32_x(p32_v1, vc71, va3, vb1);
        }
        if (M >= 9) {
            va0 = svdup_n_f32(packAPtr[8 * lda]);
            if (N >= 1 * simd_width)
                vc80 = svmla_f32_x(p32_v0, vc80, va0, vb0);
            if (N >= 2 * simd_width)
                vc81 = svmla_f32_x(p32_v1, vc81, va0, vb1);
        }
        if (M >= 10) {
            va1 = svdup_n_f32(packAPtr[9 * lda]);
            if (N >= 1 * simd_width)
                vc90 = svmla_f32_x(p32_v0, vc90, va1, vb0);
            if (N >= 2 * simd_width)
                vc91 = svmla_f32_x(p32_v1, vc91, va1, vb1);
        }
        if (M >= 11) {
            va2 = svdup_n_f32(packAPtr[10 * lda]);
            if (N >= 1 * simd_width)
                vc100 = svmla_f32_x(p32_v0, vc100, va2, vb0);
            if (N >= 2 * simd_width)
                vc101 = svmla_f32_x(p32_v1, vc101, va2, vb1);
        }
        if (M >= 12) {
            va3 = svdup_n_f32(packAPtr[11 * lda]);
            if (N >= 1 * simd_width)
                vc110 = svmla_f32_x(p32_v0, vc110, va3, vb0);
            if (N >= 2 * simd_width)
                vc111 = svmla_f32_x(p32_v1, vc111, va3, vb1);
        }

        packAPtr += a_step;
        packBPtr += b_step;
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

void kernel_8x48_no_packa(int kc_adjust, float *packA, float* packB, float *packC, int lda, const int ldc, const int PREFETCH_B, const int PREFETCH_C) {

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

       "lsl    x14, %[lda], #2 \n"

		"mov    x18, 0x1   \n"
        "lsl    x18, x18, 56      \n"
        "orr    %[pC0], %[pC0], x18 \n"
        "orr    %[pC1], %[pC1], x18 \n"
        "orr    %[pC2], %[pC2], x18 \n"
        "orr    %[pC3], %[pC3], x18 \n"
        "orr    %[pC4], %[pC4], x18 \n"
        "orr    %[pC5], %[pC5], x18 \n"
        "orr    %[pC6], %[pC6], x18 \n"
        "orr    %[pC7], %[pC7], x18 \n"

        "mov    x6,  %[pA]   \n"
		"add    x8,  %[pA], x14, lsl #1\n"
		"add    x10, %[pA], x14, lsl #2\n"
        "add    x12, x8,    x14, lsl #2\n"

        "add    x7,  x6,    x14        \n"
        "add    x9,  x8,    x14        \n"
        "add    x11, x10,   x14        \n"
        "add    x13, x12,   x14        \n"

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

		"ld1w	{ z0.s }, p0/z, [%[pB]]                 \n"
	    "ld1w	{ z1.s }, p0/z, [%[pB], #1, MUL VL]     \n"
	    "ld1w	{ z2.s }, p0/z, [%[pB], #2, MUL VL]     \n"

        "ld1rw	{ z3.s }, p0/z, [x6]                \n"
	    "ld1rw	{ z4.s }, p0/z, [x7]                \n"
	    "ld1rw	{ z5.s }, p0/z, [x8]                \n"
	    "ld1rw	{ z6.s }, p0/z, [x9]                \n"
        
		"blt 4f\n"

    "3:"  // main loop head
        "fmla z8.s, p0/M, z0.s, z3.s\n"
        "fmla z9.s, p0/M, z1.s, z3.s\n"
        "sub  x5, x5, #0x2\n"
        "fmla z10.s, p0/M, z2.s, z3.s\n"

        "ld1rw { z3.s }, p0/Z, [x10]\n"
        // "prfm	pldl1keep, [%[pB], #256]                \n"
        "fmla z11.s, p0/M, z0.s, z4.s\n"
        "fmla z12.s, p0/M, z1.s, z4.s\n"
        "fmla z13.s, p0/M, z2.s, z4.s\n"

        "ld1rw { z4.s }, p0/Z, [x11]\n"
        "fmla z14.s, p0/M, z0.s, z5.s\n"
        "fmla z15.s, p0/M, z1.s, z5.s\n"
        "fmla z16.s, p0/M, z2.s, z5.s\n"
        "cmp x5, #0x2\n"

        "ld1rw { z5.s }, p0/Z, [x12]\n"
        "fmla z17.s, p0/M, z0.s, z6.s\n"
        "fmla z18.s, p0/M, z1.s, z6.s\n"
        "fmla z19.s, p0/M, z2.s, z6.s\n"

        "ld1rw { z6.s }, p0/Z, [x13]\n"
        "fmla z20.s, p0/M, z0.s, z3.s\n"
        "fmla z21.s, p0/M, z1.s, z3.s\n"
        "fmla z22.s, p0/M, z2.s, z3.s\n"

        "ld1rw { z3.s }, p0/Z, [x6, #4]\n"
        "add  x6, x6, #8 \n"
        "fmla z23.s, p0/M, z0.s, z4.s\n"
        "fmla z24.s, p0/M, z1.s, z4.s\n"
        "fmla z25.s, p0/M, z2.s, z4.s\n"

        "ld1rw { z4.s }, p0/Z, [x7, #4]\n"
        "add  x7, x7, #8 \n"
        // "prfm	pldl1keep, [%[pB], #256*2]                \n"
        // "prfm	pldl1keep, [%[pA], #512]                \n"
        "fmla z26.s, p0/M, z0.s, z5.s\n"
        "fmla z27.s, p0/M, z1.s, z5.s\n"
        "fmla z28.s, p0/M, z2.s, z5.s\n"

        "ld1rw { z5.s }, p0/Z, [x8, #4]\n"
        "add  x8, x8, #8 \n"
        "fmla z29.s, p0/M, z0.s, z6.s\n"
        "ld1w { z0.s }, p0/Z, [%[pB], #3, MUL VL]\n"
        "fmla z30.s, p0/M, z1.s, z6.s\n"
        "fmla z31.s, p0/M, z2.s, z6.s\n"

        "ld1w { z1.s }, p0/Z, [%[pB], #4, MUL VL]\n"
        "ld1w { z2.s }, p0/Z, [%[pB], #5, MUL VL]\n"
        "fmla z8.s, p0/M, z0.s, z3.s\n"
        "ld1rw { z6.s }, p0/Z, [x9, #4]\n"
        "add  x9, x9, #8 \n"
        "fmla z9.s, p0/M, z1.s, z3.s\n"
        "fmla z10.s, p0/M, z2.s, z3.s\n"

        "fmla z11.s, p0/M, z0.s, z4.s\n"
        "ld1rw { z3.s }, p0/Z, [x10, #4]\n"
        "add  x10, x10, #8 \n"
        "fmla z12.s, p0/M, z1.s, z4.s\n"
        "fmla z13.s, p0/M, z2.s, z4.s\n"

        // "prfm	pldl1keep, [%[pA], #768]                \n"
        "ld1rw { z4.s }, p0/Z, [x11, #4]\n"
        "add  x11, x11, #8 \n"
        "fmla z14.s, p0/M, z0.s, z5.s\n"
        "fmla z15.s, p0/M, z1.s, z5.s\n"
        "add %[pB], %[pB], #384\n"
        "fmla z16.s, p0/M, z2.s, z5.s\n"

        "ld1rw { z5.s }, p0/Z, [x12, #4]\n"
        "add  x12, x12, #8 \n"
        "fmla z17.s, p0/M, z0.s, z6.s\n"
        "fmla z18.s, p0/M, z1.s, z6.s\n"
        "fmla z19.s, p0/M, z2.s, z6.s\n"

        "ld1rw { z6.s }, p0/Z, [x13, #4]\n"
        "add  x13, x13, #8 \n"
        "fmla z20.s, p0/M, z0.s, z3.s\n"
        "fmla z21.s, p0/M, z1.s, z3.s\n"
        "fmla z22.s, p0/M, z2.s, z3.s\n"

        "fmla z23.s, p0/M, z0.s, z4.s\n"
        "ld1rw { z3.s }, p0/Z, [x6]\n"
        "fmla z24.s, p0/M, z1.s, z4.s\n"
        "fmla z25.s, p0/M, z2.s, z4.s\n"

        "ld1rw { z4.s }, p0/Z, [x7]\n"
        "fmla z26.s, p0/M, z0.s, z5.s\n"
        "fmla z27.s, p0/M, z1.s, z5.s\n"
        "fmla z28.s, p0/M, z2.s, z5.s\n"

        "fmla z29.s, p0/M, z0.s, z6.s\n"
        "ld1w { z0.s }, p0/Z, [%[pB]]\n"
        "fmla z30.s, p0/M, z1.s, z6.s\n"
        "fmla z31.s, p0/M, z2.s, z6.s\n"
        
        "ld1w { z1.s }, p0/Z, [%[pB], #1, MUL VL]\n"
        "ld1w { z2.s }, p0/Z, [%[pB], #2, MUL VL]\n"
        "ld1rw { z5.s }, p0/Z, [x8]\n"
        "ld1rw { z6.s }, p0/Z, [x9]\n"
        "bge 3b\n"
        "cbz x5, 5f\n"

        "4:"  // main loop skip
        "fmla z8.s, p0/M, z0.s, z3.s\n"
        "fmla z9.s, p0/M, z1.s, z3.s\n"
        "add %[pB], %[pB], #192\n"
        "fmla z10.s, p0/M, z2.s, z3.s\n"
        "ld1rw { z3.s }, p0/Z, [x10]\n"
        "fmla z11.s, p0/M, z0.s, z4.s\n"
        "fmla z12.s, p0/M, z1.s, z4.s\n"
        "fmla z13.s, p0/M, z2.s, z4.s\n"
        "ld1rw { z4.s }, p0/Z, [x11]\n"
        "fmla z14.s, p0/M, z0.s, z5.s\n"
        "fmla z15.s, p0/M, z1.s, z5.s\n"
        "fmla z16.s, p0/M, z2.s, z5.s\n"
        "ld1rw { z5.s }, p0/Z, [x12]\n"
        "fmla z17.s, p0/M, z0.s, z6.s\n"
        "fmla z18.s, p0/M, z1.s, z6.s\n"
        "fmla z19.s, p0/M, z2.s, z6.s\n"
        "ld1rw { z6.s }, p0/Z, [x13]\n"
        "fmla z20.s, p0/M, z0.s, z3.s\n"
        "fmla z21.s, p0/M, z1.s, z3.s\n"
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
      [lda] "r"(lda),
      [ldc] "r"(ldc),
      [kc]  "r"(kc_adjust),
      [preB]"r"(PREFETCH_B),
      [preC]"r"(PREFETCH_C)
    : "memory", "cc", "p0", "x4", "x5", "x6", "x7", "x8", "x9", "x10", "x11", "x12", "x13", "x14",
      "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
      "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
      "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");
#endif
}

void kernel_8x48_no_packa_packb(int kc_adjust, float *packA, float* packB, float *packC, int lda, const int ldb, const int ldc, const int PREFETCH_C) {

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

        "mov    x15, %[pB]   \n"
		"lsl	x16, %[ldb], #2	 \n"
        "mov    x17, %[pB]   \n"

       "lsl    x14, %[lda], #2 \n"

		"mov    x18, 0x1   \n"
        "lsl    x18, x18, 56      \n"
        "orr    %[pC0], %[pC0], x18 \n"
        "orr    %[pC1], %[pC1], x18 \n"
        "orr    %[pC2], %[pC2], x18 \n"
        "orr    %[pC3], %[pC3], x18 \n"
        "orr    %[pC4], %[pC4], x18 \n"
        "orr    %[pC5], %[pC5], x18 \n"
        "orr    %[pC6], %[pC6], x18 \n"
        "orr    %[pC7], %[pC7], x18 \n"

        "mov    x6,  %[pA]   \n"
		"add    x8,  %[pA], x14, lsl #1\n"
		"add    x10, %[pA], x14, lsl #2\n"
        "add    x12, x8,    x14, lsl #2\n"

        "add    x7,  x6,    x14        \n"
        "add    x9,  x8,    x14        \n"
        "add    x11, x10,   x14        \n"
        "add    x13, x12,   x14        \n"

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

        "prfm	pldl1keep, [x15]              \n"
        "add    x15, x15, x16              \n"
        "prfm	pldl1keep, [x15]              \n"
        "add    x15, x15, x16              \n"
        "prfm	pldl1keep, [x15]              \n"
        "add    x15, x15, x16              \n"
        "prfm	pldl1keep, [x15]              \n"
        "add    x15, x15, x16              \n"
        "prfm	pldl1keep, [x15]              \n"
        "add    x15, x15, x16              \n"
        "prfm	pldl1keep, [x15]              \n"
        "add    x15, x15, x16              \n"
        "prfm	pldl1keep, [x15]              \n"
        "add    x15, x15, x16              \n"
        "prfm	pldl1keep, [x15]              \n"
        "add    x15, x15, x16              \n"
        // "prfm	pldl1keep, [%[pB],256*1]              \n"
        // "prfm	pldl1keep, [%[pB],256*2]              \n"
        // "prfm	pldl1keep, [%[pB],256*3]              \n"
        // "prfm	pldl1keep, [%[pB],256*4]              \n"
        // "prfm	pldl1keep, [%[pB],256*5]              \n"
        // "prfm	pldl1keep, [%[pB],256*6]              \n"
        // "prfm	pldl1keep, [%[pB],256*7]              \n"
        // "prfm	pldl1keep, [%[pB],256*8]              \n"

		"ld1w	{ z0.s }, p0/z, [x17]                 \n"
	    "ld1w	{ z1.s }, p0/z, [x17, #1, MUL VL]     \n"
	    "ld1w	{ z2.s }, p0/z, [x17, #2, MUL VL]     \n"


        "ld1rw	{ z3.s }, p0/z, [x6]                \n"
	    "ld1rw	{ z4.s }, p0/z, [x7]                \n"
	    "ld1rw	{ z5.s }, p0/z, [x8]                \n"
	    "ld1rw	{ z6.s }, p0/z, [x9]                \n"
        
		"blt 4f\n"

    "3:"  // main loop head
        "fmla z8.s, p0/M, z0.s, z3.s\n"
        "fmla z9.s, p0/M, z1.s, z3.s\n"
        "sub  x5, x5, #0x2\n"
        "fmla z10.s, p0/M, z2.s, z3.s\n"

        "ld1rw { z3.s }, p0/Z, [x10]\n"
        "prfm	pldl1keep, [x15]              \n"
        "add    x15, x15, x16              \n"
        // "prfm	pldl1keep, [x17, #256]                \n"
        "fmla z11.s, p0/M, z0.s, z4.s\n"
        "fmla z12.s, p0/M, z1.s, z4.s\n"
        "fmla z13.s, p0/M, z2.s, z4.s\n"

        "ld1rw { z4.s }, p0/Z, [x11]\n"
        "fmla z14.s, p0/M, z0.s, z5.s\n"
        "fmla z15.s, p0/M, z1.s, z5.s\n"
        "fmla z16.s, p0/M, z2.s, z5.s\n"
        "cmp x5, #0x2\n"

        "ld1rw { z5.s }, p0/Z, [x12]\n"
        "fmla z17.s, p0/M, z0.s, z6.s\n"
        "fmla z18.s, p0/M, z1.s, z6.s\n"
        "fmla z19.s, p0/M, z2.s, z6.s\n"

        "ld1rw { z6.s }, p0/Z, [x13]\n"
        "add    x17, x17, x16            \n"
        "fmla z20.s, p0/M, z0.s, z3.s\n"
        "fmla z21.s, p0/M, z1.s, z3.s\n"
        "fmla z22.s, p0/M, z2.s, z3.s\n"

        "ld1rw { z3.s }, p0/Z, [x6, #4]\n"
        "add  x6, x6, #8 \n"
        "fmla z23.s, p0/M, z0.s, z4.s\n"
        "fmla z24.s, p0/M, z1.s, z4.s\n"
        "fmla z25.s, p0/M, z2.s, z4.s\n"

        "ld1rw { z4.s }, p0/Z, [x7, #4]\n"
        "add  x7, x7, #8 \n"
        // "prfm	pldl1keep, [x17, #256*2]                \n"
        // "prfm	pldl1keep, [%[pA], #512]                \n"
        "fmla z26.s, p0/M, z0.s, z5.s\n"
        "fmla z27.s, p0/M, z1.s, z5.s\n"
        "fmla z28.s, p0/M, z2.s, z5.s\n"

        "ld1rw { z5.s }, p0/Z, [x8, #4]\n"
        "add  x8, x8, #8 \n"
        "fmla z29.s, p0/M, z0.s, z6.s\n"
        "ld1w { z0.s }, p0/Z, [x17]\n"
        "fmla z30.s, p0/M, z1.s, z6.s\n"
        "fmla z31.s, p0/M, z2.s, z6.s\n"

        "ld1w { z1.s }, p0/Z, [x17, #1, MUL VL]\n"
        "ld1w { z2.s }, p0/Z, [x17, #2, MUL VL]\n"
        "fmla z8.s, p0/M, z0.s, z3.s\n"
        "ld1rw { z6.s }, p0/Z, [x9, #4]\n"
        "add  x9, x9, #8 \n"
        "fmla z9.s, p0/M, z1.s, z3.s\n"
        "fmla z10.s, p0/M, z2.s, z3.s\n"

        "fmla z11.s, p0/M, z0.s, z4.s\n"
        "ld1rw { z3.s }, p0/Z, [x10, #4]\n"
        "add  x10, x10, #8 \n"
        "fmla z12.s, p0/M, z1.s, z4.s\n"
        "fmla z13.s, p0/M, z2.s, z4.s\n"

        "prfm	pldl1keep, [x15]              \n"
        "add    x15, x15, x16              \n"
        // "prfm	pldl1keep, [%[pA], #768]                \n"
        "ld1rw { z4.s }, p0/Z, [x11, #4]\n"
        "add  x11, x11, #8 \n"
        "fmla z14.s, p0/M, z0.s, z5.s\n"
        "fmla z15.s, p0/M, z1.s, z5.s\n"
        "add x17, x17, x16   \n"
        "fmla z16.s, p0/M, z2.s, z5.s\n"

        "ld1rw { z5.s }, p0/Z, [x12, #4]\n"
        "add  x12, x12, #8 \n"
        "fmla z17.s, p0/M, z0.s, z6.s\n"
        "fmla z18.s, p0/M, z1.s, z6.s\n"
        "fmla z19.s, p0/M, z2.s, z6.s\n"

        "ld1rw { z6.s }, p0/Z, [x13, #4]\n"
        "add  x13, x13, #8 \n"
        "fmla z20.s, p0/M, z0.s, z3.s\n"
        "fmla z21.s, p0/M, z1.s, z3.s\n"
        "fmla z22.s, p0/M, z2.s, z3.s\n"

        "fmla z23.s, p0/M, z0.s, z4.s\n"
        "ld1rw { z3.s }, p0/Z, [x6]\n"
        "fmla z24.s, p0/M, z1.s, z4.s\n"
        "fmla z25.s, p0/M, z2.s, z4.s\n"

        "ld1rw { z4.s }, p0/Z, [x7]\n"
        "fmla z26.s, p0/M, z0.s, z5.s\n"
        "fmla z27.s, p0/M, z1.s, z5.s\n"
        "fmla z28.s, p0/M, z2.s, z5.s\n"

        "fmla z29.s, p0/M, z0.s, z6.s\n"
        "ld1w { z0.s }, p0/Z, [x17]\n"
        "fmla z30.s, p0/M, z1.s, z6.s\n"
        "fmla z31.s, p0/M, z2.s, z6.s\n"
        
        "ld1w { z1.s }, p0/Z, [x17, #1, MUL VL]\n"
        "ld1w { z2.s }, p0/Z, [x17, #2, MUL VL]\n"
        "ld1rw { z5.s }, p0/Z, [x8]\n"
        "ld1rw { z6.s }, p0/Z, [x9]\n"
        "bge 3b\n"
        "cbz x5, 5f\n"

        "4:"  // main loop skip
        "fmla z8.s, p0/M, z0.s, z3.s\n"
        "fmla z9.s, p0/M, z1.s, z3.s\n"
        // "add x17, x17, x16\n"
        "fmla z10.s, p0/M, z2.s, z3.s\n"
        "ld1rw { z3.s }, p0/Z, [x10]\n"
        "fmla z11.s, p0/M, z0.s, z4.s\n"
        "fmla z12.s, p0/M, z1.s, z4.s\n"
        "fmla z13.s, p0/M, z2.s, z4.s\n"
        "ld1rw { z4.s }, p0/Z, [x11]\n"
        "fmla z14.s, p0/M, z0.s, z5.s\n"
        "fmla z15.s, p0/M, z1.s, z5.s\n"
        "fmla z16.s, p0/M, z2.s, z5.s\n"
        "ld1rw { z5.s }, p0/Z, [x12]\n"
        "fmla z17.s, p0/M, z0.s, z6.s\n"
        "fmla z18.s, p0/M, z1.s, z6.s\n"
        "fmla z19.s, p0/M, z2.s, z6.s\n"
        "ld1rw { z6.s }, p0/Z, [x13]\n"
        "fmla z20.s, p0/M, z0.s, z3.s\n"
        "fmla z21.s, p0/M, z1.s, z3.s\n"
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
        // "ld1w { z0.s }, p0/Z, [x17]\n"
        // "ld1w { z1.s }, p0/Z, [x17, #1, MUL VL]\n"
        // "ld1w { z2.s }, p0/Z, [x17, #2, MUL VL]\n"
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
        // "add x17, x17, #192\n"
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
      [lda] "r"(lda),
      [ldb] "r"(ldb),
      [ldc] "r"(ldc),
      [kc]  "r"(kc_adjust),
      [preC]"r"(PREFETCH_C)
    : "memory", "cc", "p0", "x4", "x5", "x6", "x7", "x8", "x9", "x10", "x11", "x12", "x13", "x14", "x15", "x16", "x17",
      "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
      "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
      "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");
#endif
}

void kernel_8x48_no_packa_v1(int kc_adjust, float *packA, float* packB, float *packC, int lda, const int ldc, const int PREFETCH_B, const int PREFETCH_C) {

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

       "lsl    x14, %[lda], #2 \n"

		"mov    x18, 0x1   \n"
        "lsl    x18, x18, 56      \n"
        "orr    %[pC0], %[pC0], x18 \n"
        "orr    %[pC1], %[pC1], x18 \n"
        "orr    %[pC2], %[pC2], x18 \n"
        "orr    %[pC3], %[pC3], x18 \n"
        "orr    %[pC4], %[pC4], x18 \n"
        "orr    %[pC5], %[pC5], x18 \n"
        "orr    %[pC6], %[pC6], x18 \n"
        "orr    %[pC7], %[pC7], x18 \n"

        "eor z8.s,  p0/m, z8.s,  z8.s    \n"
        "eor z9.s,  p0/m, z9.s,  z9.s    \n"
        "eor z10.s, p0/m, z10.s, z10.s   \n"
        "eor z11.s, p0/m, z11.s, z11.s   \n"

        "eor z12.s, p0/m, z12.s, z12.s   \n"
        "eor z13.s, p0/m, z13.s, z13.s   \n"
        "eor z14.s, p0/m, z14.s, z14.s   \n"
        "eor z15.s, p0/m, z15.s, z15.s   \n"

        "eor z16.s, p0/m, z16.s, z16.s   \n"
        "eor z17.s, p0/m, z17.s, z17.s   \n"
        "eor z18.s, p0/m, z18.s, z18.s   \n"
        "eor z19.s, p0/m, z19.s, z19.s   \n"

        "eor z20.s, p0/m, z20.s, z20.s   \n"
        "eor z21.s, p0/m, z21.s, z21.s   \n"
        "eor z22.s, p0/m, z22.s, z22.s   \n"
        "eor z23.s, p0/m, z23.s, z23.s   \n"

        "eor z24.s, p0/m, z24.s, z24.s   \n"
        "eor z25.s, p0/m, z25.s, z25.s   \n"
        "eor z26.s, p0/m, z26.s, z26.s   \n"
        "eor z27.s, p0/m, z27.s, z27.s   \n"

        "eor z28.s, p0/m, z28.s, z28.s   \n"
        "eor z29.s, p0/m, z29.s, z29.s   \n"
        "eor z30.s, p0/m, z30.s, z30.s   \n"
        "eor z31.s, p0/m, z31.s, z31.s   \n"

        "mov    x6,  %[pA]   \n"
		"add    x8,  %[pA], x14, lsl #1\n"
		"add    x10, %[pA], x14, lsl #2\n"
        "add    x12, x8,    x14, lsl #2\n"

        "add    x7,  x6,    x14        \n"
        "add    x9,  x8,    x14        \n"
        "add    x11, x10,   x14        \n"
        "add    x13, x12,   x14        \n"

        "cmp x5, #0x2\n"

        "prfm	pldl1keep, [%[pC0]] \n"
		"prfm	pldl1keep, [%[pC1]] \n"
		"prfm	pldl1keep, [%[pC2]] \n"
		"prfm	pldl1keep, [%[pC3]] \n"
		"prfm	pldl1keep, [%[pC4]] \n"
		"prfm	pldl1keep, [%[pC5]] \n"
		"prfm	pldl1keep, [%[pC6]] \n"
		"prfm	pldl1keep, [%[pC7]] \n"

		"ld1w	{ z0.s }, p0/z, [%[pB]]                 \n"
	    "ld1w	{ z1.s }, p0/z, [%[pB], #1, MUL VL]     \n"
	    "ld1w	{ z2.s }, p0/z, [%[pB], #2, MUL VL]     \n"

        "ld1rw	{ z3.s }, p0/z, [x6]                \n"
	    "ld1rw	{ z4.s }, p0/z, [x7]                \n"
	    "ld1rw	{ z5.s }, p0/z, [x8]                \n"
	    "ld1rw	{ z6.s }, p0/z, [x9]                \n"
        
		"blt 4f\n"

    "3:"  // main loop head
        "fmla z8.s, p0/M, z0.s, z3.s\n"
        "fmla z9.s, p0/M, z1.s, z3.s\n"
        "sub  x5, x5, #0x2\n"
        "fmla z10.s, p0/M, z2.s, z3.s\n"

        "ld1rw { z3.s }, p0/Z, [x10]\n"
        // "prfm	pldl1keep, [%[pB], #256]                \n"
        "fmla z11.s, p0/M, z0.s, z4.s\n"
        "fmla z12.s, p0/M, z1.s, z4.s\n"
        "fmla z13.s, p0/M, z2.s, z4.s\n"

        "ld1rw { z4.s }, p0/Z, [x11]\n"
        "fmla z14.s, p0/M, z0.s, z5.s\n"
        "fmla z15.s, p0/M, z1.s, z5.s\n"
        "fmla z16.s, p0/M, z2.s, z5.s\n"
        "cmp x5, #0x2\n"

        "ld1rw { z5.s }, p0/Z, [x12]\n"
        "fmla z17.s, p0/M, z0.s, z6.s\n"
        "fmla z18.s, p0/M, z1.s, z6.s\n"
        "fmla z19.s, p0/M, z2.s, z6.s\n"

        "ld1rw { z6.s }, p0/Z, [x13]\n"
        "fmla z20.s, p0/M, z0.s, z3.s\n"
        "fmla z21.s, p0/M, z1.s, z3.s\n"
        "fmla z22.s, p0/M, z2.s, z3.s\n"

        "ld1rw { z3.s }, p0/Z, [x6, #4]\n"
        "add  x6, x6, #8 \n"
        "fmla z23.s, p0/M, z0.s, z4.s\n"
        "fmla z24.s, p0/M, z1.s, z4.s\n"
        "fmla z25.s, p0/M, z2.s, z4.s\n"

        "ld1rw { z4.s }, p0/Z, [x7, #4]\n"
        "add  x7, x7, #8 \n"
        // "prfm	pldl1keep, [%[pB], #256*2]                \n"
        // "prfm	pldl1keep, [%[pA], #512]                \n"
        "fmla z26.s, p0/M, z0.s, z5.s\n"
        "fmla z27.s, p0/M, z1.s, z5.s\n"
        "fmla z28.s, p0/M, z2.s, z5.s\n"

        "ld1rw { z5.s }, p0/Z, [x8, #4]\n"
        "add  x8, x8, #8 \n"
        "fmla z29.s, p0/M, z0.s, z6.s\n"
        "ld1w { z0.s }, p0/Z, [%[pB], #3, MUL VL]\n"
        "fmla z30.s, p0/M, z1.s, z6.s\n"
        "fmla z31.s, p0/M, z2.s, z6.s\n"

        "ld1w { z1.s }, p0/Z, [%[pB], #4, MUL VL]\n"
        "ld1w { z2.s }, p0/Z, [%[pB], #5, MUL VL]\n"
        "fmla z8.s, p0/M, z0.s, z3.s\n"
        "ld1rw { z6.s }, p0/Z, [x9, #4]\n"
        "add  x9, x9, #8 \n"
        "fmla z9.s, p0/M, z1.s, z3.s\n"
        "fmla z10.s, p0/M, z2.s, z3.s\n"

        "fmla z11.s, p0/M, z0.s, z4.s\n"
        "ld1rw { z3.s }, p0/Z, [x10, #4]\n"
        "add  x10, x10, #8 \n"
        "fmla z12.s, p0/M, z1.s, z4.s\n"
        "fmla z13.s, p0/M, z2.s, z4.s\n"

        // "prfm	pldl1keep, [%[pA], #768]                \n"
        "ld1rw { z4.s }, p0/Z, [x11, #4]\n"
        "add  x11, x11, #8 \n"
        "fmla z14.s, p0/M, z0.s, z5.s\n"
        "fmla z15.s, p0/M, z1.s, z5.s\n"
        "add %[pB], %[pB], #384\n"
        "fmla z16.s, p0/M, z2.s, z5.s\n"

        "ld1rw { z5.s }, p0/Z, [x12, #4]\n"
        "add  x12, x12, #8 \n"
        "fmla z17.s, p0/M, z0.s, z6.s\n"
        "fmla z18.s, p0/M, z1.s, z6.s\n"
        "fmla z19.s, p0/M, z2.s, z6.s\n"

        "ld1rw { z6.s }, p0/Z, [x13, #4]\n"
        "add  x13, x13, #8 \n"
        "fmla z20.s, p0/M, z0.s, z3.s\n"
        "fmla z21.s, p0/M, z1.s, z3.s\n"
        "fmla z22.s, p0/M, z2.s, z3.s\n"

        "fmla z23.s, p0/M, z0.s, z4.s\n"
        "ld1rw { z3.s }, p0/Z, [x6]\n"
        "fmla z24.s, p0/M, z1.s, z4.s\n"
        "fmla z25.s, p0/M, z2.s, z4.s\n"

        "ld1rw { z4.s }, p0/Z, [x7]\n"
        "fmla z26.s, p0/M, z0.s, z5.s\n"
        "fmla z27.s, p0/M, z1.s, z5.s\n"
        "fmla z28.s, p0/M, z2.s, z5.s\n"

        "fmla z29.s, p0/M, z0.s, z6.s\n"
        "ld1w { z0.s }, p0/Z, [%[pB]]\n"
        "fmla z30.s, p0/M, z1.s, z6.s\n"
        "fmla z31.s, p0/M, z2.s, z6.s\n"
        
        "ld1w { z1.s }, p0/Z, [%[pB], #1, MUL VL]\n"
        "ld1w { z2.s }, p0/Z, [%[pB], #2, MUL VL]\n"
        "ld1rw { z5.s }, p0/Z, [x8]\n"
        "ld1rw { z6.s }, p0/Z, [x9]\n"
        "bge 3b\n"
        "cbz x5, 5f\n"

        "4:"  // main loop skip
        "fmla z8.s, p0/M, z0.s, z3.s\n"
        "fmla z9.s, p0/M, z1.s, z3.s\n"
        "add %[pB], %[pB], #192\n"
        "fmla z10.s, p0/M, z2.s, z3.s\n"
        "ld1rw { z3.s }, p0/Z, [x10]\n"
        "fmla z11.s, p0/M, z0.s, z4.s\n"
        "fmla z12.s, p0/M, z1.s, z4.s\n"
        "fmla z13.s, p0/M, z2.s, z4.s\n"
        "ld1rw { z4.s }, p0/Z, [x11]\n"
        "fmla z14.s, p0/M, z0.s, z5.s\n"
        "fmla z15.s, p0/M, z1.s, z5.s\n"
        "fmla z16.s, p0/M, z2.s, z5.s\n"
        "ld1rw { z5.s }, p0/Z, [x12]\n"
        "fmla z17.s, p0/M, z0.s, z6.s\n"
        "fmla z18.s, p0/M, z1.s, z6.s\n"
        "fmla z19.s, p0/M, z2.s, z6.s\n"
        "ld1rw { z6.s }, p0/Z, [x13]\n"
        "fmla z20.s, p0/M, z0.s, z3.s\n"
        "fmla z21.s, p0/M, z1.s, z3.s\n"
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
        "ld1w	{ z0.s },  p0/z, [%[pC0]]      \n"
        "ld1w	{ z1.s },  p0/z, [%[pC1]]      \n"
        "ld1w	{ z2.s },  p0/z, [%[pC2]]      \n"
        "ld1w	{ z3.s },  p0/z, [%[pC3]]      \n"
        "ld1w	{ z4.s },  p0/z, [%[pC4]]      \n"
        "ld1w	{ z5.s },  p0/z, [%[pC5]]      \n"
        "ld1w	{ z6.s },  p0/z, [%[pC6]]      \n"
        "ld1w	{ z7.s },  p0/z, [%[pC7]]      \n"

        "fadd   z0.s, p0/M, z0.s, z8.s   \n"
        "fadd   z1.s, p0/M, z1.s, z11.s   \n"
        "fadd   z2.s, p0/M, z2.s, z14.s   \n"
        "fadd   z3.s, p0/M, z3.s, z17.s   \n"
        "fadd   z4.s, p0/M, z4.s, z20.s   \n"
        "fadd   z5.s, p0/M, z5.s, z23.s   \n"
        "fadd   z6.s, p0/M, z6.s, z26.s   \n"
        "fadd   z7.s, p0/M, z7.s, z29.s   \n"

        "st1w	{ z0.s }, p0, [%[pC0]]      \n"
        "st1w	{ z1.s }, p0, [%[pC1]]      \n"
        "st1w	{ z2.s }, p0, [%[pC2]]      \n"
        "st1w	{ z3.s }, p0, [%[pC3]]      \n"
        "st1w	{ z4.s }, p0, [%[pC4]]      \n"
        "st1w	{ z5.s }, p0, [%[pC5]]      \n"
        "st1w	{ z6.s }, p0, [%[pC6]]      \n"
        "st1w	{ z7.s }, p0, [%[pC7]]      \n"

        "ld1w	{ z0.s },  p0/z, [%[pC0], #1, MUL VL]      \n"
        "ld1w	{ z1.s },  p0/z, [%[pC1], #1, MUL VL]      \n"
        "ld1w	{ z2.s },  p0/z, [%[pC2], #1, MUL VL]      \n"
        "ld1w	{ z3.s },  p0/z, [%[pC3], #1, MUL VL]      \n"
        "ld1w	{ z4.s },  p0/z, [%[pC4], #1, MUL VL]      \n"
        "ld1w	{ z5.s },  p0/z, [%[pC5], #1, MUL VL]      \n"
        "ld1w	{ z6.s },  p0/z, [%[pC6], #1, MUL VL]      \n"
        "ld1w	{ z7.s },  p0/z, [%[pC7], #1, MUL VL]      \n"

        "fadd   z0.s, p0/M, z0.s, z9.s   \n"
        "fadd   z1.s, p0/M, z1.s, z12.s   \n"
        "fadd   z2.s, p0/M, z2.s, z15.s   \n"
        "fadd   z3.s, p0/M, z3.s, z18.s   \n"
        "fadd   z4.s, p0/M, z4.s, z21.s   \n"
        "fadd   z5.s, p0/M, z5.s, z24.s   \n"
        "fadd   z6.s, p0/M, z6.s, z27.s   \n"
        "fadd   z7.s, p0/M, z7.s, z30.s   \n"

        "st1w	{ z0.s }, p0, [%[pC0], #1, MUL VL]      \n"
        "st1w	{ z1.s }, p0, [%[pC1], #1, MUL VL]      \n"
        "st1w	{ z2.s }, p0, [%[pC2], #1, MUL VL]      \n"
        "st1w	{ z3.s }, p0, [%[pC3], #1, MUL VL]      \n"
        "st1w	{ z4.s }, p0, [%[pC4], #1, MUL VL]      \n"
        "st1w	{ z5.s }, p0, [%[pC5], #1, MUL VL]      \n"
        "st1w	{ z6.s }, p0, [%[pC6], #1, MUL VL]      \n"
        "st1w	{ z7.s }, p0, [%[pC7], #1, MUL VL]      \n"

        "ld1w	{ z0.s },  p0/z, [%[pC0], #2, MUL VL]      \n"
        "ld1w	{ z1.s },  p0/z, [%[pC1], #2, MUL VL]      \n"
        "ld1w	{ z2.s },  p0/z, [%[pC2], #2, MUL VL]      \n"
        "ld1w	{ z3.s },  p0/z, [%[pC3], #2, MUL VL]      \n"
        "ld1w	{ z4.s },  p0/z, [%[pC4], #2, MUL VL]      \n"
        "ld1w	{ z5.s },  p0/z, [%[pC5], #2, MUL VL]      \n"
        "ld1w	{ z6.s },  p0/z, [%[pC6], #2, MUL VL]      \n"
        "ld1w	{ z7.s },  p0/z, [%[pC7], #2, MUL VL]      \n"

        "fadd   z0.s, p0/M, z0.s, z10.s   \n"
        "fadd   z1.s, p0/M, z1.s, z13.s   \n"
        "fadd   z2.s, p0/M, z2.s, z16.s   \n"
        "fadd   z3.s, p0/M, z3.s, z19.s   \n"
        "fadd   z4.s, p0/M, z4.s, z22.s   \n"
        "fadd   z5.s, p0/M, z5.s, z25.s   \n"
        "fadd   z6.s, p0/M, z6.s, z28.s   \n"
        "fadd   z7.s, p0/M, z7.s, z31.s   \n"

        "st1w	{ z0.s }, p0, [%[pC0], #2, MUL VL]      \n"
        "st1w	{ z1.s }, p0, [%[pC1], #2, MUL VL]      \n"
        "st1w	{ z2.s }, p0, [%[pC2], #2, MUL VL]      \n"
        "st1w	{ z3.s }, p0, [%[pC3], #2, MUL VL]      \n"
        "st1w	{ z4.s }, p0, [%[pC4], #2, MUL VL]      \n"
        "st1w	{ z5.s }, p0, [%[pC5], #2, MUL VL]      \n"
        "st1w	{ z6.s }, p0, [%[pC6], #2, MUL VL]      \n"
        "st1w	{ z7.s }, p0, [%[pC7], #2, MUL VL]      \n"



        // "ld1w	{ z0.s },  p0/z, [%[pC0]]      \n"
        // "ld1w	{ z1.s },  p0/z, [%[pC0], #1, MUL VL]    \n"
        // "ld1w	{ z2.s },  p0/z, [%[pC0], #2, MUL VL]    \n"
        // "ld1w	{ z3.s },  p0/z, [%[pC1]]      \n"
        // "ld1w	{ z4.s },  p0/z, [%[pC1], #1, MUL VL]    \n"
        // "ld1w	{ z5.s },  p0/z, [%[pC1], #2, MUL VL]    \n"
        

        // "fadd   z0.s, p0/M, z0.s, z8.s   \n"
        // "fadd   z1.s, p0/M, z1.s, z9.s   \n"
        // "fadd   z2.s, p0/M, z2.s, z10.s  \n"
        // "fadd   z3.s, p0/M, z3.s, z11.s  \n"
        // "fadd   z4.s, p0/M, z4.s, z12.s  \n"
        // "fadd   z5.s, p0/M, z5.s, z13.s  \n"

        // "st1w	{ z0.s }, p0, [%[pC0]]      \n"
        // "st1w	{ z1.s }, p0, [%[pC0], #1, MUL VL]    \n"
        // "st1w	{ z2.s }, p0, [%[pC0], #2, MUL VL]    \n"
        // "st1w	{ z3.s }, p0, [%[pC1]]      \n"
        // "st1w	{ z4.s }, p0, [%[pC1], #1, MUL VL]    \n"
        // "st1w	{ z5.s }, p0, [%[pC1], #2, MUL VL]    \n"

        // "ld1w	{ z0.s },  p0/z, [%[pC2]]      \n"
        // "ld1w	{ z1.s },  p0/z, [%[pC2], #1, MUL VL]    \n"
        // "ld1w	{ z2.s },  p0/z, [%[pC2], #2, MUL VL]    \n"
        // "ld1w	{ z3.s },  p0/z, [%[pC3]]      \n"
        // "ld1w	{ z4.s },  p0/z, [%[pC3], #1, MUL VL]    \n"
        // "ld1w	{ z5.s },  p0/z, [%[pC3], #2, MUL VL]    \n"

        // "fadd   z0.s, p0/M, z0.s, z14.s  \n"
        // "fadd   z1.s, p0/M, z1.s, z15.s  \n"
        // "fadd   z2.s, p0/M, z2.s, z16.s  \n"
        // "fadd   z3.s, p0/M, z3.s, z17.s  \n"
        // "fadd   z4.s, p0/M, z4.s, z18.s  \n"
        // "fadd   z5.s, p0/M, z5.s, z19.s  \n"

        // "st1w	{ z0.s }, p0, [%[pC2]]      \n"
        // "st1w	{ z1.s }, p0, [%[pC2], #1, MUL VL]    \n"
        // "st1w	{ z2.s }, p0, [%[pC2], #2, MUL VL]    \n"
        // "st1w	{ z3.s }, p0, [%[pC3]]      \n"
        // "st1w	{ z4.s }, p0, [%[pC3], #1, MUL VL]    \n"
        // "st1w	{ z5.s }, p0, [%[pC3], #2, MUL VL]    \n"

        // "ld1w	{ z0.s },  p0/z, [%[pC4]]      \n"
        // "ld1w	{ z1.s },  p0/z, [%[pC4], #1, MUL VL]    \n"
        // "ld1w	{ z2.s },  p0/z, [%[pC4], #2, MUL VL]    \n"
        // "ld1w	{ z3.s },  p0/z, [%[pC5]]      \n"
        // "ld1w	{ z4.s },  p0/z, [%[pC5], #1, MUL VL]    \n"
        // "ld1w	{ z5.s },  p0/z, [%[pC5], #2, MUL VL]    \n"

        // "ld1w	{ z6.s },  p0/z, [%[pC6]]      \n"
        // "ld1w	{ z7.s },  p0/z, [%[pC6], #1, MUL VL]    \n"
        // "ld1w	{ z8.s },  p0/z, [%[pC6], #2, MUL VL]    \n"
        // "ld1w	{ z9.s },  p0/z, [%[pC7]]      \n"
        // "ld1w	{ z10.s }, p0/z, [%[pC7], #1, MUL VL]    \n"
        // "ld1w	{ z11.s }, p0/z, [%[pC7], #2, MUL VL]    \n"

        // "fadd   z0.s, p0/M, z0.s, z20.s  \n"
        // "fadd   z1.s, p0/M, z1.s, z21.s  \n"
        // "fadd   z2.s, p0/M, z2.s, z22.s  \n"
        // "fadd   z3.s, p0/M, z3.s, z23.s  \n"
        // "fadd   z4.s, p0/M, z4.s, z24.s  \n"
        // "fadd   z5.s, p0/M, z5.s, z25.s  \n"

        // "fadd   z6.s, p0/M, z6.s, z26.s  \n"
        // "fadd   z7.s, p0/M, z7.s, z27.s  \n"
        // "fadd   z8.s, p0/M, z8.s, z28.s  \n"
        // "fadd   z9.s, p0/M, z9.s, z29.s  \n"
        // "fadd   z10.s, p0/M, z10.s, z30.s  \n"
        // "fadd   z11.s, p0/M, z11.s, z31.s  \n" 

        // "st1w	{ z0.s }, p0, [%[pC4]]      \n"
        // "st1w	{ z1.s }, p0, [%[pC4], #1, MUL VL]    \n"
        // "st1w	{ z2.s }, p0, [%[pC4], #2, MUL VL]    \n"
        // "st1w	{ z3.s }, p0, [%[pC5]]      \n"
        // "st1w	{ z4.s }, p0, [%[pC5], #1, MUL VL]    \n"
        // "st1w	{ z5.s }, p0, [%[pC5], #2, MUL VL]    \n"

        // "st1w	{ z6.s }, p0, [%[pC6]]      \n"
        // "st1w	{ z7.s }, p0, [%[pC6], #1, MUL VL]    \n"
        // "st1w	{ z8.s }, p0, [%[pC6], #2, MUL VL]    \n"
        // "st1w	{ z9.s }, p0, [%[pC7]]      \n"
        // "st1w	{ z10.s }, p0, [%[pC7], #1, MUL VL]    \n"
        // "st1w	{ z11.s }, p0, [%[pC7], #2, MUL VL]    \n"


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
      [lda] "r"(lda),
      [ldc] "r"(ldc),
      [kc]  "r"(kc_adjust),
      [preB]"r"(PREFETCH_B),
      [preC]"r"(PREFETCH_C)
    : "memory", "cc", "p0", "x4", "x5", "x6", "x7", "x8", "x9", "x10", "x11", "x12", "x13", "x14",
      "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
      "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
      "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");
#endif
}

template <int M, int N>
void kernel_MxN_for_8x48(int kc_adjust, float *packA, float *packB, float *packC, int lda, int ldc, int a_step, int b_step,
                            svbool_t pg32_0, svbool_t pg32_1, svbool_t pg32_2, svbool_t pg32_3) {
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

    svbool_t p32_v0 = pg32_0, p32_v1 = pg32_1, p32_v2 = pg32_2;

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
            va0 = svdup_n_f32(packAPtr[0 * lda]);
            if (N >= 1 * simd_width)
                vc00 = svmla_f32_x(p32_v0, vc00, va0, vb0);
            if (N >= 2 * simd_width)
                vc01 = svmla_f32_x(p32_v1, vc01, va0, vb1);
            if (N >= 3 * simd_width)
                vc02 = svmla_f32_x(p32_v2, vc02, va0, vb2);
        }
        if (M >= 2) {
            va1 = svdup_n_f32(packAPtr[1 * lda]);
            if (N >= 1 * simd_width)
                vc10 = svmla_f32_x(p32_v0, vc10, va1, vb0);
            if (N >= 2 * simd_width)
                vc11 = svmla_f32_x(p32_v1, vc11, va1, vb1);
            if (N >= 3 * simd_width)
                vc12 = svmla_f32_x(p32_v2, vc12, va1, vb2);
        }
        if (M >= 3) {
            va2 = svdup_n_f32(packAPtr[2 * lda]);
            if (N >= 1 * simd_width)
                vc20 = svmla_f32_x(p32_v0, vc20, va2, vb0);
            if (N >= 2 * simd_width)
                vc21 = svmla_f32_x(p32_v1, vc21, va2, vb1);
            if (N >= 3 * simd_width)
                vc22 = svmla_f32_x(p32_v2, vc22, va2, vb2);
        }
        if (M >= 4) {
            va3 = svdup_n_f32(packAPtr[3 * lda]);
            if (N >= 1 * simd_width)
                vc30 = svmla_f32_x(p32_v0, vc30, va3, vb0);
            if (N >= 2 * simd_width)
                vc31 = svmla_f32_x(p32_v1, vc31, va3, vb1);
            if (N >= 3 * simd_width)
                vc32 = svmla_f32_x(p32_v2, vc32, va3, vb2);
        }
        if (M >= 5) {
            va0 = svdup_n_f32(packAPtr[4 * lda]);
            if (N >= 1 * simd_width)
                vc40 = svmla_f32_x(p32_v0, vc40, va0, vb0);
            if (N >= 2 * simd_width)
                vc41 = svmla_f32_x(p32_v1, vc41, va0, vb1);
            if (N >= 3 * simd_width)
                vc42 = svmla_f32_x(p32_v2, vc42, va0, vb2);
        }
        if (M >= 6) {
            va1 = svdup_n_f32(packAPtr[5 * lda]);
            if (N >= 1 * simd_width)
                vc50 = svmla_f32_x(p32_v0, vc50, va1, vb0);
            if (N >= 2 * simd_width)
                vc51 = svmla_f32_x(p32_v1, vc51, va1, vb1);
            if (N >= 3 * simd_width)
                vc52 = svmla_f32_x(p32_v2, vc52, va1, vb2);
        }
        if (M >= 7) {
            va2 = svdup_n_f32(packAPtr[6 * lda]);
            if (N >= 1 * simd_width)
                vc60 = svmla_f32_x(p32_v0, vc60, va2, vb0);
            if (N >= 2 * simd_width)
                vc61 = svmla_f32_x(p32_v1, vc61, va2, vb1);
            if (N >= 3 * simd_width)
                vc62 = svmla_f32_x(p32_v2, vc62, va2, vb2);
        }
        if (M >= 8) {
            va3 = svdup_n_f32(packAPtr[7 * lda]);
            if (N >= 1 * simd_width)
                vc70 = svmla_f32_x(p32_v0, vc70, va3, vb0);
            if (N >= 2 * simd_width)
                vc71 = svmla_f32_x(p32_v1, vc71, va3, vb1);
            if (N >= 3 * simd_width)
                vc72 = svmla_f32_x(p32_v2, vc72, va3, vb2);
        }

        packAPtr += a_step;
        packBPtr += b_step;
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

// new version, use broadcast and fmla and loop unroll by 2
void kernel_5x64_no_packa(int kc_adjust, float *packA, float* packB, float *packC, int lda, const int ldc, const int PREFETCH_B, const int PREFETCH_C) {

    float* packAPtr = packA;
    float* packBPtr = packB;
    float* packCPtr = packC;

    float* packCPtr0  = packC;
    float* packCPtr1  = packC + 1  * ldc;
    float* packCPtr2  = packC + 2  * ldc;
    float* packCPtr3  = packC + 3  * ldc;
    float* packCPtr4  = packC + 4  * ldc;

    asm volatile(
        "ptrue  p0.s  \n"
        "lsr    x6, %[kc], 0x1  \n"
		"lsl    x7, x6, 0x1  \n"

        "lsl    x19, %[lda], #2 \n"


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
		"add    x10, %[pA], x19, lsl #1\n"  // a20
		"add    x12, %[pA], x19, lsl #2\n"  // a40
        "add    x9,  x8,    x19        \n"  // a10
        "add    x11, x10,   x19        \n"  // a30

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
        
        "ld1rw	{ z22.s }, p0/z, [x8]                 \n"
	    "ld1rw	{ z23.s }, p0/z, [x9]                 \n"
        "ld1rw	{ z24.s }, p0/z, [x10]                \n"
	    "ld1rw	{ z25.s }, p0/z, [x11]                \n"
	    "ld1rw	{ z26.s }, p0/z, [x12]                \n"

        "ld1rw	{ z27.s }, p0/z, [x8, 4]              \n"
	    "ld1rw	{ z28.s }, p0/z, [x9, 4]              \n"
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
        "ld1rw	{ z29.s }, p0/z, [x10, 4]         \n"
	    "ld1rw	{ z30.s }, p0/z, [x11, 4]         \n"
        "fmla	z4.s,  p0/m, z0.s, z24.s               \n"
        "fmla	z5.s,  p0/m, z0.s, z25.s               \n"
        "fmla	z6.s,  p0/m, z0.s, z26.s               \n"
        "fmla	z7.s,  p0/m, z1.s, z22.s               \n"

	    "ld1w	{ z0.s }, p0/z, [%[pB], #2, MUL VL]    \n"
	    "ld1rw	{ z31.s }, p0/z, [x12, 4]              \n"
        "fmla	z8.s,  p0/m, z1.s, z23.s               \n"
        "fmla	z9.s,  p0/m, z1.s, z24.s               \n"
        "fmla	z10.s, p0/m, z1.s, z25.s               \n"
        "fmla	z11.s, p0/m, z1.s, z26.s               \n"
	    "ld1w	{ z1.s }, p0/z, [%[pB], #3, MUL VL]    \n"
        "add	x8, x8, #8                             \n"

        "fmla	z12.s, p0/m, z0.s, z22.s               \n"
        "fmla	z13.s, p0/m, z0.s, z23.s               \n"
        "add	x9, x9, #8                      \n"
        "add	x10, x10, #8                      \n"
        "fmla	z14.s, p0/m, z0.s, z24.s               \n"
        "fmla	z15.s, p0/m, z0.s, z25.s               \n"
        "fmla	z16.s, p0/m, z0.s, z26.s               \n"
        "fmla	z17.s, p0/m, z1.s, z22.s               \n"
	    "ld1w	{ z0.s }, p0/z, [%[pB], #4, MUL VL]    \n"
        "add	x11, x11, #8                      \n"

        "fmla	z18.s, p0/m, z1.s, z23.s               \n"
        "fmla	z19.s, p0/m, z1.s, z24.s               \n"
        "ld1rw	{ z22.s }, p0/z, [x8]                 \n"
	    "ld1rw	{ z23.s }, p0/z, [x9]                 \n"
        "fmla	z20.s, p0/m, z1.s, z25.s               \n"
        "fmla	z21.s, p0/m, z1.s, z26.s               \n"



	    "ld1w	{ z1.s }, p0/z, [%[pB], #5, MUL VL]    \n"
        "prfm   pldl1keep, [%[pB], 256*10]             \n"
        "fmla	z2.s, p0/m, z0.s, z27.s               \n"
        "fmla	z3.s, p0/m, z0.s, z28.s               \n"
        "ld1rw	{ z24.s }, p0/z, [x10]                 \n"
	    "ld1rw	{ z25.s }, p0/z, [x11]                 \n"
        "fmla	z4.s, p0/m, z0.s, z29.s               \n"
        "fmla	z5.s, p0/m, z0.s, z30.s               \n"
        "fmla	z6.s, p0/m, z0.s, z31.s               \n"
        "fmla	z7.s, p0/m, z1.s, z27.s               \n"
	    "ld1w	{ z0.s }, p0/z, [%[pB], #6, MUL VL]    \n"
	    "ld1rw	{ z26.s }, p0/z, [x12, #8]             \n"

        "fmla	z8.s, p0/m, z1.s, z28.s               \n"
        "fmla	z9.s, p0/m, z1.s, z29.s               \n"
        "fmla	z10.s, p0/m, z1.s, z30.s               \n"
        "fmla	z11.s, p0/m, z1.s, z31.s               \n"
	    "ld1w	{ z1.s }, p0/z, [%[pB], #7, MUL VL]    \n"
        "add	%[pB], %[pB], #512                     \n"
        "fmla	z12.s, p0/m, z0.s, z27.s               \n"
        "fmla	z13.s, p0/m, z0.s, z28.s               \n"
        "add	x12, x12, #8                           \n"
        "fmla	z14.s, p0/m, z0.s, z29.s               \n"
        "fmla	z15.s, p0/m, z0.s, z30.s               \n"
        "fmla	z16.s, p0/m, z0.s, z31.s               \n"
        "fmla	z17.s, p0/m, z1.s, z27.s               \n"

        "ld1w	{ z0.s }, p0/z, [%[pB]]                 \n"
        "fmla	z18.s, p0/m, z1.s, z28.s               \n"
        "fmla	z19.s, p0/m, z1.s, z29.s               \n"
        "ld1rw	{ z27.s }, p0/z, [x8, 4]              \n"
	    "ld1rw	{ z28.s }, p0/z, [x9, 4]              \n"
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
      [lda] "r"(lda),
      [kc]  "r"(kc_adjust)
    : "memory", "cc", "p0", "x6", "x7", "x8", "x9", "x10", "x11",
	  "x12", "x13", "x14", "x15", "x16", "x17", "x18", "x19",
      "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
      "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
      "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");
}

// my own version, A remain in L1, B remain in L2, C remain in L1
void kernel_5x64_no_packa_v1(int kc_adjust, float *packA, float* packB, float *packC, int lda, const int ldc, const int PREFETCH_B, const int PREFETCH_C) {

    float* packAPtr = packA;
    float* packBPtr = packB;

    float* packCPtr0  = packC;
    float* packCPtr1  = packC + 1  * ldc;
    float* packCPtr2  = packC + 2  * ldc;
    float* packCPtr3  = packC + 3  * ldc;
    float* packCPtr4  = packC + 4  * ldc;

    asm volatile(
        "ptrue  p0.s  \n"
        "lsr    x6, %[kc], #2  \n"
		"lsl    x7, x6, #2     \n"
        "sub    x14, %[kc], x7  \n"

        "lsl    x19, %[lda], #2 \n"

        "mov    x18, 0x3   \n"
        "lsl    x18, x18, 56      \n"
        "orr    %[pC0], %[pC0], x18 \n"
        "orr    %[pC1], %[pC1], x18 \n"
        "orr    %[pC2], %[pC2], x18 \n"
        "orr    %[pC3], %[pC3], x18 \n"
        "orr    %[pC4], %[pC4], x18 \n"

        "mov    x18, 0x0   \n"
        "lsl    x18, x18, 56      \n"
        "orr    %[pA], %[pA], x18 \n"

        // "mov    x18, 0x1   \n"
        // "lsl    x18, x18, 56      \n"
        // "orr    %[pB], %[pB], x18 \n"

        "mov    x8,  %[pA]   \n"            // a00
		"add    x10, %[pA], x19, lsl #1\n"  // a20
		"add    x12, %[pA], x19, lsl #2\n"  // a40
        "add    x9,  x8,    x19        \n"  // a10
        "add    x11, x10,   x19        \n"  // a30

        "cmp    %[kc], #0  \n"
        "beq    3f      \n"

		"add	%[pC0], %[pC0], 256*2 \n"
		"prfm	pstl1keep, [%[pC0], 256*2] \n"
		// "prfm	pstl1keep, [%[pC1], 256*2] \n"
		// "prfm	pstl1keep, [%[pC2], 256*2] \n"
		// "prfm	pstl1keep, [%[pC3], 256*2] \n"
		// "prfm	pstl1keep, [%[pC4], 256*2] \n"
		"sub	%[pC0], %[pC0], 256*2 \n"

        "ld1w	{ z4.s },  p0/z, [%[pC0]]      \n"  // load C
        "ld1w	{ z5.s },  p0/z, [%[pC0], #1, MUL VL]    \n"
        "ld1w	{ z6.s },  p0/z, [%[pC0], #2, MUL VL]    \n"
        "ld1w	{ z7.s },  p0/z, [%[pC0], #3, MUL VL]    \n"

        "ld1w	{ z8.s },  p0/z, [%[pC1]]      \n"
        "ld1w	{ z9.s },  p0/z, [%[pC1], #1, MUL VL]    \n"
        "ld1w	{ z10.s }, p0/z, [%[pC1], #2, MUL VL]    \n"
        "ld1w	{ z11.s }, p0/z, [%[pC1], #3, MUL VL]    \n"

        "ld1w	{ z12.s }, p0/z, [%[pC2]]      \n"
        "ld1w	{ z13.s }, p0/z, [%[pC2], #1, MUL VL]    \n"
        "ld1w	{ z14.s }, p0/z, [%[pC2], #2, MUL VL]    \n"
        "ld1w	{ z15.s }, p0/z, [%[pC2], #3, MUL VL]    \n"

        "ld1w	{ z16.s }, p0/z, [%[pC3]]      \n"
        "ld1w	{ z17.s }, p0/z, [%[pC3], #1, MUL VL]    \n"
        "ld1w	{ z18.s }, p0/z, [%[pC3], #2, MUL VL]    \n"
        "ld1w	{ z19.s }, p0/z, [%[pC3], #3, MUL VL]    \n"

        "ld1w	{ z20.s }, p0/z, [%[pC4]]      \n"
        "ld1w	{ z21.s }, p0/z, [%[pC4], #1, MUL VL]    \n"
        "ld1w	{ z22.s }, p0/z, [%[pC4], #2, MUL VL]    \n"
        "ld1w	{ z23.s }, p0/z, [%[pC4], #3, MUL VL]    \n"

        // "prfm	pldl1keep, [%[pB],256*0]              \n"
        // "prfm	pldl1keep, [%[pB],256*1]              \n"
        // "prfm	pldl1keep, [%[pB],256*2]              \n"
        // "prfm	pldl1keep, [%[pB],256*3]              \n"
        // "prfm	pldl1keep, [%[pB],256*4]              \n"
        // "prfm	pldl1keep, [%[pB],256*5]              \n"
        // "prfm	pldl1keep, [%[pB],256*6]              \n"
        // "prfm	pldl1keep, [%[pB],256*7]              \n"
        // "prfm	pldl1keep, [%[pB],256*8]              \n"
        
        "ld1rw	{ z0.s }, p0/z, [x8]                 \n"
	    "ld1rw	{ z1.s }, p0/z, [x9]                 \n"
        "ld1rw	{ z2.s }, p0/z, [x10]                \n"
	    "ld1rw	{ z3.s }, p0/z, [x11]                \n"
	    // "ld1rw	{ z26.s }, p0/z, [x12]                \n"

        // "ld1rw	{ z27.s }, p0/z, [x8, 4]              \n"
	    // "ld1rw	{ z28.s }, p0/z, [x9, 4]              \n"
        // "ld1rw	{ z29.s }, p0/z, [x10, 4]         \n"
	    // "ld1rw	{ z30.s }, p0/z, [x11, 4]         \n"
	    // "ld1rw	{ z31.s }, p0/z, [x12, 4]         \n"

        "ld1w	{ z24.s }, p0/z, [%[pB]]                 \n"
	    "ld1w	{ z25.s }, p0/z, [%[pB], #1, MUL VL]     \n"
	    "ld1w	{ z26.s }, p0/z, [%[pB], #2, MUL VL]     \n"
	    "ld1w	{ z27.s }, p0/z, [%[pB], #3, MUL VL]     \n"

        // "ld1w	{ z28.s }, p0/z, [%[pB], #4, MUL VL]     \n"
	    // "ld1w	{ z29.s }, p0/z, [%[pB], #5, MUL VL]     \n"
	    // "ld1w	{ z30.s }, p0/z, [%[pB], #6, MUL VL]     \n"
	    // "ld1w	{ z31.s }, p0/z, [%[pB], #7, MUL VL]     \n"

// 
        "cmp    w6, #0                                  \n"
        "beq    1f                                      \n"
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
        "ld1w	{ z28.s }, p0/z, [%[pB], #4, MUL VL]   \n"
	    "ld1w	{ z29.s }, p0/z, [%[pB], #5, MUL VL]   \n"
        "fmla	z4.s,  p0/m, z24.s, z0.s               \n"
        "fmla	z5.s,  p0/m, z25.s, z0.s               \n"
	    "ld1w	{ z30.s }, p0/z, [%[pB], #6, MUL VL]   \n"
	    "ld1w	{ z31.s }, p0/z, [%[pB], #7, MUL VL]   \n"
        "fmla	z6.s,  p0/m, z26.s, z0.s               \n"
        "fmla	z7.s,  p0/m, z27.s, z0.s               \n"
	    
        "ld1rw	{ z0.s }, p0/z, [x12]                  \n"
        "fmla	z8.s,  p0/m, z24.s, z1.s               \n"
        "fmla	z9.s,  p0/m, z25.s, z1.s               \n"
        "fmla	z10.s, p0/m, z26.s, z1.s               \n"
        "fmla	z11.s, p0/m, z27.s, z1.s               \n"

        "prfm	pldl1keep, [x8, 256]                   \n"
        "ld1rw	{ z1.s }, p0/z, [x8, #4]               \n"
        "add    x8, x8, #8                             \n"
        "fmla	z12.s, p0/m, z24.s, z2.s               \n"
        "fmla	z13.s, p0/m, z25.s, z2.s               \n"
        "fmla	z14.s, p0/m, z26.s, z2.s               \n"
        "fmla	z15.s, p0/m, z27.s, z2.s               \n"

	    "ld1rw	{ z2.s }, p0/z, [x9, #4]               \n"
        "add    %[pB], %[pB], #512                     \n"
        "fmla	z16.s, p0/m, z24.s, z3.s               \n"
        "fmla	z17.s, p0/m, z25.s, z3.s               \n"
        "fmla	z18.s, p0/m, z26.s, z3.s               \n"
        "fmla	z19.s, p0/m, z27.s, z3.s               \n"

	    "ld1rw	{ z3.s }, p0/z, [x10, #4]              \n"
        "add    x10, x10, #8                           \n"
        "fmla	z20.s, p0/m, z24.s, z0.s               \n"
        "fmla	z21.s, p0/m, z25.s, z0.s               \n"
        "fmla	z22.s, p0/m, z26.s, z0.s               \n"
        "fmla	z23.s, p0/m, z27.s, z0.s               \n"
	    "ld1rw	{ z0.s }, p0/z, [x11, #4]              \n"
        "add    x11, x11, #8                           \n"

        
        // -------------- loop 2 -------------
        "ld1w	{ z24.s }, p0/z, [%[pB]]   \n"
	    "ld1w	{ z25.s }, p0/z, [%[pB], #1, MUL VL]   \n"
        "fmla	z4.s,  p0/m, z28.s, z1.s               \n"
        "fmla	z5.s,  p0/m, z29.s, z1.s               \n"
	    "ld1w	{ z26.s }, p0/z, [%[pB], #2, MUL VL]   \n"
	    "ld1w	{ z27.s }, p0/z, [%[pB], #3, MUL VL]   \n"
        "fmla	z6.s,  p0/m, z30.s, z1.s               \n"
        "fmla	z7.s,  p0/m, z31.s, z1.s               \n"
	    
        "ld1rw	{ z1.s }, p0/z, [x12, #4]              \n"
        "add    x12, x12, #8                           \n"
        "fmla	z8.s,  p0/m, z28.s, z2.s               \n"
        "fmla	z9.s,  p0/m, z29.s, z2.s               \n"
        "fmla	z10.s, p0/m, z30.s, z2.s               \n"
        "fmla	z11.s, p0/m, z31.s, z2.s               \n"

        "ld1rw	{ z2.s }, p0/z, [x8]                   \n"
        "add    x9, x9, #8                             \n"
        "fmla	z12.s, p0/m, z28.s, z3.s               \n"
        "fmla	z13.s, p0/m, z29.s, z3.s               \n"
        "fmla	z14.s, p0/m, z30.s, z3.s               \n"
        "fmla	z15.s, p0/m, z31.s, z3.s               \n"

        "prfm	pldl1keep,[x9, 256]                   \n"
	    "ld1rw	{ z3.s }, p0/z, [x9]                   \n"
        "fmla	z16.s, p0/m, z28.s, z0.s               \n"
        "fmla	z17.s, p0/m, z29.s, z0.s               \n"
        "fmla	z18.s, p0/m, z30.s, z0.s               \n"
        "fmla	z19.s, p0/m, z31.s, z0.s               \n"

        "fmla	z20.s, p0/m, z28.s, z1.s               \n"
        "fmla	z21.s, p0/m, z29.s, z1.s               \n"
        "fmla	z22.s, p0/m, z30.s, z1.s               \n"
        "fmla	z23.s, p0/m, z31.s, z1.s               \n"
	    "ld1rw	{ z0.s }, p0/z, [x10]                  \n"
	    "ld1rw	{ z1.s }, p0/z, [x11]                  \n"

        
        // -------------- loop 3 -------------
        "ld1w	{ z28.s }, p0/z, [%[pB], #4, MUL VL]   \n"
	    "ld1w	{ z29.s }, p0/z, [%[pB], #5, MUL VL]   \n"
        "fmla	z4.s,  p0/m, z24.s, z2.s               \n"
        "fmla	z5.s,  p0/m, z25.s, z2.s               \n"
	    "ld1w	{ z30.s }, p0/z, [%[pB], #6, MUL VL]   \n"
	    "ld1w	{ z31.s }, p0/z, [%[pB], #7, MUL VL]   \n"
        "fmla	z6.s,  p0/m, z26.s, z2.s               \n"
        "fmla	z7.s,  p0/m, z27.s, z2.s               \n"
	    
        "ld1rw	{ z2.s }, p0/z, [x12]                  \n"
        "add    %[pB], %[pB], #512                     \n"
        "fmla	z8.s,  p0/m, z24.s, z3.s               \n"
        "fmla	z9.s,  p0/m, z25.s, z3.s               \n"
        "fmla	z10.s, p0/m, z26.s, z3.s               \n"
        "fmla	z11.s, p0/m, z27.s, z3.s               \n"

        "prfm	pldl1keep,[x10, 256]                   \n"
        "ld1rw	{ z3.s }, p0/z, [x8, #4]               \n"
        "add    x8, x8, #8                             \n"
        "fmla	z12.s, p0/m, z24.s, z0.s               \n"
        "fmla	z13.s, p0/m, z25.s, z0.s               \n"
        "fmla	z14.s, p0/m, z26.s, z0.s               \n"
        "fmla	z15.s, p0/m, z27.s, z0.s               \n"

	    "ld1rw	{ z0.s }, p0/z, [x9, #4]               \n"
        "add    x9, x9, #8                             \n"
        "fmla	z16.s, p0/m, z24.s, z1.s               \n"
        "fmla	z17.s, p0/m, z25.s, z1.s               \n"
        "fmla	z18.s, p0/m, z26.s, z1.s               \n"
        "fmla	z19.s, p0/m, z27.s, z1.s               \n"

	    "ld1rw	{ z1.s }, p0/z, [x10, #4]              \n"
        "add    x10, x10, #8                           \n"
        "fmla	z20.s, p0/m, z24.s, z2.s               \n"
        "fmla	z21.s, p0/m, z25.s, z2.s               \n"
        "prfm	pldl1keep, [x11, 256]                   \n"
        "fmla	z22.s, p0/m, z26.s, z2.s               \n"
        "fmla	z23.s, p0/m, z27.s, z2.s               \n"
	    "ld1rw	{ z2.s }, p0/z, [x11, #4]              \n"
        "add    x11, x11, #8                           \n"


        // -------------- loop 4 -------------
        "ld1w	{ z24.s }, p0/z, [%[pB]]   \n"
	    "ld1w	{ z25.s }, p0/z, [%[pB], #1, MUL VL]   \n"
        "fmla	z4.s,  p0/m, z28.s, z3.s               \n"
        "fmla	z5.s,  p0/m, z29.s, z3.s               \n"
	    "ld1w	{ z26.s }, p0/z, [%[pB], #2, MUL VL]   \n"
	    "ld1w	{ z27.s }, p0/z, [%[pB], #3, MUL VL]   \n"
        "fmla	z6.s,  p0/m, z30.s, z3.s               \n"
        "fmla	z7.s,  p0/m, z31.s, z3.s               \n"
	    
        "prfm	pldl1keep, [x12, 256]                   \n"
        "ld1rw	{ z3.s }, p0/z, [x12, #4]              \n"
        "add    x12, x12, #8                           \n"
        "fmla	z8.s,  p0/m, z28.s, z0.s               \n"
        "fmla	z9.s,  p0/m, z29.s, z0.s               \n"
        "fmla	z10.s, p0/m, z30.s, z0.s               \n"
        "fmla	z11.s, p0/m, z31.s, z0.s               \n"

        "ld1rw	{ z0.s }, p0/z, [x8]                   \n"
        "subs   x6, x6, #1                             \n"
        "fmla	z12.s, p0/m, z28.s, z1.s               \n"
        "fmla	z13.s, p0/m, z29.s, z1.s               \n"
        "fmla	z14.s, p0/m, z30.s, z1.s               \n"
        "fmla	z15.s, p0/m, z31.s, z1.s               \n"

	    "ld1rw	{ z1.s }, p0/z, [x9]                   \n"
        "fmla	z16.s, p0/m, z28.s, z2.s               \n"
        "fmla	z17.s, p0/m, z29.s, z2.s               \n"
        "fmla	z18.s, p0/m, z30.s, z2.s               \n"
        "fmla	z19.s, p0/m, z31.s, z2.s               \n"

        "fmla	z20.s, p0/m, z28.s, z3.s               \n"
        "fmla	z21.s, p0/m, z29.s, z3.s               \n"
        "fmla	z22.s, p0/m, z30.s, z3.s               \n"
        "fmla	z23.s, p0/m, z31.s, z3.s               \n"
	    "ld1rw	{ z2.s }, p0/z, [x10]                  \n"
	    "ld1rw	{ z3.s }, p0/z, [x11]                  \n"

        "bne   0b                                      \n"


        // --------remain loop (3 or 2)----------
    "1:                                                \n"
        "cmp	x14, #2	                               \n"
        "blt    2f                                     \n"

        "ld1w	{ z28.s }, p0/z, [%[pB], #4, MUL VL]   \n"
	    "ld1w	{ z29.s }, p0/z, [%[pB], #5, MUL VL]   \n"
        "fmla	z4.s,  p0/m, z0.s, z24.s               \n"
        "fmla	z5.s,  p0/m, z0.s, z25.s               \n"
	    "ld1w	{ z30.s }, p0/z, [%[pB], #6, MUL VL]   \n"
	    "ld1w	{ z31.s }, p0/z, [%[pB], #7, MUL VL]   \n"
        "fmla	z6.s,  p0/m, z0.s, z26.s               \n"
        "fmla	z7.s,  p0/m, z0.s, z27.s               \n"
	    
        "ld1rw	{ z0.s }, p0/z, [x12]                  \n"
        "sub    x14, x14, #2                           \n"
        "fmla	z8.s,  p0/m, z1.s, z24.s               \n"
        "fmla	z9.s,  p0/m, z1.s, z25.s               \n"
        "fmla	z10.s, p0/m, z1.s, z26.s               \n"
        "fmla	z11.s, p0/m, z1.s, z27.s               \n"

        "ld1rw	{ z1.s }, p0/z, [x8, 4]                \n"
        "add    x8, x8, #8                             \n"
        "fmla	z12.s, p0/m, z2.s, z24.s               \n"
        "fmla	z13.s, p0/m, z2.s, z25.s               \n"
        "fmla	z14.s, p0/m, z2.s, z26.s               \n"
        "fmla	z15.s, p0/m, z2.s, z27.s               \n"

	    "ld1rw	{ z2.s }, p0/z, [x9, 4]                \n"
        "add    %[pB], %[pB], 8*64                     \n"
        "fmla	z16.s, p0/m, z3.s, z24.s               \n"
        "fmla	z17.s, p0/m, z3.s, z25.s               \n"
        "fmla	z18.s, p0/m, z3.s, z26.s               \n"
        "fmla	z19.s, p0/m, z3.s, z27.s               \n"

	    "ld1rw	{ z3.s }, p0/z, [x10, 4]               \n"
        "add    x10, x10, #8                           \n"
        "fmla	z20.s, p0/m, z0.s, z24.s               \n"
        "fmla	z21.s, p0/m, z0.s, z25.s               \n"
        "fmla	z22.s, p0/m, z0.s, z26.s               \n"
        "fmla	z23.s, p0/m, z0.s, z27.s               \n"
	    "ld1rw	{ z0.s }, p0/z, [x11, 4]               \n"
        "add    x11, x11, #8                           \n"

        // -------------- loop 2 -------------
        "ld1w	{ z24.s }, p0/z, [%[pB]]   \n"
	    "ld1w	{ z25.s }, p0/z, [%[pB], #1, MUL VL]   \n"
        "fmla	z4.s,  p0/m, z1.s, z28.s               \n"
        "fmla	z5.s,  p0/m, z1.s, z29.s               \n"
	    "ld1w	{ z26.s }, p0/z, [%[pB], #2, MUL VL]   \n"
	    "ld1w	{ z27.s }, p0/z, [%[pB], #3, MUL VL]   \n"
        "fmla	z6.s,  p0/m, z1.s, z30.s               \n"
        "fmla	z7.s,  p0/m, z1.s, z31.s               \n"
	    
        "ld1rw	{ z1.s }, p0/z, [x12, 4]               \n"
        "add    x12, x12, #8                           \n"
        "fmla	z8.s,  p0/m, z2.s, z28.s               \n"
        "fmla	z9.s,  p0/m, z2.s, z29.s               \n"
        "fmla	z10.s, p0/m, z2.s, z30.s               \n"
        "fmla	z11.s, p0/m, z2.s, z31.s               \n"

        "ld1rw	{ z2.s }, p0/z, [x10]                  \n"
        "add    x9, x9, #8                             \n"
        "fmla	z12.s, p0/m, z3.s, z28.s               \n"
        "fmla	z13.s, p0/m, z3.s, z29.s               \n"
        "fmla	z14.s, p0/m, z3.s, z30.s               \n"
        "fmla	z15.s, p0/m, z3.s, z31.s               \n"

	    "ld1rw	{ z3.s }, p0/z, [x11]                   \n"
        "fmla	z16.s, p0/m, z0.s, z28.s               \n"
        "fmla	z17.s, p0/m, z0.s, z29.s               \n"
        "fmla	z18.s, p0/m, z0.s, z30.s               \n"
        "fmla	z19.s, p0/m, z0.s, z31.s               \n"

        "fmla	z20.s, p0/m, z1.s, z28.s               \n"
        "fmla	z21.s, p0/m, z1.s, z29.s               \n"
        "fmla	z22.s, p0/m, z1.s, z30.s               \n"
        "fmla	z23.s, p0/m, z1.s, z31.s               \n"
	    "ld1rw	{ z0.s }, p0/z, [x8]                   \n"
	    "ld1rw	{ z1.s }, p0/z, [x9]                  \n"

        // "ld1rw	{ z0.s }, p0/z, [x8]                 \n"
	    // "ld1rw	{ z1.s }, p0/z, [x9]                 \n"
        // "ld1rw	{ z2.s }, p0/z, [x10]                \n"
	    // "ld1rw	{ z3.s }, p0/z, [x11]                \n"

        // ------ remain 1 loop ------
    "2:                                                \n"
        "cmp    x14, xzr                               \n"
        "beq    3f                                     \n"

        "fmla	z4.s,  p0/m, z0.s, z24.s               \n"
        "fmla	z5.s,  p0/m, z0.s, z25.s               \n"
        "fmla	z6.s,  p0/m, z0.s, z26.s               \n"
        "fmla	z7.s,  p0/m, z0.s, z27.s               \n"
	    
	    "ld1rw	{ z0.s }, p0/z, [x12]                  \n"
        "fmla	z8.s,  p0/m, z1.s, z24.s               \n"
        "fmla	z9.s,  p0/m, z1.s, z25.s               \n"
        "fmla	z10.s, p0/m, z1.s, z26.s               \n"
        "fmla	z11.s, p0/m, z1.s, z27.s               \n"

        "fmla	z12.s, p0/m, z2.s, z24.s               \n"
        "fmla	z13.s, p0/m, z2.s, z25.s               \n"
        "fmla	z14.s, p0/m, z2.s, z26.s               \n"
        "fmla	z15.s, p0/m, z2.s, z27.s               \n"

        "fmla	z16.s, p0/m, z3.s, z24.s               \n"
        "fmla	z17.s, p0/m, z3.s, z25.s               \n"
        "fmla	z18.s, p0/m, z3.s, z26.s               \n"
        "fmla	z19.s, p0/m, z3.s, z27.s               \n"

        "fmla	z20.s, p0/m, z0.s, z24.s               \n"
        "fmla	z21.s, p0/m, z0.s, z25.s               \n"
        "fmla	z22.s, p0/m, z0.s, z26.s               \n"
        "fmla	z23.s, p0/m, z0.s, z27.s               \n"

    "3:                                                 \n"        
        "st1w	{ z4.s },  p0, [%[pC0]]      \n"  // load C
        "st1w	{ z5.s },  p0, [%[pC0], #1, MUL VL]    \n"
        "st1w	{ z6.s },  p0, [%[pC0], #2, MUL VL]    \n"
        "st1w	{ z7.s },  p0, [%[pC0], #3, MUL VL]    \n"

        "st1w	{ z8.s },  p0, [%[pC1]]      \n"
        "st1w	{ z9.s },  p0, [%[pC1], #1, MUL VL]    \n"
        "st1w	{ z10.s }, p0, [%[pC1], #2, MUL VL]    \n"
        "st1w	{ z11.s }, p0, [%[pC1], #3, MUL VL]    \n"

        "st1w	{ z12.s }, p0, [%[pC2]]      \n"
        "st1w	{ z13.s }, p0, [%[pC2], #1, MUL VL]    \n"
        "st1w	{ z14.s }, p0, [%[pC2], #2, MUL VL]    \n"
        "st1w	{ z15.s }, p0, [%[pC2], #3, MUL VL]    \n"

        "st1w	{ z16.s }, p0, [%[pC3]]      \n"
        "st1w	{ z17.s }, p0, [%[pC3], #1, MUL VL]    \n"
        "st1w	{ z18.s }, p0, [%[pC3], #2, MUL VL]    \n"
        "st1w	{ z19.s }, p0, [%[pC3], #3, MUL VL]    \n"

        "st1w	{ z20.s }, p0, [%[pC4]]      \n"
        "st1w	{ z21.s }, p0, [%[pC4], #1, MUL VL]    \n"
        "st1w	{ z22.s }, p0, [%[pC4], #2, MUL VL]    \n"
        "st1w	{ z23.s }, p0, [%[pC4], #3, MUL VL]    \n"

    "4:                                                 \n"
        
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
      [lda] "r"(lda),
      [kc]  "r"(kc_adjust)
    : "memory", "cc", "p0", "x6", "x7", "x8", "x9", "x10", "x11",
	  "x12", "x13", "x14", "x18", "x19",
      "z0", "z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9",
      "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "z19", "z20", "z21",
      "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31");
}

template <int M, int N>
void kernel_MxN_for_5x64(int kc_adjust, float *packA, float *packB, float *packC, int lda, int ldc, int a_step, int b_step,
                            svbool_t pg32_0, svbool_t pg32_1, svbool_t pg32_2, svbool_t pg32_3) {
    float* packAPtr = packA;
    float* packBPtr = packB;
    float* cPtr = packC;

    svfloat32_t va0, va1, va2, va3, va4;
    svfloat32_t vb0, vb1, vb2, vb3;
    svfloat32_t vc00, vc01, vc02, vc03;
    svfloat32_t vc10, vc11, vc12, vc13;
    svfloat32_t vc20, vc21, vc22, vc23;
    svfloat32_t vc30, vc31, vc32, vc33;
    svfloat32_t vc40, vc41, vc42, vc43;

    svbool_t p32_v0 = pg32_0, p32_v1 = pg32_1, p32_v2 = pg32_2, p32_v3 = pg32_3;

    // load C
    if (M >= 1) {
        if (N >= 1 * simd_width)
            vc00 = svld1_f32(p32_v0, cPtr + 0 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc01 = svld1_f32(p32_v1, cPtr + 0 * ldc + 1 * simd_width);
        if (N >= 3 * simd_width)
            vc02 = svld1_f32(p32_v2, cPtr + 0 * ldc + 2 * simd_width);
        if (N >= 4 * simd_width)
            vc03 = svld1_f32(p32_v3, cPtr + 0 * ldc + 3 * simd_width);
    }
    if (M >= 2) {
        if (N >= 1 * simd_width)
            vc10 = svld1_f32(p32_v0, cPtr + 1 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc11 = svld1_f32(p32_v1, cPtr + 1 * ldc + 1 * simd_width);
        if (N >= 3 * simd_width)
            vc12 = svld1_f32(p32_v2, cPtr + 1 * ldc + 2 * simd_width);
        if (N >= 4 * simd_width)
            vc13 = svld1_f32(p32_v3, cPtr + 1 * ldc + 3 * simd_width);
    }
    if (M >= 3) {
        if (N >= 1 * simd_width) 
            vc20 = svld1_f32(p32_v0, cPtr + 2 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc21 = svld1_f32(p32_v1, cPtr + 2 * ldc + 1 * simd_width);
        if (N >= 3 * simd_width)
            vc22 = svld1_f32(p32_v2, cPtr + 2 * ldc + 2 * simd_width);
        if (N >= 4 * simd_width)
            vc23 = svld1_f32(p32_v3, cPtr + 2 * ldc + 3 * simd_width);
    }
    if (M >= 4) {
        if (N >= 1 * simd_width) 
            vc30 = svld1_f32(p32_v0, cPtr + 3 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc31 = svld1_f32(p32_v1, cPtr + 3 * ldc + 1 * simd_width);
        if (N >= 3 * simd_width)
            vc32 = svld1_f32(p32_v2, cPtr + 3 * ldc + 2 * simd_width);
        if (N >= 4 * simd_width)
            vc33 = svld1_f32(p32_v3, cPtr + 3 * ldc + 3 * simd_width);
    }
    if (M >= 5) {
        if (N >= 1 * simd_width) 
            vc40 = svld1_f32(p32_v0, cPtr + 4 * ldc + 0 * simd_width);
        if (N >= 2 * simd_width)
            vc41 = svld1_f32(p32_v1, cPtr + 4 * ldc + 1 * simd_width);
        if (N >= 3 * simd_width)
            vc42 = svld1_f32(p32_v2, cPtr + 4 * ldc + 2 * simd_width);
        if (N >= 4 * simd_width)
            vc43 = svld1_f32(p32_v3, cPtr + 4 * ldc + 3 * simd_width);
    }

    for (int k = 0; k < kc_adjust; k++) {
        // load B
        if (N >= 1 * simd_width) 
            vb0 = svld1_f32(p32_v0, packBPtr);
        if (N >= 2 * simd_width)
            vb1 = svld1_f32(p32_v1, packBPtr + 1 * simd_width);
        if (N >= 3 * simd_width)
            vb2 = svld1_f32(p32_v2, packBPtr + 2 * simd_width);
        if (N >= 4 * simd_width)
            vb3 = svld1_f32(p32_v3, packBPtr + 3 * simd_width);
        
        if (M >= 1) {
            va0 = svdup_n_f32(packAPtr[0 * lda]);
            if (N >= 1 * simd_width)
                vc00 = svmla_f32_x(p32_v0, vc00, va0, vb0);
            if (N >= 2 * simd_width)
                vc01 = svmla_f32_x(p32_v1, vc01, va0, vb1);
            if (N >= 3 * simd_width)
                vc02 = svmla_f32_x(p32_v2, vc02, va0, vb2);
            if (N >= 4 * simd_width)
                vc03 = svmla_f32_x(p32_v3, vc03, va0, vb3);
        }
        if (M >= 2) {
            va1 = svdup_n_f32(packAPtr[1 * lda]);
            if (N >= 1 * simd_width)
                vc10 = svmla_f32_x(p32_v0, vc10, va1, vb0);
            if (N >= 2 * simd_width)
                vc11 = svmla_f32_x(p32_v1, vc11, va1, vb1);
            if (N >= 3 * simd_width)
                vc12 = svmla_f32_x(p32_v2, vc12, va1, vb2);
            if (N >= 4 * simd_width)
                vc13 = svmla_f32_x(p32_v3, vc13, va1, vb3);
        }
        if (M >= 3) {
            va2 = svdup_n_f32(packAPtr[2 * lda]);
            if (N >= 1 * simd_width)
                vc20 = svmla_f32_x(p32_v0, vc20, va2, vb0);
            if (N >= 2 * simd_width)
                vc21 = svmla_f32_x(p32_v1, vc21, va2, vb1);
            if (N >= 3 * simd_width)
                vc22 = svmla_f32_x(p32_v2, vc22, va2, vb2);
            if (N >= 4 * simd_width)
                vc23 = svmla_f32_x(p32_v3, vc23, va2, vb3);
        }
        if (M >= 4) {
            va3 = svdup_n_f32(packAPtr[3 * lda]);
            if (N >= 1 * simd_width)
                vc30 = svmla_f32_x(p32_v0, vc30, va3, vb0);
            if (N >= 2 * simd_width)
                vc31 = svmla_f32_x(p32_v1, vc31, va3, vb1);
            if (N >= 3 * simd_width)
                vc32 = svmla_f32_x(p32_v2, vc32, va3, vb2);
            if (N >= 4 * simd_width)
                vc33 = svmla_f32_x(p32_v3, vc33, va3, vb3);
        }
        if (M >= 5) {
            va4 = svdup_n_f32(packAPtr[4 * lda]);
            if (N >= 1 * simd_width)
                vc40 = svmla_f32_x(p32_v0, vc40, va4, vb0);
            if (N >= 2 * simd_width)
                vc41 = svmla_f32_x(p32_v1, vc41, va4, vb1);
            if (N >= 3 * simd_width)
                vc42 = svmla_f32_x(p32_v2, vc42, va4, vb2);
            if (N >= 4 * simd_width)
                vc43 = svmla_f32_x(p32_v3, vc43, va4, vb3);
        }

        packAPtr += a_step;
        packBPtr += b_step;
    }

    // store C
    if (M >= 1) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 0 * ldc + 0 * simd_width, vc00);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 0 * ldc + 1 * simd_width, vc01);
        if (N >= 3 * simd_width)
            svst1_f32(p32_v2, cPtr + 0 * ldc + 2 * simd_width, vc02);
        if (N >= 4 * simd_width)
            svst1_f32(p32_v3, cPtr + 0 * ldc + 3 * simd_width, vc03);
    }
    if (M >= 2) {
        if (N >= 1 * simd_width)
            svst1_f32(p32_v0, cPtr + 1 * ldc + 0 * simd_width, vc10);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 1 * ldc + 1 * simd_width, vc11);
        if (N >= 3 * simd_width)
            svst1_f32(p32_v2, cPtr + 1 * ldc + 2 * simd_width, vc12);
        if (N >= 4 * simd_width)
            svst1_f32(p32_v3, cPtr + 1 * ldc + 3 * simd_width, vc13);
    }
    if (M >= 3) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 2 * ldc + 0 * simd_width, vc20);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 2 * ldc + 1 * simd_width, vc21);
        if (N >= 3 * simd_width)
            svst1_f32(p32_v2, cPtr + 2 * ldc + 2 * simd_width, vc22);
        if (N >= 4 * simd_width)
            svst1_f32(p32_v3, cPtr + 2 * ldc + 3 * simd_width, vc23);
    }
    if (M >= 4) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 3 * ldc + 0 * simd_width, vc30);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 3 * ldc + 1 * simd_width, vc31);
        if (N >= 3 * simd_width)
            svst1_f32(p32_v2, cPtr + 3 * ldc + 2 * simd_width, vc32);
        if (N >= 4 * simd_width)
            svst1_f32(p32_v3, cPtr + 3 * ldc + 3 * simd_width, vc33);
    }
    if (M >= 5) {
        if (N >= 1 * simd_width) 
            svst1_f32(p32_v0, cPtr + 4 * ldc + 0 * simd_width, vc40);
        if (N >= 2 * simd_width)
            svst1_f32(p32_v1, cPtr + 4 * ldc + 1 * simd_width, vc41);
        if (N >= 3 * simd_width)
            svst1_f32(p32_v2, cPtr + 4 * ldc + 2 * simd_width, vc42);
        if (N >= 4 * simd_width)
            svst1_f32(p32_v3, cPtr + 4 * ldc + 3 * simd_width, vc43);
    }
}

const inner_kernel_for_corner_func_t kernel_MxN_for_5x64_func_tab[5][4] = {
    {
        kernel_MxN_for_5x64<1, 16>,
        kernel_MxN_for_5x64<1, 32>,
        kernel_MxN_for_5x64<1, 48>,
        kernel_MxN_for_5x64<1, 64>
    },
    {
        kernel_MxN_for_5x64<2, 16>,
        kernel_MxN_for_5x64<2, 32>,
        kernel_MxN_for_5x64<2, 48>,
        kernel_MxN_for_5x64<2, 64>
    },
    {
        kernel_MxN_for_5x64<3, 16>,
        kernel_MxN_for_5x64<3, 32>,
        kernel_MxN_for_5x64<3, 48>,
        kernel_MxN_for_5x64<3, 64>
    },
    {
        kernel_MxN_for_5x64<4, 16>,
        kernel_MxN_for_5x64<4, 32>,
        kernel_MxN_for_5x64<4, 48>,
        kernel_MxN_for_5x64<4, 64>
    },
    {
        kernel_MxN_for_5x64<5, 16>,
        kernel_MxN_for_5x64<5, 32>,
        kernel_MxN_for_5x64<5, 48>,
        kernel_MxN_for_5x64<5, 64>
    }
};
