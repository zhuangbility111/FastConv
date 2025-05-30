..text.b:
	.ident	"$Options: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) --preinclude /opt/FJSVxtclanga/tcsds-1.2.33/bin/../lib/FCC.pre --g++ --c++11 -D__STRICT_ANSI__ -D__FUJITSU -D__FCC_major__=4 -D__FCC_minor__=6 -D__FCC_patchlevel__=1 -D__FCC_version__=\"4.6.1\" -D__aarch64__ -D__unix -D_OPENMP=201107 -D__PRAGMA_REDEFINE_EXTNAME -D__FCC_VERSION=800 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__ARM_FEATURE_SVE -D__FP_FAST_FMA -D__ELF__ -D__linux -Asystem(unix) -D__LIBC_6B -D_LP64 -D__LP64__ -I/vol0004/ra000012/a04453/FastConv --K=omp --K=noocl -D_REENTRANT -D__MT__ --zmode=64 --sys_include=/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371 --sys_include=/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include --K=opt --exceptions ./im2col/SVE/sve_gemm_kernel.cpp -- -ncmdname=FCC -zobe=cplus -zcfc=target_sve -O3 -x- -Komitfp,mfunc,eval,fp_relaxed,fz,fast_matmul,fp_contract,ilfunc,simd_packed_promotion -Kopenmp,threadsafe -Nlibomp -Kprefetch_sequential=soft -Kprefetch_line=2 -Kprefetch_line_L2=10 -Kzfill=9 -Kswp -Klargepage sve_gemm_kernel.s $"
	.file	"sve_gemm_kernel.cpp"
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _ZN5TimerD1Ev $"
	.section	.text._ZN5TimerD1Ev,"axG",%progbits,_ZN5TimerD1Ev,comdat

	.weak	_ZN5TimerD1Ev
	.align	2
	.type	_ZN5TimerD1Ev, %function
_ZN5TimerD1Ev:
	.file 1 "/usr/include/stdlib.h"
	.file 2 "/usr/include/bits/byteswap.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/uintn-identity.h"
	.file 5 "/usr/include/bits/stdlib-bsearch.h"
	.file 6 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/stddef.h"
	.file 7 "/usr/include/bits/stdlib-float.h"
	.file 8 "/usr/include/bits/stdio.h"
	.file 9 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/stdarg.h"
	.file 10 "/usr/include/bits/types/FILE.h"
	.file 11 "/usr/include/bits/types/struct_FILE.h"
	.file 12 "./im2col/SVE/../../utility/helper.h"
	.loc 12 71 0
..LDL1:
.LFB0:
	.cfi_startproc
/*     71 */	adrp	x1, _ZTV5Timer+16
/*     71 */	add	x1, x1, :lo12:_ZTV5Timer+16
/*     71 */	str	x1, [x0]	//  (*)
	.loc 12 71 0
..LDL2:
/*     71 */	ret	
..D1.pchi:
	.cfi_endproc
.LFE0:
	.size	_ZN5TimerD1Ev, .-_ZN5TimerD1Ev
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z11kernel_8x32iPfS_S_iiii $"
	.text
	.align	2
	.global	_Z11kernel_8x32iPfS_S_iiii
	.type	_Z11kernel_8x32iPfS_S_iiii, %function
_Z11kernel_8x32iPfS_S_iiii:
	.file 13 "./im2col/SVE/sve_gemm_kernel.cpp"
	.loc 13 14 0
..LDL3:
.LFB1:
	.cfi_startproc
/*     71 */	sub	sp, sp, 128
	.cfi_def_cfa_offset 128
/*     71 */	mov	w10, w6
/*     71 */	mov	w9, w5
/*     71 */	mov	w11, w4
/*    ??? */	str	x30, [sp, 112]	//  (*)
	.cfi_offset 30, -16
/*    ??? */	stp	d8, d9, [sp, 96]	//  (*)
	.cfi_offset 72, -32
	.cfi_offset 73, -24
/*    ??? */	stp	d10, d11, [sp, 80]	//  (*)
	.cfi_offset 74, -48
	.cfi_offset 75, -40
/*    ??? */	stp	d12, d13, [sp, 64]	//  (*)
	.cfi_offset 76, -64
	.cfi_offset 77, -56
/*    ??? */	stp	d14, d15, [sp, 48]	//  (*)
	.cfi_offset 78, -80
	.cfi_offset 79, -72
	.loc 13 23 0
..LDL4:
/*     23 */	sxtw	x4, w11
	.loc 13 24 0
..LDL5:
/*     24 */	add	w5, w11, w11
	.loc 13 23 0
..LDL6:
/*     23 */	add	x12, x3, x4, lsl #2
	.loc 13 24 0
..LDL7:
/*     24 */	sxtw	x4, w5
	.loc 13 25 0
..LDL8:
/*     25 */	add	w5, w5, w11
	.loc 13 24 0
..LDL9:
/*     24 */	add	x13, x3, x4, lsl #2
	.loc 13 25 0
..LDL10:
/*     25 */	sxtw	x4, w5
	.loc 13 28 0
..LDL11:
/*     28 */	add	w5, w5, w5
	.loc 13 25 0
..LDL12:
/*     25 */	add	x14, x3, x4, lsl #2
	.loc 13 26 0
..LDL13:
/*     26 */	lsl	w4, w11, 2
/*     26 */	sxtw	x8, w4
	.loc 13 29 0
..LDL14:
/*     29 */	lsl	w4, w11, 3
	.loc 13 27 0
..LDL15:
/*     27 */	add	w6, w11, w11, lsl #2
	.loc 13 29 0
..LDL16:
/*     29 */	sub	w4, w4, w11
	.loc 13 28 0
..LDL17:
/*     28 */	sxtw	x5, w5
	.loc 13 29 0
..LDL18:
/*     29 */	sxtw	x4, w4
	.loc 13 27 0
..LDL19:
/*     27 */	sxtw	x6, w6
	.loc 13 26 0
..LDL20:
/*     26 */	add	x8, x3, x8, lsl #2
	.loc 13 27 0
..LDL21:
/*     27 */	add	x15, x3, x6, lsl #2
	.loc 13 28 0
..LDL22:
/*     28 */	add	x16, x3, x5, lsl #2
	.loc 13 29 0
..LDL23:
/*     29 */	add	x17, x3, x4, lsl #2
	.loc 13 36 0 is_stmt 0
..LDL24:
	ptrue  p0.s  
mov    x4, #16 
mov    x5, x0    
lsr    x6, x5, 0x2  
cmp    w5, #0  
b.eq   1f     
ld1w	{ z16.s }, p0/z, [x3]      
ld1w	{ z17.s }, p0/z, [x3, x4, lsl #2]    
ld1w	{ z18.s }, p0/z, [x12]      
ld1w	{ z19.s }, p0/z, [x12, x4, lsl #2]    
ld1w	{ z20.s }, p0/z, [x13]      
ld1w	{ z21.s }, p0/z, [x13, x4, lsl #2]    
ld1w	{ z22.s }, p0/z, [x14]      
ld1w	{ z23.s }, p0/z, [x14, x4, lsl #2]    
ld1w	{ z24.s }, p0/z, [x8]      
ld1w	{ z25.s }, p0/z, [x8, x4, lsl #2]    
ld1w	{ z26.s }, p0/z, [x15]      
ld1w	{ z27.s }, p0/z, [x15, x4, lsl #2]    
ld1w	{ z28.s }, p0/z, [x16]      
ld1w	{ z29.s }, p0/z, [x16, x4, lsl #2]    
ld1w	{ z30.s }, p0/z, [x17]      
ld1w	{ z31.s }, p0/z, [x17, x4, lsl #2]    
ld1rqw	{ z0.s }, p0/z, [x1]                 
ld1rqw	{ z1.s }, p0/z, [x1, #16]            
ld1rqw	{ z2.s }, p0/z, [x1, #32]            
ld1rqw	{ z3.s }, p0/z, [x1, #48]            
ld1rqw	{ z4.s }, p0/z, [x1, #64]            
ld1rqw	{ z5.s }, p0/z, [x1, #80]            
ld1w	{ z8.s },  p0/z, [x2]                
ld1w	{ z9.s },  p0/z, [x2, #1, MUL VL]    
ld1w	{ z10.s }, p0/z, [x2, #2, MUL VL]    
ld1w	{ z11.s }, p0/z, [x2, #3, MUL VL]    
ld1w	{ z12.s }, p0/z, [x2, #4, MUL VL]    
ld1w	{ z13.s }, p0/z, [x2, #5, MUL VL]    
add	x1, x1, #96                       
add	x2, x2, #384                      
0:                                                 
ld1rqw	{ z6.s },  p0/z, [x1]               
ld1rqw	{ z7.s },  p0/z, [x1, #16]          
ld1w	{ z14.s }, p0/z, [x2]               
ld1w	{ z15.s }, p0/z, [x2, #1, MUL VL]   
add	x1, x1, #32                       
add	x2, x2, #128                      
fmla	z16.s, z8.s, z0.s[0]                    
fmla	z18.s, z8.s, z0.s[1]                    
fmla	z20.s, z8.s, z0.s[2]                    
fmla	z22.s, z8.s, z0.s[3]                    
fmla	z17.s, z9.s, z0.s[0]                    
fmla	z19.s, z9.s, z0.s[1]                    
fmla	z21.s, z9.s, z0.s[2]                   
fmla	z23.s, z9.s, z0.s[3]                    
fmla	z24.s, z8.s, z1.s[0]                    
fmla	z26.s, z8.s, z1.s[1]                    
fmla	z28.s, z8.s, z1.s[2]                    
fmla	z30.s, z8.s, z1.s[3]                    
fmla	z25.s, z9.s, z1.s[0]                    
fmla	z27.s, z9.s, z1.s[1]                    
fmla	z29.s, z9.s, z1.s[2]                    
fmla	z31.s, z9.s, z1.s[3]                    
ld1rqw	{ z0.s }, p0/z, [x1]                 
ld1rqw	{ z1.s }, p0/z, [x1, #16]            
ld1w	{ z8.s }, p0/z, [x2]                 
ld1w	{ z9.s }, p0/z, [x2, #1, MUL VL]     
add	x1, x1, #32                       
add	x2, x2, #128                      
fmla	z16.s, z10.s, z2.s[0]                    
fmla	z18.s, z10.s, z2.s[1]                    
fmla	z20.s, z10.s, z2.s[2]                    
fmla	z22.s, z10.s, z2.s[3]                    
fmla	z17.s, z11.s, z2.s[0]                    
fmla	z19.s, z11.s, z2.s[1]                    
fmla	z21.s, z11.s, z2.s[2]                    
fmla	z23.s, z11.s, z2.s[3]                    
fmla	z24.s, z10.s, z3.s[0]                    
fmla	z26.s, z10.s, z3.s[1]                    
fmla	z28.s, z10.s, z3.s[2]                    
fmla	z30.s, z10.s, z3.s[3]                    
fmla	z25.s, z11.s, z3.s[0]                    
fmla	z27.s, z11.s, z3.s[1]                    
fmla	z29.s, z11.s, z3.s[2]                    
fmla	z31.s, z11.s, z3.s[3]                    
ld1rqw	{ z2.s }, p0/z, [x1]                 
ld1rqw	{ z3.s }, p0/z, [x1, #16]            
ld1w	{ z10.s }, p0/z, [x2]                 
ld1w	{ z11.s }, p0/z, [x2, #1, MUL VL]     
add	x1, x1, #32                       
add	x2, x2, #128                      
fmla	z16.s, z12.s, z4.s[0]                    
fmla	z18.s, z12.s, z4.s[1]                    
fmla	z20.s, z12.s, z4.s[2]                    
fmla	z22.s, z12.s, z4.s[3]                    
fmla	z17.s, z13.s, z4.s[0]                    
fmla	z19.s, z13.s, z4.s[1]                    
fmla	z21.s, z13.s, z4.s[2]                    
fmla	z23.s, z13.s, z4.s[3]                    
fmla	z24.s, z12.s, z5.s[0]                    
fmla	z26.s, z12.s, z5.s[1]                    
fmla	z28.s, z12.s, z5.s[2]                    
fmla	z30.s, z12.s, z5.s[3]                    
fmla	z25.s, z13.s, z5.s[0]                    
fmla	z27.s, z13.s, z5.s[1]                    
fmla	z29.s, z13.s, z5.s[2]                    
fmla	z31.s, z13.s, z5.s[3]                    
ld1rqw	{ z4.s },  p0/z, [x1]                 
ld1rqw	{ z5.s },  p0/z, [x1, #16]            
ld1w	{ z12.s }, p0/z, [x2]                 
ld1w	{ z13.s }, p0/z, [x2, #1, MUL VL]     
add	x1, x1, #32                        
add	x2, x2, #128                       
fmla	z16.s, z14.s, z6.s[0]                    
fmla	z18.s, z14.s, z6.s[1]                    
fmla	z20.s, z14.s, z6.s[2]                    
fmla	z22.s, z14.s, z6.s[3]                    
fmla	z17.s, z15.s, z6.s[0]                    
fmla	z19.s, z15.s, z6.s[1]                    
fmla	z21.s, z15.s, z6.s[2]                    
fmla	z23.s, z15.s, z6.s[3]                    
fmla	z24.s, z14.s, z7.s[0]                    
fmla	z26.s, z14.s, z7.s[1]                    
fmla	z28.s, z14.s, z7.s[2]                    
fmla	z30.s, z14.s, z7.s[3]                    
fmla	z25.s, z15.s, z7.s[0]                    
fmla	z27.s, z15.s, z7.s[1]                    
fmla	z29.s, z15.s, z7.s[2]                    
fmla	z31.s, z15.s, z7.s[3]                    
subs   x6, x6, 0x1                              
b.ne   0b                                      
st1w	{ z16.s }, p0, [x3]      
st1w	{ z17.s }, p0, [x3, x4, lsl #2]    
st1w	{ z18.s }, p0, [x12]      
st1w	{ z19.s }, p0, [x12, x4, lsl #2]    
st1w	{ z20.s }, p0, [x13]      
st1w	{ z21.s }, p0, [x13, x4, lsl #2]    
st1w	{ z22.s }, p0, [x14]      
st1w	{ z23.s }, p0, [x14, x4, lsl #2]    
st1w	{ z24.s }, p0, [x8]      
st1w	{ z25.s }, p0, [x8, x4, lsl #2]    
st1w	{ z26.s }, p0, [x15]      
st1w	{ z27.s }, p0, [x15, x4, lsl #2]    
st1w	{ z28.s }, p0, [x16]      
st1w	{ z29.s }, p0, [x16, x4, lsl #2]    
st1w	{ z30.s }, p0, [x17]      
st1w	{ z31.s }, p0, [x17, x4, lsl #2]    
1:                                                 

	.loc 13 250 0 is_stmt 1
..LDL25:
/*    ??? */	ldp	d8, d9, [sp, 96]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 80]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 64]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	ldp	d14, d15, [sp, 48]	//  (*)
	.cfi_restore 78
	.cfi_restore 79
/*    ??? */	ldr	x30, [sp, 112]	//  (*)
	.cfi_restore 30
/*    250 */	add	sp, sp, 128
	.cfi_def_cfa_offset 0
/*    250 */	ret	
..D2.pchi:
	.cfi_endproc
.LFE1:
	.size	_Z11kernel_8x32iPfS_S_iiii, .-_Z11kernel_8x32iPfS_S_iiii
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z12kernel_12x32iPfS_S_iiii $"
	.text
	.align	2
	.global	_Z12kernel_12x32iPfS_S_iiii
	.type	_Z12kernel_12x32iPfS_S_iiii, %function
_Z12kernel_12x32iPfS_S_iiii:
	.loc 13 253 0
..LDL26:
.LFB2:
	.cfi_startproc
/*    250 */	sub	sp, sp, 128
	.cfi_def_cfa_offset 128
/*    250 */	mov	w17, w4
/*    ??? */	stp	x29, x30, [sp, 112]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    ??? */	stp	d8, d9, [sp, 96]	//  (*)
	.cfi_offset 72, -32
	.cfi_offset 73, -24
/*    ??? */	stp	d10, d11, [sp, 80]	//  (*)
	.cfi_offset 74, -48
	.cfi_offset 75, -40
/*    ??? */	stp	d12, d13, [sp, 64]	//  (*)
	.cfi_offset 76, -64
	.cfi_offset 77, -56
/*    ??? */	stp	d14, d15, [sp, 48]	//  (*)
	.cfi_offset 78, -80
	.cfi_offset 79, -72
	.loc 13 263 0
..LDL27:
/*    263 */	add	w15, w17, w17
	.loc 13 265 0
..LDL28:
/*    265 */	lsl	w12, w17, 2
	.loc 13 264 0
..LDL29:
/*    264 */	add	w14, w15, w17
	.loc 13 268 0
..LDL30:
/*    268 */	lsl	w9, w17, 3
	.loc 13 272 0
..LDL31:
/*    272 */	lsl	w16, w14, 2
	.loc 13 267 0
..LDL32:
/*    267 */	add	w11, w14, w14
	.loc 13 272 0
..LDL33:
/*    272 */	sub	w29, w16, w17
	.loc 13 263 0
..LDL34:
/*    263 */	sxtw	x16, w15
	.loc 13 264 0
..LDL35:
/*    264 */	sxtw	x15, w14
	.loc 13 265 0
..LDL36:
/*    265 */	sxtw	x14, w12
	.loc 13 268 0
..LDL37:
/*    268 */	sub	w10, w9, w17
	.loc 13 267 0
..LDL38:
/*    267 */	sxtw	x12, w11
	.loc 13 266 0
..LDL39:
/*    266 */	add	w13, w17, w17, lsl #2
	.loc 13 268 0
..LDL40:
/*    268 */	sxtw	x11, w10
	.loc 13 262 0
..LDL41:
/*    262 */	sxtw	x18, w17
	.loc 13 269 0
..LDL42:
/*    269 */	sxtw	x10, w9
	.loc 13 270 0
..LDL43:
/*    270 */	add	w8, w17, w17, lsl #3
	.loc 13 271 0
..LDL44:
/*    271 */	add	w4, w13, w13
	.loc 13 266 0
..LDL45:
/*    266 */	sxtw	x13, w13
	.loc 13 270 0
..LDL46:
/*    270 */	sxtw	x9, w8
	.loc 13 271 0
..LDL47:
/*    271 */	sxtw	x8, w4
	.loc 13 272 0
..LDL48:
/*    272 */	sxtw	x4, w29
	.loc 13 262 0
..LDL49:
/*    262 */	add	x18, x3, x18, lsl #2
	.loc 13 263 0
..LDL50:
/*    263 */	add	x16, x3, x16, lsl #2
	.loc 13 264 0
..LDL51:
/*    264 */	add	x15, x3, x15, lsl #2
	.loc 13 265 0
..LDL52:
/*    265 */	add	x14, x3, x14, lsl #2
	.loc 13 266 0
..LDL53:
/*    266 */	add	x13, x3, x13, lsl #2
	.loc 13 267 0
..LDL54:
/*    267 */	add	x12, x3, x12, lsl #2
	.loc 13 268 0
..LDL55:
/*    268 */	add	x11, x3, x11, lsl #2
	.loc 13 269 0
..LDL56:
/*    269 */	add	x10, x3, x10, lsl #2
	.loc 13 270 0
..LDL57:
/*    270 */	add	x9, x3, x9, lsl #2
	.loc 13 271 0
..LDL58:
/*    271 */	add	x8, x3, x8, lsl #2
	.loc 13 272 0
..LDL59:
/*    272 */	add	x29, x3, x4, lsl #2
	.loc 13 274 0 is_stmt 0
..LDL60:
	ptrue  p0.s  
mov    x4, #16 
mov    x5, x0    
cmp    w5, #0  
b.eq    1f     
ld1w	{ z8.s },  p0/z, [x3]      
ld1w	{ z9.s },  p0/z, [x3, x4, lsl #2]    
ld1w	{ z10.s }, p0/z, [x18]      
ld1w	{ z11.s }, p0/z, [x18, x4, lsl #2]    
ld1w	{ z12.s }, p0/z, [x16]      
ld1w	{ z13.s }, p0/z, [x16, x4, lsl #2]    
ld1w	{ z14.s }, p0/z, [x15]      
ld1w	{ z15.s }, p0/z, [x15, x4, lsl #2]    
ld1w	{ z16.s }, p0/z, [x14]      
ld1w	{ z17.s }, p0/z, [x14, x4, lsl #2]    
ld1w	{ z18.s }, p0/z, [x13]      
ld1w	{ z19.s }, p0/z, [x13, x4, lsl #2]    
ld1w	{ z20.s }, p0/z, [x12]      
ld1w	{ z21.s }, p0/z, [x12, x4, lsl #2]    
ld1w	{ z22.s }, p0/z, [x11]      
ld1w	{ z23.s }, p0/z, [x11, x4, lsl #2]    
ld1w	{ z24.s }, p0/z, [x10]      
ld1w	{ z25.s }, p0/z, [x10, x4, lsl #2]    
ld1w	{ z26.s }, p0/z, [x9]      
ld1w	{ z27.s }, p0/z, [x9, x4, lsl #2]    
ld1w	{ z28.s }, p0/z, [x8]     
ld1w	{ z29.s }, p0/z, [x8, x4, lsl #2]    
ld1w	{ z30.s }, p0/z, [x29]     
ld1w	{ z31.s }, p0/z, [x29, x4, lsl #2]    
0:                                                 
ld1rqw	{ z0.s }, p0/z, [x1]                 
ld1rqw	{ z1.s }, p0/z, [x1, #16]            
ld1rqw	{ z2.s }, p0/z, [x1, #32]            
ld1w	{ z3.s }, p0/z, [x2]                 
ld1w	{ z4.s }, p0/z, [x2, x4, lsl #2]     
add	x1, x1, #48                       
fmla	z8.s,  z3.s, z0.s[0]                    
fmla	z10.s, z3.s, z0.s[1]                    
fmla	z12.s, z3.s, z0.s[2]                    
fmla	z14.s, z3.s, z0.s[3]                    
fmla	z9.s,  z4.s, z0.s[0]                    
fmla	z11.s, z4.s, z0.s[1]                    
fmla	z13.s, z4.s, z0.s[2]                    
fmla	z15.s, z4.s, z0.s[3]                    
add	x2, x2, #128                      
fmla	z16.s, z3.s, z1.s[0]                    
fmla	z18.s, z3.s, z1.s[1]                    
fmla	z20.s, z3.s, z1.s[2]                    
fmla	z22.s, z3.s, z1.s[3]                    
fmla	z17.s, z4.s, z1.s[0]                    
fmla	z19.s, z4.s, z1.s[1]                    
fmla	z21.s, z4.s, z1.s[2]                    
fmla	z23.s, z4.s, z1.s[3]                    
subs   x5, x5, #1                              
fmla	z24.s, z3.s, z2.s[0]                    
fmla	z26.s, z3.s, z2.s[1]                    
fmla	z28.s, z3.s, z2.s[2]                    
fmla	z30.s, z3.s, z2.s[3]                    
fmla	z25.s, z4.s, z2.s[0]                    
fmla	z27.s, z4.s, z2.s[1]                    
fmla	z29.s, z4.s, z2.s[2]                    
fmla	z31.s, z4.s, z2.s[3]                    
b.ne   0b                                      
st1w	{ z8.s },  p0, [x3]      
st1w	{ z9.s },  p0, [x3, x4, lsl #2]    
st1w	{ z10.s }, p0, [x18]      
st1w	{ z11.s }, p0, [x18, x4, lsl #2]    
st1w	{ z12.s }, p0, [x16]      
st1w	{ z13.s }, p0, [x16, x4, lsl #2]    
st1w	{ z14.s }, p0, [x15]      
st1w	{ z15.s }, p0, [x15, x4, lsl #2]    
st1w	{ z16.s }, p0, [x14]      
st1w	{ z17.s }, p0, [x14, x4, lsl #2]    
st1w	{ z18.s }, p0, [x13]      
st1w	{ z19.s }, p0, [x13, x4, lsl #2]    
st1w	{ z20.s }, p0, [x12]      
st1w	{ z21.s }, p0, [x12, x4, lsl #2]    
st1w	{ z22.s }, p0, [x11]      
st1w	{ z23.s }, p0, [x11, x4, lsl #2]    
st1w	{ z24.s }, p0, [x10]      
st1w	{ z25.s }, p0, [x10, x4, lsl #2]    
st1w	{ z26.s }, p0, [x9]      
st1w	{ z27.s }, p0, [x9, x4, lsl #2]    
st1w	{ z28.s }, p0, [x8]     
st1w	{ z29.s }, p0, [x8, x4, lsl #2]    
st1w	{ z30.s }, p0, [x29]     
st1w	{ z31.s }, p0, [x29, x4, lsl #2]    
1:                                                 

	.loc 13 541 0 is_stmt 1
..LDL61:
/*    ??? */	ldp	d8, d9, [sp, 96]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 80]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 64]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	ldp	d14, d15, [sp, 48]	//  (*)
	.cfi_restore 78
	.cfi_restore 79
/*    ??? */	ldp	x29, x30, [sp, 112]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    541 */	add	sp, sp, 128
	.cfi_def_cfa_offset 0
/*    541 */	ret	
..D3.pchi:
	.cfi_endproc
.LFE2:
	.size	_Z12kernel_12x32iPfS_S_iiii, .-_Z12kernel_12x32iPfS_S_iiii
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z11kernel_4x64iPfS_S_iiii $"
	.text
	.align	2
	.global	_Z11kernel_4x64iPfS_S_iiii
	.type	_Z11kernel_4x64iPfS_S_iiii, %function
_Z11kernel_4x64iPfS_S_iiii:
	.loc 13 544 0
..LDL62:
.LFB3:
	.cfi_startproc
/*    541 */	sub	sp, sp, 128
	.cfi_def_cfa_offset 128
/*    541 */	mov	w9, w4
/*    ??? */	str	x30, [sp, 112]	//  (*)
	.cfi_offset 30, -16
/*    ??? */	stp	d8, d9, [sp, 96]	//  (*)
	.cfi_offset 72, -32
	.cfi_offset 73, -24
/*    ??? */	stp	d10, d11, [sp, 80]	//  (*)
	.cfi_offset 74, -48
	.cfi_offset 75, -40
/*    ??? */	stp	d12, d13, [sp, 64]	//  (*)
	.cfi_offset 76, -64
	.cfi_offset 77, -56
/*    ??? */	stp	d14, d15, [sp, 48]	//  (*)
	.cfi_offset 78, -80
	.cfi_offset 79, -72
	.loc 13 552 0
..LDL63:
/*    552 */	sxtw	x4, w9
/*    552 */	add	x10, x3, x4, lsl #2
	.loc 13 553 0
..LDL64:
/*    553 */	add	w4, w9, w9
/*    553 */	sxtw	x8, w4
	.loc 13 554 0
..LDL65:
/*    554 */	add	w4, w4, w9
/*    554 */	sxtw	x4, w4
	.loc 13 553 0
..LDL66:
/*    553 */	add	x8, x3, x8, lsl #2
	.loc 13 554 0
..LDL67:
/*    554 */	add	x11, x3, x4, lsl #2
	.loc 13 556 0 is_stmt 0
..LDL68:
	ptrue  p0.s  
mov    x4, #16 
mov    x5, x0    
lsr    x6, x5, 0x1  
cmp    w5, #0  
b.eq   1f     
ld1w	{ z16.s }, p0/z, [x3]      
ld1w	{ z17.s }, p0/z, [x3, #1, MUL VL]    
ld1w	{ z18.s }, p0/z, [x3, #2, MUL VL]    
ld1w	{ z19.s }, p0/z, [x3, #3, MUL VL]    
ld1w	{ z20.s }, p0/z, [x10]      
ld1w	{ z21.s }, p0/z, [x10, #1, MUL VL]    
ld1w	{ z22.s }, p0/z, [x10, #2, MUL VL]    
ld1w	{ z23.s }, p0/z, [x10, #3, MUL VL]    
ld1w	{ z24.s }, p0/z, [x8]      
ld1w	{ z25.s }, p0/z, [x8, #1, MUL VL]    
ld1w	{ z26.s }, p0/z, [x8, #2, MUL VL]    
ld1w	{ z27.s }, p0/z, [x8, #3, MUL VL]    
ld1w	{ z28.s }, p0/z, [x11]     
ld1w	{ z29.s }, p0/z, [x11, #1, MUL VL]    
ld1w	{ z30.s }, p0/z, [x11, #2, MUL VL]    
ld1w	{ z31.s }, p0/z, [x11, #3, MUL VL]    
ld1w	{ z8.s },  p0/z, [x2]                
ld1w	{ z9.s },  p0/z, [x2, #1, MUL VL]    
ld1w	{ z10.s }, p0/z, [x2, #2, MUL VL]    
ld1w	{ z11.s }, p0/z, [x2, #3, MUL VL]    
ld1rw	{ z0.s }, p0/z, [x1]                 
ld1rw	{ z1.s }, p0/z, [x1, #4]             
ld1rw	{ z2.s }, p0/z, [x1, #8]             
ld1rw	{ z3.s }, p0/z, [x1, #12]            
0:                                                 
ld1w	{ z12.s }, p0/z, [x2, #4, MUL VL]    
ld1w	{ z13.s }, p0/z, [x2, #5, MUL VL]    
ld1w	{ z14.s }, p0/z, [x2, #6, MUL VL]    
ld1w	{ z15.s }, p0/z, [x2, #7, MUL VL]    
ld1rw	{ z4.s }, p0/z, [x1, #16]            
ld1rw	{ z5.s }, p0/z, [x1, #20]            
ld1rw	{ z6.s }, p0/z, [x1, #24]            
ld1rw	{ z7.s }, p0/z, [x1, #28]            
prfm	pldl1keep, [x1, #512]                
fmla	z16.s, p0/m, z8.s,  z0.s                
fmla	z17.s, p0/m, z9.s,  z0.s                
fmla	z18.s, p0/m, z10.s, z0.s                
fmla	z19.s, p0/m, z11.s, z0.s                
fmla	z20.s, p0/m, z8.s,  z1.s                
fmla	z21.s, p0/m, z9.s,  z1.s                
fmla	z22.s, p0/m, z10.s, z1.s                
fmla	z23.s, p0/m, z11.s, z1.s                
add	x2, x2, #512                      
fmla	z24.s, p0/m, z8.s,  z2.s                
fmla	z25.s, p0/m, z9.s,  z2.s                
fmla	z26.s, p0/m, z10.s, z2.s                
fmla	z27.s, p0/m, z11.s, z2.s                
add	x1, x1, #32                       
fmla	z28.s, p0/m, z8.s,  z3.s                
fmla	z29.s, p0/m, z9.s,  z3.s                
fmla	z30.s, p0/m, z10.s, z3.s                
fmla	z31.s, p0/m, z11.s, z3.s                
ld1w	{ z8.s },  p0/z, [x2]                
ld1w	{ z9.s },  p0/z, [x2, #1, MUL VL]    
ld1w	{ z10.s }, p0/z, [x2, #2, MUL VL]    
ld1w	{ z11.s }, p0/z, [x2, #3, MUL VL]    
ld1rw	{ z0.s }, p0/z, [x1]                 
ld1rw	{ z1.s }, p0/z, [x1, #4]             
ld1rw	{ z2.s }, p0/z, [x1, #8]             
ld1rw	{ z3.s }, p0/z, [x1, #12]            
prfm	pldl1keep, [x1, #256]                
fmla	z16.s, p0/m, z12.s, z4.s                
fmla	z17.s, p0/m, z13.s, z4.s                
fmla	z18.s, p0/m, z14.s, z4.s                
fmla	z19.s, p0/m, z15.s, z4.s                
fmla	z20.s, p0/m, z12.s, z5.s                
fmla	z21.s, p0/m, z13.s, z5.s                
fmla	z22.s, p0/m, z14.s, z5.s                
fmla	z23.s, p0/m, z15.s, z5.s                
fmla	z24.s, p0/m, z12.s, z6.s                
fmla	z25.s, p0/m, z13.s, z6.s                
fmla	z26.s, p0/m, z14.s, z6.s                
fmla	z27.s, p0/m, z15.s, z6.s                
fmla	z28.s, p0/m, z12.s, z7.s                
fmla	z29.s, p0/m, z13.s, z7.s                
fmla	z30.s, p0/m, z14.s, z7.s                
fmla	z31.s, p0/m, z15.s, z7.s                
subs   x6, x6, #1                              
b.ne   0b                                      
st1w	{ z16.s }, p0, [x3]      
st1w	{ z17.s }, p0, [x3, #1, MUL VL]    
st1w	{ z18.s }, p0, [x3, #2, MUL VL]    
st1w	{ z19.s }, p0, [x3, #3, MUL VL]    
st1w	{ z20.s }, p0, [x10]      
st1w	{ z21.s }, p0, [x10, #1, MUL VL]    
st1w	{ z22.s }, p0, [x10, #2, MUL VL]    
st1w	{ z23.s }, p0, [x10, #3, MUL VL]    
st1w	{ z24.s }, p0, [x8]      
st1w	{ z25.s }, p0, [x8, #1, MUL VL]    
st1w	{ z26.s }, p0, [x8, #2, MUL VL]    
st1w	{ z27.s }, p0, [x8, #3, MUL VL]    
st1w	{ z28.s }, p0, [x11]     
st1w	{ z29.s }, p0, [x11, #1, MUL VL]    
st1w	{ z30.s }, p0, [x11, #2, MUL VL]    
st1w	{ z31.s }, p0, [x11, #3, MUL VL]    
1:                                                

	.loc 13 716 0 is_stmt 1
..LDL69:
/*    ??? */	ldp	d8, d9, [sp, 96]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 80]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 64]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	ldp	d14, d15, [sp, 48]	//  (*)
	.cfi_restore 78
	.cfi_restore 79
/*    ??? */	ldr	x30, [sp, 112]	//  (*)
	.cfi_restore 30
/*    716 */	add	sp, sp, 128
	.cfi_def_cfa_offset 0
/*    716 */	ret	
..D4.pchi:
	.cfi_endproc
.LFE3:
	.size	_Z11kernel_4x64iPfS_S_iiii, .-_Z11kernel_4x64iPfS_S_iiii
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z15kernel_12x32_v1iPfS_S_iiii $"
	.text
	.align	2
	.global	_Z15kernel_12x32_v1iPfS_S_iiii
	.type	_Z15kernel_12x32_v1iPfS_S_iiii, %function
_Z15kernel_12x32_v1iPfS_S_iiii:
	.loc 13 719 0
..LDL70:
.LFB4:
	.cfi_startproc
/*    716 */	sub	sp, sp, 128
	.cfi_def_cfa_offset 128
/*    716 */	mov	w17, w4
/*    ??? */	stp	x29, x30, [sp, 112]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    ??? */	stp	d8, d9, [sp, 96]	//  (*)
	.cfi_offset 72, -32
	.cfi_offset 73, -24
/*    ??? */	stp	d10, d11, [sp, 80]	//  (*)
	.cfi_offset 74, -48
	.cfi_offset 75, -40
/*    ??? */	stp	d12, d13, [sp, 64]	//  (*)
	.cfi_offset 76, -64
	.cfi_offset 77, -56
/*    ??? */	stp	d14, d15, [sp, 48]	//  (*)
	.cfi_offset 78, -80
	.cfi_offset 79, -72
	.loc 13 729 0
..LDL71:
/*    729 */	add	w15, w17, w17
	.loc 13 731 0
..LDL72:
/*    731 */	lsl	w12, w17, 2
	.loc 13 730 0
..LDL73:
/*    730 */	add	w14, w15, w17
	.loc 13 734 0
..LDL74:
/*    734 */	lsl	w9, w17, 3
	.loc 13 738 0
..LDL75:
/*    738 */	lsl	w16, w14, 2
	.loc 13 733 0
..LDL76:
/*    733 */	add	w11, w14, w14
	.loc 13 738 0
..LDL77:
/*    738 */	sub	w29, w16, w17
	.loc 13 729 0
..LDL78:
/*    729 */	sxtw	x16, w15
	.loc 13 730 0
..LDL79:
/*    730 */	sxtw	x15, w14
	.loc 13 731 0
..LDL80:
/*    731 */	sxtw	x14, w12
	.loc 13 734 0
..LDL81:
/*    734 */	sub	w10, w9, w17
	.loc 13 733 0
..LDL82:
/*    733 */	sxtw	x12, w11
	.loc 13 732 0
..LDL83:
/*    732 */	add	w13, w17, w17, lsl #2
	.loc 13 734 0
..LDL84:
/*    734 */	sxtw	x11, w10
	.loc 13 728 0
..LDL85:
/*    728 */	sxtw	x18, w17
	.loc 13 735 0
..LDL86:
/*    735 */	sxtw	x10, w9
	.loc 13 736 0
..LDL87:
/*    736 */	add	w8, w17, w17, lsl #3
	.loc 13 737 0
..LDL88:
/*    737 */	add	w4, w13, w13
	.loc 13 732 0
..LDL89:
/*    732 */	sxtw	x13, w13
	.loc 13 736 0
..LDL90:
/*    736 */	sxtw	x9, w8
	.loc 13 737 0
..LDL91:
/*    737 */	sxtw	x8, w4
	.loc 13 738 0
..LDL92:
/*    738 */	sxtw	x4, w29
	.loc 13 728 0
..LDL93:
/*    728 */	add	x18, x3, x18, lsl #2
	.loc 13 729 0
..LDL94:
/*    729 */	add	x16, x3, x16, lsl #2
	.loc 13 730 0
..LDL95:
/*    730 */	add	x15, x3, x15, lsl #2
	.loc 13 731 0
..LDL96:
/*    731 */	add	x14, x3, x14, lsl #2
	.loc 13 732 0
..LDL97:
/*    732 */	add	x13, x3, x13, lsl #2
	.loc 13 733 0
..LDL98:
/*    733 */	add	x12, x3, x12, lsl #2
	.loc 13 734 0
..LDL99:
/*    734 */	add	x11, x3, x11, lsl #2
	.loc 13 735 0
..LDL100:
/*    735 */	add	x10, x3, x10, lsl #2
	.loc 13 736 0
..LDL101:
/*    736 */	add	x9, x3, x9, lsl #2
	.loc 13 737 0
..LDL102:
/*    737 */	add	x8, x3, x8, lsl #2
	.loc 13 738 0
..LDL103:
/*    738 */	add	x29, x3, x4, lsl #2
	.loc 13 740 0 is_stmt 0
..LDL104:
	ptrue  p0.s  
mov    x4, #16 
mov    x5, x0    
cmp    w5, #0  
b.eq    1f     
ld1w	{ z8.s },  p0/z, [x3]      
ld1w	{ z9.s },  p0/z, [x3, x4, lsl #2]    
ld1w	{ z10.s }, p0/z, [x18]      
ld1w	{ z11.s }, p0/z, [x18, x4, lsl #2]    
ld1w	{ z12.s }, p0/z, [x16]      
ld1w	{ z13.s }, p0/z, [x16, x4, lsl #2]    
ld1w	{ z14.s }, p0/z, [x15]      
ld1w	{ z15.s }, p0/z, [x15, x4, lsl #2]    
ld1w	{ z16.s }, p0/z, [x14]      
ld1w	{ z17.s }, p0/z, [x14, x4, lsl #2]    
ld1w	{ z18.s }, p0/z, [x13]      
ld1w	{ z19.s }, p0/z, [x13, x4, lsl #2]    
ld1w	{ z20.s }, p0/z, [x12]      
ld1w	{ z21.s }, p0/z, [x12, x4, lsl #2]    
ld1w	{ z22.s }, p0/z, [x11]      
ld1w	{ z23.s }, p0/z, [x11, x4, lsl #2]    
ld1w	{ z24.s }, p0/z, [x10]      
ld1w	{ z25.s }, p0/z, [x10, x4, lsl #2]    
ld1w	{ z26.s }, p0/z, [x9]      
ld1w	{ z27.s }, p0/z, [x9, x4, lsl #2]    
ld1w	{ z28.s }, p0/z, [x8]     
ld1w	{ z29.s }, p0/z, [x8, x4, lsl #2]    
ld1w	{ z30.s }, p0/z, [x29]     
ld1w	{ z31.s }, p0/z, [x29, x4, lsl #2]    
0:                                                 
ld1rw	{ z0.s }, p0/z, [x1]                 
ld1rw	{ z1.s }, p0/z, [x1, #4]             
ld1rw	{ z2.s }, p0/z, [x1, #8]             
ld1rw	{ z5.s }, p0/z, [x1, #12]            
ld1rw	{ z6.s }, p0/z, [x1, #16]            
ld1w	{ z3.s }, p0/z, [x2]                 
ld1w	{ z4.s }, p0/z, [x2, x4, lsl #2]     
fmla	z8.s,  p0/m, z3.s, z0.s                 
fmla	z9.s,  p0/m, z4.s, z0.s                 
fmla	z10.s, p0/m, z3.s, z1.s                 
fmla	z11.s, p0/m, z4.s, z1.s                 
fmla	z12.s, p0/m, z3.s, z2.s                 
fmla	z13.s, p0/m, z4.s, z2.s                 
fmla	z14.s, p0/m, z3.s, z5.s                 
fmla	z15.s, p0/m, z4.s, z5.s                 
fmla	z16.s, p0/m, z3.s, z6.s                 
fmla	z17.s, p0/m, z4.s, z6.s                 
ld1rw	{ z0.s }, p0/z, [x1, #20]            
ld1rw	{ z1.s }, p0/z, [x1, #24]            
ld1rw	{ z2.s }, p0/z, [x1, #28]            
ld1rw	{ z5.s }, p0/z, [x1, #32]            
ld1rw	{ z6.s }, p0/z, [x1, #36]            
fmla	z18.s, p0/m, z3.s, z0.s                 
fmla	z19.s, p0/m, z4.s, z0.s                 
fmla	z20.s, p0/m, z3.s, z1.s                 
fmla	z21.s, p0/m, z4.s, z1.s                 
fmla	z22.s, p0/m, z3.s, z2.s                 
fmla	z23.s, p0/m, z4.s, z2.s                 
fmla	z24.s, p0/m, z3.s, z5.s                 
fmla	z25.s, p0/m, z4.s, z5.s                 
fmla	z26.s, p0/m, z3.s, z6.s                 
fmla	z27.s, p0/m, z4.s, z6.s                 
ld1rw	{ z0.s }, p0/z, [x1, #40]            
ld1rw	{ z1.s }, p0/z, [x1, #44]            
fmla	z28.s, p0/m, z3.s, z0.s                 
fmla	z29.s, p0/m, z4.s, z0.s                 
add	x2, x2, #128                      
add	x1, x1, #48                       
subs   x5, x5, #1                              
fmla	z30.s, p0/m, z3.s, z1.s                 
fmla	z31.s, p0/m, z4.s, z1.s                 
b.ne   0b                                      
st1w	{ z8.s },  p0, [x3]      
st1w	{ z9.s },  p0, [x3, x4, lsl #2]    
st1w	{ z10.s }, p0, [x18]      
st1w	{ z11.s }, p0, [x18, x4, lsl #2]    
st1w	{ z12.s }, p0, [x16]      
st1w	{ z13.s }, p0, [x16, x4, lsl #2]    
st1w	{ z14.s }, p0, [x15]      
st1w	{ z15.s }, p0, [x15, x4, lsl #2]    
st1w	{ z16.s }, p0, [x14]      
st1w	{ z17.s }, p0, [x14, x4, lsl #2]    
st1w	{ z18.s }, p0, [x13]      
st1w	{ z19.s }, p0, [x13, x4, lsl #2]    
st1w	{ z20.s }, p0, [x12]      
st1w	{ z21.s }, p0, [x12, x4, lsl #2]    
st1w	{ z22.s }, p0, [x11]      
st1w	{ z23.s }, p0, [x11, x4, lsl #2]    
st1w	{ z24.s }, p0, [x10]      
st1w	{ z25.s }, p0, [x10, x4, lsl #2]    
st1w	{ z26.s }, p0, [x9]      
st1w	{ z27.s }, p0, [x9, x4, lsl #2]    
st1w	{ z28.s }, p0, [x8]     
st1w	{ z29.s }, p0, [x8, x4, lsl #2]    
st1w	{ z30.s }, p0, [x29]     
st1w	{ z31.s }, p0, [x29, x4, lsl #2]    
1:                                                 

	.loc 13 891 0 is_stmt 1
..LDL105:
/*    ??? */	ldp	d8, d9, [sp, 96]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 80]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 64]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	ldp	d14, d15, [sp, 48]	//  (*)
	.cfi_restore 78
	.cfi_restore 79
/*    ??? */	ldp	x29, x30, [sp, 112]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    891 */	add	sp, sp, 128
	.cfi_def_cfa_offset 0
/*    891 */	ret	
..D5.pchi:
	.cfi_endproc
.LFE4:
	.size	_Z15kernel_12x32_v1iPfS_S_iiii, .-_Z15kernel_12x32_v1iPfS_S_iiii
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z15kernel_12x32_v2iPfS_S_iiii $"
	.text
	.align	2
	.global	_Z15kernel_12x32_v2iPfS_S_iiii
	.type	_Z15kernel_12x32_v2iPfS_S_iiii, %function
_Z15kernel_12x32_v2iPfS_S_iiii:
	.loc 13 894 0
..LDL106:
.LFB5:
	.cfi_startproc
/*    891 */	sub	sp, sp, 128
	.cfi_def_cfa_offset 128
/*    891 */	mov	w17, w4
/*    ??? */	stp	x29, x30, [sp, 112]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    ??? */	stp	d8, d9, [sp, 96]	//  (*)
	.cfi_offset 72, -32
	.cfi_offset 73, -24
/*    ??? */	stp	d10, d11, [sp, 80]	//  (*)
	.cfi_offset 74, -48
	.cfi_offset 75, -40
/*    ??? */	stp	d12, d13, [sp, 64]	//  (*)
	.cfi_offset 76, -64
	.cfi_offset 77, -56
/*    ??? */	stp	d14, d15, [sp, 48]	//  (*)
	.cfi_offset 78, -80
	.cfi_offset 79, -72
	.loc 13 904 0
..LDL107:
/*    904 */	add	w15, w17, w17
	.loc 13 906 0
..LDL108:
/*    906 */	lsl	w12, w17, 2
	.loc 13 905 0
..LDL109:
/*    905 */	add	w14, w15, w17
	.loc 13 909 0
..LDL110:
/*    909 */	lsl	w9, w17, 3
	.loc 13 913 0
..LDL111:
/*    913 */	lsl	w16, w14, 2
	.loc 13 908 0
..LDL112:
/*    908 */	add	w11, w14, w14
	.loc 13 913 0
..LDL113:
/*    913 */	sub	w29, w16, w17
	.loc 13 904 0
..LDL114:
/*    904 */	sxtw	x16, w15
	.loc 13 905 0
..LDL115:
/*    905 */	sxtw	x15, w14
	.loc 13 906 0
..LDL116:
/*    906 */	sxtw	x14, w12
	.loc 13 909 0
..LDL117:
/*    909 */	sub	w10, w9, w17
	.loc 13 908 0
..LDL118:
/*    908 */	sxtw	x12, w11
	.loc 13 907 0
..LDL119:
/*    907 */	add	w13, w17, w17, lsl #2
	.loc 13 909 0
..LDL120:
/*    909 */	sxtw	x11, w10
	.loc 13 903 0
..LDL121:
/*    903 */	sxtw	x18, w17
	.loc 13 910 0
..LDL122:
/*    910 */	sxtw	x10, w9
	.loc 13 911 0
..LDL123:
/*    911 */	add	w8, w17, w17, lsl #3
	.loc 13 912 0
..LDL124:
/*    912 */	add	w4, w13, w13
	.loc 13 907 0
..LDL125:
/*    907 */	sxtw	x13, w13
	.loc 13 911 0
..LDL126:
/*    911 */	sxtw	x9, w8
	.loc 13 912 0
..LDL127:
/*    912 */	sxtw	x8, w4
	.loc 13 913 0
..LDL128:
/*    913 */	sxtw	x4, w29
	.loc 13 903 0
..LDL129:
/*    903 */	add	x18, x3, x18, lsl #2
	.loc 13 904 0
..LDL130:
/*    904 */	add	x16, x3, x16, lsl #2
	.loc 13 905 0
..LDL131:
/*    905 */	add	x15, x3, x15, lsl #2
	.loc 13 906 0
..LDL132:
/*    906 */	add	x14, x3, x14, lsl #2
	.loc 13 907 0
..LDL133:
/*    907 */	add	x13, x3, x13, lsl #2
	.loc 13 908 0
..LDL134:
/*    908 */	add	x12, x3, x12, lsl #2
	.loc 13 909 0
..LDL135:
/*    909 */	add	x11, x3, x11, lsl #2
	.loc 13 910 0
..LDL136:
/*    910 */	add	x10, x3, x10, lsl #2
	.loc 13 911 0
..LDL137:
/*    911 */	add	x9, x3, x9, lsl #2
	.loc 13 912 0
..LDL138:
/*    912 */	add	x8, x3, x8, lsl #2
	.loc 13 913 0
..LDL139:
/*    913 */	add	x29, x3, x4, lsl #2
	.loc 13 915 0 is_stmt 0
..LDL140:
	ptrue  p0.s  
mov    x4, #16 
mov    x5, x0    
lsr    x6, x5, 0x1  
mov    x7, #0 
cmp    w5, #0  
b.eq    1f     
ld1w	{ z8.s },  p0/z, [x3]      
ld1w	{ z9.s },  p0/z, [x3, x4, lsl #2]    
ld1w	{ z10.s }, p0/z, [x18]      
ld1w	{ z11.s }, p0/z, [x18, x4, lsl #2]    
ld1w	{ z12.s }, p0/z, [x16]      
ld1w	{ z13.s }, p0/z, [x16, x4, lsl #2]    
ld1w	{ z14.s }, p0/z, [x15]      
ld1w	{ z15.s }, p0/z, [x15, x4, lsl #2]    
ld1w	{ z16.s }, p0/z, [x14]      
ld1w	{ z17.s }, p0/z, [x14, x4, lsl #2]    
ld1w	{ z18.s }, p0/z, [x13]      
ld1w	{ z19.s }, p0/z, [x13, x4, lsl #2]    
ld1w	{ z20.s }, p0/z, [x12]      
ld1w	{ z21.s }, p0/z, [x12, x4, lsl #2]    
ld1w	{ z22.s }, p0/z, [x11]      
ld1w	{ z23.s }, p0/z, [x11, x4, lsl #2]    
ld1w	{ z24.s }, p0/z, [x10]      
ld1w	{ z25.s }, p0/z, [x10, x4, lsl #2]    
ld1w	{ z26.s }, p0/z, [x9]      
ld1w	{ z27.s }, p0/z, [x9, x4, lsl #2]    
ld1w	{ z28.s }, p0/z, [x8]     
ld1w	{ z29.s }, p0/z, [x8, x4, lsl #2]    
ld1w	{ z30.s }, p0/z, [x29]     
ld1w	{ z31.s }, p0/z, [x29, x4, lsl #2]    
ld1w	{ z4.s }, p0/z, [x2]                 
ld1w	{ z5.s }, p0/z, [x2, #1, MUL VL]     
ld1rw	{ z0.s }, p0/z, [x1]                 
ld1rw	{ z1.s }, p0/z, [x1, #4]             
0:                                                 
ld1w	{ z6.s }, p0/z, [x2, #2, MUL VL]    
ld1w	{ z7.s }, p0/z, [x2, #3, MUL VL]    
prfm	pldl1keep, [x1, #256]                
fmla	z8.s,  p0/m, z4.s, z0.s                 
fmla	z9.s,  p0/m, z5.s, z0.s                 
ld1rw	{ z2.s }, p0/z, [x1, #8]             
ld1rw	{ z3.s }, p0/z, [x1, #12]            
fmla	z10.s, p0/m, z4.s, z1.s                 
fmla	z11.s, p0/m, z5.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x1, #16]            
ld1rw	{ z1.s }, p0/z, [x1, #20]            
fmla	z12.s, p0/m, z4.s, z2.s                 
fmla	z13.s, p0/m, z5.s, z2.s                 
fmla	z14.s, p0/m, z4.s, z3.s                 
fmla	z15.s, p0/m, z5.s, z3.s                 
ld1rw	{ z2.s }, p0/z, [x1, #24]            
ld1rw	{ z3.s }, p0/z, [x1, #28]            
fmla	z16.s, p0/m, z4.s, z0.s                 
fmla	z17.s, p0/m, z5.s, z0.s                 
fmla	z18.s, p0/m, z4.s, z1.s                 
fmla	z19.s, p0/m, z5.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x1, #32]            
ld1rw	{ z1.s }, p0/z, [x1, #36]            
fmla	z20.s, p0/m, z4.s, z2.s                 
fmla	z21.s, p0/m, z5.s, z2.s                 
fmla	z22.s, p0/m, z4.s, z3.s                 
fmla	z23.s, p0/m, z5.s, z3.s                 
ld1rw	{ z2.s }, p0/z, [x1, #40]            
ld1rw	{ z3.s }, p0/z, [x1, #44]            
add	x2, x2, #256                      
fmla	z24.s, p0/m, z4.s, z0.s                 
fmla	z25.s, p0/m, z5.s, z0.s                 
fmla	z26.s, p0/m, z4.s, z1.s                 
fmla	z27.s, p0/m, z5.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x1, #48]            
ld1rw	{ z1.s }, p0/z, [x1, #52]            
fmla	z28.s, p0/m, z4.s, z2.s                 
fmla	z29.s, p0/m, z5.s, z2.s                 
fmla	z30.s, p0/m, z4.s, z3.s                 
fmla	z31.s, p0/m, z5.s, z3.s                 
ld1w	{ z4.s },  p0/z, [x2]                
ld1w	{ z5.s },  p0/z, [x2, #1, MUL VL]    
ld1rw	{ z2.s }, p0/z, [x1, #56]            
ld1rw	{ z3.s }, p0/z, [x1, #60]            
fmla	z8.s,  p0/m, z6.s, z0.s                 
fmla	z9.s,  p0/m, z7.s, z0.s                 
fmla	z10.s, p0/m, z6.s, z1.s                 
fmla	z11.s, p0/m, z7.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x1, #64]            
ld1rw	{ z1.s }, p0/z, [x1, #68]            
fmla	z12.s, p0/m, z6.s, z2.s                 
fmla	z13.s, p0/m, z7.s, z2.s                 
fmla	z14.s, p0/m, z6.s, z3.s                 
fmla	z15.s, p0/m, z7.s, z3.s                 
ld1rw	{ z2.s }, p0/z, [x1, #72]            
ld1rw	{ z3.s }, p0/z, [x1, #76]            
fmla	z16.s, p0/m, z6.s, z0.s                 
fmla	z17.s, p0/m, z7.s, z0.s                 
fmla	z18.s, p0/m, z6.s, z1.s                 
fmla	z19.s, p0/m, z7.s, z1.s                 
prfm	pldl1keep, [x1, #512]                
ld1rw	{ z0.s }, p0/z, [x1, #80]            
ld1rw	{ z1.s }, p0/z, [x1, #84]            
fmla	z20.s, p0/m, z6.s, z2.s                 
fmla	z21.s, p0/m, z7.s, z2.s                 
fmla	z22.s, p0/m, z6.s, z3.s                 
fmla	z23.s, p0/m, z7.s, z3.s                 
ld1rw	{ z2.s }, p0/z, [x1, #88]            
ld1rw	{ z3.s }, p0/z, [x1, #92]            
add	x1, x1, #96                       
fmla	z24.s, p0/m, z6.s, z0.s                 
fmla	z25.s, p0/m, z7.s, z0.s                 
fmla	z26.s, p0/m, z6.s, z1.s                 
fmla	z27.s, p0/m, z7.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x1]                 
ld1rw	{ z1.s }, p0/z, [x1, #4]             
fmla	z28.s, p0/m, z6.s, z2.s                 
fmla	z29.s, p0/m, z7.s, z2.s                 
fmla	z30.s, p0/m, z6.s, z3.s                 
fmla	z31.s, p0/m, z7.s, z3.s                 
subs   x6, x6, #1                              
b.ne   0b                                      
st1w	{ z8.s },  p0, [x3]      
st1w	{ z9.s },  p0, [x3, x4, lsl #2]    
st1w	{ z10.s }, p0, [x18]      
st1w	{ z11.s }, p0, [x18, x4, lsl #2]    
st1w	{ z12.s }, p0, [x16]      
st1w	{ z13.s }, p0, [x16, x4, lsl #2]    
st1w	{ z14.s }, p0, [x15]      
st1w	{ z15.s }, p0, [x15, x4, lsl #2]    
st1w	{ z16.s }, p0, [x14]      
st1w	{ z17.s }, p0, [x14, x4, lsl #2]    
st1w	{ z18.s }, p0, [x13]      
st1w	{ z19.s }, p0, [x13, x4, lsl #2]    
st1w	{ z20.s }, p0, [x12]      
st1w	{ z21.s }, p0, [x12, x4, lsl #2]    
st1w	{ z22.s }, p0, [x11]      
st1w	{ z23.s }, p0, [x11, x4, lsl #2]    
st1w	{ z24.s }, p0, [x10]      
st1w	{ z25.s }, p0, [x10, x4, lsl #2]    
st1w	{ z26.s }, p0, [x9]      
st1w	{ z27.s }, p0, [x9, x4, lsl #2]    
st1w	{ z28.s }, p0, [x8]     
st1w	{ z29.s }, p0, [x8, x4, lsl #2]    
st1w	{ z30.s }, p0, [x29]     
st1w	{ z31.s }, p0, [x29, x4, lsl #2]    
1:                                                 

	.loc 13 1133 0 is_stmt 1
..LDL141:
/*    ??? */	ldp	d8, d9, [sp, 96]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 80]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 64]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	ldp	d14, d15, [sp, 48]	//  (*)
	.cfi_restore 78
	.cfi_restore 79
/*    ??? */	ldp	x29, x30, [sp, 112]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*   1133 */	add	sp, sp, 128
	.cfi_def_cfa_offset 0
/*   1133 */	ret	
..D6.pchi:
	.cfi_endproc
.LFE5:
	.size	_Z15kernel_12x32_v2iPfS_S_iiii, .-_Z15kernel_12x32_v2iPfS_S_iiii
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z12kernel_14x32iPfS_S_iiii $"
	.text
	.align	2
	.global	_Z12kernel_14x32iPfS_S_iiii
	.type	_Z12kernel_14x32iPfS_S_iiii, %function
_Z12kernel_14x32iPfS_S_iiii:
	.loc 13 1136 0
..LDL142:
.LFB6:
	.cfi_startproc
/*   1133 */	sub	sp, sp, 128
	.cfi_def_cfa_offset 128
/*   1133 */	mov	w16, w4
/*    ??? */	stp	x29, x30, [sp, 112]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    ??? */	str	x19, [sp, 104]	//  (*)
	.cfi_offset 19, -24
/*    ??? */	stp	d8, d9, [sp, 88]	//  (*)
	.cfi_offset 72, -40
	.cfi_offset 73, -32
/*    ??? */	stp	d10, d11, [sp, 72]	//  (*)
	.cfi_offset 74, -56
	.cfi_offset 75, -48
/*    ??? */	stp	d12, d13, [sp, 56]	//  (*)
	.cfi_offset 76, -72
	.cfi_offset 77, -64
/*    ??? */	stp	d14, d15, [sp, 40]	//  (*)
	.cfi_offset 78, -88
	.cfi_offset 79, -80
	.loc 13 1146 0
..LDL143:
/*   1146 */	add	w29, w16, w16
	.loc 13 1149 0
..LDL144:
/*   1149 */	add	w14, w16, w16, lsl #2
	.loc 13 1147 0
..LDL145:
/*   1147 */	add	w17, w29, w16
	.loc 13 1146 0
..LDL146:
/*   1146 */	sxtw	x30, w29
	.loc 13 1155 0
..LDL147:
/*   1155 */	lsl	w8, w17, 2
	.loc 13 1157 0
..LDL148:
/*   1157 */	add	w4, w16, w17, lsl #2
	.loc 13 1148 0
..LDL149:
/*   1148 */	lsl	w15, w16, 2
	.loc 13 1150 0
..LDL150:
/*   1150 */	add	w10, w17, w17
	.loc 13 1147 0
..LDL151:
/*   1147 */	sxtw	x29, w17
	.loc 13 1148 0
..LDL152:
/*   1148 */	sxtw	x17, w15
	.loc 13 1151 0
..LDL153:
/*   1151 */	lsl	w12, w16, 3
	.loc 13 1153 0
..LDL154:
/*   1153 */	add	w11, w16, w16, lsl #3
	.loc 13 1154 0
..LDL155:
/*   1154 */	add	w19, w14, w14
	.loc 13 1149 0
..LDL156:
/*   1149 */	sxtw	x15, w14
	.loc 13 1151 0
..LDL157:
/*   1151 */	sub	w13, w12, w16
	.loc 13 1155 0
..LDL158:
/*   1155 */	sub	w9, w8, w16
	.loc 13 1145 0
..LDL159:
/*   1145 */	sxtw	x18, w16
	.loc 13 1150 0
..LDL160:
/*   1150 */	sxtw	x14, w10
	.loc 13 1151 0
..LDL161:
/*   1151 */	sxtw	x13, w13
	.loc 13 1152 0
..LDL162:
/*   1152 */	sxtw	x12, w12
	.loc 13 1153 0
..LDL163:
/*   1153 */	sxtw	x11, w11
	.loc 13 1154 0
..LDL164:
/*   1154 */	sxtw	x10, w19
	.loc 13 1155 0
..LDL165:
/*   1155 */	sxtw	x9, w9
	.loc 13 1156 0
..LDL166:
/*   1156 */	sxtw	x8, w8
	.loc 13 1157 0
..LDL167:
/*   1157 */	sxtw	x4, w4
	.loc 13 1145 0
..LDL168:
/*   1145 */	add	x18, x3, x18, lsl #2
	.loc 13 1146 0
..LDL169:
/*   1146 */	add	x30, x3, x30, lsl #2
	.loc 13 1147 0
..LDL170:
/*   1147 */	add	x29, x3, x29, lsl #2
	.loc 13 1148 0
..LDL171:
/*   1148 */	add	x17, x3, x17, lsl #2
	.loc 13 1149 0
..LDL172:
/*   1149 */	add	x15, x3, x15, lsl #2
	.loc 13 1150 0
..LDL173:
/*   1150 */	add	x14, x3, x14, lsl #2
	.loc 13 1151 0
..LDL174:
/*   1151 */	add	x13, x3, x13, lsl #2
	.loc 13 1152 0
..LDL175:
/*   1152 */	add	x12, x3, x12, lsl #2
	.loc 13 1153 0
..LDL176:
/*   1153 */	add	x11, x3, x11, lsl #2
	.loc 13 1154 0
..LDL177:
/*   1154 */	add	x10, x3, x10, lsl #2
	.loc 13 1155 0
..LDL178:
/*   1155 */	add	x9, x3, x9, lsl #2
	.loc 13 1156 0
..LDL179:
/*   1156 */	add	x8, x3, x8, lsl #2
	.loc 13 1157 0
..LDL180:
/*   1157 */	add	x19, x3, x4, lsl #2
	.loc 13 1159 0 is_stmt 0
..LDL181:
	ptrue  p0.s  
mov    x4, #16 
mov    x5, x0    
cmp    w5, #0  
b.eq    1f     
ld1w	{ z4.s },  p0/z, [x3]      
ld1w	{ z5.s },  p0/z, [x3, x4, lsl #2]    
ld1w	{ z6.s },  p0/z, [x18]      
ld1w	{ z7.s },  p0/z, [x18, x4, lsl #2]    
ld1w	{ z8.s },  p0/z, [x30]      
ld1w	{ z9.s },  p0/z, [x30, x4, lsl #2]    
ld1w	{ z10.s }, p0/z, [x29]      
ld1w	{ z11.s }, p0/z, [x29, x4, lsl #2]    
ld1w	{ z12.s }, p0/z, [x17]      
ld1w	{ z13.s }, p0/z, [x17, x4, lsl #2]    
ld1w	{ z14.s }, p0/z, [x15]      
ld1w	{ z15.s }, p0/z, [x15, x4, lsl #2]    
ld1w	{ z16.s }, p0/z, [x14]      
ld1w	{ z17.s }, p0/z, [x14, x4, lsl #2]    
ld1w	{ z18.s }, p0/z, [x13]      
ld1w	{ z19.s }, p0/z, [x13, x4, lsl #2]    
ld1w	{ z20.s }, p0/z, [x12]      
ld1w	{ z21.s }, p0/z, [x12, x4, lsl #2]    
ld1w	{ z22.s }, p0/z, [x11]      
ld1w	{ z23.s }, p0/z, [x11, x4, lsl #2]    
ld1w	{ z24.s }, p0/z, [x10]     
ld1w	{ z25.s }, p0/z, [x10, x4, lsl #2]    
ld1w	{ z26.s }, p0/z, [x9]     
ld1w	{ z27.s }, p0/z, [x9, x4, lsl #2]    
ld1w	{ z28.s }, p0/z, [x8]     
ld1w	{ z29.s }, p0/z, [x8, x4, lsl #2]    
ld1w	{ z30.s }, p0/z, [x19]     
ld1w	{ z31.s }, p0/z, [x19, x4, lsl #2]    
0:                                                 
prfm	pldl1keep, [x1, #512]                
ld1rw	{ z0.s }, p0/z, [x1]                 
ld1rw	{ z1.s }, p0/z, [x1, #4]             
ld1w	{ z2.s }, p0/z, [x2]                 
ld1w	{ z3.s }, p0/z, [x2, x4, lsl #2]     
fmla	z4.s,  p0/m, z2.s, z0.s                 
fmla	z5.s,  p0/m, z3.s, z0.s                 
fmla	z6.s,  p0/m, z2.s, z1.s                 
fmla	z7.s,  p0/m, z3.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x1, #8]             
ld1rw	{ z1.s }, p0/z, [x1, #12]            
fmla	z8.s,  p0/m, z2.s, z0.s                 
fmla	z9.s,  p0/m, z3.s, z0.s                 
fmla	z10.s, p0/m, z2.s, z1.s                 
fmla	z11.s, p0/m, z3.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x1, #16]            
ld1rw	{ z1.s }, p0/z, [x1, #20]            
fmla	z12.s, p0/m, z2.s, z0.s                 
fmla	z13.s, p0/m, z3.s, z0.s                 
fmla	z14.s, p0/m, z2.s, z1.s                 
fmla	z15.s, p0/m, z3.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x1, #24]            
ld1rw	{ z1.s }, p0/z, [x1, #28]            
fmla	z16.s, p0/m, z2.s, z0.s                 
fmla	z17.s, p0/m, z3.s, z0.s                 
fmla	z18.s, p0/m, z2.s, z1.s                 
fmla	z19.s, p0/m, z3.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x1, #32]            
ld1rw	{ z1.s }, p0/z, [x1, #36]            
fmla	z20.s, p0/m, z2.s, z0.s                 
fmla	z21.s, p0/m, z3.s, z0.s                 
fmla	z22.s, p0/m, z2.s, z1.s                 
fmla	z23.s, p0/m, z3.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x1, #40]            
ld1rw	{ z1.s }, p0/z, [x1, #44]            
fmla	z24.s, p0/m, z2.s, z0.s                 
fmla	z25.s, p0/m, z3.s, z0.s                 
fmla	z26.s, p0/m, z2.s, z1.s                 
fmla	z27.s, p0/m, z3.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x1, #48]            
ld1rw	{ z1.s }, p0/z, [x1, #52]            
fmla	z28.s, p0/m, z2.s, z0.s                 
fmla	z29.s, p0/m, z3.s, z0.s                 
add	x2, x2, #128                      
add	x1, x1, #56                       
subs   x5, x5, #1                              
fmla	z30.s, p0/m, z2.s, z1.s                 
fmla	z31.s, p0/m, z3.s, z1.s                 
b.ne   0b                                      
st1w	{ z4.s },  p0, [x3]      
st1w	{ z5.s },  p0, [x3, x4, lsl #2]    
st1w	{ z6.s },  p0, [x18]      
st1w	{ z7.s },  p0, [x18, x4, lsl #2]    
st1w	{ z8.s },  p0, [x30]      
st1w	{ z9.s },  p0, [x30, x4, lsl #2]    
st1w	{ z10.s }, p0, [x29]      
st1w	{ z11.s }, p0, [x29, x4, lsl #2]    
st1w	{ z12.s }, p0, [x17]      
st1w	{ z13.s }, p0, [x17, x4, lsl #2]    
st1w	{ z14.s }, p0, [x15]      
st1w	{ z15.s }, p0, [x15, x4, lsl #2]    
st1w	{ z16.s }, p0, [x14]      
st1w	{ z17.s }, p0, [x14, x4, lsl #2]    
st1w	{ z18.s }, p0, [x13]      
st1w	{ z19.s }, p0, [x13, x4, lsl #2]    
st1w	{ z20.s }, p0, [x12]      
st1w	{ z21.s }, p0, [x12, x4, lsl #2]    
st1w	{ z22.s }, p0, [x11]      
st1w	{ z23.s }, p0, [x11, x4, lsl #2]    
st1w	{ z24.s }, p0, [x10]     
st1w	{ z25.s }, p0, [x10, x4, lsl #2]    
st1w	{ z26.s }, p0, [x9]     
st1w	{ z27.s }, p0, [x9, x4, lsl #2]    
st1w	{ z28.s }, p0, [x8]     
st1w	{ z29.s }, p0, [x8, x4, lsl #2]    
st1w	{ z30.s }, p0, [x19]     
st1w	{ z31.s }, p0, [x19, x4, lsl #2]    
1:                                                 

	.loc 13 1332 0 is_stmt 1
..LDL182:
/*    ??? */	ldp	d8, d9, [sp, 88]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 72]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 56]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	ldp	d14, d15, [sp, 40]	//  (*)
	.cfi_restore 78
	.cfi_restore 79
/*    ??? */	ldr	x19, [sp, 104]	//  (*)
	.cfi_restore 19
/*    ??? */	ldp	x29, x30, [sp, 112]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*   1332 */	add	sp, sp, 128
	.cfi_def_cfa_offset 0
/*   1332 */	ret	
..D7.pchi:
	.cfi_endproc
.LFE6:
	.size	_Z12kernel_14x32iPfS_S_iiii, .-_Z12kernel_14x32iPfS_S_iiii
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx32_templateILi1EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx32_templateILi1EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx32_templateILi1EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx32_templateILi1EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx32_templateILi1EEviPfS0_S0_i, %function
_Z20kernel_Nx32_templateILi1EEviPfS0_S0_i:
	.loc 13 1337 0
..LDL183:
.LFB7:
	.cfi_startproc
	.loc 13 1343 0
..LDL184:
/*   1343 */	ptrue	p0.s, ALL
	.loc 13 1365 0
..LDL185:
/*   1365 */	add	x10, x3, 64
	.loc 13 1364 0
..LDL186:
/*   1364 */	ld1w	{z4.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1365 0
..LDL187:
/*   1365 */	ld1w	{z1.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1454 0
..LDL188:
/*   1454 */	cmp	w0, 0
/*   1454 */	ble	.L1825
/*   1454 */	mov	x4, 0
/*   1454 */	sub	w7, w0, 2
/*   1454 */	cmp	w7, 0
/*   1454 */	mov	x8, 0
/*   1454 */	mov	x5, x2
/*   1454 */	blt	.L1828
/*   1454 */	mov	x0, 0
	.loc 13 1461 0 is_stmt 0
..LDL189:
/*   1461 */	orr	x6, x1, 6917529027641081856
	.loc 13 1457 0
..LDL190:
/*   1457 */	add	x9, x2, 192
	.loc 13 1461 0
..LDL191:
/*   1461 */	add	x11, x6, 4
	.loc 13 1456 0
..LDL192:
/*   1456 */	add	x6, x2, 128
	.loc 13 1461 0
..LDL193:
/*   1461 */	mov	x12, 2564
/*   1461 */	mov	x13, 516
	.loc 13 1456 0
..LDL194:
/*   1456 */	mov	x8, 0
	.loc 13 1455 0 is_stmt 1
..LDL195:
/*   1455 */	cmp	w7, 4
/*   1455 */	blt	.L2047
	.loc 13 1547 0 is_stmt 0
..LDL196:
/*   1547 */	mov	x14, x11
	.loc 13 1456 0
..LDL197:
/*   1456 */	ld1w	{z7.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1457 0
..LDL198:
/*   1457 */	ld1w	{z5.s}, p0/z, [x9, -2, mul vl]	//  (*)
	.loc 13 1461 0
..LDL199:
/*   1461 */	ldr	s6, [x14, -4]	//  (*)
	.p2align 5
.L1823:					// :entr:term:body:swpl
/*   1461 */	dup	z6.s, z6.s[0]
	.loc 13 1456 0
..LDL200:
/*   1456 */	ld1w	{z3.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1457 0
..LDL201:
/*   1457 */	ld1w	{z0.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1461 0
..LDL202:
/*   1461 */	ld1rw	{z2.s}, p0/z, [x14]	//  (*)
	.loc 13 1462 0
..LDL203:
/*   1462 */	fmla	z4.s, p0/m, z6.s, z7.s
	.loc 13 1463 0
..LDL204:
/*   1463 */	fmla	z1.s, p0/m, z6.s, z5.s
	.loc 13 1547 0
..LDL205:
/*   1547 */	add	x15, x14, 8
	.loc 13 1461 0
..LDL206:
/*   1461 */	ldr	s6, [x14, 4]	//  (*)
	.loc 13 1547 0
..LDL207:
/*   1547 */	add	x11, x9, 256
	.loc 13 1456 0
..LDL208:
/*   1456 */	ld1w	{z7.s}, p0/z, [x5, 4, mul vl]	//  (*)
	.loc 13 1457 0
..LDL209:
/*   1457 */	ld1w	{z5.s}, p0/z, [x11, -2, mul vl]	//  (*)
	.loc 13 1462 0
..LDL210:
/*   1462 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1463 0
..LDL211:
/*   1463 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1461 0
..LDL212:
/*   1461 */	dup	z6.s, z6.s[0]
	.loc 13 1456 0
..LDL213:
/*   1456 */	ld1w	{z3.s}, p0/z, [x6, 4, mul vl]	//  (*)
	.loc 13 1457 0
..LDL214:
/*   1457 */	ld1w	{z0.s}, p0/z, [x9, 4, mul vl]	//  (*)
	.loc 13 1461 0
..LDL215:
/*   1461 */	ld1rw	{z2.s}, p0/z, [x15]	//  (*)
	.loc 13 1462 0
..LDL216:
/*   1462 */	fmla	z4.s, p0/m, z6.s, z7.s
	.loc 13 1463 0
..LDL217:
/*   1463 */	fmla	z1.s, p0/m, z6.s, z5.s
	.loc 13 1547 0
..LDL218:
/*   1547 */	add	x14, x14, 16
	.loc 13 1461 0
..LDL219:
/*   1461 */	ldr	s6, [x14, -4]	//  (*)
	.loc 13 1547 0
..LDL220:
/*   1547 */	add	x5, x5, 512
/*   1547 */	add	x9, x9, 512
	.loc 13 1546 0
..LDL221:
/*   1546 */	add	x4, x4, 16
	.loc 13 1456 0
..LDL222:
/*   1456 */	ld1w	{z7.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1457 0
..LDL223:
/*   1457 */	ld1w	{z5.s}, p0/z, [x9, -2, mul vl]	//  (*)
	.loc 13 1547 0
..LDL224:
/*   1547 */	add	x0, x0, 512
/*   1547 */	add	x6, x6, 512
	.loc 13 1461 0
..LDL225:
/*   1461 */	prfm	2, [x15, x12]	//  (*)
/*   1461 */	prfm	0, [x15, x13]	//  (*)
	.loc 13 1545 0
..LDL226:
/*   1545 */	add	x8, x8, 512
	.loc 13 1462 0
..LDL227:
/*   1462 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1463 0
..LDL228:
/*   1463 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1547 0
..LDL229:
/*   1547 */	sub	w7, w7, 4
	.loc 13 1459 0
..LDL230:
/*   1459 */	cmp	w7, 4
/*   1459 */	bge	.L1823
	.loc 13 1461 0
..LDL231:
/*   1461 */	dup	z6.s, z6.s[0]
	.loc 13 1456 0
..LDL232:
/*   1456 */	ld1w	{z3.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1547 0
..LDL233:
/*   1547 */	add	x11, x14, 8
/*   1547 */	sub	w7, w7, 2
	.loc 13 1457 0
..LDL234:
/*   1457 */	ld1w	{z0.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1461 0
..LDL235:
/*   1461 */	ld1rw	{z2.s}, p0/z, [x14]	//  (*)
	.loc 13 1547 0
..LDL236:
/*   1547 */	add	x5, x5, 256
/*   1547 */	add	x9, x9, 256
	.loc 13 1546 0
..LDL237:
/*   1546 */	add	x4, x4, 8
	.loc 13 1547 0
..LDL238:
/*   1547 */	add	x0, x0, 256
	.loc 13 1461 0
..LDL239:
/*   1461 */	prfm	2, [x14, x12]	//  (*)
/*   1461 */	prfm	0, [x14, x13]	//  (*)
	.loc 13 1547 0
..LDL240:
/*   1547 */	add	x6, x6, 256
	.loc 13 1545 0
..LDL241:
/*   1545 */	add	x8, x8, 256
	.loc 13 1547 0
..LDL242:
/*   1547 */	cmp	w7, 0
	.loc 13 1462 0
..LDL243:
/*   1462 */	fmla	z4.s, p0/m, z6.s, z7.s
	.loc 13 1463 0
..LDL244:
/*   1463 */	fmla	z1.s, p0/m, z6.s, z5.s
	.loc 13 1462 0
..LDL245:
/*   1462 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1463 0
..LDL246:
/*   1463 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1547 0
..LDL247:
/*   1547 */	blt	.L2044
.L2047:
	.p2align 5
.L2050:					// :entr:term:mod:swpl
	.loc 13 1456 0 is_stmt 1
..LDL248:
/*   1456 */	ld1w	{z3.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1457 0
..LDL249:
/*   1457 */	sub	x14, x9, 128
	.loc 13 1461 0
..LDL250:
/*   1461 */	ldr	s2, [x11, -4]	//  (*)
	.loc 13 1547 0
..LDL251:
	.loc 13 1546 0 is_stmt 0
..LDL252:
/*   1546 */	add	x4, x4, 8
	.loc 13 1457 0 is_stmt 1
..LDL253:
/*   1457 */	ld1w	{z0.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1456 0
..LDL254:
/*   1456 */	ld1w	{z7.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1547 0
..LDL255:
/*   1547 */	add	x0, x0, 256
/*   1547 */	add	x6, x6, 256
	.loc 13 1457 0
..LDL256:
/*   1457 */	ld1w	{z6.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1461 0
..LDL257:
/*   1461 */	ld1rw	{z5.s}, p0/z, [x11]	//  (*)
	.loc 13 1547 0
..LDL258:
/*   1547 */	add	x5, x5, 256
	.loc 13 1545 0 is_stmt 0
..LDL259:
/*   1545 */	add	x8, x8, 256
	.loc 13 1461 0 is_stmt 1
..LDL260:
/*   1461 */	prfm	2, [x11, x12]	//  (*)
/*   1461 */	prfm	0, [x11, x13]	//  (*)
	.loc 13 1547 0
..LDL261:
/*   1547 */	add	x11, x11, 8
/*   1547 */	add	x9, x9, 256
/*   1547 */	subs	w7, w7, 2
	.loc 13 1461 0
..LDL262:
/*   1461 */	dup	z2.s, z2.s[0]
	.loc 13 1462 0
..LDL263:
/*   1462 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1463 0
..LDL264:
/*   1463 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1462 0
..LDL265:
/*   1462 */	fmla	z4.s, p0/m, z5.s, z7.s
	.loc 13 1463 0
..LDL266:
/*   1463 */	fmla	z1.s, p0/m, z5.s, z6.s
	.loc 13 1547 0 is_stmt 0
..LDL267:
/*   1547 */	bpl	.L2050
.L2044:
	.loc 13 1547 0 is_stmt 1
..LDL268:
/*   1547 */	add	x5, x0, x2
.L1828:
	.loc 13 1454 0
..LDL269:
/*   1454 */	adds	w6, w7, 1
/*   1454 */	bmi	.L1825
	.loc 13 1461 0 is_stmt 0
..LDL270:
/*   1461 */	orr	x1, x1, 6917529027641081856
	.loc 13 1457 0
..LDL271:
/*   1457 */	add	x0, x8, 64
/*   1457 */	add	x0, x0, x2
	.loc 13 1461 0
..LDL272:
/*   1461 */	add	x1, x1, x4
	.p2align 5
.L1834:					// :entr:term:mod
	.loc 13 1456 0 is_stmt 1
..LDL273:
/*   1456 */	ld1w	{z3.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1461 0
..LDL274:
/*   1461 */	ptrue	p1.s, ALL
	.loc 13 1545 0
..LDL275:
/*   1545 */	add	x5, x5, 128
	.loc 13 1547 0
..LDL276:
/*   1547 */	subs	w6, w6, 1
	.loc 13 1457 0
..LDL277:
/*   1457 */	ld1w	{z2.s}, p0/z, [x0, 0, mul vl]	//  (*)
	.loc 13 1461 0
..LDL278:
/*   1461 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 1545 0
..LDL279:
/*   1545 */	add	x0, x0, 128
	.loc 13 1461 0
..LDL280:
/*   1461 */	prfm	0, [x1, 512]	//  (*)
/*   1461 */	ld1rw	{z0.s}, p1/z, [x1]	//  (*)
	.loc 13 1546 0
..LDL281:
/*   1546 */	add	x1, x1, 4
	.loc 13 1462 0
..LDL282:
/*   1462 */	fmla	z4.s, p0/m, z0.s, z3.s
	.loc 13 1463 0
..LDL283:
/*   1463 */	fmla	z1.s, p0/m, z0.s, z2.s
	.loc 13 1547 0 is_stmt 0
..LDL284:
/*   1547 */	bpl	.L1834
.L1825:
	.loc 13 1553 0 is_stmt 1
..LDL285:
/*   1553 */	st1w	{z4.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1554 0
..LDL286:
/*   1554 */	st1w	{z1.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1635 0
..LDL287:
/*   1635 */	ret	
..D8.pchi:
	.cfi_endproc
.LFE7:
	.size	_Z20kernel_Nx32_templateILi1EEviPfS0_S0_i, .-_Z20kernel_Nx32_templateILi1EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx32_templateILi2EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx32_templateILi2EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx32_templateILi2EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx32_templateILi2EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx32_templateILi2EEviPfS0_S0_i, %function
_Z20kernel_Nx32_templateILi2EEviPfS0_S0_i:
	.loc 13 1337 0
..LDL288:
.LFB8:
	.cfi_startproc
	.loc 13 1343 0
..LDL289:
/*   1343 */	ptrue	p0.s, ALL
	.loc 13 1365 0
..LDL290:
/*   1365 */	add	x6, x3, 64
	.loc 13 1366 0
..LDL291:
/*   1366 */	sxtw	x4, w4
/*   1366 */	lsl	x5, x4, 2
	.loc 13 1371 0
..LDL292:
/*   1371 */	add	x4, x4, 16
	.loc 13 1364 0
..LDL293:
/*   1364 */	ld1w	{z7.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1366 0
..LDL294:
/*   1366 */	add	x5, x5, x3
	.loc 13 1371 0
..LDL295:
/*   1371 */	add	x4, x3, x4, lsl #2
	.loc 13 1365 0
..LDL296:
/*   1365 */	ld1w	{z6.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1370 0
..LDL297:
/*   1370 */	ld1w	{z4.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1371 0
..LDL298:
/*   1371 */	ld1w	{z1.s}, p0/z, [x4, 0, mul vl]	//  (*)
	.loc 13 1454 0
..LDL299:
/*   1454 */	cmp	w0, 0
/*   1454 */	ble	.L1841
	.loc 13 1461 0 is_stmt 0
..LDL300:
/*   1461 */	orr	x7, x1, 6917529027641081856
	.loc 13 1457 0
..LDL301:
/*   1457 */	add	x1, x2, 64
	.loc 13 1461 0
..LDL302:
/*   1461 */	add	x8, x7, 4
	.loc 13 1467 0
..LDL303:
/*   1467 */	mov	x11, 2564
/*   1467 */	mov	x13, 516
	.loc 13 1455 0 is_stmt 1
..LDL304:
/*   1455 */	cmp	w0, 9
/*   1455 */	blt	.L2058
	.loc 13 1547 0 is_stmt 0
..LDL305:
/*   1547 */	mov	x9, x8
	.loc 13 1457 0
..LDL306:
/*   1457 */	ld1w	{z0.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1545 0
..LDL307:
/*   1545 */	add	x7, x1, 256
	.loc 13 1461 0
..LDL308:
/*   1461 */	ldr	s3, [x9, -4]	//  (*)
	.loc 13 1546 0
..LDL309:
/*   1546 */	add	x8, x9, 8
	.loc 13 1461 0
..LDL310:
/*   1461 */	ldr	s17, [x9, 4]	//  (*)
	.loc 13 1546 0
..LDL311:
/*   1546 */	add	x10, x9, 16
	.loc 13 1457 0
..LDL312:
/*   1457 */	ld1w	{z20.s}, p0/z, [x1, 2, mul vl]	//  (*)
	.loc 13 1546 0
..LDL313:
/*   1546 */	add	x12, x9, 24
	.loc 13 1467 0
..LDL314:
/*   1467 */	ld1rw	{z21.s}, p0/z, [x8]	//  (*)
	.loc 13 1546 0
..LDL315:
/*   1546 */	add	x8, x9, 32
	.loc 13 1456 0
..LDL316:
/*   1456 */	ld1w	{z5.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1457 0
..LDL317:
/*   1457 */	ld1w	{z16.s}, p0/z, [x1, 4, mul vl]	//  (*)
	.loc 13 1545 0
..LDL318:
/*   1545 */	add	x1, x2, 384
	.loc 13 1467 0
..LDL319:
/*   1467 */	ld1rw	{z2.s}, p0/z, [x9]	//  (*)
	.loc 13 1456 0
..LDL320:
/*   1456 */	ld1w	{z22.s}, p0/z, [x2, 2, mul vl]	//  (*)
/*   1456 */	ld1w	{z18.s}, p0/z, [x2, 4, mul vl]	//  (*)
	.loc 13 1461 0
..LDL321:
/*   1461 */	ldr	s30, [x9, 12]	//  (*)
/*   1461 */	ldr	s27, [x9, 20]	//  (*)
/*   1461 */	dup	z3.s, z3.s[0]
/*   1461 */	dup	z23.s, z17.s[0]
	.p2align 5
.L1839:					// :entr:term:swpl
/*   1461 */	ldr	s19, [x8, -4]	//  (*)
/*   1461 */	dup	z31.s, z30.s[0]
	.loc 13 1467 0
..LDL322:
/*   1467 */	ld1rw	{z30.s}, p0/z, [x10]	//  (*)
	.loc 13 1456 0
..LDL323:
/*   1456 */	ld1w	{z28.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1457 0
..LDL324:
/*   1457 */	ld1w	{z26.s}, p0/z, [x7, 2, mul vl]	//  (*)
	.loc 13 1462 0
..LDL325:
/*   1462 */	fmla	z7.s, p0/m, z3.s, z5.s
	.loc 13 1463 0
..LDL326:
/*   1463 */	fmla	z6.s, p0/m, z3.s, z0.s
	.loc 13 1468 0
..LDL327:
/*   1468 */	fmla	z4.s, p0/m, z2.s, z5.s
	.loc 13 1469 0
..LDL328:
/*   1469 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1546 0
..LDL329:
/*   1546 */	add	x9, x8, 8
	.loc 13 1461 0
..LDL330:
/*   1461 */	ldr	s2, [x8, 4]	//  (*)
/*   1461 */	dup	z29.s, z27.s[0]
	.loc 13 1467 0
..LDL331:
/*   1467 */	ld1rw	{z27.s}, p0/z, [x12]	//  (*)
	.loc 13 1456 0
..LDL332:
/*   1456 */	ld1w	{z24.s}, p0/z, [x1, 2, mul vl]	//  (*)
	.loc 13 1457 0
..LDL333:
/*   1457 */	ld1w	{z17.s}, p0/z, [x7, 4, mul vl]	//  (*)
	.loc 13 1462 0
..LDL334:
/*   1462 */	fmla	z7.s, p0/m, z23.s, z22.s
	.loc 13 1463 0
..LDL335:
/*   1463 */	fmla	z6.s, p0/m, z23.s, z20.s
	.loc 13 1468 0
..LDL336:
/*   1468 */	fmla	z4.s, p0/m, z21.s, z22.s
	.loc 13 1469 0
..LDL337:
/*   1469 */	fmla	z1.s, p0/m, z21.s, z20.s
	.loc 13 1546 0
..LDL338:
/*   1546 */	add	x14, x8, 16
	.loc 13 1461 0
..LDL339:
/*   1461 */	ldr	s21, [x8, 12]	//  (*)
/*   1461 */	dup	z25.s, z19.s[0]
	.loc 13 1467 0
..LDL340:
/*   1467 */	ld1rw	{z19.s}, p0/z, [x8]	//  (*)
	.loc 13 1456 0
..LDL341:
/*   1456 */	ld1w	{z5.s}, p0/z, [x1, 4, mul vl]	//  (*)
	.loc 13 1457 0
..LDL342:
/*   1457 */	ld1w	{z0.s}, p0/z, [x7, 6, mul vl]	//  (*)
	.loc 13 1462 0
..LDL343:
/*   1462 */	fmla	z7.s, p0/m, z31.s, z18.s
	.loc 13 1463 0
..LDL344:
/*   1463 */	fmla	z6.s, p0/m, z31.s, z16.s
	.loc 13 1468 0
..LDL345:
/*   1468 */	fmla	z4.s, p0/m, z30.s, z18.s
	.loc 13 1469 0
..LDL346:
/*   1469 */	fmla	z1.s, p0/m, z30.s, z16.s
	.loc 13 1546 0
..LDL347:
/*   1546 */	add	x10, x8, 24
	.loc 13 1461 0
..LDL348:
/*   1461 */	ldr	s30, [x8, 20]	//  (*)
	.loc 13 1545 0
..LDL349:
/*   1545 */	add	x2, x7, 512
	.loc 13 1461 0
..LDL350:
/*   1461 */	dup	z3.s, z2.s[0]
	.loc 13 1467 0
..LDL351:
/*   1467 */	ld1rw	{z2.s}, p0/z, [x9]	//  (*)
	.loc 13 1456 0
..LDL352:
/*   1456 */	ld1w	{z22.s}, p0/z, [x1, 6, mul vl]	//  (*)
	.loc 13 1457 0
..LDL353:
/*   1457 */	ld1w	{z20.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1462 0
..LDL354:
/*   1462 */	fmla	z7.s, p0/m, z29.s, z28.s
	.loc 13 1463 0
..LDL355:
/*   1463 */	fmla	z6.s, p0/m, z29.s, z26.s
	.loc 13 1545 0
..LDL356:
/*   1545 */	add	x1, x1, 512
	.loc 13 1468 0
..LDL357:
/*   1468 */	fmla	z4.s, p0/m, z27.s, z28.s
	.loc 13 1469 0
..LDL358:
/*   1469 */	fmla	z1.s, p0/m, z27.s, z26.s
	.loc 13 1546 0
..LDL359:
/*   1546 */	add	x12, x8, 32
	.loc 13 1461 0
..LDL360:
/*   1461 */	ldr	s27, [x8, 28]	//  (*)
	.loc 13 1545 0
..LDL361:
/*   1545 */	add	x7, x2, 128
	.loc 13 1461 0
..LDL362:
/*   1461 */	dup	z23.s, z21.s[0]
	.loc 13 1467 0
..LDL363:
/*   1467 */	ld1rw	{z21.s}, p0/z, [x14]	//  (*)
	.loc 13 1456 0
..LDL364:
/*   1456 */	ld1w	{z18.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1457 0
..LDL365:
/*   1457 */	ld1w	{z16.s}, p0/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1462 0
..LDL366:
/*   1462 */	fmla	z7.s, p0/m, z25.s, z24.s
	.loc 13 1463 0
..LDL367:
/*   1463 */	fmla	z6.s, p0/m, z25.s, z17.s
	.loc 13 1467 0
..LDL368:
/*   1467 */	prfm	2, [x8, x11]	//  (*)
/*   1467 */	prfm	0, [x8, x13]	//  (*)
	.loc 13 1545 0
..LDL369:
/*   1545 */	add	x1, x1, 128
	.loc 13 1468 0
..LDL370:
/*   1468 */	fmla	z4.s, p0/m, z19.s, z24.s
	.loc 13 1469 0
..LDL371:
/*   1469 */	fmla	z1.s, p0/m, z19.s, z17.s
	.loc 13 1546 0
..LDL372:
/*   1546 */	add	x8, x8, 40
	.loc 13 1547 0
..LDL373:
/*   1547 */	sub	w0, w0, 5
	.loc 13 1459 0
..LDL374:
/*   1459 */	cmp	w0, 9
/*   1459 */	bge	.L1839
	.loc 13 1467 0
..LDL375:
/*   1467 */	ld1rw	{z17.s}, p0/z, [x10]	//  (*)
	.loc 13 1462 0
..LDL376:
/*   1462 */	fmla	z7.s, p0/m, z3.s, z5.s
	.loc 13 1463 0
..LDL377:
/*   1463 */	fmla	z6.s, p0/m, z3.s, z0.s
	.loc 13 1545 0
..LDL378:
/*   1545 */	add	x2, x1, 128
	.loc 13 1456 0
..LDL379:
/*   1456 */	ld1w	{z3.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1468 0
..LDL380:
/*   1468 */	fmla	z4.s, p0/m, z2.s, z5.s
	.loc 13 1469 0
..LDL381:
/*   1469 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1545 0
..LDL382:
/*   1545 */	add	x1, x7, 256
	.loc 13 1461 0
..LDL383:
/*   1461 */	dup	z19.s, z30.s[0]
	.loc 13 1457 0
..LDL384:
/*   1457 */	ld1w	{z0.s}, p0/z, [x7, 2, mul vl]	//  (*)
	.loc 13 1547 0
..LDL385:
/*   1547 */	sub	w0, w0, 4
	.loc 13 1467 0
..LDL386:
/*   1467 */	prfm	2, [x9, x11]	//  (*)
	.loc 13 1461 0
..LDL387:
/*   1461 */	dup	z5.s, z27.s[0]
	.loc 13 1467 0
..LDL388:
/*   1467 */	ld1rw	{z2.s}, p0/z, [x12]	//  (*)
/*   1467 */	prfm	0, [x9, x13]	//  (*)
/*   1467 */	prfm	2, [x14, x11]	//  (*)
/*   1467 */	prfm	0, [x14, x13]	//  (*)
/*   1467 */	prfm	2, [x10, x11]	//  (*)
/*   1467 */	prfm	0, [x10, x13]	//  (*)
/*   1467 */	prfm	2, [x12, x11]	//  (*)
/*   1467 */	prfm	0, [x12, x13]	//  (*)
	.loc 13 1462 0
..LDL389:
/*   1462 */	fmla	z7.s, p0/m, z23.s, z22.s
	.loc 13 1463 0
..LDL390:
/*   1463 */	fmla	z6.s, p0/m, z23.s, z20.s
	.loc 13 1468 0
..LDL391:
/*   1468 */	fmla	z4.s, p0/m, z21.s, z22.s
	.loc 13 1469 0
..LDL392:
/*   1469 */	fmla	z1.s, p0/m, z21.s, z20.s
	.loc 13 1462 0
..LDL393:
/*   1462 */	fmla	z7.s, p0/m, z19.s, z18.s
	.loc 13 1463 0
..LDL394:
/*   1463 */	fmla	z6.s, p0/m, z19.s, z16.s
	.loc 13 1468 0
..LDL395:
/*   1468 */	fmla	z4.s, p0/m, z17.s, z18.s
	.loc 13 1469 0
..LDL396:
/*   1469 */	fmla	z1.s, p0/m, z17.s, z16.s
	.loc 13 1462 0
..LDL397:
/*   1462 */	fmla	z7.s, p0/m, z5.s, z3.s
	.loc 13 1463 0
..LDL398:
/*   1463 */	fmla	z6.s, p0/m, z5.s, z0.s
	.loc 13 1468 0
..LDL399:
/*   1468 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1469 0
..LDL400:
/*   1469 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1547 0
..LDL401:
/*   1547 */	cbz	w0, .L2055
.L2058:
	.p2align 5
.L2061:					// :entr:term:mod:swpl
	.loc 13 1456 0 is_stmt 1
..LDL402:
/*   1456 */	ld1w	{z3.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1461 0
..LDL403:
/*   1461 */	ldr	s5, [x8, -4]	//  (*)
	.loc 13 1545 0
..LDL404:
/*   1545 */	add	x2, x2, 128
	.loc 13 1547 0
..LDL405:
/*   1547 */	subs	w0, w0, 1
	.loc 13 1457 0
..LDL406:
/*   1457 */	ld1w	{z0.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1467 0
..LDL407:
/*   1467 */	ld1rw	{z2.s}, p0/z, [x8]	//  (*)
	.loc 13 1545 0
..LDL408:
/*   1545 */	add	x1, x1, 128
	.loc 13 1467 0
..LDL409:
/*   1467 */	prfm	2, [x8, x11]	//  (*)
/*   1467 */	prfm	0, [x8, x13]	//  (*)
	.loc 13 1546 0
..LDL410:
/*   1546 */	add	x8, x8, 8
	.loc 13 1461 0
..LDL411:
/*   1461 */	dup	z5.s, z5.s[0]
	.loc 13 1468 0
..LDL412:
/*   1468 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1469 0
..LDL413:
/*   1469 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1462 0
..LDL414:
/*   1462 */	fmla	z7.s, p0/m, z5.s, z3.s
	.loc 13 1463 0
..LDL415:
/*   1463 */	fmla	z6.s, p0/m, z5.s, z0.s
	.loc 13 1547 0 is_stmt 0
..LDL416:
/*   1547 */	bne	.L2061
.L2055:
.L1841:
	.loc 13 1553 0 is_stmt 1
..LDL417:
/*   1553 */	st1w	{z7.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1554 0
..LDL418:
/*   1554 */	st1w	{z6.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1559 0
..LDL419:
/*   1559 */	st1w	{z4.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1560 0
..LDL420:
/*   1560 */	st1w	{z1.s}, p0, [x4, 0, mul vl]	//  (*)
	.loc 13 1635 0
..LDL421:
/*   1635 */	ret	
..D9.pchi:
	.cfi_endproc
.LFE8:
	.size	_Z20kernel_Nx32_templateILi2EEviPfS0_S0_i, .-_Z20kernel_Nx32_templateILi2EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx32_templateILi3EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx32_templateILi3EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx32_templateILi3EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx32_templateILi3EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx32_templateILi3EEviPfS0_S0_i, %function
_Z20kernel_Nx32_templateILi3EEviPfS0_S0_i:
	.loc 13 1337 0
..LDL422:
.LFB9:
	.cfi_startproc
/*   1635 */	sub	sp, sp, 64
	.cfi_def_cfa_offset 64
/*    ??? */	stp	d8, d9, [sp, 48]	//  (*)
	.cfi_offset 72, -16
	.cfi_offset 73, -8
	.loc 13 1343 0
..LDL423:
/*   1343 */	ptrue	p0.s, ALL
	.loc 13 1365 0
..LDL424:
/*   1365 */	add	x6, x3, 64
	.loc 13 1366 0
..LDL425:
/*   1366 */	sxtw	x4, w4
/*   1366 */	lsl	x5, x4, 2
	.loc 13 1371 0
..LDL426:
/*   1371 */	add	x4, x4, 16
	.loc 13 1364 0
..LDL427:
/*   1364 */	ld1w	{z0.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1366 0
..LDL428:
/*   1366 */	add	x8, x5, x3
	.loc 13 1371 0
..LDL429:
/*   1371 */	add	x7, x3, x4, lsl #2
	.loc 13 1365 0
..LDL430:
/*   1365 */	ld1w	{z6.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1372 0
..LDL431:
/*   1372 */	add	x5, x5, x8
	.loc 13 1370 0
..LDL432:
/*   1370 */	ld1w	{z4.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1377 0
..LDL433:
/*   1377 */	add	x9, x8, x4, lsl #2
	.loc 13 1371 0
..LDL434:
/*   1371 */	ld1w	{z3.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1376 0
..LDL435:
/*   1376 */	ld1w	{z1.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1377 0
..LDL436:
/*   1377 */	ld1w	{z7.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1454 0
..LDL437:
/*   1454 */	cmp	w0, 0
/*   1454 */	ble	.L1849
	.loc 13 1461 0 is_stmt 0
..LDL438:
/*   1461 */	orr	x4, x1, 6917529027641081856
	.loc 13 1457 0
..LDL439:
/*   1457 */	add	x1, x2, 64
	.loc 13 1461 0
..LDL440:
/*   1461 */	add	x4, x4, 8
	.loc 13 1455 0 is_stmt 1
..LDL441:
/*   1455 */	cmp	w0, 7
/*   1455 */	blt	.L2069
/*   1461 */	ldp	s5, s2, [x4, -8]	//  (*)
	.loc 13 1546 0 is_stmt 0
..LDL442:
/*   1546 */	add	x11, x4, 12
/*   1546 */	add	x10, x4, 24
	.loc 13 1456 0
..LDL443:
/*   1456 */	ld1w	{z17.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1461 0
..LDL444:
/*   1461 */	ldr	s16, [x4, 4]	//  (*)
	.loc 13 1457 0
..LDL445:
/*   1457 */	ld1w	{z18.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1456 0
..LDL446:
/*   1456 */	ld1w	{z21.s}, p0/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1457 0
..LDL447:
/*   1457 */	ld1w	{z23.s}, p0/z, [x1, 2, mul vl]	//  (*)
	.loc 13 1456 0
..LDL448:
/*   1456 */	ld1w	{z22.s}, p0/z, [x2, 4, mul vl]	//  (*)
	.loc 13 1545 0
..LDL449:
/*   1545 */	add	x1, x1, 256
/*   1545 */	add	x2, x2, 384
	.loc 13 1473 0
..LDL450:
/*   1473 */	ld1rw	{z28.s}, p0/z, [x4]	//  (*)
/*   1473 */	ld1rw	{z20.s}, p0/z, [x11]	//  (*)
	.loc 13 1467 0
..LDL451:
/*   1467 */	ldr	s19, [x4, 8]	//  (*)
	.loc 13 1473 0
..LDL452:
/*   1473 */	ld1rw	{z24.s}, p0/z, [x10]	//  (*)
/*   1461 */	ldp	s31, s30, [x4, 16]	//  (*)
	.loc 13 1461 0
..LDL453:
/*   1461 */	dup	z5.s, z5.s[0]
	.loc 13 1467 0
..LDL454:
/*   1467 */	dup	z2.s, z2.s[0]
	.loc 13 1461 0
..LDL455:
/*   1461 */	dup	z29.s, z16.s[0]
	.p2align 5
.L1847:					// :entr:term:swpl
	.loc 13 1457 0
..LDL456:
/*   1457 */	ld1w	{z27.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1546 0
..LDL457:
/*   1546 */	add	x4, x10, 12
	.loc 13 1474 0
..LDL458:
/*   1474 */	fmla	z1.s, p0/m, z28.s, z17.s
	.loc 13 1462 0
..LDL459:
/*   1462 */	fmla	z0.s, p0/m, z5.s, z17.s
	.loc 13 1461 0
..LDL460:
/*   1461 */	ldr	s8, [x10, 4]	//  (*)
	.loc 13 1463 0
..LDL461:
/*   1463 */	fmla	z6.s, p0/m, z5.s, z18.s
	.loc 13 1456 0
..LDL462:
/*   1456 */	ld1w	{z26.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1467 0
..LDL463:
/*   1467 */	dup	z9.s, z19.s[0]
	.loc 13 1468 0
..LDL464:
/*   1468 */	fmla	z4.s, p0/m, z2.s, z17.s
	.loc 13 1467 0
..LDL465:
/*   1467 */	ldr	s19, [x10, 8]	//  (*)
	.loc 13 1469 0
..LDL466:
/*   1469 */	fmla	z3.s, p0/m, z2.s, z18.s
	.loc 13 1473 0
..LDL467:
/*   1473 */	ld1rw	{z25.s}, p0/z, [x4]	//  (*)
	.loc 13 1475 0
..LDL468:
/*   1475 */	fmad	z18.s, p0/m, z28.s, z7.s
	.loc 13 1461 0
..LDL469:
/*   1461 */	dup	z16.s, z31.s[0]
	.loc 13 1457 0
..LDL470:
/*   1457 */	ld1w	{z7.s}, p0/z, [x1, 2, mul vl]	//  (*)
	.loc 13 1546 0
..LDL471:
/*   1546 */	add	x12, x10, 24
	.loc 13 1474 0
..LDL472:
/*   1474 */	fmla	z1.s, p0/m, z20.s, z21.s
	.loc 13 1462 0
..LDL473:
/*   1462 */	fmla	z0.s, p0/m, z29.s, z21.s
	.loc 13 1461 0
..LDL474:
/*   1461 */	ldr	s31, [x10, 16]	//  (*)
	.loc 13 1463 0
..LDL475:
/*   1463 */	fmla	z6.s, p0/m, z29.s, z23.s
	.loc 13 1456 0
..LDL476:
/*   1456 */	ld1w	{z17.s}, p0/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1467 0
..LDL477:
/*   1467 */	dup	z5.s, z30.s[0]
	.loc 13 1468 0
..LDL478:
/*   1468 */	fmla	z4.s, p0/m, z9.s, z21.s
	.loc 13 1467 0
..LDL479:
/*   1467 */	ldr	s30, [x10, 20]	//  (*)
	.loc 13 1469 0
..LDL480:
/*   1469 */	fmla	z3.s, p0/m, z9.s, z23.s
	.loc 13 1473 0
..LDL481:
/*   1473 */	ld1rw	{z28.s}, p0/z, [x12]	//  (*)
	.loc 13 1475 0
..LDL482:
/*   1475 */	fmad	z23.s, p0/m, z20.s, z18.s
	.loc 13 1461 0
..LDL483:
/*   1461 */	dup	z2.s, z8.s[0]
	.loc 13 1457 0
..LDL484:
/*   1457 */	ld1w	{z18.s}, p0/z, [x1, 4, mul vl]	//  (*)
	.loc 13 1546 0
..LDL485:
/*   1546 */	add	x11, x10, 36
	.loc 13 1474 0
..LDL486:
/*   1474 */	fmla	z1.s, p0/m, z24.s, z22.s
	.loc 13 1462 0
..LDL487:
/*   1462 */	fmla	z0.s, p0/m, z16.s, z22.s
	.loc 13 1461 0
..LDL488:
/*   1461 */	ldr	s29, [x10, 28]	//  (*)
	.loc 13 1463 0
..LDL489:
/*   1463 */	fmla	z6.s, p0/m, z16.s, z27.s
	.loc 13 1456 0
..LDL490:
/*   1456 */	ld1w	{z21.s}, p0/z, [x2, 4, mul vl]	//  (*)
	.loc 13 1467 0
..LDL491:
/*   1467 */	dup	z16.s, z19.s[0]
	.loc 13 1468 0
..LDL492:
/*   1468 */	fmla	z4.s, p0/m, z5.s, z22.s
	.loc 13 1467 0
..LDL493:
/*   1467 */	ldr	s19, [x10, 32]	//  (*)
	.loc 13 1469 0
..LDL494:
/*   1469 */	fmla	z3.s, p0/m, z5.s, z27.s
	.loc 13 1473 0
..LDL495:
/*   1473 */	ld1rw	{z20.s}, p0/z, [x11]	//  (*)
	.loc 13 1475 0
..LDL496:
/*   1475 */	fmad	z27.s, p0/m, z24.s, z23.s
	.loc 13 1461 0
..LDL497:
/*   1461 */	dup	z5.s, z31.s[0]
	.loc 13 1457 0
..LDL498:
/*   1457 */	ld1w	{z23.s}, p0/z, [x1, 6, mul vl]	//  (*)
	.loc 13 1546 0
..LDL499:
/*   1546 */	add	x10, x10, 48
	.loc 13 1474 0
..LDL500:
/*   1474 */	fmla	z1.s, p0/m, z25.s, z26.s
	.loc 13 1462 0
..LDL501:
/*   1462 */	fmla	z0.s, p0/m, z2.s, z26.s
	.loc 13 1461 0
..LDL502:
/*   1461 */	ldr	s31, [x10, -8]	//  (*)
	.loc 13 1463 0
..LDL503:
/*   1463 */	fmla	z6.s, p0/m, z2.s, z7.s
	.loc 13 1456 0
..LDL504:
/*   1456 */	ld1w	{z22.s}, p0/z, [x2, 6, mul vl]	//  (*)
	.loc 13 1467 0
..LDL505:
/*   1467 */	dup	z2.s, z30.s[0]
	.loc 13 1468 0
..LDL506:
/*   1468 */	fmla	z4.s, p0/m, z16.s, z26.s
	.loc 13 1467 0
..LDL507:
/*   1467 */	ldr	s30, [x10, -4]	//  (*)
	.loc 13 1469 0
..LDL508:
/*   1469 */	fmla	z3.s, p0/m, z16.s, z7.s
	.loc 13 1473 0
..LDL509:
/*   1473 */	prfm	2, [x4, 2560]	//  (*)
/*   1473 */	ld1rw	{z24.s}, p0/z, [x10]	//  (*)
	.loc 13 1545 0
..LDL510:
/*   1545 */	add	x1, x1, 512
/*   1545 */	add	x2, x2, 512
	.loc 13 1547 0
..LDL511:
/*   1547 */	sub	w0, w0, 4
	.loc 13 1475 0
..LDL512:
/*   1475 */	fmad	z7.s, p0/m, z25.s, z27.s
	.loc 13 1473 0
..LDL513:
/*   1473 */	prfm	0, [x4, 512]	//  (*)
	.loc 13 1461 0
..LDL514:
/*   1461 */	dup	z29.s, z29.s[0]
	.loc 13 1459 0
..LDL515:
/*   1459 */	cmp	w0, 7
/*   1459 */	bge	.L1847
	.loc 13 1457 0
..LDL516:
/*   1457 */	ld1w	{z16.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1546 0
..LDL517:
/*   1546 */	add	x4, x10, 12
	.loc 13 1474 0
..LDL518:
/*   1474 */	fmla	z1.s, p0/m, z28.s, z17.s
	.loc 13 1462 0
..LDL519:
/*   1462 */	fmla	z0.s, p0/m, z5.s, z17.s
	.loc 13 1463 0
..LDL520:
/*   1463 */	fmla	z6.s, p0/m, z5.s, z18.s
	.loc 13 1468 0
..LDL521:
/*   1468 */	fmla	z4.s, p0/m, z2.s, z17.s
	.loc 13 1473 0
..LDL522:
/*   1473 */	prfm	2, [x12, 2560]	//  (*)
	.loc 13 1545 0
..LDL523:
/*   1545 */	add	x1, x1, 128
	.loc 13 1469 0
..LDL524:
/*   1469 */	fmla	z3.s, p0/m, z2.s, z18.s
	.loc 13 1475 0
..LDL525:
/*   1475 */	fmla	z7.s, p0/m, z28.s, z18.s
	.loc 13 1473 0
..LDL526:
/*   1473 */	prfm	0, [x12, 512]	//  (*)
	.loc 13 1547 0
..LDL527:
/*   1547 */	sub	w0, w0, 3
	.loc 13 1467 0
..LDL528:
/*   1467 */	dup	z17.s, z19.s[0]
	.loc 13 1473 0
..LDL529:
/*   1473 */	prfm	2, [x11, 2560]	//  (*)
	.loc 13 1461 0
..LDL530:
/*   1461 */	dup	z5.s, z31.s[0]
	.loc 13 1473 0
..LDL531:
/*   1473 */	prfm	0, [x11, 512]	//  (*)
	.loc 13 1467 0
..LDL532:
/*   1467 */	dup	z2.s, z30.s[0]
	.loc 13 1473 0
..LDL533:
/*   1473 */	prfm	2, [x10, 2560]	//  (*)
/*   1473 */	prfm	0, [x10, 512]	//  (*)
	.loc 13 1474 0
..LDL534:
/*   1474 */	fmla	z1.s, p0/m, z20.s, z21.s
	.loc 13 1462 0
..LDL535:
/*   1462 */	fmla	z0.s, p0/m, z29.s, z21.s
	.loc 13 1463 0
..LDL536:
/*   1463 */	fmla	z6.s, p0/m, z29.s, z23.s
	.loc 13 1468 0
..LDL537:
/*   1468 */	fmla	z4.s, p0/m, z17.s, z21.s
	.loc 13 1469 0
..LDL538:
/*   1469 */	fmla	z3.s, p0/m, z17.s, z23.s
	.loc 13 1475 0
..LDL539:
/*   1475 */	fmla	z7.s, p0/m, z20.s, z23.s
	.loc 13 1474 0
..LDL540:
/*   1474 */	fmla	z1.s, p0/m, z24.s, z22.s
	.loc 13 1462 0
..LDL541:
/*   1462 */	fmla	z0.s, p0/m, z5.s, z22.s
	.loc 13 1463 0
..LDL542:
/*   1463 */	fmla	z6.s, p0/m, z5.s, z16.s
	.loc 13 1468 0
..LDL543:
/*   1468 */	fmla	z4.s, p0/m, z2.s, z22.s
	.loc 13 1469 0
..LDL544:
/*   1469 */	fmla	z3.s, p0/m, z2.s, z16.s
	.loc 13 1475 0
..LDL545:
/*   1475 */	fmla	z7.s, p0/m, z24.s, z16.s
	.loc 13 1547 0
..LDL546:
/*   1547 */	cbz	w0, .L2066
.L2069:
	.p2align 5
.L2072:					// :entr:term:mod:swpl
	.loc 13 1461 0 is_stmt 1
..LDL547:
/*   1461 */	ldp	s18, s17, [x4, -8]	//  (*)
	.loc 13 1547 0
..LDL548:
/*   1547 */	subs	w0, w0, 1
	.loc 13 1456 0
..LDL549:
/*   1456 */	ld1w	{z5.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1457 0
..LDL550:
/*   1457 */	ld1w	{z2.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1545 0
..LDL551:
/*   1545 */	add	x1, x1, 128
/*   1545 */	add	x2, x2, 128
	.loc 13 1473 0
..LDL552:
/*   1473 */	prfm	2, [x4, 2560]	//  (*)
/*   1473 */	ld1rw	{z16.s}, p0/z, [x4]	//  (*)
/*   1473 */	prfm	0, [x4, 512]	//  (*)
	.loc 13 1546 0
..LDL553:
/*   1546 */	add	x4, x4, 12
	.loc 13 1461 0
..LDL554:
/*   1461 */	dup	z18.s, z18.s[0]
	.loc 13 1467 0
..LDL555:
/*   1467 */	dup	z17.s, z17.s[0]
	.loc 13 1474 0
..LDL556:
/*   1474 */	fmla	z1.s, p0/m, z16.s, z5.s
	.loc 13 1475 0
..LDL557:
/*   1475 */	fmla	z7.s, p0/m, z16.s, z2.s
	.loc 13 1462 0
..LDL558:
/*   1462 */	fmla	z0.s, p0/m, z18.s, z5.s
	.loc 13 1463 0
..LDL559:
/*   1463 */	fmla	z6.s, p0/m, z18.s, z2.s
	.loc 13 1468 0
..LDL560:
/*   1468 */	fmla	z4.s, p0/m, z17.s, z5.s
	.loc 13 1469 0
..LDL561:
/*   1469 */	fmla	z3.s, p0/m, z17.s, z2.s
	.loc 13 1547 0 is_stmt 0
..LDL562:
/*   1547 */	bne	.L2072
.L2066:
.L1849:
	.loc 13 1553 0 is_stmt 1
..LDL563:
/*   1553 */	st1w	{z0.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1554 0
..LDL564:
/*   1554 */	st1w	{z6.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1559 0
..LDL565:
/*   1559 */	st1w	{z4.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1560 0
..LDL566:
/*   1560 */	st1w	{z3.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1565 0
..LDL567:
/*   1565 */	st1w	{z1.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1566 0
..LDL568:
/*   1566 */	st1w	{z7.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1635 0
..LDL569:
/*    ??? */	ldp	d8, d9, [sp, 48]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	add	sp, sp, 64
	.cfi_def_cfa_offset 0
/*   1635 */	ret	
..D10.pchi:
	.cfi_endproc
.LFE9:
	.size	_Z20kernel_Nx32_templateILi3EEviPfS0_S0_i, .-_Z20kernel_Nx32_templateILi3EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx32_templateILi4EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx32_templateILi4EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx32_templateILi4EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx32_templateILi4EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx32_templateILi4EEviPfS0_S0_i, %function
_Z20kernel_Nx32_templateILi4EEviPfS0_S0_i:
	.loc 13 1337 0
..LDL570:
.LFB10:
	.cfi_startproc
/*   1635 */	sub	sp, sp, 64
	.cfi_def_cfa_offset 64
/*    ??? */	stp	d8, d9, [sp, 48]	//  (*)
	.cfi_offset 72, -16
	.cfi_offset 73, -8
/*    ??? */	stp	d10, d11, [sp, 32]	//  (*)
	.cfi_offset 74, -32
	.cfi_offset 75, -24
/*    ??? */	stp	d12, d13, [sp, 16]	//  (*)
	.cfi_offset 76, -48
	.cfi_offset 77, -40
	.loc 13 1343 0
..LDL571:
/*   1343 */	ptrue	p0.s, ALL
	.loc 13 1365 0
..LDL572:
/*   1365 */	add	x6, x3, 64
	.loc 13 1366 0
..LDL573:
/*   1366 */	sxtw	x4, w4
/*   1366 */	lsl	x5, x4, 2
	.loc 13 1371 0
..LDL574:
/*   1371 */	add	x4, x4, 16
	.loc 13 1364 0
..LDL575:
/*   1364 */	ld1w	{z19.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1366 0
..LDL576:
/*   1366 */	add	x7, x5, x3
	.loc 13 1371 0
..LDL577:
/*   1371 */	add	x9, x3, x4, lsl #2
	.loc 13 1365 0
..LDL578:
/*   1365 */	ld1w	{z18.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1372 0
..LDL579:
/*   1372 */	add	x10, x5, x7
	.loc 13 1370 0
..LDL580:
/*   1370 */	ld1w	{z28.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1377 0
..LDL581:
/*   1377 */	add	x8, x7, x4, lsl #2
	.loc 13 1378 0
..LDL582:
/*   1378 */	add	x11, x5, x10
	.loc 13 1371 0
..LDL583:
/*   1371 */	ld1w	{z6.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1376 0
..LDL584:
/*   1376 */	ld1w	{z5.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1377 0
..LDL585:
/*   1377 */	ld1w	{z4.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1383 0
..LDL586:
/*   1383 */	add	x12, x10, x4, lsl #2
	.loc 13 1382 0
..LDL587:
/*   1382 */	ld1w	{z2.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1383 0
..LDL588:
/*   1383 */	ld1w	{z1.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1454 0
..LDL589:
/*   1454 */	cmp	w0, 0
/*   1454 */	ble	.L1857
	.loc 13 1461 0 is_stmt 0
..LDL590:
/*   1461 */	orr	x4, x1, 6917529027641081856
	.loc 13 1457 0
..LDL591:
/*   1457 */	add	x1, x2, 64
	.loc 13 1461 0
..LDL592:
/*   1461 */	add	x4, x4, 12
	.loc 13 1479 0
..LDL593:
/*   1479 */	mov	x14, 2564
/*   1479 */	mov	x13, 516
	.loc 13 1455 0 is_stmt 1
..LDL594:
/*   1455 */	cmp	w0, 7
/*   1455 */	blt	.L2080
/*   1461 */	ldp	s0, s7, [x4, -12]	//  (*)
	.loc 13 1546 0 is_stmt 0
..LDL595:
/*   1546 */	add	x15, x4, 16
/*   1546 */	add	x5, x4, 32
	.loc 13 1473 0
..LDL596:
/*   1473 */	ldr	s17, [x4, -4]	//  (*)
	.loc 13 1467 0
..LDL597:
/*   1467 */	ldr	s3, [x4, 8]	//  (*)
	.loc 13 1456 0
..LDL598:
/*   1456 */	ld1w	{z16.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1457 0
..LDL599:
/*   1457 */	ld1w	{z25.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1456 0
..LDL600:
/*   1456 */	ld1w	{z23.s}, p0/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1457 0
..LDL601:
/*   1457 */	ld1w	{z29.s}, p0/z, [x1, 2, mul vl]	//  (*)
	.loc 13 1545 0
..LDL602:
/*   1545 */	add	x1, x1, 128
/*   1545 */	add	x2, x2, 256
	.loc 13 1479 0
..LDL603:
/*   1479 */	ld1rw	{z24.s}, p0/z, [x4]	//  (*)
/*   1479 */	ld1rw	{z27.s}, p0/z, [x15]	//  (*)
	.loc 13 1461 0
..LDL604:
/*   1461 */	ldr	s9, [x4, 4]	//  (*)
	.loc 13 1473 0
..LDL605:
/*   1473 */	ldr	s30, [x4, 12]	//  (*)
/*   1461 */	ldp	s12, s31, [x4, 20]	//  (*)
/*   1473 */	ldr	s8, [x4, 28]	//  (*)
	.loc 13 1467 0
..LDL606:
/*   1467 */	dup	z20.s, z7.s[0]
	.loc 13 1461 0
..LDL607:
/*   1461 */	dup	z22.s, z0.s[0]
	.loc 13 1473 0
..LDL608:
/*   1473 */	dup	z21.s, z17.s[0]
	.loc 13 1467 0
..LDL609:
/*   1467 */	dup	z7.s, z3.s[0]
	.p2align 5
.L1855:					// :entr:term:swpl
	.loc 13 1456 0
..LDL610:
/*   1456 */	ld1w	{z17.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1462 0
..LDL611:
/*   1462 */	fmla	z19.s, p0/m, z22.s, z16.s
	.loc 13 1461 0
..LDL612:
/*   1461 */	dup	z0.s, z9.s[0]
	.loc 13 1546 0
..LDL613:
/*   1546 */	add	x4, x5, 16
	.loc 13 1461 0
..LDL614:
/*   1461 */	ldr	s13, [x5, 4]	//  (*)
	.loc 13 1463 0
..LDL615:
/*   1463 */	fmla	z18.s, p0/m, z22.s, z25.s
	.loc 13 1468 0
..LDL616:
/*   1468 */	fmla	z28.s, p0/m, z20.s, z16.s
	.loc 13 1479 0
..LDL617:
/*   1479 */	ld1rw	{z26.s}, p0/z, [x5]	//  (*)
	.loc 13 1457 0
..LDL618:
/*   1457 */	ld1w	{z22.s}, p0/z, [x1, 2, mul vl]	//  (*)
	.loc 13 1469 0
..LDL619:
/*   1469 */	fmla	z6.s, p0/m, z20.s, z25.s
	.loc 13 1473 0
..LDL620:
/*   1473 */	dup	z20.s, z30.s[0]
	.loc 13 1467 0
..LDL621:
/*   1467 */	ldr	s9, [x5, 8]	//  (*)
	.loc 13 1474 0
..LDL622:
/*   1474 */	fmla	z5.s, p0/m, z21.s, z16.s
	.loc 13 1475 0
..LDL623:
/*   1475 */	fmla	z4.s, p0/m, z21.s, z25.s
	.loc 13 1480 0
..LDL624:
/*   1480 */	fmla	z2.s, p0/m, z24.s, z16.s
	.loc 13 1481 0
..LDL625:
/*   1481 */	fmad	z24.s, p0/m, z25.s, z1.s
	.loc 13 1473 0
..LDL626:
/*   1473 */	ldr	s11, [x5, 12]	//  (*)
	.loc 13 1467 0
..LDL627:
/*   1467 */	dup	z30.s, z31.s[0]
	.loc 13 1456 0
..LDL628:
/*   1456 */	ld1w	{z3.s}, p0/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1462 0
..LDL629:
/*   1462 */	fmla	z19.s, p0/m, z0.s, z23.s
	.loc 13 1461 0
..LDL630:
/*   1461 */	dup	z25.s, z12.s[0]
	.loc 13 1546 0
..LDL631:
/*   1546 */	add	x16, x5, 32
	.loc 13 1461 0
..LDL632:
/*   1461 */	ldr	s12, [x5, 20]	//  (*)
	.loc 13 1463 0
..LDL633:
/*   1463 */	movprfx	z21.s, p0/z, z18.s
/*   1463 */	fmla	z21.s, p0/m, z0.s, z29.s
	.loc 13 1468 0
..LDL634:
/*   1468 */	fmla	z28.s, p0/m, z7.s, z23.s
	.loc 13 1479 0
..LDL635:
/*   1479 */	ld1rw	{z1.s}, p0/z, [x4]	//  (*)
	.loc 13 1457 0
..LDL636:
/*   1457 */	ld1w	{z0.s}, p0/z, [x1, 4, mul vl]	//  (*)
	.loc 13 1469 0
..LDL637:
/*   1469 */	fmla	z6.s, p0/m, z7.s, z29.s
	.loc 13 1473 0
..LDL638:
/*   1473 */	dup	z8.s, z8.s[0]
	.loc 13 1467 0
..LDL639:
/*   1467 */	ldr	s31, [x5, 24]	//  (*)
	.loc 13 1474 0
..LDL640:
/*   1474 */	fmla	z5.s, p0/m, z20.s, z23.s
	.loc 13 1475 0
..LDL641:
/*   1475 */	fmla	z4.s, p0/m, z20.s, z29.s
	.loc 13 1480 0
..LDL642:
/*   1480 */	fmad	z23.s, p0/m, z27.s, z2.s
	.loc 13 1481 0
..LDL643:
/*   1481 */	fmad	z27.s, p0/m, z29.s, z24.s
	.loc 13 1473 0
..LDL644:
/*   1473 */	ldr	s10, [x5, 28]	//  (*)
	.loc 13 1467 0
..LDL645:
/*   1467 */	dup	z7.s, z9.s[0]
	.loc 13 1456 0
..LDL646:
/*   1456 */	ld1w	{z16.s}, p0/z, [x2, 4, mul vl]	//  (*)
	.loc 13 1462 0
..LDL647:
/*   1462 */	fmla	z19.s, p0/m, z25.s, z17.s
	.loc 13 1461 0
..LDL648:
/*   1461 */	dup	z18.s, z13.s[0]
	.loc 13 1546 0
..LDL649:
/*   1546 */	add	x15, x5, 48
	.loc 13 1461 0
..LDL650:
/*   1461 */	ldr	s9, [x5, 36]	//  (*)
	.loc 13 1463 0
..LDL651:
/*   1463 */	fmla	z21.s, p0/m, z25.s, z22.s
	.loc 13 1468 0
..LDL652:
/*   1468 */	fmla	z28.s, p0/m, z30.s, z17.s
	.loc 13 1479 0
..LDL653:
/*   1479 */	ld1rw	{z24.s}, p0/z, [x16]	//  (*)
	.loc 13 1457 0
..LDL654:
/*   1457 */	ld1w	{z25.s}, p0/z, [x1, 6, mul vl]	//  (*)
	.loc 13 1469 0
..LDL655:
/*   1469 */	fmla	z6.s, p0/m, z30.s, z22.s
	.loc 13 1473 0
..LDL656:
/*   1473 */	dup	z2.s, z11.s[0]
	.loc 13 1467 0
..LDL657:
/*   1467 */	ldr	s11, [x5, 40]	//  (*)
	.loc 13 1474 0
..LDL658:
/*   1474 */	fmla	z5.s, p0/m, z8.s, z17.s
	.loc 13 1475 0
..LDL659:
/*   1475 */	fmla	z4.s, p0/m, z8.s, z22.s
	.loc 13 1480 0
..LDL660:
/*   1480 */	fmad	z17.s, p0/m, z26.s, z23.s
	.loc 13 1481 0
..LDL661:
/*   1481 */	fmad	z26.s, p0/m, z22.s, z27.s
	.loc 13 1473 0
..LDL662:
/*   1473 */	ldr	s30, [x5, 44]	//  (*)
	.loc 13 1467 0
..LDL663:
/*   1467 */	dup	z20.s, z31.s[0]
	.loc 13 1456 0
..LDL664:
/*   1456 */	ld1w	{z23.s}, p0/z, [x2, 6, mul vl]	//  (*)
	.loc 13 1462 0
..LDL665:
/*   1462 */	fmla	z19.s, p0/m, z18.s, z3.s
	.loc 13 1461 0
..LDL666:
/*   1461 */	dup	z22.s, z12.s[0]
	.loc 13 1546 0
..LDL667:
/*   1546 */	add	x5, x5, 64
	.loc 13 1545 0
..LDL668:
/*   1545 */	add	x1, x1, 512
	.loc 13 1461 0
..LDL669:
/*   1461 */	ldr	s12, [x5, -12]	//  (*)
	.loc 13 1463 0
..LDL670:
/*   1463 */	fmad	z18.s, p0/m, z0.s, z21.s
	.loc 13 1468 0
..LDL671:
/*   1468 */	fmla	z28.s, p0/m, z7.s, z3.s
	.loc 13 1479 0
..LDL672:
/*   1479 */	ld1rw	{z27.s}, p0/z, [x15]	//  (*)
	.loc 13 1457 0
..LDL673:
/*   1457 */	ld1w	{z29.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1469 0
..LDL674:
/*   1469 */	fmla	z6.s, p0/m, z7.s, z0.s
	.loc 13 1473 0
..LDL675:
/*   1473 */	dup	z21.s, z10.s[0]
	.loc 13 1467 0
..LDL676:
/*   1467 */	ldr	s31, [x5, -8]	//  (*)
	.loc 13 1474 0
..LDL677:
/*   1474 */	fmla	z5.s, p0/m, z2.s, z3.s
	.loc 13 1475 0
..LDL678:
/*   1475 */	fmla	z4.s, p0/m, z2.s, z0.s
	.loc 13 1479 0
..LDL679:
/*   1479 */	prfm	2, [x4, x14]	//  (*)
/*   1479 */	prfm	0, [x4, x13]	//  (*)
	.loc 13 1545 0
..LDL680:
/*   1545 */	add	x2, x2, 512
	.loc 13 1480 0
..LDL681:
/*   1480 */	movprfx	z2.s, p0/z, z17.s
/*   1480 */	fmla	z2.s, p0/m, z1.s, z3.s
	.loc 13 1547 0
..LDL682:
/*   1547 */	sub	w0, w0, 4
	.loc 13 1481 0
..LDL683:
/*   1481 */	fmad	z1.s, p0/m, z0.s, z26.s
	.loc 13 1473 0
..LDL684:
/*   1473 */	ldr	s8, [x5, -4]	//  (*)
	.loc 13 1467 0
..LDL685:
/*   1467 */	dup	z7.s, z11.s[0]
	.loc 13 1459 0
..LDL686:
/*   1459 */	cmp	w0, 7
/*   1459 */	bge	.L1855
	.loc 13 1456 0
..LDL687:
/*   1456 */	ld1w	{z0.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1462 0
..LDL688:
/*   1462 */	fmla	z19.s, p0/m, z22.s, z16.s
	.loc 13 1546 0
..LDL689:
/*   1546 */	add	x4, x5, 16
	.loc 13 1463 0
..LDL690:
/*   1463 */	fmla	z18.s, p0/m, z22.s, z25.s
	.loc 13 1479 0
..LDL691:
/*   1479 */	ld1rw	{z17.s}, p0/z, [x5]	//  (*)
	.loc 13 1545 0
..LDL692:
/*   1545 */	add	x2, x2, 128
	.loc 13 1480 0
..LDL693:
/*   1480 */	fmla	z2.s, p0/m, z24.s, z16.s
	.loc 13 1481 0
..LDL694:
/*   1481 */	fmla	z1.s, p0/m, z24.s, z25.s
	.loc 13 1468 0
..LDL695:
/*   1468 */	fmla	z28.s, p0/m, z20.s, z16.s
	.loc 13 1469 0
..LDL696:
/*   1469 */	fmla	z6.s, p0/m, z20.s, z25.s
	.loc 13 1457 0
..LDL697:
/*   1457 */	ld1w	{z3.s}, p0/z, [x1, 2, mul vl]	//  (*)
	.loc 13 1545 0
..LDL698:
/*   1545 */	add	x1, x1, 256
	.loc 13 1474 0
..LDL699:
/*   1474 */	fmla	z5.s, p0/m, z21.s, z16.s
	.loc 13 1475 0
..LDL700:
/*   1475 */	fmla	z4.s, p0/m, z21.s, z25.s
	.loc 13 1479 0
..LDL701:
/*   1479 */	prfm	2, [x16, x14]	//  (*)
	.loc 13 1547 0
..LDL702:
/*   1547 */	sub	w0, w0, 3
	.loc 13 1461 0
..LDL703:
/*   1461 */	dup	z24.s, z9.s[0]
	.loc 13 1479 0
..LDL704:
/*   1479 */	prfm	0, [x16, x13]	//  (*)
	.loc 13 1473 0
..LDL705:
/*   1473 */	dup	z22.s, z30.s[0]
	.loc 13 1479 0
..LDL706:
/*   1479 */	prfm	2, [x15, x14]	//  (*)
	.loc 13 1467 0
..LDL707:
/*   1467 */	dup	z20.s, z31.s[0]
	.loc 13 1479 0
..LDL708:
/*   1479 */	prfm	0, [x15, x13]	//  (*)
	.loc 13 1461 0
..LDL709:
/*   1461 */	dup	z21.s, z12.s[0]
	.loc 13 1479 0
..LDL710:
/*   1479 */	prfm	2, [x5, x14]	//  (*)
	.loc 13 1473 0
..LDL711:
/*   1473 */	dup	z16.s, z8.s[0]
	.loc 13 1479 0
..LDL712:
/*   1479 */	prfm	0, [x5, x13]	//  (*)
	.loc 13 1462 0
..LDL713:
/*   1462 */	fmla	z19.s, p0/m, z24.s, z23.s
	.loc 13 1463 0
..LDL714:
/*   1463 */	fmla	z18.s, p0/m, z24.s, z29.s
	.loc 13 1468 0
..LDL715:
/*   1468 */	fmla	z28.s, p0/m, z7.s, z23.s
	.loc 13 1469 0
..LDL716:
/*   1469 */	fmla	z6.s, p0/m, z7.s, z29.s
	.loc 13 1474 0
..LDL717:
/*   1474 */	fmla	z5.s, p0/m, z22.s, z23.s
	.loc 13 1475 0
..LDL718:
/*   1475 */	fmla	z4.s, p0/m, z22.s, z29.s
	.loc 13 1480 0
..LDL719:
/*   1480 */	fmla	z2.s, p0/m, z27.s, z23.s
	.loc 13 1481 0
..LDL720:
/*   1481 */	fmla	z1.s, p0/m, z27.s, z29.s
	.loc 13 1462 0
..LDL721:
/*   1462 */	fmla	z19.s, p0/m, z21.s, z0.s
	.loc 13 1463 0
..LDL722:
/*   1463 */	fmla	z18.s, p0/m, z21.s, z3.s
	.loc 13 1468 0
..LDL723:
/*   1468 */	fmla	z28.s, p0/m, z20.s, z0.s
	.loc 13 1469 0
..LDL724:
/*   1469 */	fmla	z6.s, p0/m, z20.s, z3.s
	.loc 13 1474 0
..LDL725:
/*   1474 */	fmla	z5.s, p0/m, z16.s, z0.s
	.loc 13 1475 0
..LDL726:
/*   1475 */	fmla	z4.s, p0/m, z16.s, z3.s
	.loc 13 1480 0
..LDL727:
/*   1480 */	fmla	z2.s, p0/m, z17.s, z0.s
	.loc 13 1481 0
..LDL728:
/*   1481 */	fmla	z1.s, p0/m, z17.s, z3.s
	.loc 13 1547 0
..LDL729:
/*   1547 */	cbz	w0, .L2077
.L2080:
	.p2align 5
.L2083:					// :entr:term:mod:swpl
	.loc 13 1461 0 is_stmt 1
..LDL730:
/*   1461 */	ldp	s0, s20, [x4, -12]	//  (*)
	.loc 13 1547 0
..LDL731:
/*   1547 */	subs	w0, w0, 1
	.loc 13 1456 0
..LDL732:
/*   1456 */	ld1w	{z7.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1473 0
..LDL733:
/*   1473 */	ldr	s17, [x4, -4]	//  (*)
	.loc 13 1545 0
..LDL734:
/*   1545 */	add	x2, x2, 128
	.loc 13 1457 0
..LDL735:
/*   1457 */	ld1w	{z3.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1479 0
..LDL736:
/*   1479 */	ld1rw	{z16.s}, p0/z, [x4]	//  (*)
	.loc 13 1545 0
..LDL737:
/*   1545 */	add	x1, x1, 128
	.loc 13 1479 0
..LDL738:
/*   1479 */	prfm	2, [x4, x14]	//  (*)
/*   1479 */	prfm	0, [x4, x13]	//  (*)
	.loc 13 1546 0
..LDL739:
/*   1546 */	add	x4, x4, 16
	.loc 13 1461 0
..LDL740:
/*   1461 */	dup	z0.s, z0.s[0]
	.loc 13 1467 0
..LDL741:
/*   1467 */	dup	z20.s, z20.s[0]
	.loc 13 1473 0
..LDL742:
/*   1473 */	dup	z17.s, z17.s[0]
	.loc 13 1480 0
..LDL743:
/*   1480 */	fmla	z2.s, p0/m, z16.s, z7.s
	.loc 13 1481 0
..LDL744:
/*   1481 */	fmla	z1.s, p0/m, z16.s, z3.s
	.loc 13 1462 0
..LDL745:
/*   1462 */	fmla	z19.s, p0/m, z0.s, z7.s
	.loc 13 1463 0
..LDL746:
/*   1463 */	fmla	z18.s, p0/m, z0.s, z3.s
	.loc 13 1468 0
..LDL747:
/*   1468 */	fmla	z28.s, p0/m, z20.s, z7.s
	.loc 13 1469 0
..LDL748:
/*   1469 */	fmla	z6.s, p0/m, z20.s, z3.s
	.loc 13 1474 0
..LDL749:
/*   1474 */	fmla	z5.s, p0/m, z17.s, z7.s
	.loc 13 1475 0
..LDL750:
/*   1475 */	fmla	z4.s, p0/m, z17.s, z3.s
	.loc 13 1547 0 is_stmt 0
..LDL751:
/*   1547 */	bne	.L2083
.L2077:
.L1857:
	.loc 13 1553 0 is_stmt 1
..LDL752:
/*   1553 */	st1w	{z19.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1554 0
..LDL753:
/*   1554 */	st1w	{z18.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1559 0
..LDL754:
/*   1559 */	st1w	{z28.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1560 0
..LDL755:
/*   1560 */	st1w	{z6.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1565 0
..LDL756:
/*   1565 */	st1w	{z5.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1566 0
..LDL757:
/*   1566 */	st1w	{z4.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1571 0
..LDL758:
/*   1571 */	st1w	{z2.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1572 0
..LDL759:
/*   1572 */	st1w	{z1.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1635 0
..LDL760:
/*    ??? */	ldp	d8, d9, [sp, 48]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 32]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 16]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	add	sp, sp, 64
	.cfi_def_cfa_offset 0
/*   1635 */	ret	
..D11.pchi:
	.cfi_endproc
.LFE10:
	.size	_Z20kernel_Nx32_templateILi4EEviPfS0_S0_i, .-_Z20kernel_Nx32_templateILi4EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx32_templateILi5EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx32_templateILi5EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx32_templateILi5EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx32_templateILi5EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx32_templateILi5EEviPfS0_S0_i, %function
_Z20kernel_Nx32_templateILi5EEviPfS0_S0_i:
	.loc 13 1337 0
..LDL761:
.LFB11:
	.cfi_startproc
/*   1635 */	sub	sp, sp, 64
	.cfi_def_cfa_offset 64
/*    ??? */	stp	d8, d9, [sp, 48]	//  (*)
	.cfi_offset 72, -16
	.cfi_offset 73, -8
/*    ??? */	str	d10, [sp, 40]	//  (*)
	.cfi_offset 74, -24
	.loc 13 1343 0
..LDL762:
/*   1343 */	ptrue	p0.s, ALL
	.loc 13 1365 0
..LDL763:
/*   1365 */	add	x6, x3, 64
	.loc 13 1366 0
..LDL764:
/*   1366 */	sxtw	x4, w4
/*   1366 */	lsl	x5, x4, 2
	.loc 13 1371 0
..LDL765:
/*   1371 */	add	x4, x4, 16
	.loc 13 1364 0
..LDL766:
/*   1364 */	ld1w	{z18.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1366 0
..LDL767:
/*   1366 */	add	x11, x5, x3
	.loc 13 1371 0
..LDL768:
/*   1371 */	add	x9, x3, x4, lsl #2
	.loc 13 1365 0
..LDL769:
/*   1365 */	ld1w	{z17.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1372 0
..LDL770:
/*   1372 */	add	x8, x5, x11
	.loc 13 1370 0
..LDL771:
/*   1370 */	ld1w	{z16.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1377 0
..LDL772:
/*   1377 */	add	x10, x11, x4, lsl #2
	.loc 13 1378 0
..LDL773:
/*   1378 */	add	x7, x5, x8
	.loc 13 1371 0
..LDL774:
/*   1371 */	ld1w	{z7.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1384 0
..LDL775:
/*   1384 */	add	x12, x5, x7
	.loc 13 1376 0
..LDL776:
/*   1376 */	ld1w	{z5.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1383 0
..LDL777:
/*   1383 */	add	x5, x8, x4, lsl #2
	.loc 13 1377 0
..LDL778:
/*   1377 */	ld1w	{z4.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1382 0
..LDL779:
/*   1382 */	ld1w	{z2.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1383 0
..LDL780:
/*   1383 */	ld1w	{z0.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1389 0
..LDL781:
/*   1389 */	add	x4, x7, x4, lsl #2
	.loc 13 1388 0
..LDL782:
/*   1388 */	ld1w	{z1.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1389 0
..LDL783:
/*   1389 */	ld1w	{z28.s}, p0/z, [x4, 0, mul vl]	//  (*)
	.loc 13 1454 0
..LDL784:
/*   1454 */	cmp	w0, 0
/*   1454 */	ble	.L1865
	.loc 13 1461 0 is_stmt 0
..LDL785:
/*   1461 */	orr	x13, x1, 6917529027641081856
	.loc 13 1457 0
..LDL786:
/*   1457 */	add	x1, x2, 64
	.loc 13 1461 0
..LDL787:
/*   1461 */	add	x15, x13, 16
	.loc 13 1455 0 is_stmt 1
..LDL788:
/*   1455 */	cmp	w0, 5
/*   1455 */	blt	.L2091
	.loc 13 1547 0 is_stmt 0
..LDL789:
/*   1547 */	mov	x13, x15
/*   1547 */	mov	z22.d, z0.d
	.loc 13 1456 0
..LDL790:
/*   1456 */	ld1w	{z19.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1545 0
..LDL791:
/*   1545 */	add	x2, x2, 128
/*   1461 */	ldp	s6, s0, [x13, -16]	//  (*)
	.loc 13 1546 0
..LDL792:
/*   1546 */	add	x14, x13, 20
	.loc 13 1473 0
..LDL793:
/*   1473 */	ldr	s20, [x13, -8]	//  (*)
	.loc 13 1457 0
..LDL794:
/*   1457 */	ld1w	{z27.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1485 0
..LDL795:
/*   1485 */	ld1rw	{z3.s}, p0/z, [x13]	//  (*)
	.loc 13 1479 0
..LDL796:
/*   1479 */	ldr	s24, [x13, -4]	//  (*)
/*   1461 */	ldp	s31, s8, [x13, 4]	//  (*)
	.loc 13 1473 0
..LDL797:
/*   1473 */	ldr	s9, [x13, 12]	//  (*)
	.loc 13 1461 0
..LDL798:
/*   1461 */	dup	z30.s, z6.s[0]
	.loc 13 1467 0
..LDL799:
/*   1467 */	dup	z21.s, z0.s[0]
	.loc 13 1473 0
..LDL800:
/*   1473 */	dup	z20.s, z20.s[0]
	.p2align 5
.L1863:					// :entr:term:swpl
	.loc 13 1456 0
..LDL801:
/*   1456 */	ld1w	{z26.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1479 0
..LDL802:
/*   1479 */	dup	z0.s, z24.s[0]
	.loc 13 1457 0
..LDL803:
/*   1457 */	ld1w	{z24.s}, p0/z, [x1, 2, mul vl]	//  (*)
	.loc 13 1546 0
..LDL804:
/*   1546 */	add	x15, x14, 20
	.loc 13 1461 0
..LDL805:
/*   1461 */	dup	z23.s, z31.s[0]
	.loc 13 1479 0
..LDL806:
/*   1479 */	ldr	s10, [x14, -4]	//  (*)
	.loc 13 1461 0
..LDL807:
/*   1461 */	ldr	s31, [x14, 4]	//  (*)
	.loc 13 1462 0
..LDL808:
/*   1462 */	fmla	z18.s, p0/m, z30.s, z19.s
	.loc 13 1463 0
..LDL809:
/*   1463 */	movprfx	z6.s, p0/z, z17.s
/*   1463 */	fmla	z6.s, p0/m, z30.s, z27.s
	.loc 13 1467 0
..LDL810:
/*   1467 */	dup	z30.s, z8.s[0]
/*   1467 */	ldr	s8, [x14, 8]	//  (*)
	.loc 13 1468 0
..LDL811:
/*   1468 */	fmla	z16.s, p0/m, z21.s, z19.s
	.loc 13 1473 0
..LDL812:
/*   1473 */	dup	z29.s, z9.s[0]
	.loc 13 1469 0
..LDL813:
/*   1469 */	fmla	z7.s, p0/m, z21.s, z27.s
	.loc 13 1473 0
..LDL814:
/*   1473 */	ldr	s21, [x14, 12]	//  (*)
	.loc 13 1474 0
..LDL815:
/*   1474 */	fmla	z5.s, p0/m, z20.s, z19.s
	.loc 13 1475 0
..LDL816:
/*   1475 */	fmla	z4.s, p0/m, z20.s, z27.s
	.loc 13 1480 0
..LDL817:
/*   1480 */	fmla	z2.s, p0/m, z0.s, z19.s
	.loc 13 1485 0
..LDL818:
/*   1485 */	ld1rw	{z25.s}, p0/z, [x14]	//  (*)
	.loc 13 1481 0
..LDL819:
/*   1481 */	fmla	z22.s, p0/m, z0.s, z27.s
	.loc 13 1485 0
..LDL820:
/*   1485 */	prfm	2, [x13, 2560]	//  (*)
	.loc 13 1486 0
..LDL821:
/*   1486 */	fmla	z1.s, p0/m, z3.s, z19.s
	.loc 13 1487 0
..LDL822:
/*   1487 */	fmad	z27.s, p0/m, z3.s, z28.s
	.loc 13 1485 0
..LDL823:
/*   1485 */	prfm	0, [x13, 512]	//  (*)
	.loc 13 1456 0
..LDL824:
/*   1456 */	ld1w	{z0.s}, p0/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1479 0
..LDL825:
/*   1479 */	dup	z19.s, z10.s[0]
	.loc 13 1457 0
..LDL826:
/*   1457 */	ld1w	{z28.s}, p0/z, [x1, 4, mul vl]	//  (*)
	.loc 13 1546 0
..LDL827:
/*   1546 */	add	x13, x14, 40
	.loc 13 1461 0
..LDL828:
/*   1461 */	dup	z17.s, z31.s[0]
	.loc 13 1479 0
..LDL829:
/*   1479 */	ldr	s9, [x14, 16]	//  (*)
	.loc 13 1461 0
..LDL830:
/*   1461 */	ldr	s31, [x14, 24]	//  (*)
	.loc 13 1462 0
..LDL831:
/*   1462 */	fmla	z18.s, p0/m, z23.s, z26.s
	.loc 13 1463 0
..LDL832:
/*   1463 */	fmad	z23.s, p0/m, z24.s, z6.s
	.loc 13 1467 0
..LDL833:
/*   1467 */	dup	z6.s, z8.s[0]
/*   1467 */	ldr	s8, [x14, 28]	//  (*)
	.loc 13 1468 0
..LDL834:
/*   1468 */	fmla	z16.s, p0/m, z30.s, z26.s
	.loc 13 1473 0
..LDL835:
/*   1473 */	dup	z3.s, z21.s[0]
	.loc 13 1469 0
..LDL836:
/*   1469 */	fmla	z7.s, p0/m, z30.s, z24.s
	.loc 13 1473 0
..LDL837:
/*   1473 */	ldr	s20, [x14, 32]	//  (*)
	.loc 13 1474 0
..LDL838:
/*   1474 */	fmla	z5.s, p0/m, z29.s, z26.s
	.loc 13 1475 0
..LDL839:
/*   1475 */	fmla	z4.s, p0/m, z29.s, z24.s
	.loc 13 1480 0
..LDL840:
/*   1480 */	fmla	z2.s, p0/m, z19.s, z26.s
	.loc 13 1485 0
..LDL841:
/*   1485 */	ld1rw	{z29.s}, p0/z, [x15]	//  (*)
	.loc 13 1481 0
..LDL842:
/*   1481 */	fmla	z22.s, p0/m, z19.s, z24.s
	.loc 13 1486 0
..LDL843:
/*   1486 */	fmla	z1.s, p0/m, z25.s, z26.s
	.loc 13 1487 0
..LDL844:
/*   1487 */	fmad	z25.s, p0/m, z24.s, z27.s
	.loc 13 1456 0
..LDL845:
/*   1456 */	ld1w	{z19.s}, p0/z, [x2, 4, mul vl]	//  (*)
	.loc 13 1545 0
..LDL846:
/*   1545 */	add	x1, x1, 384
	.loc 13 1479 0
..LDL847:
/*   1479 */	dup	z26.s, z9.s[0]
	.loc 13 1457 0
..LDL848:
/*   1457 */	ld1w	{z27.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1546 0
..LDL849:
/*   1546 */	add	x14, x14, 60
	.loc 13 1461 0
..LDL850:
/*   1461 */	dup	z30.s, z31.s[0]
	.loc 13 1479 0
..LDL851:
/*   1479 */	ldr	s24, [x13, -4]	//  (*)
	.loc 13 1461 0
..LDL852:
/*   1461 */	ldr	s31, [x14, -16]	//  (*)
	.loc 13 1462 0
..LDL853:
/*   1462 */	fmla	z18.s, p0/m, z17.s, z0.s
	.loc 13 1463 0
..LDL854:
/*   1463 */	fmad	z17.s, p0/m, z28.s, z23.s
	.loc 13 1467 0
..LDL855:
/*   1467 */	dup	z21.s, z8.s[0]
/*   1467 */	ldr	s8, [x14, -12]	//  (*)
	.loc 13 1468 0
..LDL856:
/*   1468 */	fmla	z16.s, p0/m, z6.s, z0.s
	.loc 13 1473 0
..LDL857:
/*   1473 */	dup	z20.s, z20.s[0]
	.loc 13 1469 0
..LDL858:
/*   1469 */	fmla	z7.s, p0/m, z6.s, z28.s
	.loc 13 1473 0
..LDL859:
/*   1473 */	ldr	s9, [x14, -8]	//  (*)
	.loc 13 1474 0
..LDL860:
/*   1474 */	fmla	z5.s, p0/m, z3.s, z0.s
	.loc 13 1475 0
..LDL861:
/*   1475 */	fmla	z4.s, p0/m, z3.s, z28.s
	.loc 13 1480 0
..LDL862:
/*   1480 */	fmla	z2.s, p0/m, z26.s, z0.s
	.loc 13 1485 0
..LDL863:
/*   1485 */	ld1rw	{z3.s}, p0/z, [x13]	//  (*)
	.loc 13 1481 0
..LDL864:
/*   1481 */	fmla	z22.s, p0/m, z26.s, z28.s
	.loc 13 1485 0
..LDL865:
/*   1485 */	prfm	2, [x14, 2520]	//  (*)
	.loc 13 1545 0
..LDL866:
/*   1545 */	add	x2, x2, 384
	.loc 13 1486 0
..LDL867:
/*   1486 */	fmla	z1.s, p0/m, z29.s, z0.s
	.loc 13 1487 0
..LDL868:
/*   1487 */	fmad	z28.s, p0/m, z29.s, z25.s
	.loc 13 1485 0
..LDL869:
/*   1485 */	prfm	0, [x14, 472]	//  (*)
	.loc 13 1547 0
..LDL870:
/*   1547 */	sub	w0, w0, 3
	.loc 13 1459 0
..LDL871:
/*   1459 */	cmp	w0, 5
/*   1459 */	bge	.L1863
	.loc 13 1479 0
..LDL872:
/*   1479 */	dup	z0.s, z24.s[0]
	.loc 13 1546 0
..LDL873:
/*   1546 */	add	x15, x14, 20
	.loc 13 1479 0
..LDL874:
/*   1479 */	ldr	s24, [x14, -4]	//  (*)
	.loc 13 1468 0
..LDL875:
/*   1468 */	fmla	z16.s, p0/m, z21.s, z19.s
	.loc 13 1462 0
..LDL876:
/*   1462 */	fmla	z18.s, p0/m, z30.s, z19.s
	.loc 13 1456 0
..LDL877:
/*   1456 */	ld1w	{z6.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1469 0
..LDL878:
/*   1469 */	fmla	z7.s, p0/m, z21.s, z27.s
	.loc 13 1545 0
..LDL879:
/*   1545 */	add	x2, x2, 128
	.loc 13 1457 0
..LDL880:
/*   1457 */	ld1w	{z23.s}, p0/z, [x1, 2, mul vl]	//  (*)
	.loc 13 1474 0
..LDL881:
/*   1474 */	fmla	z5.s, p0/m, z20.s, z19.s
	.loc 13 1475 0
..LDL882:
/*   1475 */	fmla	z4.s, p0/m, z20.s, z27.s
	.loc 13 1545 0
..LDL883:
/*   1545 */	add	x1, x1, 256
	.loc 13 1485 0
..LDL884:
/*   1485 */	ld1rw	{z21.s}, p0/z, [x14]	//  (*)
	.loc 13 1486 0
..LDL885:
/*   1486 */	fmla	z1.s, p0/m, z3.s, z19.s
	.loc 13 1487 0
..LDL886:
/*   1487 */	fmla	z28.s, p0/m, z3.s, z27.s
	.loc 13 1547 0
..LDL887:
/*   1547 */	sub	w0, w0, 2
	.loc 13 1463 0
..LDL888:
/*   1463 */	fmla	z17.s, p0/m, z30.s, z27.s
	.loc 13 1485 0
..LDL889:
/*   1485 */	prfm	2, [x13, 2560]	//  (*)
/*   1485 */	prfm	0, [x13, 512]	//  (*)
	.loc 13 1461 0
..LDL890:
/*   1461 */	dup	z25.s, z31.s[0]
	.loc 13 1485 0
..LDL891:
/*   1485 */	prfm	2, [x14, 2560]	//  (*)
	.loc 13 1480 0
..LDL892:
/*   1480 */	fmla	z2.s, p0/m, z0.s, z19.s
	.loc 13 1481 0
..LDL893:
/*   1481 */	fmad	z0.s, p0/m, z27.s, z22.s
	.loc 13 1485 0
..LDL894:
/*   1485 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 1467 0
..LDL895:
/*   1467 */	dup	z20.s, z8.s[0]
	.loc 13 1473 0
..LDL896:
/*   1473 */	dup	z19.s, z9.s[0]
	.loc 13 1479 0
..LDL897:
/*   1479 */	dup	z3.s, z24.s[0]
	.loc 13 1462 0
..LDL898:
/*   1462 */	fmla	z18.s, p0/m, z25.s, z6.s
	.loc 13 1463 0
..LDL899:
/*   1463 */	fmla	z17.s, p0/m, z25.s, z23.s
	.loc 13 1468 0
..LDL900:
/*   1468 */	fmla	z16.s, p0/m, z20.s, z6.s
	.loc 13 1469 0
..LDL901:
/*   1469 */	fmla	z7.s, p0/m, z20.s, z23.s
	.loc 13 1474 0
..LDL902:
/*   1474 */	fmla	z5.s, p0/m, z19.s, z6.s
	.loc 13 1475 0
..LDL903:
/*   1475 */	fmla	z4.s, p0/m, z19.s, z23.s
	.loc 13 1480 0
..LDL904:
/*   1480 */	fmla	z2.s, p0/m, z3.s, z6.s
	.loc 13 1481 0
..LDL905:
/*   1481 */	fmla	z0.s, p0/m, z3.s, z23.s
	.loc 13 1486 0
..LDL906:
/*   1486 */	fmla	z1.s, p0/m, z21.s, z6.s
	.loc 13 1487 0
..LDL907:
/*   1487 */	fmla	z28.s, p0/m, z21.s, z23.s
	.loc 13 1547 0
..LDL908:
/*   1547 */	cbz	w0, .L2088
.L2091:
	.p2align 5
.L2094:					// :entr:term:mod:swpl
	.loc 13 1461 0 is_stmt 1
..LDL909:
/*   1461 */	ldp	s6, s23, [x15, -16]	//  (*)
	.loc 13 1547 0
..LDL910:
/*   1547 */	subs	w0, w0, 1
	.loc 13 1473 0
..LDL911:
/*   1473 */	ldp	s21, s20, [x15, -8]	//  (*)
	.loc 13 1456 0
..LDL912:
/*   1456 */	ld1w	{z3.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1457 0
..LDL913:
/*   1457 */	ld1w	{z19.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1545 0
..LDL914:
/*   1545 */	add	x1, x1, 128
/*   1545 */	add	x2, x2, 128
	.loc 13 1485 0
..LDL915:
/*   1485 */	prfm	2, [x15, 2560]	//  (*)
/*   1485 */	ld1rw	{z22.s}, p0/z, [x15]	//  (*)
/*   1485 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 1546 0
..LDL916:
/*   1546 */	add	x15, x15, 20
	.loc 13 1461 0
..LDL917:
/*   1461 */	dup	z6.s, z6.s[0]
	.loc 13 1467 0
..LDL918:
/*   1467 */	dup	z23.s, z23.s[0]
	.loc 13 1473 0
..LDL919:
/*   1473 */	dup	z21.s, z21.s[0]
	.loc 13 1479 0
..LDL920:
/*   1479 */	dup	z20.s, z20.s[0]
	.loc 13 1462 0
..LDL921:
/*   1462 */	fmla	z18.s, p0/m, z6.s, z3.s
	.loc 13 1463 0
..LDL922:
/*   1463 */	fmla	z17.s, p0/m, z6.s, z19.s
	.loc 13 1468 0
..LDL923:
/*   1468 */	fmla	z16.s, p0/m, z23.s, z3.s
	.loc 13 1469 0
..LDL924:
/*   1469 */	fmla	z7.s, p0/m, z23.s, z19.s
	.loc 13 1474 0
..LDL925:
/*   1474 */	fmla	z5.s, p0/m, z21.s, z3.s
	.loc 13 1475 0
..LDL926:
/*   1475 */	fmla	z4.s, p0/m, z21.s, z19.s
	.loc 13 1480 0
..LDL927:
/*   1480 */	fmla	z2.s, p0/m, z20.s, z3.s
	.loc 13 1481 0
..LDL928:
/*   1481 */	fmla	z0.s, p0/m, z20.s, z19.s
	.loc 13 1486 0
..LDL929:
/*   1486 */	fmla	z1.s, p0/m, z22.s, z3.s
	.loc 13 1487 0
..LDL930:
/*   1487 */	fmla	z28.s, p0/m, z22.s, z19.s
	.loc 13 1547 0 is_stmt 0
..LDL931:
/*   1547 */	bne	.L2094
.L2088:
.L1865:
	.loc 13 1553 0 is_stmt 1
..LDL932:
/*   1553 */	st1w	{z18.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1554 0
..LDL933:
/*   1554 */	st1w	{z17.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1559 0
..LDL934:
/*   1559 */	st1w	{z16.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1560 0
..LDL935:
/*   1560 */	st1w	{z7.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1565 0
..LDL936:
/*   1565 */	st1w	{z5.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1566 0
..LDL937:
/*   1566 */	st1w	{z4.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1571 0
..LDL938:
/*   1571 */	st1w	{z2.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1572 0
..LDL939:
/*   1572 */	st1w	{z0.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1577 0
..LDL940:
/*   1577 */	st1w	{z1.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1578 0
..LDL941:
/*   1578 */	st1w	{z28.s}, p0, [x4, 0, mul vl]	//  (*)
	.loc 13 1635 0
..LDL942:
/*    ??? */	ldp	d8, d9, [sp, 48]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldr	d10, [sp, 40]	//  (*)
	.cfi_restore 74
/*    ??? */	add	sp, sp, 64
	.cfi_def_cfa_offset 0
/*   1635 */	ret	
..D12.pchi:
	.cfi_endproc
.LFE11:
	.size	_Z20kernel_Nx32_templateILi5EEviPfS0_S0_i, .-_Z20kernel_Nx32_templateILi5EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx32_templateILi6EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx32_templateILi6EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx32_templateILi6EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx32_templateILi6EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx32_templateILi6EEviPfS0_S0_i, %function
_Z20kernel_Nx32_templateILi6EEviPfS0_S0_i:
	.loc 13 1337 0
..LDL943:
.LFB12:
	.cfi_startproc
/*   1635 */	sub	sp, sp, 64
	.cfi_def_cfa_offset 64
/*    ??? */	stp	x29, x30, [sp, 48]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    ??? */	stp	d8, d9, [sp, 32]	//  (*)
	.cfi_offset 72, -32
	.cfi_offset 73, -24
/*    ??? */	stp	d10, d11, [sp, 16]	//  (*)
	.cfi_offset 74, -48
	.cfi_offset 75, -40
/*    ??? */	str	d12, [sp, 8]	//  (*)
	.cfi_offset 76, -56
	.loc 13 1343 0
..LDL944:
/*   1343 */	ptrue	p0.s, ALL
	.loc 13 1365 0
..LDL945:
/*   1365 */	add	x6, x3, 64
	.loc 13 1366 0
..LDL946:
/*   1366 */	sxtw	x4, w4
/*   1366 */	lsl	x5, x4, 2
	.loc 13 1371 0
..LDL947:
/*   1371 */	add	x4, x4, 16
	.loc 13 1364 0
..LDL948:
/*   1364 */	ld1w	{z22.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1366 0
..LDL949:
/*   1366 */	add	x8, x5, x3
	.loc 13 1371 0
..LDL950:
/*   1371 */	add	x9, x3, x4, lsl #2
	.loc 13 1365 0
..LDL951:
/*   1365 */	ld1w	{z21.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1372 0
..LDL952:
/*   1372 */	add	x10, x5, x8
	.loc 13 1370 0
..LDL953:
/*   1370 */	ld1w	{z19.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1377 0
..LDL954:
/*   1377 */	add	x13, x8, x4, lsl #2
	.loc 13 1378 0
..LDL955:
/*   1378 */	add	x12, x5, x10
	.loc 13 1371 0
..LDL956:
/*   1371 */	ld1w	{z17.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1384 0
..LDL957:
/*   1384 */	add	x11, x5, x12
	.loc 13 1376 0
..LDL958:
/*   1376 */	ld1w	{z6.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1383 0
..LDL959:
/*   1383 */	add	x7, x10, x4, lsl #2
	.loc 13 1390 0
..LDL960:
/*   1390 */	add	x5, x5, x11
	.loc 13 1377 0
..LDL961:
/*   1377 */	ld1w	{z2.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1382 0
..LDL962:
/*   1382 */	ld1w	{z1.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1383 0
..LDL963:
/*   1383 */	ld1w	{z0.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1389 0
..LDL964:
/*   1389 */	add	x14, x12, x4, lsl #2
	.loc 13 1388 0
..LDL965:
/*   1388 */	ld1w	{z16.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1394 0
..LDL966:
/*   1394 */	ld1w	{z3.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1389 0
..LDL967:
/*   1389 */	ld1w	{z4.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1395 0
..LDL968:
/*   1395 */	add	x4, x11, x4, lsl #2
/*   1395 */	ld1w	{z27.s}, p0/z, [x4, 0, mul vl]	//  (*)
	.loc 13 1454 0
..LDL969:
/*   1454 */	cmp	w0, 0
/*   1454 */	ble	.L1873
	.loc 13 1461 0 is_stmt 0
..LDL970:
/*   1461 */	orr	x15, x1, 6917529027641081856
	.loc 13 1457 0
..LDL971:
/*   1457 */	add	x1, x2, 64
	.loc 13 1461 0
..LDL972:
/*   1461 */	add	x29, x15, 20
	.loc 13 1491 0
..LDL973:
/*   1491 */	mov	x18, 2564
/*   1491 */	mov	x17, 516
	.loc 13 1455 0 is_stmt 1
..LDL974:
/*   1455 */	cmp	w0, 5
/*   1455 */	blt	.L2102
	.loc 13 1547 0 is_stmt 0
..LDL975:
/*   1547 */	mov	x15, x29
/*   1547 */	mov	x30, x2
	.loc 13 1457 0
..LDL976:
/*   1457 */	ld1w	{z29.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1485 0
..LDL977:
/*   1485 */	ldr	s20, [x15, -4]	//  (*)
	.loc 13 1467 0
..LDL978:
/*   1467 */	ldr	s7, [x15, -16]	//  (*)
	.loc 13 1546 0
..LDL979:
/*   1546 */	add	x16, x15, 24
	.loc 13 1461 0
..LDL980:
/*   1461 */	ldr	s25, [x15, -20]	//  (*)
	.loc 13 1456 0
..LDL981:
/*   1456 */	ld1w	{z23.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1491 0
..LDL982:
/*   1491 */	ld1rw	{z5.s}, p0/z, [x15]	//  (*)
/*   1473 */	ldp	s31, s28, [x15, -12]	//  (*)
	.loc 13 1485 0
..LDL983:
/*   1485 */	ldr	s18, [x15, 20]	//  (*)
	.loc 13 1467 0
..LDL984:
/*   1467 */	ldr	s10, [x15, 8]	//  (*)
	.loc 13 1485 0
..LDL985:
/*   1485 */	dup	z24.s, z20.s[0]
	.loc 13 1467 0
..LDL986:
/*   1467 */	dup	z20.s, z7.s[0]
	.loc 13 1461 0
..LDL987:
/*   1461 */	dup	z8.s, z25.s[0]
	.p2align 5
.L1871:					// :entr:term:swpl
/*   1461 */	ldr	s9, [x16, -20]	//  (*)
	.loc 13 1473 0
..LDL988:
/*   1473 */	dup	z31.s, z31.s[0]
	.loc 13 1479 0
..LDL989:
/*   1479 */	dup	z25.s, z28.s[0]
	.loc 13 1456 0
..LDL990:
/*   1456 */	ld1w	{z7.s}, p0/z, [x30, 2, mul vl]	//  (*)
	.loc 13 1485 0
..LDL991:
/*   1485 */	dup	z30.s, z18.s[0]
	.loc 13 1457 0
..LDL992:
/*   1457 */	ld1w	{z28.s}, p0/z, [x1, 2, mul vl]	//  (*)
	.loc 13 1486 0
..LDL993:
/*   1486 */	fmla	z16.s, p0/m, z24.s, z23.s
	.loc 13 1473 0
..LDL994:
/*   1473 */	ldr	s12, [x16, -12]	//  (*)
	.loc 13 1462 0
..LDL995:
/*   1462 */	fmla	z22.s, p0/m, z8.s, z23.s
	.loc 13 1546 0
..LDL996:
/*   1546 */	add	x2, x16, 24
	.loc 13 1463 0
..LDL997:
/*   1463 */	fmla	z21.s, p0/m, z8.s, z29.s
	.loc 13 1479 0
..LDL998:
/*   1479 */	ldr	s11, [x16, -8]	//  (*)
	.loc 13 1467 0
..LDL999:
/*   1467 */	dup	z26.s, z10.s[0]
	.loc 13 1468 0
..LDL1000:
/*   1468 */	fmla	z19.s, p0/m, z20.s, z23.s
	.loc 13 1469 0
..LDL1001:
/*   1469 */	fmla	z17.s, p0/m, z20.s, z29.s
	.loc 13 1485 0
..LDL1002:
/*   1485 */	ldr	s18, [x16, 20]	//  (*)
	.loc 13 1474 0
..LDL1003:
/*   1474 */	fmla	z6.s, p0/m, z31.s, z23.s
	.loc 13 1475 0
..LDL1004:
/*   1475 */	fmla	z2.s, p0/m, z31.s, z29.s
	.loc 13 1467 0
..LDL1005:
/*   1467 */	ldr	s10, [x16, 8]	//  (*)
	.loc 13 1480 0
..LDL1006:
/*   1480 */	fmla	z1.s, p0/m, z25.s, z23.s
	.loc 13 1481 0
..LDL1007:
/*   1481 */	fmla	z0.s, p0/m, z25.s, z29.s
	.loc 13 1487 0
..LDL1008:
/*   1487 */	fmla	z4.s, p0/m, z24.s, z29.s
	.loc 13 1461 0
..LDL1009:
/*   1461 */	dup	z20.s, z9.s[0]
	.loc 13 1491 0
..LDL1010:
/*   1491 */	prfm	2, [x15, x18]	//  (*)
/*   1491 */	ld1rw	{z25.s}, p0/z, [x16]	//  (*)
	.loc 13 1492 0
..LDL1011:
/*   1492 */	fmad	z23.s, p0/m, z5.s, z3.s
	.loc 13 1493 0
..LDL1012:
/*   1493 */	fmad	z29.s, p0/m, z5.s, z27.s
	.loc 13 1491 0
..LDL1013:
/*   1491 */	prfm	0, [x15, x17]	//  (*)
	.loc 13 1461 0
..LDL1014:
/*   1461 */	ldr	s9, [x16, 4]	//  (*)
	.loc 13 1473 0
..LDL1015:
/*   1473 */	dup	z8.s, z12.s[0]
	.loc 13 1479 0
..LDL1016:
/*   1479 */	dup	z24.s, z11.s[0]
	.loc 13 1456 0
..LDL1017:
/*   1456 */	ld1w	{z3.s}, p0/z, [x30, 4, mul vl]	//  (*)
	.loc 13 1485 0
..LDL1018:
/*   1485 */	dup	z5.s, z18.s[0]
	.loc 13 1457 0
..LDL1019:
/*   1457 */	ld1w	{z27.s}, p0/z, [x1, 4, mul vl]	//  (*)
	.loc 13 1486 0
..LDL1020:
/*   1486 */	fmla	z16.s, p0/m, z30.s, z7.s
	.loc 13 1473 0
..LDL1021:
/*   1473 */	ldr	s12, [x16, 12]	//  (*)
	.loc 13 1462 0
..LDL1022:
/*   1462 */	fmla	z22.s, p0/m, z20.s, z7.s
	.loc 13 1546 0
..LDL1023:
/*   1546 */	add	x15, x16, 48
	.loc 13 1463 0
..LDL1024:
/*   1463 */	fmla	z21.s, p0/m, z20.s, z28.s
	.loc 13 1479 0
..LDL1025:
/*   1479 */	ldr	s31, [x16, 16]	//  (*)
	.loc 13 1467 0
..LDL1026:
/*   1467 */	dup	z18.s, z10.s[0]
	.loc 13 1468 0
..LDL1027:
/*   1468 */	fmla	z19.s, p0/m, z26.s, z7.s
	.loc 13 1469 0
..LDL1028:
/*   1469 */	fmla	z17.s, p0/m, z26.s, z28.s
	.loc 13 1485 0
..LDL1029:
/*   1485 */	ldr	s20, [x16, 44]	//  (*)
	.loc 13 1474 0
..LDL1030:
/*   1474 */	fmla	z6.s, p0/m, z8.s, z7.s
	.loc 13 1475 0
..LDL1031:
/*   1475 */	fmla	z2.s, p0/m, z8.s, z28.s
	.loc 13 1467 0
..LDL1032:
/*   1467 */	ldr	s10, [x16, 32]	//  (*)
	.loc 13 1480 0
..LDL1033:
/*   1480 */	fmla	z1.s, p0/m, z24.s, z7.s
	.loc 13 1481 0
..LDL1034:
/*   1481 */	fmla	z0.s, p0/m, z24.s, z28.s
	.loc 13 1487 0
..LDL1035:
/*   1487 */	fmla	z4.s, p0/m, z30.s, z28.s
	.loc 13 1461 0
..LDL1036:
/*   1461 */	dup	z9.s, z9.s[0]
	.loc 13 1491 0
..LDL1037:
/*   1491 */	prfm	2, [x16, x18]	//  (*)
/*   1491 */	ld1rw	{z26.s}, p0/z, [x2]	//  (*)
	.loc 13 1492 0
..LDL1038:
/*   1492 */	fmad	z7.s, p0/m, z25.s, z23.s
	.loc 13 1493 0
..LDL1039:
/*   1493 */	fmad	z25.s, p0/m, z28.s, z29.s
	.loc 13 1491 0
..LDL1040:
/*   1491 */	prfm	0, [x16, x17]	//  (*)
	.loc 13 1461 0
..LDL1041:
/*   1461 */	ldr	s11, [x16, 28]	//  (*)
	.loc 13 1473 0
..LDL1042:
/*   1473 */	dup	z8.s, z12.s[0]
	.loc 13 1545 0
..LDL1043:
/*   1545 */	add	x30, x30, 384
	.loc 13 1479 0
..LDL1044:
/*   1479 */	dup	z30.s, z31.s[0]
	.loc 13 1456 0
..LDL1045:
/*   1456 */	ld1w	{z23.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1545 0
..LDL1046:
/*   1545 */	add	x1, x1, 384
	.loc 13 1485 0
..LDL1047:
/*   1485 */	dup	z24.s, z20.s[0]
	.loc 13 1457 0
..LDL1048:
/*   1457 */	ld1w	{z29.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1486 0
..LDL1049:
/*   1486 */	fmla	z16.s, p0/m, z5.s, z3.s
	.loc 13 1473 0
..LDL1050:
/*   1473 */	ldr	s31, [x16, 36]	//  (*)
	.loc 13 1462 0
..LDL1051:
/*   1462 */	fmla	z22.s, p0/m, z9.s, z3.s
	.loc 13 1546 0
..LDL1052:
/*   1546 */	add	x16, x16, 72
	.loc 13 1463 0
..LDL1053:
/*   1463 */	fmla	z21.s, p0/m, z9.s, z27.s
	.loc 13 1479 0
..LDL1054:
/*   1479 */	ldr	s28, [x15, -8]	//  (*)
	.loc 13 1467 0
..LDL1055:
/*   1467 */	dup	z20.s, z10.s[0]
	.loc 13 1468 0
..LDL1056:
/*   1468 */	fmla	z19.s, p0/m, z18.s, z3.s
	.loc 13 1469 0
..LDL1057:
/*   1469 */	fmla	z17.s, p0/m, z18.s, z27.s
	.loc 13 1485 0
..LDL1058:
/*   1485 */	ldr	s18, [x16, -4]	//  (*)
	.loc 13 1474 0
..LDL1059:
/*   1474 */	fmla	z6.s, p0/m, z8.s, z3.s
	.loc 13 1475 0
..LDL1060:
/*   1475 */	fmla	z2.s, p0/m, z8.s, z27.s
	.loc 13 1467 0
..LDL1061:
/*   1467 */	ldr	s10, [x16, -16]	//  (*)
	.loc 13 1480 0
..LDL1062:
/*   1480 */	fmla	z1.s, p0/m, z30.s, z3.s
	.loc 13 1481 0
..LDL1063:
/*   1481 */	fmla	z0.s, p0/m, z30.s, z27.s
	.loc 13 1487 0
..LDL1064:
/*   1487 */	fmla	z4.s, p0/m, z5.s, z27.s
	.loc 13 1461 0
..LDL1065:
/*   1461 */	dup	z8.s, z11.s[0]
	.loc 13 1491 0
..LDL1066:
/*   1491 */	prfm	2, [x2, x18]	//  (*)
/*   1491 */	ld1rw	{z5.s}, p0/z, [x15]	//  (*)
	.loc 13 1492 0
..LDL1067:
/*   1492 */	fmad	z3.s, p0/m, z26.s, z7.s
	.loc 13 1493 0
..LDL1068:
/*   1493 */	fmad	z27.s, p0/m, z26.s, z25.s
	.loc 13 1491 0
..LDL1069:
/*   1491 */	prfm	0, [x2, x17]	//  (*)
	.loc 13 1547 0
..LDL1070:
/*   1547 */	sub	w0, w0, 3
	.loc 13 1459 0
..LDL1071:
/*   1459 */	cmp	w0, 5
/*   1459 */	bge	.L1871
	.loc 13 1473 0
..LDL1072:
/*   1473 */	dup	z25.s, z31.s[0]
	.loc 13 1546 0
..LDL1073:
/*   1546 */	add	x29, x16, 24
	.loc 13 1456 0
..LDL1074:
/*   1456 */	ld1w	{z30.s}, p0/z, [x30, 2, mul vl]	//  (*)
	.loc 13 1492 0
..LDL1075:
/*   1492 */	fmla	z3.s, p0/m, z5.s, z23.s
	.loc 13 1479 0
..LDL1076:
/*   1479 */	dup	z26.s, z28.s[0]
	.loc 13 1473 0
..LDL1077:
/*   1473 */	ldr	s28, [x16, -12]	//  (*)
	.loc 13 1545 0
..LDL1078:
/*   1545 */	add	x2, x30, 256
	.loc 13 1493 0
..LDL1079:
/*   1493 */	fmla	z27.s, p0/m, z5.s, z29.s
	.loc 13 1461 0
..LDL1080:
/*   1461 */	ldr	s7, [x16, -20]	//  (*)
	.loc 13 1462 0
..LDL1081:
/*   1462 */	fmla	z22.s, p0/m, z8.s, z23.s
	.loc 13 1463 0
..LDL1082:
/*   1463 */	fmla	z21.s, p0/m, z8.s, z29.s
	.loc 13 1547 0
..LDL1083:
/*   1547 */	sub	w0, w0, 2
	.loc 13 1479 0
..LDL1084:
/*   1479 */	ldr	s31, [x16, -8]	//  (*)
	.loc 13 1468 0
..LDL1085:
/*   1468 */	fmla	z19.s, p0/m, z20.s, z23.s
	.loc 13 1469 0
..LDL1086:
/*   1469 */	fmla	z17.s, p0/m, z20.s, z29.s
	.loc 13 1486 0
..LDL1087:
/*   1486 */	fmla	z16.s, p0/m, z24.s, z23.s
	.loc 13 1457 0
..LDL1088:
/*   1457 */	ld1w	{z8.s}, p0/z, [x1, 2, mul vl]	//  (*)
	.loc 13 1487 0
..LDL1089:
/*   1487 */	fmla	z4.s, p0/m, z24.s, z29.s
	.loc 13 1545 0
..LDL1090:
/*   1545 */	add	x1, x1, 256
	.loc 13 1491 0
..LDL1091:
/*   1491 */	ld1rw	{z20.s}, p0/z, [x16]	//  (*)
	.loc 13 1485 0
..LDL1092:
/*   1485 */	dup	z5.s, z18.s[0]
	.loc 13 1491 0
..LDL1093:
/*   1491 */	prfm	2, [x15, x18]	//  (*)
	.loc 13 1474 0
..LDL1094:
/*   1474 */	fmla	z6.s, p0/m, z25.s, z23.s
	.loc 13 1475 0
..LDL1095:
/*   1475 */	fmad	z25.s, p0/m, z29.s, z2.s
	.loc 13 1491 0
..LDL1096:
/*   1491 */	prfm	0, [x15, x17]	//  (*)
	.loc 13 1480 0
..LDL1097:
/*   1480 */	fmla	z1.s, p0/m, z26.s, z23.s
	.loc 13 1481 0
..LDL1098:
/*   1481 */	fmla	z0.s, p0/m, z26.s, z29.s
	.loc 13 1491 0
..LDL1099:
/*   1491 */	prfm	2, [x16, x18]	//  (*)
	.loc 13 1467 0
..LDL1100:
/*   1467 */	dup	z18.s, z10.s[0]
	.loc 13 1491 0
..LDL1101:
/*   1491 */	prfm	0, [x16, x17]	//  (*)
	.loc 13 1473 0
..LDL1102:
/*   1473 */	dup	z2.s, z28.s[0]
	.loc 13 1461 0
..LDL1103:
/*   1461 */	dup	z7.s, z7.s[0]
	.loc 13 1479 0
..LDL1104:
/*   1479 */	dup	z23.s, z31.s[0]
	.loc 13 1486 0
..LDL1105:
/*   1486 */	fmla	z16.s, p0/m, z5.s, z30.s
	.loc 13 1468 0
..LDL1106:
/*   1468 */	fmla	z19.s, p0/m, z18.s, z30.s
	.loc 13 1469 0
..LDL1107:
/*   1469 */	fmla	z17.s, p0/m, z18.s, z8.s
	.loc 13 1474 0
..LDL1108:
/*   1474 */	fmla	z6.s, p0/m, z2.s, z30.s
	.loc 13 1462 0
..LDL1109:
/*   1462 */	fmla	z22.s, p0/m, z7.s, z30.s
	.loc 13 1463 0
..LDL1110:
/*   1463 */	fmla	z21.s, p0/m, z7.s, z8.s
	.loc 13 1475 0
..LDL1111:
/*   1475 */	fmad	z2.s, p0/m, z8.s, z25.s
	.loc 13 1480 0
..LDL1112:
/*   1480 */	fmla	z1.s, p0/m, z23.s, z30.s
	.loc 13 1481 0
..LDL1113:
/*   1481 */	fmla	z0.s, p0/m, z23.s, z8.s
	.loc 13 1487 0
..LDL1114:
/*   1487 */	fmla	z4.s, p0/m, z5.s, z8.s
	.loc 13 1492 0
..LDL1115:
/*   1492 */	fmla	z3.s, p0/m, z20.s, z30.s
	.loc 13 1493 0
..LDL1116:
/*   1493 */	fmla	z27.s, p0/m, z20.s, z8.s
	.loc 13 1547 0
..LDL1117:
/*   1547 */	cbz	w0, .L2099
.L2102:
	.p2align 5
.L2105:					// :entr:term:mod:swpl
	.loc 13 1461 0 is_stmt 1
..LDL1118:
/*   1461 */	ldp	s23, s25, [x29, -20]	//  (*)
	.loc 13 1547 0
..LDL1119:
/*   1547 */	subs	w0, w0, 1
	.loc 13 1473 0
..LDL1120:
/*   1473 */	ldp	s20, s18, [x29, -12]	//  (*)
	.loc 13 1456 0
..LDL1121:
/*   1456 */	ld1w	{z5.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1485 0
..LDL1122:
/*   1485 */	ldr	s26, [x29, -4]	//  (*)
	.loc 13 1545 0
..LDL1123:
/*   1545 */	add	x2, x2, 128
	.loc 13 1457 0
..LDL1124:
/*   1457 */	ld1w	{z24.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1491 0
..LDL1125:
/*   1491 */	ld1rw	{z7.s}, p0/z, [x29]	//  (*)
	.loc 13 1545 0
..LDL1126:
/*   1545 */	add	x1, x1, 128
	.loc 13 1491 0
..LDL1127:
/*   1491 */	prfm	2, [x29, x18]	//  (*)
/*   1491 */	prfm	0, [x29, x17]	//  (*)
	.loc 13 1546 0
..LDL1128:
/*   1546 */	add	x29, x29, 24
	.loc 13 1461 0
..LDL1129:
/*   1461 */	dup	z23.s, z23.s[0]
	.loc 13 1467 0
..LDL1130:
/*   1467 */	dup	z25.s, z25.s[0]
	.loc 13 1473 0
..LDL1131:
/*   1473 */	dup	z20.s, z20.s[0]
	.loc 13 1479 0
..LDL1132:
/*   1479 */	dup	z18.s, z18.s[0]
	.loc 13 1485 0
..LDL1133:
/*   1485 */	dup	z26.s, z26.s[0]
	.loc 13 1462 0
..LDL1134:
/*   1462 */	fmla	z22.s, p0/m, z23.s, z5.s
	.loc 13 1463 0
..LDL1135:
/*   1463 */	fmla	z21.s, p0/m, z23.s, z24.s
	.loc 13 1468 0
..LDL1136:
/*   1468 */	fmla	z19.s, p0/m, z25.s, z5.s
	.loc 13 1469 0
..LDL1137:
/*   1469 */	fmla	z17.s, p0/m, z25.s, z24.s
	.loc 13 1474 0
..LDL1138:
/*   1474 */	fmla	z6.s, p0/m, z20.s, z5.s
	.loc 13 1475 0
..LDL1139:
/*   1475 */	fmla	z2.s, p0/m, z20.s, z24.s
	.loc 13 1480 0
..LDL1140:
/*   1480 */	fmla	z1.s, p0/m, z18.s, z5.s
	.loc 13 1481 0
..LDL1141:
/*   1481 */	fmla	z0.s, p0/m, z18.s, z24.s
	.loc 13 1486 0
..LDL1142:
/*   1486 */	fmla	z16.s, p0/m, z26.s, z5.s
	.loc 13 1487 0
..LDL1143:
/*   1487 */	fmla	z4.s, p0/m, z26.s, z24.s
	.loc 13 1492 0
..LDL1144:
/*   1492 */	fmla	z3.s, p0/m, z7.s, z5.s
	.loc 13 1493 0
..LDL1145:
/*   1493 */	fmla	z27.s, p0/m, z7.s, z24.s
	.loc 13 1547 0 is_stmt 0
..LDL1146:
/*   1547 */	bne	.L2105
.L2099:
.L1873:
	.loc 13 1553 0 is_stmt 1
..LDL1147:
/*   1553 */	st1w	{z22.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1554 0
..LDL1148:
/*   1554 */	st1w	{z21.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1559 0
..LDL1149:
/*   1559 */	st1w	{z19.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1560 0
..LDL1150:
/*   1560 */	st1w	{z17.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1565 0
..LDL1151:
/*   1565 */	st1w	{z6.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1566 0
..LDL1152:
/*   1566 */	st1w	{z2.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 1571 0
..LDL1153:
/*   1571 */	st1w	{z1.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1572 0
..LDL1154:
/*   1572 */	st1w	{z0.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1577 0
..LDL1155:
/*   1577 */	st1w	{z16.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1578 0
..LDL1156:
/*   1578 */	st1w	{z4.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1583 0
..LDL1157:
/*   1583 */	st1w	{z3.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1584 0
..LDL1158:
/*   1584 */	st1w	{z27.s}, p0, [x4, 0, mul vl]	//  (*)
	.loc 13 1635 0
..LDL1159:
/*    ??? */	ldp	d8, d9, [sp, 32]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 16]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldr	d12, [sp, 8]	//  (*)
	.cfi_restore 76
/*    ??? */	ldp	x29, x30, [sp, 48]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*   1635 */	add	sp, sp, 64
	.cfi_def_cfa_offset 0
/*   1635 */	ret	
..D13.pchi:
	.cfi_endproc
.LFE12:
	.size	_Z20kernel_Nx32_templateILi6EEviPfS0_S0_i, .-_Z20kernel_Nx32_templateILi6EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx32_templateILi7EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx32_templateILi7EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx32_templateILi7EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx32_templateILi7EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx32_templateILi7EEviPfS0_S0_i, %function
_Z20kernel_Nx32_templateILi7EEviPfS0_S0_i:
	.loc 13 1337 0
..LDL1160:
.LFB13:
	.cfi_startproc
/*   1635 */	sub	sp, sp, 64
	.cfi_def_cfa_offset 64
/*    ??? */	stp	d8, d9, [sp, 48]	//  (*)
	.cfi_offset 72, -16
	.cfi_offset 73, -8
/*    ??? */	stp	d10, d11, [sp, 32]	//  (*)
	.cfi_offset 74, -32
	.cfi_offset 75, -24
/*    ??? */	str	d12, [sp, 24]	//  (*)
	.cfi_offset 76, -40
	.loc 13 1343 0
..LDL1161:
/*   1343 */	ptrue	p0.s, ALL
	.loc 13 1365 0
..LDL1162:
/*   1365 */	add	x7, x3, 64
	.loc 13 1366 0
..LDL1163:
/*   1366 */	sxtw	x4, w4
/*   1366 */	lsl	x5, x4, 2
	.loc 13 1371 0
..LDL1164:
/*   1371 */	add	x4, x4, 16
	.loc 13 1364 0
..LDL1165:
/*   1364 */	ld1w	{z23.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1366 0
..LDL1166:
/*   1366 */	add	x6, x5, x3
	.loc 13 1371 0
..LDL1167:
/*   1371 */	add	x14, x3, x4, lsl #2
	.loc 13 1365 0
..LDL1168:
/*   1365 */	ld1w	{z3.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1372 0
..LDL1169:
/*   1372 */	add	x13, x5, x6
	.loc 13 1370 0
..LDL1170:
/*   1370 */	ld1w	{z21.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1377 0
..LDL1171:
/*   1377 */	add	x8, x6, x4, lsl #2
	.loc 13 1378 0
..LDL1172:
/*   1378 */	add	x10, x5, x13
	.loc 13 1371 0
..LDL1173:
/*   1371 */	ld1w	{z1.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1384 0
..LDL1174:
/*   1384 */	add	x11, x5, x10
	.loc 13 1376 0
..LDL1175:
/*   1376 */	ld1w	{z19.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1383 0
..LDL1176:
/*   1383 */	add	x12, x13, x4, lsl #2
	.loc 13 1390 0
..LDL1177:
/*   1390 */	add	x9, x5, x11
	.loc 13 1377 0
..LDL1178:
/*   1377 */	ld1w	{z25.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1396 0
..LDL1179:
/*   1396 */	add	x5, x5, x9
	.loc 13 1382 0
..LDL1180:
/*   1382 */	ld1w	{z17.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1389 0
..LDL1181:
/*   1389 */	add	x16, x10, x4, lsl #2
	.loc 13 1383 0
..LDL1182:
/*   1383 */	ld1w	{z30.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1388 0
..LDL1183:
/*   1388 */	ld1w	{z7.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1389 0
..LDL1184:
/*   1389 */	ld1w	{z29.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1395 0
..LDL1185:
/*   1395 */	add	x15, x11, x4, lsl #2
	.loc 13 1394 0
..LDL1186:
/*   1394 */	ld1w	{z5.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1400 0
..LDL1187:
/*   1400 */	ld1w	{z2.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1395 0
..LDL1188:
/*   1395 */	ld1w	{z28.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1401 0
..LDL1189:
/*   1401 */	add	x4, x9, x4, lsl #2
/*   1401 */	ld1w	{z26.s}, p0/z, [x4, 0, mul vl]	//  (*)
	.loc 13 1454 0
..LDL1190:
/*   1454 */	cmp	w0, 0
/*   1454 */	ble	.L1881
	.loc 13 1461 0 is_stmt 0
..LDL1191:
/*   1461 */	orr	x17, x1, 6917529027641081856
	.loc 13 1457 0
..LDL1192:
/*   1457 */	add	x1, x2, 64
	.loc 13 1461 0
..LDL1193:
/*   1461 */	add	x18, x17, 24
	.loc 13 1455 0 is_stmt 1
..LDL1194:
/*   1455 */	cmp	w0, 3
/*   1455 */	blt	.L2113
	.loc 13 1547 0 is_stmt 0
..LDL1195:
/*   1547 */	mov	x17, x18
/*   1547 */	mov	z4.d, z28.d
	.loc 13 1456 0
..LDL1196:
/*   1456 */	ld1w	{z27.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1547 0
..LDL1197:
/*   1547 */	mov	z6.d, z29.d
/*   1547 */	mov	z0.d, z26.d
	.loc 13 1457 0
..LDL1198:
/*   1457 */	ld1w	{z24.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1547 0
..LDL1199:
/*   1547 */	mov	z16.d, z30.d
/*   1461 */	ldp	s9, s8, [x17, -24]	//  (*)
/*   1547 */	mov	z18.d, z25.d
/*   1547 */	mov	z20.d, z1.d
/*   1473 */	ldp	s30, s31, [x17, -16]	//  (*)
/*   1547 */	mov	z22.d, z3.d
/*   1485 */	ldp	s29, s28, [x17, -8]	//  (*)
	.p2align 5
.L1879:					// :entr:term:swpl
	.loc 13 1461 0
..LDL1200:
/*   1461 */	dup	z12.s, z9.s[0]
	.loc 13 1467 0
..LDL1201:
/*   1467 */	dup	z10.s, z8.s[0]
	.loc 13 1473 0
..LDL1202:
/*   1473 */	dup	z9.s, z30.s[0]
	.loc 13 1497 0
..LDL1203:
/*   1497 */	ld1rw	{z1.s}, p0/z, [x17]	//  (*)
	.loc 13 1479 0
..LDL1204:
/*   1479 */	dup	z8.s, z31.s[0]
	.loc 13 1485 0
..LDL1205:
/*   1485 */	dup	z29.s, z29.s[0]
	.loc 13 1456 0
..LDL1206:
/*   1456 */	ld1w	{z26.s}, p0/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1457 0
..LDL1207:
/*   1457 */	ld1w	{z25.s}, p0/z, [x1, 2, mul vl]	//  (*)
	.loc 13 1546 0
..LDL1208:
/*   1546 */	add	x18, x17, 28
	.loc 13 1491 0
..LDL1209:
/*   1491 */	dup	z3.s, z28.s[0]
	.loc 13 1462 0
..LDL1210:
/*   1462 */	fmla	z23.s, p0/m, z12.s, z27.s
	.loc 13 1461 0
..LDL1211:
/*   1461 */	ldr	s11, [x17, 4]	//  (*)
	.loc 13 1463 0
..LDL1212:
/*   1463 */	fmla	z22.s, p0/m, z12.s, z24.s
	.loc 13 1468 0
..LDL1213:
/*   1468 */	fmla	z21.s, p0/m, z10.s, z27.s
	.loc 13 1467 0
..LDL1214:
/*   1467 */	ldr	s28, [x17, 8]	//  (*)
	.loc 13 1469 0
..LDL1215:
/*   1469 */	fmla	z20.s, p0/m, z10.s, z24.s
	.loc 13 1474 0
..LDL1216:
/*   1474 */	fmla	z19.s, p0/m, z9.s, z27.s
	.loc 13 1473 0
..LDL1217:
/*   1473 */	ldr	s30, [x17, 12]	//  (*)
	.loc 13 1475 0
..LDL1218:
/*   1475 */	fmla	z18.s, p0/m, z9.s, z24.s
	.loc 13 1480 0
..LDL1219:
/*   1480 */	fmla	z17.s, p0/m, z8.s, z27.s
	.loc 13 1479 0
..LDL1220:
/*   1479 */	ldr	s31, [x17, 16]	//  (*)
	.loc 13 1481 0
..LDL1221:
/*   1481 */	fmla	z16.s, p0/m, z8.s, z24.s
	.loc 13 1486 0
..LDL1222:
/*   1486 */	fmla	z7.s, p0/m, z29.s, z27.s
	.loc 13 1485 0
..LDL1223:
/*   1485 */	ldr	s8, [x17, 20]	//  (*)
	.loc 13 1487 0
..LDL1224:
/*   1487 */	fmla	z6.s, p0/m, z29.s, z24.s
	.loc 13 1491 0
..LDL1225:
/*   1491 */	ldr	s9, [x17, 24]	//  (*)
	.loc 13 1492 0
..LDL1226:
/*   1492 */	fmla	z5.s, p0/m, z3.s, z27.s
	.loc 13 1493 0
..LDL1227:
/*   1493 */	fmad	z3.s, p0/m, z24.s, z4.s
	.loc 13 1497 0
..LDL1228:
/*   1497 */	prfm	2, [x17, 2560]	//  (*)
/*   1497 */	prfm	0, [x17, 512]	//  (*)
	.loc 13 1498 0
..LDL1229:
/*   1498 */	fmla	z2.s, p0/m, z1.s, z27.s
	.loc 13 1499 0
..LDL1230:
/*   1499 */	fmad	z1.s, p0/m, z24.s, z0.s
	.loc 13 1461 0
..LDL1231:
/*   1461 */	dup	z12.s, z11.s[0]
	.loc 13 1467 0
..LDL1232:
/*   1467 */	dup	z11.s, z28.s[0]
	.loc 13 1473 0
..LDL1233:
/*   1473 */	dup	z10.s, z30.s[0]
	.loc 13 1497 0
..LDL1234:
/*   1497 */	ld1rw	{z0.s}, p0/z, [x18]	//  (*)
	.loc 13 1479 0
..LDL1235:
/*   1479 */	dup	z29.s, z31.s[0]
	.loc 13 1545 0
..LDL1236:
/*   1545 */	add	x2, x2, 256
/*   1545 */	add	x1, x1, 256
	.loc 13 1485 0
..LDL1237:
/*   1485 */	dup	z28.s, z8.s[0]
	.loc 13 1456 0
..LDL1238:
/*   1456 */	ld1w	{z27.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1457 0
..LDL1239:
/*   1457 */	ld1w	{z24.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1546 0
..LDL1240:
/*   1546 */	add	x17, x17, 56
	.loc 13 1491 0
..LDL1241:
/*   1491 */	dup	z4.s, z9.s[0]
	.loc 13 1462 0
..LDL1242:
/*   1462 */	fmla	z23.s, p0/m, z12.s, z26.s
	.loc 13 1461 0
..LDL1243:
/*   1461 */	ldr	s9, [x17, -24]	//  (*)
	.loc 13 1463 0
..LDL1244:
/*   1463 */	fmla	z22.s, p0/m, z12.s, z25.s
	.loc 13 1468 0
..LDL1245:
/*   1468 */	fmla	z21.s, p0/m, z11.s, z26.s
	.loc 13 1467 0
..LDL1246:
/*   1467 */	ldr	s8, [x17, -20]	//  (*)
	.loc 13 1469 0
..LDL1247:
/*   1469 */	fmla	z20.s, p0/m, z11.s, z25.s
	.loc 13 1474 0
..LDL1248:
/*   1474 */	fmla	z19.s, p0/m, z10.s, z26.s
	.loc 13 1473 0
..LDL1249:
/*   1473 */	ldr	s30, [x17, -16]	//  (*)
	.loc 13 1475 0
..LDL1250:
/*   1475 */	fmla	z18.s, p0/m, z10.s, z25.s
	.loc 13 1480 0
..LDL1251:
/*   1480 */	fmla	z17.s, p0/m, z29.s, z26.s
	.loc 13 1479 0
..LDL1252:
/*   1479 */	ldr	s31, [x17, -12]	//  (*)
	.loc 13 1481 0
..LDL1253:
/*   1481 */	fmla	z16.s, p0/m, z29.s, z25.s
	.loc 13 1486 0
..LDL1254:
/*   1486 */	fmla	z7.s, p0/m, z28.s, z26.s
	.loc 13 1485 0
..LDL1255:
/*   1485 */	ldr	s29, [x17, -8]	//  (*)
	.loc 13 1487 0
..LDL1256:
/*   1487 */	fmla	z6.s, p0/m, z28.s, z25.s
	.loc 13 1491 0
..LDL1257:
/*   1491 */	ldr	s28, [x17, -4]	//  (*)
	.loc 13 1492 0
..LDL1258:
/*   1492 */	fmla	z5.s, p0/m, z4.s, z26.s
	.loc 13 1493 0
..LDL1259:
/*   1493 */	fmad	z4.s, p0/m, z25.s, z3.s
	.loc 13 1497 0
..LDL1260:
/*   1497 */	prfm	2, [x18, 2560]	//  (*)
/*   1497 */	prfm	0, [x18, 512]	//  (*)
	.loc 13 1498 0
..LDL1261:
/*   1498 */	fmla	z2.s, p0/m, z0.s, z26.s
	.loc 13 1499 0
..LDL1262:
/*   1499 */	fmad	z0.s, p0/m, z25.s, z1.s
	.loc 13 1547 0
..LDL1263:
/*   1547 */	sub	w0, w0, 2
	.loc 13 1459 0
..LDL1264:
/*   1459 */	cmp	w0, 3
/*   1459 */	bge	.L1879
	.loc 13 1497 0
..LDL1265:
/*   1497 */	ld1rw	{z26.s}, p0/z, [x17]	//  (*)
	.loc 13 1545 0
..LDL1266:
/*   1545 */	add	x2, x2, 128
/*   1545 */	add	x1, x1, 128
	.loc 13 1473 0
..LDL1267:
/*   1473 */	dup	z25.s, z30.s[0]
	.loc 13 1461 0
..LDL1268:
/*   1461 */	dup	z3.s, z9.s[0]
	.loc 13 1497 0
..LDL1269:
/*   1497 */	prfm	2, [x17, 2560]	//  (*)
	.loc 13 1546 0
..LDL1270:
/*   1546 */	add	x18, x17, 28
	.loc 13 1547 0
..LDL1271:
/*   1547 */	sub	w0, w0, 1
	.loc 13 1467 0
..LDL1272:
/*   1467 */	dup	z1.s, z8.s[0]
	.loc 13 1497 0
..LDL1273:
/*   1497 */	prfm	0, [x17, 512]	//  (*)
	.loc 13 1479 0
..LDL1274:
/*   1479 */	dup	z30.s, z31.s[0]
	.loc 13 1485 0
..LDL1275:
/*   1485 */	dup	z29.s, z29.s[0]
	.loc 13 1491 0
..LDL1276:
/*   1491 */	dup	z28.s, z28.s[0]
	.loc 13 1474 0
..LDL1277:
/*   1474 */	fmla	z19.s, p0/m, z25.s, z27.s
	.loc 13 1475 0
..LDL1278:
/*   1475 */	fmad	z25.s, p0/m, z24.s, z18.s
	.loc 13 1462 0
..LDL1279:
/*   1462 */	fmla	z23.s, p0/m, z3.s, z27.s
	.loc 13 1463 0
..LDL1280:
/*   1463 */	fmad	z3.s, p0/m, z24.s, z22.s
	.loc 13 1468 0
..LDL1281:
/*   1468 */	fmla	z21.s, p0/m, z1.s, z27.s
	.loc 13 1469 0
..LDL1282:
/*   1469 */	fmad	z1.s, p0/m, z24.s, z20.s
	.loc 13 1480 0
..LDL1283:
/*   1480 */	fmla	z17.s, p0/m, z30.s, z27.s
	.loc 13 1481 0
..LDL1284:
/*   1481 */	fmad	z30.s, p0/m, z24.s, z16.s
	.loc 13 1486 0
..LDL1285:
/*   1486 */	fmla	z7.s, p0/m, z29.s, z27.s
	.loc 13 1487 0
..LDL1286:
/*   1487 */	fmad	z29.s, p0/m, z24.s, z6.s
	.loc 13 1492 0
..LDL1287:
/*   1492 */	fmla	z5.s, p0/m, z28.s, z27.s
	.loc 13 1498 0
..LDL1288:
/*   1498 */	fmla	z2.s, p0/m, z26.s, z27.s
	.loc 13 1493 0
..LDL1289:
/*   1493 */	fmad	z28.s, p0/m, z24.s, z4.s
	.loc 13 1499 0
..LDL1290:
/*   1499 */	fmad	z26.s, p0/m, z24.s, z0.s
	.loc 13 1547 0
..LDL1291:
/*   1547 */	cbz	w0, .L2110
.L2113:
	.p2align 5
.L2116:					// :entr:term:mod:swpl
	.loc 13 1461 0 is_stmt 1
..LDL1292:
/*   1461 */	ldp	s4, s24, [x18, -24]	//  (*)
	.loc 13 1547 0
..LDL1293:
/*   1547 */	subs	w0, w0, 1
	.loc 13 1473 0
..LDL1294:
/*   1473 */	ldp	s27, s18, [x18, -16]	//  (*)
	.loc 13 1485 0
..LDL1295:
/*   1485 */	ldp	s22, s0, [x18, -8]	//  (*)
	.loc 13 1456 0
..LDL1296:
/*   1456 */	ld1w	{z20.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1457 0
..LDL1297:
/*   1457 */	ld1w	{z16.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1545 0
..LDL1298:
/*   1545 */	add	x1, x1, 128
/*   1545 */	add	x2, x2, 128
	.loc 13 1497 0
..LDL1299:
/*   1497 */	prfm	2, [x18, 2560]	//  (*)
/*   1497 */	ld1rw	{z6.s}, p0/z, [x18]	//  (*)
/*   1497 */	prfm	0, [x18, 512]	//  (*)
	.loc 13 1546 0
..LDL1300:
/*   1546 */	add	x18, x18, 28
	.loc 13 1461 0
..LDL1301:
/*   1461 */	dup	z4.s, z4.s[0]
	.loc 13 1467 0
..LDL1302:
/*   1467 */	dup	z24.s, z24.s[0]
	.loc 13 1473 0
..LDL1303:
/*   1473 */	dup	z27.s, z27.s[0]
	.loc 13 1479 0
..LDL1304:
/*   1479 */	dup	z18.s, z18.s[0]
	.loc 13 1485 0
..LDL1305:
/*   1485 */	dup	z22.s, z22.s[0]
	.loc 13 1491 0
..LDL1306:
/*   1491 */	dup	z0.s, z0.s[0]
	.loc 13 1462 0
..LDL1307:
/*   1462 */	fmla	z23.s, p0/m, z4.s, z20.s
	.loc 13 1463 0
..LDL1308:
/*   1463 */	fmla	z3.s, p0/m, z4.s, z16.s
	.loc 13 1468 0
..LDL1309:
/*   1468 */	fmla	z21.s, p0/m, z24.s, z20.s
	.loc 13 1469 0
..LDL1310:
/*   1469 */	fmla	z1.s, p0/m, z24.s, z16.s
	.loc 13 1474 0
..LDL1311:
/*   1474 */	fmla	z19.s, p0/m, z27.s, z20.s
	.loc 13 1475 0
..LDL1312:
/*   1475 */	fmla	z25.s, p0/m, z27.s, z16.s
	.loc 13 1480 0
..LDL1313:
/*   1480 */	fmla	z17.s, p0/m, z18.s, z20.s
	.loc 13 1481 0
..LDL1314:
/*   1481 */	fmla	z30.s, p0/m, z18.s, z16.s
	.loc 13 1486 0
..LDL1315:
/*   1486 */	fmla	z7.s, p0/m, z22.s, z20.s
	.loc 13 1487 0
..LDL1316:
/*   1487 */	fmla	z29.s, p0/m, z22.s, z16.s
	.loc 13 1492 0
..LDL1317:
/*   1492 */	fmla	z5.s, p0/m, z0.s, z20.s
	.loc 13 1493 0
..LDL1318:
/*   1493 */	fmla	z28.s, p0/m, z0.s, z16.s
	.loc 13 1498 0
..LDL1319:
/*   1498 */	fmla	z2.s, p0/m, z6.s, z20.s
	.loc 13 1499 0
..LDL1320:
/*   1499 */	fmla	z26.s, p0/m, z6.s, z16.s
	.loc 13 1547 0 is_stmt 0
..LDL1321:
/*   1547 */	bne	.L2116
.L2110:
.L1881:
	.loc 13 1553 0 is_stmt 1
..LDL1322:
/*   1553 */	st1w	{z23.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1554 0
..LDL1323:
/*   1554 */	st1w	{z3.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1559 0
..LDL1324:
/*   1559 */	st1w	{z21.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1560 0
..LDL1325:
/*   1560 */	st1w	{z1.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1565 0
..LDL1326:
/*   1565 */	st1w	{z19.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 1566 0
..LDL1327:
/*   1566 */	st1w	{z25.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1571 0
..LDL1328:
/*   1571 */	st1w	{z17.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1572 0
..LDL1329:
/*   1572 */	st1w	{z30.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1577 0
..LDL1330:
/*   1577 */	st1w	{z7.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1578 0
..LDL1331:
/*   1578 */	st1w	{z29.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 1583 0
..LDL1332:
/*   1583 */	st1w	{z5.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1584 0
..LDL1333:
/*   1584 */	st1w	{z28.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 1589 0
..LDL1334:
/*   1589 */	st1w	{z2.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1590 0
..LDL1335:
/*   1590 */	st1w	{z26.s}, p0, [x4, 0, mul vl]	//  (*)
	.loc 13 1635 0
..LDL1336:
/*    ??? */	ldp	d8, d9, [sp, 48]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 32]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldr	d12, [sp, 24]	//  (*)
	.cfi_restore 76
/*    ??? */	add	sp, sp, 64
	.cfi_def_cfa_offset 0
/*   1635 */	ret	
..D14.pchi:
	.cfi_endproc
.LFE13:
	.size	_Z20kernel_Nx32_templateILi7EEviPfS0_S0_i, .-_Z20kernel_Nx32_templateILi7EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx32_templateILi8EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx32_templateILi8EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx32_templateILi8EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx32_templateILi8EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx32_templateILi8EEviPfS0_S0_i, %function
_Z20kernel_Nx32_templateILi8EEviPfS0_S0_i:
	.loc 13 1337 0
..LDL1337:
.LFB14:
	.cfi_startproc
/*   1635 */	sub	sp, sp, 128
	.cfi_def_cfa_offset 128
/*    ??? */	stp	x29, x30, [sp, 112]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    ??? */	stp	x19, x20, [sp, 96]	//  (*)
	.cfi_offset 19, -32
	.cfi_offset 20, -24
/*    ??? */	stp	d8, d9, [sp, 80]	//  (*)
	.cfi_offset 72, -48
	.cfi_offset 73, -40
/*    ??? */	stp	d10, d11, [sp, 64]	//  (*)
	.cfi_offset 74, -64
	.cfi_offset 75, -56
/*    ??? */	stp	d12, d13, [sp, 48]	//  (*)
	.cfi_offset 76, -80
	.cfi_offset 77, -72
	.loc 13 1343 0
..LDL1338:
/*   1343 */	ptrue	p0.s, ALL
	.loc 13 1365 0
..LDL1339:
/*   1365 */	add	x6, x3, 64
	.loc 13 1366 0
..LDL1340:
/*   1366 */	sxtw	x4, w4
/*   1366 */	lsl	x5, x4, 2
	.loc 13 1371 0
..LDL1341:
/*   1371 */	add	x4, x4, 16
	.loc 13 1364 0
..LDL1342:
/*   1364 */	ld1w	{z19.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1366 0
..LDL1343:
/*   1366 */	add	x11, x5, x3
	.loc 13 1371 0
..LDL1344:
/*   1371 */	add	x13, x3, x4, lsl #2
	.loc 13 1365 0
..LDL1345:
/*   1365 */	ld1w	{z23.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1372 0
..LDL1346:
/*   1372 */	add	x15, x5, x11
	.loc 13 1370 0
..LDL1347:
/*   1370 */	ld1w	{z18.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1377 0
..LDL1348:
/*   1377 */	add	x7, x11, x4, lsl #2
	.loc 13 1378 0
..LDL1349:
/*   1378 */	add	x8, x5, x15
	.loc 13 1371 0
..LDL1350:
/*   1371 */	ld1w	{z17.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1384 0
..LDL1351:
/*   1384 */	add	x12, x5, x8
	.loc 13 1376 0
..LDL1352:
/*   1376 */	ld1w	{z26.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1383 0
..LDL1353:
/*   1383 */	add	x16, x15, x4, lsl #2
	.loc 13 1390 0
..LDL1354:
/*   1390 */	add	x10, x5, x12
	.loc 13 1377 0
..LDL1355:
/*   1377 */	ld1w	{z25.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1396 0
..LDL1356:
/*   1396 */	add	x9, x5, x10
	.loc 13 1382 0
..LDL1357:
/*   1382 */	ld1w	{z7.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1389 0
..LDL1358:
/*   1389 */	add	x14, x8, x4, lsl #2
	.loc 13 1402 0
..LDL1359:
/*   1402 */	add	x18, x5, x9
	.loc 13 1383 0
..LDL1360:
/*   1383 */	ld1w	{z24.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1388 0
..LDL1361:
/*   1388 */	ld1w	{z5.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1389 0
..LDL1362:
/*   1389 */	ld1w	{z30.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1395 0
..LDL1363:
/*   1395 */	add	x17, x12, x4, lsl #2
	.loc 13 1394 0
..LDL1364:
/*   1394 */	ld1w	{z3.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1400 0
..LDL1365:
/*   1400 */	ld1w	{z1.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1395 0
..LDL1366:
/*   1395 */	ld1w	{z29.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 1401 0
..LDL1367:
/*   1401 */	add	x5, x10, x4, lsl #2
	.loc 13 1406 0
..LDL1368:
/*   1406 */	ld1w	{z0.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 1401 0
..LDL1369:
/*   1401 */	ld1w	{z27.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1407 0
..LDL1370:
/*   1407 */	add	x4, x9, x4, lsl #2
/*   1407 */	ld1w	{z22.s}, p0/z, [x4, 0, mul vl]	//  (*)
	.loc 13 1454 0
..LDL1371:
/*   1454 */	cmp	w0, 0
/*   1454 */	ble	.L1889
	.loc 13 1461 0 is_stmt 0
..LDL1372:
/*   1461 */	orr	x29, x1, 6917529027641081856
	.loc 13 1457 0
..LDL1373:
/*   1457 */	add	x1, x2, 64
	.loc 13 1461 0
..LDL1374:
/*   1461 */	add	x20, x29, 28
	.loc 13 1503 0
..LDL1375:
/*   1503 */	mov	x19, 2564
/*   1503 */	mov	x30, 516
	.loc 13 1455 0 is_stmt 1
..LDL1376:
/*   1455 */	cmp	w0, 3
/*   1455 */	blt	.L2124
	.loc 13 1547 0 is_stmt 0
..LDL1377:
/*   1547 */	mov	x29, x20
	.loc 13 1456 0
..LDL1378:
/*   1456 */	ld1w	{z28.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1547 0
..LDL1379:
/*   1547 */	mov	z4.d, z30.d
/*   1547 */	mov	z21.d, z27.d
	.loc 13 1457 0
..LDL1380:
/*   1457 */	ld1w	{z20.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1547 0
..LDL1381:
/*   1547 */	mov	z2.d, z29.d
	.loc 13 1461 0
..LDL1382:
/*   1461 */	ldr	s8, [x29, -28]	//  (*)
/*   1473 */	ldp	s31, s9, [x29, -24]	//  (*)
	.loc 13 1547 0
..LDL1383:
/*   1547 */	mov	z6.d, z24.d
/*   1547 */	mov	z16.d, z25.d
/*   1479 */	ldp	s10, s30, [x29, -16]	//  (*)
	.p2align 5
.L1887:					// :entr:term:swpl
/*   1491 */	ldp	s29, s11, [x29, -8]	//  (*)
	.loc 13 1461 0
..LDL1384:
/*   1461 */	dup	z8.s, z8.s[0]
	.loc 13 1467 0
..LDL1385:
/*   1467 */	dup	z31.s, z31.s[0]
	.loc 13 1473 0
..LDL1386:
/*   1473 */	dup	z25.s, z9.s[0]
	.loc 13 1479 0
..LDL1387:
/*   1479 */	dup	z24.s, z10.s[0]
	.loc 13 1503 0
..LDL1388:
/*   1503 */	ld1rw	{z27.s}, p0/z, [x29]	//  (*)
	.loc 13 1485 0
..LDL1389:
/*   1485 */	dup	z30.s, z30.s[0]
	.loc 13 1462 0
..LDL1390:
/*   1462 */	fmla	z19.s, p0/m, z8.s, z28.s
	.loc 13 1491 0
..LDL1391:
/*   1491 */	dup	z29.s, z29.s[0]
	.loc 13 1463 0
..LDL1392:
/*   1463 */	fmad	z8.s, p0/m, z20.s, z23.s
	.loc 13 1497 0
..LDL1393:
/*   1497 */	dup	z23.s, z11.s[0]
	.loc 13 1468 0
..LDL1394:
/*   1468 */	fmla	z18.s, p0/m, z31.s, z28.s
	.loc 13 1469 0
..LDL1395:
/*   1469 */	fmla	z17.s, p0/m, z31.s, z20.s
	.loc 13 1546 0
..LDL1396:
/*   1546 */	add	x20, x29, 32
	.loc 13 1474 0
..LDL1397:
/*   1474 */	fmla	z26.s, p0/m, z25.s, z28.s
	.loc 13 1475 0
..LDL1398:
/*   1475 */	fmla	z16.s, p0/m, z25.s, z20.s
	.loc 13 1461 0
..LDL1399:
/*   1461 */	ldr	s31, [x29, 4]	//  (*)
	.loc 13 1480 0
..LDL1400:
/*   1480 */	fmla	z7.s, p0/m, z24.s, z28.s
	.loc 13 1481 0
..LDL1401:
/*   1481 */	fmla	z6.s, p0/m, z24.s, z20.s
	.loc 13 1456 0
..LDL1402:
/*   1456 */	ld1w	{z25.s}, p0/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1457 0
..LDL1403:
/*   1457 */	ld1w	{z24.s}, p0/z, [x1, 2, mul vl]	//  (*)
	.loc 13 1486 0
..LDL1404:
/*   1486 */	fmla	z5.s, p0/m, z30.s, z28.s
	.loc 13 1487 0
..LDL1405:
/*   1487 */	fmla	z4.s, p0/m, z30.s, z20.s
/*   1473 */	ldp	s30, s9, [x29, 8]	//  (*)
	.loc 13 1492 0
..LDL1406:
/*   1492 */	fmla	z3.s, p0/m, z29.s, z28.s
	.loc 13 1493 0
..LDL1407:
/*   1493 */	fmla	z2.s, p0/m, z29.s, z20.s
/*   1479 */	ldp	s10, s29, [x29, 16]	//  (*)
	.loc 13 1498 0
..LDL1408:
/*   1498 */	fmla	z1.s, p0/m, z23.s, z28.s
	.loc 13 1499 0
..LDL1409:
/*   1499 */	fmla	z21.s, p0/m, z23.s, z20.s
	.loc 13 1503 0
..LDL1410:
/*   1503 */	prfm	2, [x29, x19]	//  (*)
/*   1503 */	prfm	0, [x29, x30]	//  (*)
	.loc 13 1504 0
..LDL1411:
/*   1504 */	fmla	z0.s, p0/m, z27.s, z28.s
	.loc 13 1505 0
..LDL1412:
/*   1505 */	fmla	z22.s, p0/m, z27.s, z20.s
/*   1491 */	ldp	s13, s12, [x29, 24]	//  (*)
	.loc 13 1461 0
..LDL1413:
/*   1461 */	dup	z23.s, z31.s[0]
	.loc 13 1467 0
..LDL1414:
/*   1467 */	dup	z11.s, z30.s[0]
	.loc 13 1473 0
..LDL1415:
/*   1473 */	dup	z28.s, z9.s[0]
	.loc 13 1479 0
..LDL1416:
/*   1479 */	dup	z20.s, z10.s[0]
	.loc 13 1503 0
..LDL1417:
/*   1503 */	ld1rw	{z27.s}, p0/z, [x20]	//  (*)
	.loc 13 1485 0
..LDL1418:
/*   1485 */	dup	z31.s, z29.s[0]
	.loc 13 1462 0
..LDL1419:
/*   1462 */	fmla	z19.s, p0/m, z23.s, z25.s
	.loc 13 1491 0
..LDL1420:
/*   1491 */	dup	z30.s, z13.s[0]
	.loc 13 1463 0
..LDL1421:
/*   1463 */	fmad	z23.s, p0/m, z24.s, z8.s
	.loc 13 1497 0
..LDL1422:
/*   1497 */	dup	z29.s, z12.s[0]
	.loc 13 1468 0
..LDL1423:
/*   1468 */	fmla	z18.s, p0/m, z11.s, z25.s
	.loc 13 1469 0
..LDL1424:
/*   1469 */	fmla	z17.s, p0/m, z11.s, z24.s
	.loc 13 1545 0
..LDL1425:
/*   1545 */	add	x2, x2, 256
	.loc 13 1546 0
..LDL1426:
/*   1546 */	add	x29, x29, 64
	.loc 13 1474 0
..LDL1427:
/*   1474 */	fmla	z26.s, p0/m, z28.s, z25.s
	.loc 13 1475 0
..LDL1428:
/*   1475 */	fmla	z16.s, p0/m, z28.s, z24.s
	.loc 13 1545 0
..LDL1429:
/*   1545 */	add	x1, x1, 256
	.loc 13 1461 0
..LDL1430:
/*   1461 */	ldr	s8, [x29, -28]	//  (*)
	.loc 13 1480 0
..LDL1431:
/*   1480 */	fmla	z7.s, p0/m, z20.s, z25.s
	.loc 13 1481 0
..LDL1432:
/*   1481 */	fmla	z6.s, p0/m, z20.s, z24.s
	.loc 13 1456 0
..LDL1433:
/*   1456 */	ld1w	{z28.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1457 0
..LDL1434:
/*   1457 */	ld1w	{z20.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1486 0
..LDL1435:
/*   1486 */	fmla	z5.s, p0/m, z31.s, z25.s
	.loc 13 1487 0
..LDL1436:
/*   1487 */	fmla	z4.s, p0/m, z31.s, z24.s
/*   1473 */	ldp	s31, s9, [x29, -24]	//  (*)
	.loc 13 1492 0
..LDL1437:
/*   1492 */	fmla	z3.s, p0/m, z30.s, z25.s
	.loc 13 1493 0
..LDL1438:
/*   1493 */	fmla	z2.s, p0/m, z30.s, z24.s
/*   1479 */	ldp	s10, s30, [x29, -16]	//  (*)
	.loc 13 1498 0
..LDL1439:
/*   1498 */	fmla	z1.s, p0/m, z29.s, z25.s
	.loc 13 1499 0
..LDL1440:
/*   1499 */	fmla	z21.s, p0/m, z29.s, z24.s
	.loc 13 1503 0
..LDL1441:
/*   1503 */	prfm	2, [x20, x19]	//  (*)
/*   1503 */	prfm	0, [x20, x30]	//  (*)
	.loc 13 1504 0
..LDL1442:
/*   1504 */	fmla	z0.s, p0/m, z27.s, z25.s
	.loc 13 1505 0
..LDL1443:
/*   1505 */	fmla	z22.s, p0/m, z27.s, z24.s
	.loc 13 1547 0
..LDL1444:
/*   1547 */	sub	w0, w0, 2
	.loc 13 1459 0
..LDL1445:
/*   1459 */	cmp	w0, 3
/*   1459 */	bge	.L1887
/*   1491 */	ldp	s29, s27, [x29, -8]	//  (*)
	.loc 13 1461 0
..LDL1446:
/*   1461 */	dup	z11.s, z8.s[0]
	.loc 13 1545 0
..LDL1447:
/*   1545 */	add	x2, x2, 128
	.loc 13 1467 0
..LDL1448:
/*   1467 */	dup	z8.s, z31.s[0]
	.loc 13 1503 0
..LDL1449:
/*   1503 */	ld1rw	{z31.s}, p0/z, [x29]	//  (*)
	.loc 13 1546 0
..LDL1450:
/*   1546 */	add	x20, x29, 32
	.loc 13 1545 0
..LDL1451:
/*   1545 */	add	x1, x1, 128
	.loc 13 1503 0
..LDL1452:
/*   1503 */	prfm	2, [x29, x19]	//  (*)
	.loc 13 1473 0
..LDL1453:
/*   1473 */	dup	z25.s, z9.s[0]
	.loc 13 1547 0
..LDL1454:
/*   1547 */	sub	w0, w0, 1
	.loc 13 1503 0
..LDL1455:
/*   1503 */	prfm	0, [x29, x30]	//  (*)
	.loc 13 1479 0
..LDL1456:
/*   1479 */	dup	z24.s, z10.s[0]
	.loc 13 1485 0
..LDL1457:
/*   1485 */	dup	z30.s, z30.s[0]
	.loc 13 1462 0
..LDL1458:
/*   1462 */	fmla	z19.s, p0/m, z11.s, z28.s
	.loc 13 1463 0
..LDL1459:
/*   1463 */	fmla	z23.s, p0/m, z11.s, z20.s
	.loc 13 1468 0
..LDL1460:
/*   1468 */	fmla	z18.s, p0/m, z8.s, z28.s
	.loc 13 1469 0
..LDL1461:
/*   1469 */	fmla	z17.s, p0/m, z8.s, z20.s
	.loc 13 1491 0
..LDL1462:
/*   1491 */	dup	z29.s, z29.s[0]
	.loc 13 1474 0
..LDL1463:
/*   1474 */	fmla	z26.s, p0/m, z25.s, z28.s
	.loc 13 1497 0
..LDL1464:
/*   1497 */	dup	z27.s, z27.s[0]
	.loc 13 1480 0
..LDL1465:
/*   1480 */	fmla	z7.s, p0/m, z24.s, z28.s
	.loc 13 1475 0
..LDL1466:
/*   1475 */	fmad	z25.s, p0/m, z20.s, z16.s
	.loc 13 1486 0
..LDL1467:
/*   1486 */	fmla	z5.s, p0/m, z30.s, z28.s
	.loc 13 1481 0
..LDL1468:
/*   1481 */	fmad	z24.s, p0/m, z20.s, z6.s
	.loc 13 1487 0
..LDL1469:
/*   1487 */	fmad	z30.s, p0/m, z20.s, z4.s
	.loc 13 1504 0
..LDL1470:
/*   1504 */	fmla	z0.s, p0/m, z31.s, z28.s
	.loc 13 1505 0
..LDL1471:
/*   1505 */	fmla	z22.s, p0/m, z31.s, z20.s
	.loc 13 1492 0
..LDL1472:
/*   1492 */	fmla	z3.s, p0/m, z29.s, z28.s
	.loc 13 1493 0
..LDL1473:
/*   1493 */	fmad	z29.s, p0/m, z20.s, z2.s
	.loc 13 1498 0
..LDL1474:
/*   1498 */	fmla	z1.s, p0/m, z27.s, z28.s
	.loc 13 1499 0
..LDL1475:
/*   1499 */	fmad	z27.s, p0/m, z20.s, z21.s
	.loc 13 1547 0
..LDL1476:
/*   1547 */	cbz	w0, .L2121
.L2124:
	.p2align 5
.L2127:					// :entr:term:mod:swpl
	.loc 13 1461 0 is_stmt 1
..LDL1477:
/*   1461 */	ldp	s6, s4, [x20, -28]	//  (*)
	.loc 13 1547 0
..LDL1478:
/*   1547 */	subs	w0, w0, 1
	.loc 13 1473 0
..LDL1479:
/*   1473 */	ldp	s2, s9, [x20, -20]	//  (*)
	.loc 13 1485 0
..LDL1480:
/*   1485 */	ldp	s16, s31, [x20, -12]	//  (*)
	.loc 13 1456 0
..LDL1481:
/*   1456 */	ld1w	{z28.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1497 0
..LDL1482:
/*   1497 */	ldr	s20, [x20, -4]	//  (*)
	.loc 13 1545 0
..LDL1483:
/*   1545 */	add	x2, x2, 128
	.loc 13 1457 0
..LDL1484:
/*   1457 */	ld1w	{z8.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1503 0
..LDL1485:
/*   1503 */	ld1rw	{z21.s}, p0/z, [x20]	//  (*)
	.loc 13 1545 0
..LDL1486:
/*   1545 */	add	x1, x1, 128
	.loc 13 1503 0
..LDL1487:
/*   1503 */	prfm	2, [x20, x19]	//  (*)
/*   1503 */	prfm	0, [x20, x30]	//  (*)
	.loc 13 1546 0
..LDL1488:
/*   1546 */	add	x20, x20, 32
	.loc 13 1461 0
..LDL1489:
/*   1461 */	dup	z6.s, z6.s[0]
	.loc 13 1467 0
..LDL1490:
/*   1467 */	dup	z4.s, z4.s[0]
	.loc 13 1473 0
..LDL1491:
/*   1473 */	dup	z2.s, z2.s[0]
	.loc 13 1479 0
..LDL1492:
/*   1479 */	dup	z9.s, z9.s[0]
	.loc 13 1485 0
..LDL1493:
/*   1485 */	dup	z16.s, z16.s[0]
	.loc 13 1491 0
..LDL1494:
/*   1491 */	dup	z31.s, z31.s[0]
	.loc 13 1462 0
..LDL1495:
/*   1462 */	fmla	z19.s, p0/m, z6.s, z28.s
	.loc 13 1497 0
..LDL1496:
/*   1497 */	dup	z20.s, z20.s[0]
	.loc 13 1463 0
..LDL1497:
/*   1463 */	fmla	z23.s, p0/m, z6.s, z8.s
	.loc 13 1468 0
..LDL1498:
/*   1468 */	fmla	z18.s, p0/m, z4.s, z28.s
	.loc 13 1469 0
..LDL1499:
/*   1469 */	fmla	z17.s, p0/m, z4.s, z8.s
	.loc 13 1474 0
..LDL1500:
/*   1474 */	fmla	z26.s, p0/m, z2.s, z28.s
	.loc 13 1475 0
..LDL1501:
/*   1475 */	fmla	z25.s, p0/m, z2.s, z8.s
	.loc 13 1480 0
..LDL1502:
/*   1480 */	fmla	z7.s, p0/m, z9.s, z28.s
	.loc 13 1481 0
..LDL1503:
/*   1481 */	fmla	z24.s, p0/m, z9.s, z8.s
	.loc 13 1486 0
..LDL1504:
/*   1486 */	fmla	z5.s, p0/m, z16.s, z28.s
	.loc 13 1487 0
..LDL1505:
/*   1487 */	fmla	z30.s, p0/m, z16.s, z8.s
	.loc 13 1492 0
..LDL1506:
/*   1492 */	fmla	z3.s, p0/m, z31.s, z28.s
	.loc 13 1493 0
..LDL1507:
/*   1493 */	fmla	z29.s, p0/m, z31.s, z8.s
	.loc 13 1498 0
..LDL1508:
/*   1498 */	fmla	z1.s, p0/m, z20.s, z28.s
	.loc 13 1499 0
..LDL1509:
/*   1499 */	fmla	z27.s, p0/m, z20.s, z8.s
	.loc 13 1504 0
..LDL1510:
/*   1504 */	fmla	z0.s, p0/m, z21.s, z28.s
	.loc 13 1505 0
..LDL1511:
/*   1505 */	fmla	z22.s, p0/m, z21.s, z8.s
	.loc 13 1547 0 is_stmt 0
..LDL1512:
/*   1547 */	bne	.L2127
.L2121:
.L1889:
	.loc 13 1553 0 is_stmt 1
..LDL1513:
/*   1553 */	st1w	{z19.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1554 0
..LDL1514:
/*   1554 */	st1w	{z23.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1559 0
..LDL1515:
/*   1559 */	st1w	{z18.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1560 0
..LDL1516:
/*   1560 */	st1w	{z17.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 1565 0
..LDL1517:
/*   1565 */	st1w	{z26.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 1566 0
..LDL1518:
/*   1566 */	st1w	{z25.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1571 0
..LDL1519:
/*   1571 */	st1w	{z7.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1572 0
..LDL1520:
/*   1572 */	st1w	{z24.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 1577 0
..LDL1521:
/*   1577 */	st1w	{z5.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1578 0
..LDL1522:
/*   1578 */	st1w	{z30.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1583 0
..LDL1523:
/*   1583 */	st1w	{z3.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1584 0
..LDL1524:
/*   1584 */	st1w	{z29.s}, p0, [x17, 0, mul vl]	//  (*)
	.loc 13 1589 0
..LDL1525:
/*   1589 */	st1w	{z1.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1590 0
..LDL1526:
/*   1590 */	st1w	{z27.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1595 0
..LDL1527:
/*   1595 */	st1w	{z0.s}, p0, [x18, 0, mul vl]	//  (*)
	.loc 13 1596 0
..LDL1528:
/*   1596 */	st1w	{z22.s}, p0, [x4, 0, mul vl]	//  (*)
	.loc 13 1635 0
..LDL1529:
/*    ??? */	ldp	x19, x20, [sp, 96]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	d8, d9, [sp, 80]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 64]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 48]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	ldp	x29, x30, [sp, 112]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*   1635 */	add	sp, sp, 128
	.cfi_def_cfa_offset 0
/*   1635 */	ret	
..D15.pchi:
	.cfi_endproc
.LFE14:
	.size	_Z20kernel_Nx32_templateILi8EEviPfS0_S0_i, .-_Z20kernel_Nx32_templateILi8EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx32_templateILi9EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx32_templateILi9EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx32_templateILi9EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx32_templateILi9EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx32_templateILi9EEviPfS0_S0_i, %function
_Z20kernel_Nx32_templateILi9EEviPfS0_S0_i:
	.loc 13 1337 0
..LDL1530:
.LFB15:
	.cfi_startproc
/*   1635 */	sub	sp, sp, 128
	.cfi_def_cfa_offset 128
/*    ??? */	stp	x29, x30, [sp, 112]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    ??? */	stp	x19, x20, [sp, 96]	//  (*)
	.cfi_offset 19, -32
	.cfi_offset 20, -24
/*    ??? */	str	x21, [sp, 88]	//  (*)
	.cfi_offset 21, -40
/*    ??? */	stp	d8, d9, [sp, 72]	//  (*)
	.cfi_offset 72, -56
	.cfi_offset 73, -48
/*    ??? */	stp	d10, d11, [sp, 56]	//  (*)
	.cfi_offset 74, -72
	.cfi_offset 75, -64
/*    ??? */	stp	d12, d13, [sp, 40]	//  (*)
	.cfi_offset 76, -88
	.cfi_offset 77, -80
	.loc 13 1343 0
..LDL1531:
/*   1343 */	ptrue	p0.s, ALL
	.loc 13 1365 0
..LDL1532:
/*   1365 */	add	x8, x3, 64
	.loc 13 1366 0
..LDL1533:
/*   1366 */	sxtw	x4, w4
/*   1366 */	lsl	x5, x4, 2
	.loc 13 1371 0
..LDL1534:
/*   1371 */	add	x4, x4, 16
	.loc 13 1364 0
..LDL1535:
/*   1364 */	ld1w	{z26.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1366 0
..LDL1536:
/*   1366 */	add	x6, x5, x3
	.loc 13 1371 0
..LDL1537:
/*   1371 */	add	x9, x3, x4, lsl #2
	.loc 13 1365 0
..LDL1538:
/*   1365 */	ld1w	{z28.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1372 0
..LDL1539:
/*   1372 */	add	x14, x5, x6
	.loc 13 1370 0
..LDL1540:
/*   1370 */	ld1w	{z22.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1377 0
..LDL1541:
/*   1377 */	add	x13, x6, x4, lsl #2
	.loc 13 1378 0
..LDL1542:
/*   1378 */	add	x17, x5, x14
	.loc 13 1371 0
..LDL1543:
/*   1371 */	ld1w	{z2.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1384 0
..LDL1544:
/*   1384 */	add	x16, x5, x17
	.loc 13 1376 0
..LDL1545:
/*   1376 */	ld1w	{z20.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1383 0
..LDL1546:
/*   1383 */	add	x18, x14, x4, lsl #2
	.loc 13 1390 0
..LDL1547:
/*   1390 */	add	x12, x5, x16
	.loc 13 1377 0
..LDL1548:
/*   1377 */	ld1w	{z19.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1396 0
..LDL1549:
/*   1396 */	add	x10, x5, x12
	.loc 13 1382 0
..LDL1550:
/*   1382 */	ld1w	{z18.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 1389 0
..LDL1551:
/*   1389 */	add	x15, x17, x4, lsl #2
	.loc 13 1402 0
..LDL1552:
/*   1402 */	add	x11, x5, x10
	.loc 13 1383 0
..LDL1553:
/*   1383 */	ld1w	{z17.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 1408 0
..LDL1554:
/*   1408 */	add	x5, x5, x11
	.loc 13 1388 0
..LDL1555:
/*   1388 */	ld1w	{z16.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1395 0
..LDL1556:
/*   1395 */	add	x30, x16, x4, lsl #2
	.loc 13 1389 0
..LDL1557:
/*   1389 */	ld1w	{z24.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1394 0
..LDL1558:
/*   1394 */	ld1w	{z27.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1395 0
..LDL1559:
/*   1395 */	ld1w	{z7.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1401 0
..LDL1560:
/*   1401 */	add	x29, x12, x4, lsl #2
	.loc 13 1400 0
..LDL1561:
/*   1400 */	ld1w	{z23.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1406 0
..LDL1562:
/*   1406 */	ld1w	{z5.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1401 0
..LDL1563:
/*   1401 */	ld1w	{z6.s}, p0/z, [x29, 0, mul vl]	//  (*)
	.loc 13 1407 0
..LDL1564:
/*   1407 */	add	x7, x10, x4, lsl #2
	.loc 13 1412 0
..LDL1565:
/*   1412 */	ld1w	{z3.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1407 0
..LDL1566:
/*   1407 */	ld1w	{z4.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1413 0
..LDL1567:
/*   1413 */	add	x4, x11, x4, lsl #2
/*   1413 */	ld1w	{z1.s}, p0/z, [x4, 0, mul vl]	//  (*)
	.loc 13 1454 0
..LDL1568:
/*   1454 */	cmp	w0, 0
/*   1454 */	ble	.L1897
	.loc 13 1461 0 is_stmt 0
..LDL1569:
/*   1461 */	orr	x1, x1, 6917529027641081856
	.loc 13 1457 0
..LDL1570:
/*   1457 */	add	x20, x2, 64
	.loc 13 1461 0
..LDL1571:
/*   1461 */	add	x21, x1, 32
	.loc 13 1455 0 is_stmt 1
..LDL1572:
/*   1455 */	cmp	w0, 3
/*   1455 */	blt	.L2135
	.loc 13 1547 0 is_stmt 0
..LDL1573:
/*   1547 */	mov	x19, x21
	.loc 13 1456 0
..LDL1574:
/*   1456 */	ld1w	{z0.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1547 0
..LDL1575:
/*   1547 */	mov	z21.d, z2.d
/*   1547 */	mov	z25.d, z28.d
	.loc 13 1461 0
..LDL1576:
/*   1461 */	ldr	s31, [x19, -32]	//  (*)
	.loc 13 1547 0
..LDL1577:
/*   1547 */	mov	x1, x20
	.loc 13 1467 0
..LDL1578:
/*   1467 */	ldr	s30, [x19, -28]	//  (*)
	.p2align 5
.L1895:					// :entr:term:swpl
	.loc 13 1457 0
..LDL1579:
/*   1457 */	ld1w	{z28.s}, p0/z, [x1, 0, mul vl]	//  (*)
/*   1473 */	ldp	s10, s13, [x19, -24]	//  (*)
/*   1485 */	ldp	s2, s8, [x19, -16]	//  (*)
	.loc 13 1461 0
..LDL1580:
/*   1461 */	dup	z9.s, z31.s[0]
/*   1497 */	ldp	s29, s11, [x19, -8]	//  (*)
	.loc 13 1467 0
..LDL1581:
/*   1467 */	dup	z12.s, z30.s[0]
	.loc 13 1473 0
..LDL1582:
/*   1473 */	dup	z10.s, z10.s[0]
	.loc 13 1479 0
..LDL1583:
/*   1479 */	dup	z30.s, z13.s[0]
	.loc 13 1462 0
..LDL1584:
/*   1462 */	fmla	z26.s, p0/m, z9.s, z0.s
	.loc 13 1485 0
..LDL1585:
/*   1485 */	dup	z31.s, z2.s[0]
	.loc 13 1509 0
..LDL1586:
/*   1509 */	ld1rw	{z2.s}, p0/z, [x19]	//  (*)
	.loc 13 1463 0
..LDL1587:
/*   1463 */	fmad	z9.s, p0/m, z28.s, z25.s
	.loc 13 1491 0
..LDL1588:
/*   1491 */	dup	z8.s, z8.s[0]
	.loc 13 1468 0
..LDL1589:
/*   1468 */	fmla	z22.s, p0/m, z12.s, z0.s
	.loc 13 1497 0
..LDL1590:
/*   1497 */	dup	z29.s, z29.s[0]
	.loc 13 1469 0
..LDL1591:
/*   1469 */	fmla	z21.s, p0/m, z12.s, z28.s
	.loc 13 1503 0
..LDL1592:
/*   1503 */	dup	z25.s, z11.s[0]
	.loc 13 1474 0
..LDL1593:
/*   1474 */	fmla	z20.s, p0/m, z10.s, z0.s
	.loc 13 1475 0
..LDL1594:
/*   1475 */	fmla	z19.s, p0/m, z10.s, z28.s
	.loc 13 1480 0
..LDL1595:
/*   1480 */	fmla	z18.s, p0/m, z30.s, z0.s
	.loc 13 1481 0
..LDL1596:
/*   1481 */	fmla	z17.s, p0/m, z30.s, z28.s
	.loc 13 1486 0
..LDL1597:
/*   1486 */	fmla	z16.s, p0/m, z31.s, z0.s
	.loc 13 1487 0
..LDL1598:
/*   1487 */	movprfx	z10.s, p0/z, z24.s
/*   1487 */	fmla	z10.s, p0/m, z31.s, z28.s
	.loc 13 1546 0
..LDL1599:
/*   1546 */	add	x20, x19, 36
	.loc 13 1492 0
..LDL1600:
/*   1492 */	fmla	z27.s, p0/m, z8.s, z0.s
	.loc 13 1493 0
..LDL1601:
/*   1493 */	fmla	z7.s, p0/m, z8.s, z28.s
	.loc 13 1461 0
..LDL1602:
/*   1461 */	ldr	s24, [x19, 4]	//  (*)
	.loc 13 1498 0
..LDL1603:
/*   1498 */	fmla	z23.s, p0/m, z29.s, z0.s
	.loc 13 1499 0
..LDL1604:
/*   1499 */	fmla	z6.s, p0/m, z29.s, z28.s
	.loc 13 1467 0
..LDL1605:
/*   1467 */	ldr	s29, [x19, 8]	//  (*)
	.loc 13 1504 0
..LDL1606:
/*   1504 */	fmla	z5.s, p0/m, z25.s, z0.s
	.loc 13 1505 0
..LDL1607:
/*   1505 */	fmla	z4.s, p0/m, z25.s, z28.s
	.loc 13 1509 0
..LDL1608:
/*   1509 */	prfm	2, [x19, 2560]	//  (*)
/*   1509 */	prfm	0, [x19, 512]	//  (*)
	.loc 13 1510 0
..LDL1609:
/*   1510 */	fmla	z3.s, p0/m, z2.s, z0.s
	.loc 13 1511 0
..LDL1610:
/*   1511 */	fmad	z2.s, p0/m, z28.s, z1.s
	.loc 13 1456 0
..LDL1611:
/*   1456 */	ld1w	{z28.s}, p0/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1457 0
..LDL1612:
/*   1457 */	ld1w	{z0.s}, p0/z, [x1, 2, mul vl]	//  (*)
/*   1473 */	ldp	s11, s8, [x19, 12]	//  (*)
/*   1485 */	ldp	s1, s31, [x19, 20]	//  (*)
	.loc 13 1461 0
..LDL1613:
/*   1461 */	dup	z25.s, z24.s[0]
/*   1497 */	ldp	s30, s12, [x19, 28]	//  (*)
	.loc 13 1467 0
..LDL1614:
/*   1467 */	dup	z29.s, z29.s[0]
	.loc 13 1473 0
..LDL1615:
/*   1473 */	dup	z11.s, z11.s[0]
	.loc 13 1479 0
..LDL1616:
/*   1479 */	dup	z8.s, z8.s[0]
	.loc 13 1462 0
..LDL1617:
/*   1462 */	fmla	z26.s, p0/m, z25.s, z28.s
	.loc 13 1485 0
..LDL1618:
/*   1485 */	dup	z24.s, z1.s[0]
	.loc 13 1509 0
..LDL1619:
/*   1509 */	ld1rw	{z1.s}, p0/z, [x20]	//  (*)
	.loc 13 1463 0
..LDL1620:
/*   1463 */	fmad	z25.s, p0/m, z0.s, z9.s
	.loc 13 1491 0
..LDL1621:
/*   1491 */	dup	z31.s, z31.s[0]
	.loc 13 1468 0
..LDL1622:
/*   1468 */	fmla	z22.s, p0/m, z29.s, z28.s
	.loc 13 1497 0
..LDL1623:
/*   1497 */	dup	z30.s, z30.s[0]
	.loc 13 1469 0
..LDL1624:
/*   1469 */	fmla	z21.s, p0/m, z29.s, z0.s
	.loc 13 1503 0
..LDL1625:
/*   1503 */	dup	z29.s, z12.s[0]
	.loc 13 1474 0
..LDL1626:
/*   1474 */	fmla	z20.s, p0/m, z11.s, z28.s
	.loc 13 1475 0
..LDL1627:
/*   1475 */	fmla	z19.s, p0/m, z11.s, z0.s
	.loc 13 1480 0
..LDL1628:
/*   1480 */	fmla	z18.s, p0/m, z8.s, z28.s
	.loc 13 1481 0
..LDL1629:
/*   1481 */	fmla	z17.s, p0/m, z8.s, z0.s
	.loc 13 1486 0
..LDL1630:
/*   1486 */	fmla	z16.s, p0/m, z24.s, z28.s
	.loc 13 1487 0
..LDL1631:
/*   1487 */	fmad	z24.s, p0/m, z0.s, z10.s
	.loc 13 1546 0
..LDL1632:
/*   1546 */	add	x19, x19, 72
	.loc 13 1492 0
..LDL1633:
/*   1492 */	fmla	z27.s, p0/m, z31.s, z28.s
	.loc 13 1493 0
..LDL1634:
/*   1493 */	fmla	z7.s, p0/m, z31.s, z0.s
	.loc 13 1461 0
..LDL1635:
/*   1461 */	ldr	s31, [x19, -32]	//  (*)
	.loc 13 1498 0
..LDL1636:
/*   1498 */	fmla	z23.s, p0/m, z30.s, z28.s
	.loc 13 1499 0
..LDL1637:
/*   1499 */	fmla	z6.s, p0/m, z30.s, z0.s
	.loc 13 1467 0
..LDL1638:
/*   1467 */	ldr	s30, [x19, -28]	//  (*)
	.loc 13 1504 0
..LDL1639:
/*   1504 */	fmla	z5.s, p0/m, z29.s, z28.s
	.loc 13 1505 0
..LDL1640:
/*   1505 */	fmla	z4.s, p0/m, z29.s, z0.s
	.loc 13 1509 0
..LDL1641:
/*   1509 */	prfm	2, [x20, 2560]	//  (*)
/*   1509 */	prfm	0, [x20, 512]	//  (*)
	.loc 13 1545 0
..LDL1642:
/*   1545 */	add	x1, x1, 256
/*   1545 */	add	x2, x2, 256
	.loc 13 1510 0
..LDL1643:
/*   1510 */	fmla	z3.s, p0/m, z1.s, z28.s
	.loc 13 1511 0
..LDL1644:
/*   1511 */	fmad	z1.s, p0/m, z0.s, z2.s
	.loc 13 1456 0
..LDL1645:
/*   1456 */	ld1w	{z0.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1547 0
..LDL1646:
/*   1547 */	sub	w0, w0, 2
	.loc 13 1459 0
..LDL1647:
/*   1459 */	cmp	w0, 3
/*   1459 */	bge	.L1895
	.loc 13 1473 0
..LDL1648:
/*   1473 */	ldr	s9, [x19, -24]	//  (*)
	.loc 13 1461 0
..LDL1649:
/*   1461 */	dup	z28.s, z31.s[0]
	.loc 13 1546 0
..LDL1650:
/*   1546 */	add	x21, x19, 36
	.loc 13 1545 0
..LDL1651:
/*   1545 */	add	x20, x1, 128
	.loc 13 1479 0
..LDL1652:
/*   1479 */	ldr	s8, [x19, -20]	//  (*)
	.loc 13 1467 0
..LDL1653:
/*   1467 */	dup	z2.s, z30.s[0]
	.loc 13 1545 0
..LDL1654:
/*   1545 */	add	x2, x2, 128
	.loc 13 1547 0
..LDL1655:
/*   1547 */	sub	w0, w0, 1
/*   1485 */	ldp	s10, s31, [x19, -16]	//  (*)
/*   1497 */	ldp	s12, s11, [x19, -8]	//  (*)
	.loc 13 1457 0
..LDL1656:
/*   1457 */	ld1w	{z29.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1509 0
..LDL1657:
/*   1509 */	ld1rw	{z30.s}, p0/z, [x19]	//  (*)
/*   1509 */	prfm	2, [x19, 2560]	//  (*)
/*   1509 */	prfm	0, [x19, 512]	//  (*)
	.loc 13 1462 0
..LDL1658:
/*   1462 */	fmla	z26.s, p0/m, z28.s, z0.s
	.loc 13 1468 0
..LDL1659:
/*   1468 */	fmla	z22.s, p0/m, z2.s, z0.s
	.loc 13 1473 0
..LDL1660:
/*   1473 */	dup	z9.s, z9.s[0]
	.loc 13 1479 0
..LDL1661:
/*   1479 */	dup	z8.s, z8.s[0]
	.loc 13 1485 0
..LDL1662:
/*   1485 */	dup	z10.s, z10.s[0]
	.loc 13 1491 0
..LDL1663:
/*   1491 */	dup	z31.s, z31.s[0]
	.loc 13 1497 0
..LDL1664:
/*   1497 */	dup	z12.s, z12.s[0]
	.loc 13 1503 0
..LDL1665:
/*   1503 */	dup	z11.s, z11.s[0]
	.loc 13 1474 0
..LDL1666:
/*   1474 */	fmla	z20.s, p0/m, z9.s, z0.s
	.loc 13 1463 0
..LDL1667:
/*   1463 */	fmad	z28.s, p0/m, z29.s, z25.s
	.loc 13 1469 0
..LDL1668:
/*   1469 */	fmad	z2.s, p0/m, z29.s, z21.s
	.loc 13 1475 0
..LDL1669:
/*   1475 */	fmla	z19.s, p0/m, z9.s, z29.s
	.loc 13 1480 0
..LDL1670:
/*   1480 */	fmla	z18.s, p0/m, z8.s, z0.s
	.loc 13 1481 0
..LDL1671:
/*   1481 */	fmla	z17.s, p0/m, z8.s, z29.s
	.loc 13 1486 0
..LDL1672:
/*   1486 */	fmla	z16.s, p0/m, z10.s, z0.s
	.loc 13 1487 0
..LDL1673:
/*   1487 */	fmla	z24.s, p0/m, z10.s, z29.s
	.loc 13 1492 0
..LDL1674:
/*   1492 */	fmla	z27.s, p0/m, z31.s, z0.s
	.loc 13 1493 0
..LDL1675:
/*   1493 */	fmla	z7.s, p0/m, z31.s, z29.s
	.loc 13 1498 0
..LDL1676:
/*   1498 */	fmla	z23.s, p0/m, z12.s, z0.s
	.loc 13 1499 0
..LDL1677:
/*   1499 */	fmla	z6.s, p0/m, z12.s, z29.s
	.loc 13 1504 0
..LDL1678:
/*   1504 */	fmla	z5.s, p0/m, z11.s, z0.s
	.loc 13 1505 0
..LDL1679:
/*   1505 */	fmla	z4.s, p0/m, z11.s, z29.s
	.loc 13 1510 0
..LDL1680:
/*   1510 */	fmla	z3.s, p0/m, z30.s, z0.s
	.loc 13 1511 0
..LDL1681:
/*   1511 */	fmla	z1.s, p0/m, z30.s, z29.s
	.loc 13 1547 0
..LDL1682:
/*   1547 */	cbz	w0, .L2132
.L2135:
	.p2align 5
.L2138:					// :entr:term:mod:swpl
	.loc 13 1461 0 is_stmt 1
..LDL1683:
/*   1461 */	ldp	s31, s12, [x21, -32]	//  (*)
	.loc 13 1547 0
..LDL1684:
/*   1547 */	subs	w0, w0, 1
	.loc 13 1473 0
..LDL1685:
/*   1473 */	ldp	s30, s25, [x21, -24]	//  (*)
	.loc 13 1485 0
..LDL1686:
/*   1485 */	ldp	s29, s21, [x21, -16]	//  (*)
	.loc 13 1497 0
..LDL1687:
/*   1497 */	ldp	s8, s0, [x21, -8]	//  (*)
	.loc 13 1456 0
..LDL1688:
/*   1456 */	ld1w	{z9.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1457 0
..LDL1689:
/*   1457 */	ld1w	{z10.s}, p0/z, [x20, 0, mul vl]	//  (*)
	.loc 13 1545 0
..LDL1690:
/*   1545 */	add	x20, x20, 128
/*   1545 */	add	x2, x2, 128
	.loc 13 1509 0
..LDL1691:
/*   1509 */	prfm	2, [x21, 2560]	//  (*)
/*   1509 */	ld1rw	{z11.s}, p0/z, [x21]	//  (*)
/*   1509 */	prfm	0, [x21, 512]	//  (*)
	.loc 13 1546 0
..LDL1692:
/*   1546 */	add	x21, x21, 36
	.loc 13 1461 0
..LDL1693:
/*   1461 */	dup	z31.s, z31.s[0]
	.loc 13 1467 0
..LDL1694:
/*   1467 */	dup	z12.s, z12.s[0]
	.loc 13 1473 0
..LDL1695:
/*   1473 */	dup	z30.s, z30.s[0]
	.loc 13 1479 0
..LDL1696:
/*   1479 */	dup	z25.s, z25.s[0]
	.loc 13 1485 0
..LDL1697:
/*   1485 */	dup	z29.s, z29.s[0]
	.loc 13 1491 0
..LDL1698:
/*   1491 */	dup	z21.s, z21.s[0]
	.loc 13 1497 0
..LDL1699:
/*   1497 */	dup	z8.s, z8.s[0]
	.loc 13 1462 0
..LDL1700:
/*   1462 */	fmla	z26.s, p0/m, z31.s, z9.s
	.loc 13 1503 0
..LDL1701:
/*   1503 */	dup	z0.s, z0.s[0]
	.loc 13 1463 0
..LDL1702:
/*   1463 */	fmla	z28.s, p0/m, z31.s, z10.s
	.loc 13 1468 0
..LDL1703:
/*   1468 */	fmla	z22.s, p0/m, z12.s, z9.s
	.loc 13 1469 0
..LDL1704:
/*   1469 */	fmla	z2.s, p0/m, z12.s, z10.s
	.loc 13 1474 0
..LDL1705:
/*   1474 */	fmla	z20.s, p0/m, z30.s, z9.s
	.loc 13 1475 0
..LDL1706:
/*   1475 */	fmla	z19.s, p0/m, z30.s, z10.s
	.loc 13 1480 0
..LDL1707:
/*   1480 */	fmla	z18.s, p0/m, z25.s, z9.s
	.loc 13 1481 0
..LDL1708:
/*   1481 */	fmla	z17.s, p0/m, z25.s, z10.s
	.loc 13 1486 0
..LDL1709:
/*   1486 */	fmla	z16.s, p0/m, z29.s, z9.s
	.loc 13 1487 0
..LDL1710:
/*   1487 */	fmla	z24.s, p0/m, z29.s, z10.s
	.loc 13 1492 0
..LDL1711:
/*   1492 */	fmla	z27.s, p0/m, z21.s, z9.s
	.loc 13 1493 0
..LDL1712:
/*   1493 */	fmla	z7.s, p0/m, z21.s, z10.s
	.loc 13 1498 0
..LDL1713:
/*   1498 */	fmla	z23.s, p0/m, z8.s, z9.s
	.loc 13 1499 0
..LDL1714:
/*   1499 */	fmla	z6.s, p0/m, z8.s, z10.s
	.loc 13 1504 0
..LDL1715:
/*   1504 */	fmla	z5.s, p0/m, z0.s, z9.s
	.loc 13 1505 0
..LDL1716:
/*   1505 */	fmla	z4.s, p0/m, z0.s, z10.s
	.loc 13 1510 0
..LDL1717:
/*   1510 */	fmla	z3.s, p0/m, z11.s, z9.s
	.loc 13 1511 0
..LDL1718:
/*   1511 */	fmla	z1.s, p0/m, z11.s, z10.s
	.loc 13 1547 0 is_stmt 0
..LDL1719:
/*   1547 */	bne	.L2138
.L2132:
.L1897:
	.loc 13 1553 0 is_stmt 1
..LDL1720:
/*   1553 */	st1w	{z26.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1554 0
..LDL1721:
/*   1554 */	st1w	{z28.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1559 0
..LDL1722:
/*   1559 */	st1w	{z22.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1560 0
..LDL1723:
/*   1560 */	st1w	{z2.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1565 0
..LDL1724:
/*   1565 */	st1w	{z20.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1566 0
..LDL1725:
/*   1566 */	st1w	{z19.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 1571 0
..LDL1726:
/*   1571 */	st1w	{z18.s}, p0, [x17, 0, mul vl]	//  (*)
	.loc 13 1572 0
..LDL1727:
/*   1572 */	st1w	{z17.s}, p0, [x18, 0, mul vl]	//  (*)
	.loc 13 1577 0
..LDL1728:
/*   1577 */	st1w	{z16.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 1578 0
..LDL1729:
/*   1578 */	st1w	{z24.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 1583 0
..LDL1730:
/*   1583 */	st1w	{z27.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1584 0
..LDL1731:
/*   1584 */	st1w	{z7.s}, p0, [x30, 0, mul vl]	//  (*)
	.loc 13 1589 0
..LDL1732:
/*   1589 */	st1w	{z23.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1590 0
..LDL1733:
/*   1590 */	st1w	{z6.s}, p0, [x29, 0, mul vl]	//  (*)
	.loc 13 1595 0
..LDL1734:
/*   1595 */	st1w	{z5.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1596 0
..LDL1735:
/*   1596 */	st1w	{z4.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1601 0
..LDL1736:
/*   1601 */	st1w	{z3.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1602 0
..LDL1737:
/*   1602 */	st1w	{z1.s}, p0, [x4, 0, mul vl]	//  (*)
	.loc 13 1635 0
..LDL1738:
/*    ??? */	ldp	x19, x20, [sp, 96]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	d8, d9, [sp, 72]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 56]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 40]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	ldr	x21, [sp, 88]	//  (*)
	.cfi_restore 21
/*    ??? */	ldp	x29, x30, [sp, 112]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*   1635 */	add	sp, sp, 128
	.cfi_def_cfa_offset 0
/*   1635 */	ret	
..D16.pchi:
	.cfi_endproc
.LFE15:
	.size	_Z20kernel_Nx32_templateILi9EEviPfS0_S0_i, .-_Z20kernel_Nx32_templateILi9EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx32_templateILi10EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx32_templateILi10EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx32_templateILi10EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx32_templateILi10EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx32_templateILi10EEviPfS0_S0_i, %function
_Z20kernel_Nx32_templateILi10EEviPfS0_S0_i:
	.loc 13 1337 0
..LDL1739:
.LFB16:
	.cfi_startproc
/*   1635 */	sub	sp, sp, 128
	.cfi_def_cfa_offset 128
/*    ??? */	stp	x29, x30, [sp, 112]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    ??? */	stp	x19, x20, [sp, 96]	//  (*)
	.cfi_offset 19, -32
	.cfi_offset 20, -24
/*    ??? */	stp	x21, x22, [sp, 80]	//  (*)
	.cfi_offset 21, -48
	.cfi_offset 22, -40
/*    ??? */	str	x23, [sp, 72]	//  (*)
	.cfi_offset 23, -56
/*    ??? */	stp	d8, d9, [sp, 56]	//  (*)
	.cfi_offset 72, -72
	.cfi_offset 73, -64
/*    ??? */	stp	d10, d11, [sp, 40]	//  (*)
	.cfi_offset 74, -88
	.cfi_offset 75, -80
/*    ??? */	stp	d12, d13, [sp, 24]	//  (*)
	.cfi_offset 76, -104
	.cfi_offset 77, -96
/*    ??? */	stp	d14, d15, [sp, 8]	//  (*)
	.cfi_offset 78, -120
	.cfi_offset 79, -112
	.loc 13 1343 0
..LDL1740:
/*   1343 */	ptrue	p0.s, ALL
	.loc 13 1365 0
..LDL1741:
/*   1365 */	add	x6, x3, 64
	.loc 13 1366 0
..LDL1742:
/*   1366 */	sxtw	x4, w4
/*   1366 */	lsl	x5, x4, 2
	.loc 13 1371 0
..LDL1743:
/*   1371 */	add	x4, x4, 16
	.loc 13 1364 0
..LDL1744:
/*   1364 */	ld1w	{z0.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1366 0
..LDL1745:
/*   1366 */	add	x9, x5, x3
	.loc 13 1371 0
..LDL1746:
/*   1371 */	add	x15, x3, x4, lsl #2
	.loc 13 1365 0
..LDL1747:
/*   1365 */	ld1w	{z1.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1372 0
..LDL1748:
/*   1372 */	add	x29, x5, x9
	.loc 13 1370 0
..LDL1749:
/*   1370 */	ld1w	{z2.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1377 0
..LDL1750:
/*   1377 */	add	x12, x9, x4, lsl #2
	.loc 13 1378 0
..LDL1751:
/*   1378 */	add	x7, x5, x29
	.loc 13 1371 0
..LDL1752:
/*   1371 */	ld1w	{z3.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1384 0
..LDL1753:
/*   1384 */	add	x14, x5, x7
	.loc 13 1376 0
..LDL1754:
/*   1376 */	ld1w	{z4.s}, p0/z, [x29, 0, mul vl]	//  (*)
	.loc 13 1383 0
..LDL1755:
/*   1383 */	add	x17, x29, x4, lsl #2
	.loc 13 1390 0
..LDL1756:
/*   1390 */	add	x10, x5, x14
	.loc 13 1377 0
..LDL1757:
/*   1377 */	ld1w	{z5.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1396 0
..LDL1758:
/*   1396 */	add	x8, x5, x10
	.loc 13 1382 0
..LDL1759:
/*   1382 */	ld1w	{z6.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1389 0
..LDL1760:
/*   1389 */	add	x11, x7, x4, lsl #2
	.loc 13 1402 0
..LDL1761:
/*   1402 */	add	x16, x5, x8
	.loc 13 1383 0
..LDL1762:
/*   1383 */	ld1w	{z7.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 1408 0
..LDL1763:
/*   1408 */	add	x18, x5, x16
	.loc 13 1388 0
..LDL1764:
/*   1388 */	ld1w	{z16.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1395 0
..LDL1765:
/*   1395 */	add	x13, x14, x4, lsl #2
	.loc 13 1414 0
..LDL1766:
/*   1414 */	add	x19, x5, x18
	.loc 13 1389 0
..LDL1767:
/*   1389 */	ld1w	{z30.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1394 0
..LDL1768:
/*   1394 */	ld1w	{z17.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1395 0
..LDL1769:
/*   1395 */	ld1w	{z29.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1401 0
..LDL1770:
/*   1401 */	add	x30, x10, x4, lsl #2
	.loc 13 1400 0
..LDL1771:
/*   1400 */	ld1w	{z18.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1406 0
..LDL1772:
/*   1406 */	ld1w	{z19.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1401 0
..LDL1773:
/*   1401 */	ld1w	{z28.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1407 0
..LDL1774:
/*   1407 */	add	x5, x8, x4, lsl #2
	.loc 13 1412 0
..LDL1775:
/*   1412 */	ld1w	{z20.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 1418 0
..LDL1776:
/*   1418 */	ld1w	{z25.s}, p0/z, [x19, 0, mul vl]	//  (*)
	.loc 13 1407 0
..LDL1777:
/*   1407 */	ld1w	{z27.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1413 0
..LDL1778:
/*   1413 */	add	x20, x16, x4, lsl #2
/*   1413 */	ld1w	{z26.s}, p0/z, [x20, 0, mul vl]	//  (*)
	.loc 13 1419 0
..LDL1779:
/*   1419 */	add	x4, x18, x4, lsl #2
/*   1419 */	ld1w	{z23.s}, p0/z, [x4, 0, mul vl]	//  (*)
	.loc 13 1454 0
..LDL1780:
/*   1454 */	cmp	w0, 0
/*   1454 */	ble	.L1905
	.loc 13 1461 0 is_stmt 0
..LDL1781:
/*   1461 */	orr	x21, x1, 6917529027641081856
	.loc 13 1457 0
..LDL1782:
/*   1457 */	add	x1, x2, 64
	.loc 13 1461 0
..LDL1783:
/*   1461 */	add	x23, x21, 36
	.loc 13 1515 0
..LDL1784:
/*   1515 */	mov	x22, 2564
/*   1515 */	mov	x21, 516
	.p2align 5
.L1903:					// :entr:term
	.loc 13 1461 0 is_stmt 1
..LDL1785:
/*   1461 */	ldp	s11, s9, [x23, -36]	//  (*)
	.loc 13 1547 0
..LDL1786:
/*   1547 */	subs	w0, w0, 1
	.loc 13 1473 0
..LDL1787:
/*   1473 */	ldp	s8, s31, [x23, -28]	//  (*)
	.loc 13 1485 0
..LDL1788:
/*   1485 */	ldp	s15, s14, [x23, -20]	//  (*)
	.loc 13 1497 0
..LDL1789:
/*   1497 */	ldp	s13, s12, [x23, -12]	//  (*)
	.loc 13 1456 0
..LDL1790:
/*   1456 */	ld1w	{z21.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1509 0
..LDL1791:
/*   1509 */	ldr	s10, [x23, -4]	//  (*)
	.loc 13 1545 0
..LDL1792:
/*   1545 */	add	x2, x2, 128
	.loc 13 1457 0
..LDL1793:
/*   1457 */	ld1w	{z22.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1515 0
..LDL1794:
/*   1515 */	ld1rw	{z24.s}, p0/z, [x23]	//  (*)
	.loc 13 1545 0
..LDL1795:
/*   1545 */	add	x1, x1, 128
	.loc 13 1515 0
..LDL1796:
/*   1515 */	prfm	2, [x23, x22]	//  (*)
/*   1515 */	prfm	0, [x23, x21]	//  (*)
	.loc 13 1546 0
..LDL1797:
/*   1546 */	add	x23, x23, 40
	.loc 13 1461 0
..LDL1798:
/*   1461 */	dup	z11.s, z11.s[0]
	.loc 13 1467 0
..LDL1799:
/*   1467 */	dup	z9.s, z9.s[0]
	.loc 13 1473 0
..LDL1800:
/*   1473 */	dup	z8.s, z8.s[0]
	.loc 13 1479 0
..LDL1801:
/*   1479 */	dup	z31.s, z31.s[0]
	.loc 13 1485 0
..LDL1802:
/*   1485 */	dup	z15.s, z15.s[0]
	.loc 13 1491 0
..LDL1803:
/*   1491 */	dup	z14.s, z14.s[0]
	.loc 13 1497 0
..LDL1804:
/*   1497 */	dup	z13.s, z13.s[0]
	.loc 13 1462 0
..LDL1805:
/*   1462 */	fmla	z0.s, p0/m, z11.s, z21.s
	.loc 13 1503 0
..LDL1806:
/*   1503 */	dup	z12.s, z12.s[0]
	.loc 13 1463 0
..LDL1807:
/*   1463 */	fmla	z1.s, p0/m, z11.s, z22.s
	.loc 13 1509 0
..LDL1808:
/*   1509 */	dup	z10.s, z10.s[0]
	.loc 13 1468 0
..LDL1809:
/*   1468 */	fmla	z2.s, p0/m, z9.s, z21.s
	.loc 13 1469 0
..LDL1810:
/*   1469 */	fmla	z3.s, p0/m, z9.s, z22.s
	.loc 13 1474 0
..LDL1811:
/*   1474 */	fmla	z4.s, p0/m, z8.s, z21.s
	.loc 13 1475 0
..LDL1812:
/*   1475 */	fmla	z5.s, p0/m, z8.s, z22.s
	.loc 13 1480 0
..LDL1813:
/*   1480 */	fmla	z6.s, p0/m, z31.s, z21.s
	.loc 13 1481 0
..LDL1814:
/*   1481 */	fmla	z7.s, p0/m, z31.s, z22.s
	.loc 13 1486 0
..LDL1815:
/*   1486 */	fmla	z16.s, p0/m, z15.s, z21.s
	.loc 13 1487 0
..LDL1816:
/*   1487 */	fmla	z30.s, p0/m, z15.s, z22.s
	.loc 13 1492 0
..LDL1817:
/*   1492 */	fmla	z17.s, p0/m, z14.s, z21.s
	.loc 13 1493 0
..LDL1818:
/*   1493 */	fmla	z29.s, p0/m, z14.s, z22.s
	.loc 13 1498 0
..LDL1819:
/*   1498 */	fmla	z18.s, p0/m, z13.s, z21.s
	.loc 13 1499 0
..LDL1820:
/*   1499 */	fmla	z28.s, p0/m, z13.s, z22.s
	.loc 13 1504 0
..LDL1821:
/*   1504 */	fmla	z19.s, p0/m, z12.s, z21.s
	.loc 13 1505 0
..LDL1822:
/*   1505 */	fmla	z27.s, p0/m, z12.s, z22.s
	.loc 13 1510 0
..LDL1823:
/*   1510 */	fmla	z20.s, p0/m, z10.s, z21.s
	.loc 13 1511 0
..LDL1824:
/*   1511 */	fmla	z26.s, p0/m, z10.s, z22.s
	.loc 13 1516 0
..LDL1825:
/*   1516 */	fmla	z25.s, p0/m, z24.s, z21.s
	.loc 13 1517 0
..LDL1826:
/*   1517 */	fmla	z23.s, p0/m, z24.s, z22.s
	.loc 13 1547 0 is_stmt 0
..LDL1827:
/*   1547 */	bne	.L1903
.L1905:
	.loc 13 1553 0 is_stmt 1
..LDL1828:
/*   1553 */	st1w	{z0.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1554 0
..LDL1829:
/*   1554 */	st1w	{z1.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1559 0
..LDL1830:
/*   1559 */	st1w	{z2.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1560 0
..LDL1831:
/*   1560 */	st1w	{z3.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 1565 0
..LDL1832:
/*   1565 */	st1w	{z4.s}, p0, [x29, 0, mul vl]	//  (*)
	.loc 13 1566 0
..LDL1833:
/*   1566 */	st1w	{z5.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1571 0
..LDL1834:
/*   1571 */	st1w	{z6.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1572 0
..LDL1835:
/*   1572 */	st1w	{z7.s}, p0, [x17, 0, mul vl]	//  (*)
	.loc 13 1577 0
..LDL1836:
/*   1577 */	st1w	{z16.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1578 0
..LDL1837:
/*   1578 */	st1w	{z30.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1583 0
..LDL1838:
/*   1583 */	st1w	{z17.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1584 0
..LDL1839:
/*   1584 */	st1w	{z29.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 1589 0
..LDL1840:
/*   1589 */	st1w	{z18.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1590 0
..LDL1841:
/*   1590 */	st1w	{z28.s}, p0, [x30, 0, mul vl]	//  (*)
	.loc 13 1595 0
..LDL1842:
/*   1595 */	st1w	{z19.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 1596 0
..LDL1843:
/*   1596 */	st1w	{z27.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1601 0
..LDL1844:
/*   1601 */	st1w	{z20.s}, p0, [x18, 0, mul vl]	//  (*)
	.loc 13 1602 0
..LDL1845:
/*   1602 */	st1w	{z26.s}, p0, [x20, 0, mul vl]	//  (*)
	.loc 13 1607 0
..LDL1846:
/*   1607 */	st1w	{z25.s}, p0, [x19, 0, mul vl]	//  (*)
	.loc 13 1608 0
..LDL1847:
/*   1608 */	st1w	{z23.s}, p0, [x4, 0, mul vl]	//  (*)
	.loc 13 1635 0
..LDL1848:
/*    ??? */	ldp	x19, x20, [sp, 96]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [sp, 80]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	d8, d9, [sp, 56]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 40]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 24]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	ldp	d14, d15, [sp, 8]	//  (*)
	.cfi_restore 78
	.cfi_restore 79
/*    ??? */	ldr	x23, [sp, 72]	//  (*)
	.cfi_restore 23
/*    ??? */	ldp	x29, x30, [sp, 112]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*   1635 */	add	sp, sp, 128
	.cfi_def_cfa_offset 0
/*   1635 */	ret	
..D17.pchi:
	.cfi_endproc
.LFE16:
	.size	_Z20kernel_Nx32_templateILi10EEviPfS0_S0_i, .-_Z20kernel_Nx32_templateILi10EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx32_templateILi11EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx32_templateILi11EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx32_templateILi11EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx32_templateILi11EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx32_templateILi11EEviPfS0_S0_i, %function
_Z20kernel_Nx32_templateILi11EEviPfS0_S0_i:
	.loc 13 1337 0
..LDL1849:
.LFB17:
	.cfi_startproc
/*   1635 */	sub	sp, sp, 128
	.cfi_def_cfa_offset 128
/*    ??? */	stp	x29, x30, [sp, 112]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    ??? */	stp	x19, x20, [sp, 96]	//  (*)
	.cfi_offset 19, -32
	.cfi_offset 20, -24
/*    ??? */	stp	x21, x22, [sp, 80]	//  (*)
	.cfi_offset 21, -48
	.cfi_offset 22, -40
/*    ??? */	str	x23, [sp, 72]	//  (*)
	.cfi_offset 23, -56
/*    ??? */	stp	d8, d9, [sp, 56]	//  (*)
	.cfi_offset 72, -72
	.cfi_offset 73, -64
/*    ??? */	stp	d10, d11, [sp, 40]	//  (*)
	.cfi_offset 74, -88
	.cfi_offset 75, -80
	.loc 13 1343 0
..LDL1850:
/*   1343 */	ptrue	p0.s, ALL
	.loc 13 1365 0
..LDL1851:
/*   1365 */	add	x9, x3, 64
	.loc 13 1366 0
..LDL1852:
/*   1366 */	sxtw	x4, w4
/*   1366 */	lsl	x5, x4, 2
	.loc 13 1371 0
..LDL1853:
/*   1371 */	add	x4, x4, 16
	.loc 13 1364 0
..LDL1854:
/*   1364 */	ld1w	{z0.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1366 0
..LDL1855:
/*   1366 */	add	x16, x5, x3
	.loc 13 1371 0
..LDL1856:
/*   1371 */	add	x17, x3, x4, lsl #2
	.loc 13 1365 0
..LDL1857:
/*   1365 */	ld1w	{z3.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1372 0
..LDL1858:
/*   1372 */	add	x12, x5, x16
	.loc 13 1370 0
..LDL1859:
/*   1370 */	ld1w	{z16.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1377 0
..LDL1860:
/*   1377 */	add	x7, x16, x4, lsl #2
	.loc 13 1378 0
..LDL1861:
/*   1378 */	add	x15, x5, x12
	.loc 13 1371 0
..LDL1862:
/*   1371 */	ld1w	{z1.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 1384 0
..LDL1863:
/*   1384 */	add	x11, x5, x15
	.loc 13 1376 0
..LDL1864:
/*   1376 */	ld1w	{z4.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1383 0
..LDL1865:
/*   1383 */	add	x10, x12, x4, lsl #2
	.loc 13 1390 0
..LDL1866:
/*   1390 */	add	x8, x5, x11
	.loc 13 1377 0
..LDL1867:
/*   1377 */	ld1w	{z5.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1396 0
..LDL1868:
/*   1396 */	add	x18, x5, x8
	.loc 13 1382 0
..LDL1869:
/*   1382 */	ld1w	{z20.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1389 0
..LDL1870:
/*   1389 */	add	x14, x15, x4, lsl #2
	.loc 13 1402 0
..LDL1871:
/*   1402 */	add	x13, x5, x18
	.loc 13 1383 0
..LDL1872:
/*   1383 */	ld1w	{z10.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1408 0
..LDL1873:
/*   1408 */	add	x30, x5, x13
	.loc 13 1388 0
..LDL1874:
/*   1388 */	ld1w	{z19.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1395 0
..LDL1875:
/*   1395 */	add	x6, x11, x4, lsl #2
	.loc 13 1414 0
..LDL1876:
/*   1414 */	add	x29, x5, x30
	.loc 13 1389 0
..LDL1877:
/*   1389 */	ld1w	{z18.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1420 0
..LDL1878:
/*   1420 */	add	x22, x5, x29
	.loc 13 1394 0
..LDL1879:
/*   1394 */	ld1w	{z30.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1401 0
..LDL1880:
/*   1401 */	add	x21, x8, x4, lsl #2
	.loc 13 1395 0
..LDL1881:
/*   1395 */	ld1w	{z25.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1400 0
..LDL1882:
/*   1400 */	ld1w	{z26.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 1401 0
..LDL1883:
/*   1401 */	ld1w	{z31.s}, p0/z, [x21, 0, mul vl]	//  (*)
	.loc 13 1407 0
..LDL1884:
/*   1407 */	add	x19, x18, x4, lsl #2
	.loc 13 1406 0
..LDL1885:
/*   1406 */	ld1w	{z29.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1412 0
..LDL1886:
/*   1412 */	ld1w	{z22.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1407 0
..LDL1887:
/*   1407 */	ld1w	{z9.s}, p0/z, [x19, 0, mul vl]	//  (*)
	.loc 13 1413 0
..LDL1888:
/*   1413 */	add	x5, x13, x4, lsl #2
	.loc 13 1418 0
..LDL1889:
/*   1418 */	ld1w	{z8.s}, p0/z, [x29, 0, mul vl]	//  (*)
	.loc 13 1424 0
..LDL1890:
/*   1424 */	ld1w	{z17.s}, p0/z, [x22, 0, mul vl]	//  (*)
	.loc 13 1413 0
..LDL1891:
/*   1413 */	ld1w	{z28.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1419 0
..LDL1892:
/*   1419 */	add	x20, x30, x4, lsl #2
/*   1419 */	ld1w	{z21.s}, p0/z, [x20, 0, mul vl]	//  (*)
	.loc 13 1425 0
..LDL1893:
/*   1425 */	add	x4, x29, x4, lsl #2
/*   1425 */	ld1w	{z24.s}, p0/z, [x4, 0, mul vl]	//  (*)
	.loc 13 1454 0
..LDL1894:
/*   1454 */	cmp	w0, 0
/*   1454 */	ble	.L1913
	.loc 13 1461 0 is_stmt 0
..LDL1895:
/*   1461 */	orr	x23, x1, 6917529027641081856
	.loc 13 1457 0
..LDL1896:
/*   1457 */	add	x1, x2, 64
	.loc 13 1461 0
..LDL1897:
/*   1461 */	add	x23, x23, 40
	.p2align 5
.L1911:					// :entr:term
	.loc 13 1456 0 is_stmt 1
..LDL1898:
/*   1456 */	ld1w	{z27.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1461 0
..LDL1899:
/*   1461 */	ldr	s2, [x23, -40]	//  (*)
	.loc 13 1545 0
..LDL1900:
/*   1545 */	add	x2, x2, 128
	.loc 13 1547 0
..LDL1901:
/*   1547 */	subs	w0, w0, 1
	.loc 13 1457 0
..LDL1902:
/*   1457 */	ld1w	{z7.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1503 0
..LDL1903:
/*   1503 */	ldr	s6, [x23, -12]	//  (*)
	.loc 13 1545 0
..LDL1904:
/*   1545 */	add	x1, x1, 128
	.loc 13 1515 0
..LDL1905:
/*   1515 */	ldr	s23, [x23, -4]	//  (*)
	.loc 13 1521 0
..LDL1906:
/*   1521 */	ld1rw	{z11.s}, p0/z, [x23]	//  (*)
/*   1521 */	prfm	2, [x23, 2560]	//  (*)
/*   1521 */	prfm	0, [x23, 512]	//  (*)
	.loc 13 1461 0
..LDL1907:
/*   1461 */	dup	z2.s, z2.s[0]
	.loc 13 1503 0
..LDL1908:
/*   1503 */	dup	z6.s, z6.s[0]
	.loc 13 1515 0
..LDL1909:
/*   1515 */	dup	z23.s, z23.s[0]
	.loc 13 1522 0
..LDL1910:
/*   1522 */	fmla	z17.s, p0/m, z11.s, z27.s
	.loc 13 1523 0
..LDL1911:
/*   1523 */	fmla	z24.s, p0/m, z11.s, z7.s
	.loc 13 1462 0
..LDL1912:
/*   1462 */	fmla	z0.s, p0/m, z2.s, z27.s
	.loc 13 1463 0
..LDL1913:
/*   1463 */	fmla	z3.s, p0/m, z2.s, z7.s
	.loc 13 1467 0
..LDL1914:
/*   1467 */	ldr	s2, [x23, -36]	//  (*)
	.loc 13 1505 0
..LDL1915:
/*   1505 */	fmla	z9.s, p0/m, z6.s, z7.s
	.loc 13 1504 0
..LDL1916:
/*   1504 */	fmla	z29.s, p0/m, z6.s, z27.s
	.loc 13 1516 0
..LDL1917:
/*   1516 */	fmla	z8.s, p0/m, z23.s, z27.s
	.loc 13 1517 0
..LDL1918:
/*   1517 */	fmla	z21.s, p0/m, z23.s, z7.s
	.loc 13 1467 0
..LDL1919:
/*   1467 */	dup	z2.s, z2.s[0]
	.loc 13 1468 0
..LDL1920:
/*   1468 */	fmla	z16.s, p0/m, z2.s, z27.s
	.loc 13 1469 0
..LDL1921:
/*   1469 */	fmla	z1.s, p0/m, z2.s, z7.s
	.loc 13 1473 0
..LDL1922:
/*   1473 */	ldr	s2, [x23, -32]	//  (*)
/*   1473 */	dup	z2.s, z2.s[0]
	.loc 13 1474 0
..LDL1923:
/*   1474 */	fmla	z4.s, p0/m, z2.s, z27.s
	.loc 13 1475 0
..LDL1924:
/*   1475 */	fmla	z5.s, p0/m, z2.s, z7.s
	.loc 13 1479 0
..LDL1925:
/*   1479 */	ldr	s2, [x23, -28]	//  (*)
/*   1479 */	dup	z2.s, z2.s[0]
	.loc 13 1480 0
..LDL1926:
/*   1480 */	fmla	z20.s, p0/m, z2.s, z27.s
	.loc 13 1481 0
..LDL1927:
/*   1481 */	fmla	z10.s, p0/m, z2.s, z7.s
	.loc 13 1485 0
..LDL1928:
/*   1485 */	ldr	s2, [x23, -24]	//  (*)
/*   1485 */	dup	z2.s, z2.s[0]
	.loc 13 1486 0
..LDL1929:
/*   1486 */	fmla	z19.s, p0/m, z2.s, z27.s
	.loc 13 1487 0
..LDL1930:
/*   1487 */	fmla	z18.s, p0/m, z2.s, z7.s
	.loc 13 1491 0
..LDL1931:
/*   1491 */	ldr	s2, [x23, -20]	//  (*)
/*   1491 */	dup	z2.s, z2.s[0]
	.loc 13 1492 0
..LDL1932:
/*   1492 */	fmla	z30.s, p0/m, z2.s, z27.s
	.loc 13 1493 0
..LDL1933:
/*   1493 */	fmla	z25.s, p0/m, z2.s, z7.s
	.loc 13 1497 0
..LDL1934:
/*   1497 */	ldr	s2, [x23, -16]	//  (*)
/*   1497 */	dup	z2.s, z2.s[0]
	.loc 13 1498 0
..LDL1935:
/*   1498 */	fmla	z26.s, p0/m, z2.s, z27.s
	.loc 13 1499 0
..LDL1936:
/*   1499 */	fmla	z31.s, p0/m, z2.s, z7.s
	.loc 13 1509 0
..LDL1937:
/*   1509 */	ldr	s2, [x23, -8]	//  (*)
	.loc 13 1546 0
..LDL1938:
/*   1546 */	add	x23, x23, 44
	.loc 13 1509 0
..LDL1939:
/*   1509 */	dup	z2.s, z2.s[0]
	.loc 13 1510 0
..LDL1940:
/*   1510 */	fmla	z22.s, p0/m, z2.s, z27.s
	.loc 13 1511 0
..LDL1941:
/*   1511 */	fmla	z28.s, p0/m, z2.s, z7.s
	.loc 13 1547 0
..LDL1942:
/*   1547 */	bne	.L1911
.L1913:
	.loc 13 1553 0
..LDL1943:
/*   1553 */	st1w	{z0.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1554 0
..LDL1944:
/*   1554 */	st1w	{z3.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1559 0
..LDL1945:
/*   1559 */	st1w	{z16.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 1560 0
..LDL1946:
/*   1560 */	st1w	{z1.s}, p0, [x17, 0, mul vl]	//  (*)
	.loc 13 1565 0
..LDL1947:
/*   1565 */	st1w	{z4.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1566 0
..LDL1948:
/*   1566 */	st1w	{z5.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1571 0
..LDL1949:
/*   1571 */	st1w	{z20.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 1572 0
..LDL1950:
/*   1572 */	st1w	{z10.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1577 0
..LDL1951:
/*   1577 */	st1w	{z19.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1578 0
..LDL1952:
/*   1578 */	st1w	{z18.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1583 0
..LDL1953:
/*   1583 */	st1w	{z30.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1584 0
..LDL1954:
/*   1584 */	st1w	{z25.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1589 0
..LDL1955:
/*   1589 */	st1w	{z26.s}, p0, [x18, 0, mul vl]	//  (*)
	.loc 13 1590 0
..LDL1956:
/*   1590 */	st1w	{z31.s}, p0, [x21, 0, mul vl]	//  (*)
	.loc 13 1595 0
..LDL1957:
/*   1595 */	st1w	{z29.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 1596 0
..LDL1958:
/*   1596 */	st1w	{z9.s}, p0, [x19, 0, mul vl]	//  (*)
	.loc 13 1601 0
..LDL1959:
/*   1601 */	st1w	{z22.s}, p0, [x30, 0, mul vl]	//  (*)
	.loc 13 1602 0
..LDL1960:
/*   1602 */	st1w	{z28.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1607 0
..LDL1961:
/*   1607 */	st1w	{z8.s}, p0, [x29, 0, mul vl]	//  (*)
	.loc 13 1608 0
..LDL1962:
/*   1608 */	st1w	{z21.s}, p0, [x20, 0, mul vl]	//  (*)
	.loc 13 1613 0
..LDL1963:
/*   1613 */	st1w	{z17.s}, p0, [x22, 0, mul vl]	//  (*)
	.loc 13 1614 0
..LDL1964:
/*   1614 */	st1w	{z24.s}, p0, [x4, 0, mul vl]	//  (*)
	.loc 13 1635 0
..LDL1965:
/*    ??? */	ldp	x19, x20, [sp, 96]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [sp, 80]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	d8, d9, [sp, 56]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 40]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldr	x23, [sp, 72]	//  (*)
	.cfi_restore 23
/*    ??? */	ldp	x29, x30, [sp, 112]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*   1635 */	add	sp, sp, 128
	.cfi_def_cfa_offset 0
/*   1635 */	ret	
..D18.pchi:
	.cfi_endproc
.LFE17:
	.size	_Z20kernel_Nx32_templateILi11EEviPfS0_S0_i, .-_Z20kernel_Nx32_templateILi11EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx32_templateILi12EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx32_templateILi12EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx32_templateILi12EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx32_templateILi12EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx32_templateILi12EEviPfS0_S0_i, %function
_Z20kernel_Nx32_templateILi12EEviPfS0_S0_i:
	.loc 13 1337 0
..LDL1966:
.LFB18:
	.cfi_startproc
/*   1635 */	sub	sp, sp, 192
	.cfi_def_cfa_offset 192
/*    ??? */	stp	x29, x30, [sp, 176]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    ??? */	stp	x19, x20, [sp, 160]	//  (*)
	.cfi_offset 19, -32
	.cfi_offset 20, -24
/*    ??? */	stp	x21, x22, [sp, 144]	//  (*)
	.cfi_offset 21, -48
	.cfi_offset 22, -40
/*    ??? */	stp	x23, x24, [sp, 128]	//  (*)
	.cfi_offset 23, -64
	.cfi_offset 24, -56
/*    ??? */	stp	x25, x26, [sp, 112]	//  (*)
	.cfi_offset 25, -80
	.cfi_offset 26, -72
/*    ??? */	str	x27, [sp, 104]	//  (*)
	.cfi_offset 27, -88
/*    ??? */	stp	d8, d9, [sp, 88]	//  (*)
	.cfi_offset 72, -104
	.cfi_offset 73, -96
/*    ??? */	stp	d10, d11, [sp, 72]	//  (*)
	.cfi_offset 74, -120
	.cfi_offset 75, -112
/*    ??? */	stp	d12, d13, [sp, 56]	//  (*)
	.cfi_offset 76, -136
	.cfi_offset 77, -128
	.loc 13 1343 0
..LDL1967:
/*   1343 */	ptrue	p0.s, ALL
	.loc 13 1365 0
..LDL1968:
/*   1365 */	add	x6, x3, 64
	.loc 13 1366 0
..LDL1969:
/*   1366 */	sxtw	x4, w4
/*   1366 */	lsl	x5, x4, 2
	.loc 13 1371 0
..LDL1970:
/*   1371 */	add	x4, x4, 16
	.loc 13 1364 0
..LDL1971:
/*   1364 */	ld1w	{z25.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1366 0
..LDL1972:
/*   1366 */	add	x19, x5, x3
	.loc 13 1371 0
..LDL1973:
/*   1371 */	add	x14, x3, x4, lsl #2
	.loc 13 1365 0
..LDL1974:
/*   1365 */	ld1w	{z22.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1372 0
..LDL1975:
/*   1372 */	add	x15, x5, x19
	.loc 13 1370 0
..LDL1976:
/*   1370 */	ld1w	{z19.s}, p0/z, [x19, 0, mul vl]	//  (*)
	.loc 13 1377 0
..LDL1977:
/*   1377 */	add	x29, x19, x4, lsl #2
	.loc 13 1378 0
..LDL1978:
/*   1378 */	add	x13, x5, x15
	.loc 13 1371 0
..LDL1979:
/*   1371 */	ld1w	{z5.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1384 0
..LDL1980:
/*   1384 */	add	x12, x5, x13
	.loc 13 1376 0
..LDL1981:
/*   1376 */	ld1w	{z2.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1383 0
..LDL1982:
/*   1383 */	add	x9, x15, x4, lsl #2
	.loc 13 1390 0
..LDL1983:
/*   1390 */	add	x7, x5, x12
	.loc 13 1377 0
..LDL1984:
/*   1377 */	ld1w	{z11.s}, p0/z, [x29, 0, mul vl]	//  (*)
	.loc 13 1396 0
..LDL1985:
/*   1396 */	add	x11, x5, x7
	.loc 13 1382 0
..LDL1986:
/*   1382 */	ld1w	{z8.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1389 0
..LDL1987:
/*   1389 */	add	x17, x13, x4, lsl #2
	.loc 13 1402 0
..LDL1988:
/*   1402 */	add	x8, x5, x11
	.loc 13 1383 0
..LDL1989:
/*   1383 */	ld1w	{z30.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1408 0
..LDL1990:
/*   1408 */	add	x30, x5, x8
	.loc 13 1388 0
..LDL1991:
/*   1388 */	ld1w	{z29.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1395 0
..LDL1992:
/*   1395 */	add	x16, x12, x4, lsl #2
	.loc 13 1414 0
..LDL1993:
/*   1414 */	add	x20, x5, x30
	.loc 13 1389 0
..LDL1994:
/*   1389 */	ld1w	{z27.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 1420 0
..LDL1995:
/*   1420 */	add	x18, x5, x20
	.loc 13 1394 0
..LDL1996:
/*   1394 */	ld1w	{z26.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1401 0
..LDL1997:
/*   1401 */	add	x10, x7, x4, lsl #2
	.loc 13 1426 0
..LDL1998:
/*   1426 */	add	x24, x5, x18
	.loc 13 1395 0
..LDL1999:
/*   1395 */	ld1w	{z24.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1400 0
..LDL2000:
/*   1400 */	ld1w	{z23.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1401 0
..LDL2001:
/*   1401 */	ld1w	{z21.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1407 0
..LDL2002:
/*   1407 */	add	x23, x11, x4, lsl #2
	.loc 13 1406 0
..LDL2003:
/*   1406 */	ld1w	{z20.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1412 0
..LDL2004:
/*   1412 */	ld1w	{z17.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1407 0
..LDL2005:
/*   1407 */	ld1w	{z18.s}, p0/z, [x23, 0, mul vl]	//  (*)
	.loc 13 1413 0
..LDL2006:
/*   1413 */	add	x22, x8, x4, lsl #2
	.loc 13 1418 0
..LDL2007:
/*   1418 */	ld1w	{z3.s}, p0/z, [x20, 0, mul vl]	//  (*)
	.loc 13 1424 0
..LDL2008:
/*   1424 */	ld1w	{z7.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 1413 0
..LDL2009:
/*   1413 */	ld1w	{z4.s}, p0/z, [x22, 0, mul vl]	//  (*)
	.loc 13 1419 0
..LDL2010:
/*   1419 */	add	x21, x30, x4, lsl #2
	.loc 13 1430 0
..LDL2011:
/*   1430 */	ld1w	{z13.s}, p0/z, [x24, 0, mul vl]	//  (*)
	.loc 13 1419 0
..LDL2012:
/*   1419 */	ld1w	{z6.s}, p0/z, [x21, 0, mul vl]	//  (*)
	.loc 13 1425 0
..LDL2013:
/*   1425 */	add	x5, x20, x4, lsl #2
/*   1425 */	ld1w	{z12.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1431 0
..LDL2014:
/*   1431 */	add	x4, x18, x4, lsl #2
/*   1431 */	ld1w	{z1.s}, p0/z, [x4, 0, mul vl]	//  (*)
	.loc 13 1454 0
..LDL2015:
/*   1454 */	cmp	w0, 0
/*   1454 */	ble	.L1921
	.loc 13 1461 0 is_stmt 0
..LDL2016:
/*   1461 */	orr	x1, x1, 6917529027641081856
	.loc 13 1457 0
..LDL2017:
/*   1457 */	add	x25, x2, 64
	.loc 13 1461 0
..LDL2018:
/*   1461 */	add	x26, x1, 44
	.loc 13 1527 0
..LDL2019:
/*   1527 */	mov	x27, 2564
/*   1527 */	mov	x1, 516
	.p2align 5
.L1919:					// :entr:term
	.loc 13 1456 0 is_stmt 1
..LDL2020:
/*   1456 */	ld1w	{z10.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1461 0
..LDL2021:
/*   1461 */	ldr	s0, [x26, -44]	//  (*)
	.loc 13 1545 0
..LDL2022:
/*   1545 */	add	x2, x2, 128
	.loc 13 1547 0
..LDL2023:
/*   1547 */	subs	w0, w0, 1
	.loc 13 1457 0
..LDL2024:
/*   1457 */	ld1w	{z9.s}, p0/z, [x25, 0, mul vl]	//  (*)
	.loc 13 1509 0
..LDL2025:
/*   1509 */	ldr	s28, [x26, -12]	//  (*)
	.loc 13 1545 0
..LDL2026:
/*   1545 */	add	x25, x25, 128
	.loc 13 1515 0
..LDL2027:
/*   1515 */	ldp	s16, s31, [x26, -8]	//  (*)
	.loc 13 1527 0
..LDL2028:
/*   1527 */	prfm	2, [x26, x27]	//  (*)
/*   1527 */	prfm	0, [x26, x1]	//  (*)
	.loc 13 1461 0
..LDL2029:
/*   1461 */	dup	z0.s, z0.s[0]
	.loc 13 1509 0
..LDL2030:
/*   1509 */	dup	z28.s, z28.s[0]
	.loc 13 1515 0
..LDL2031:
/*   1515 */	dup	z16.s, z16.s[0]
	.loc 13 1521 0
..LDL2032:
/*   1521 */	dup	z31.s, z31.s[0]
	.loc 13 1462 0
..LDL2033:
/*   1462 */	fmla	z25.s, p0/m, z0.s, z10.s
	.loc 13 1463 0
..LDL2034:
/*   1463 */	fmla	z22.s, p0/m, z0.s, z9.s
	.loc 13 1467 0
..LDL2035:
/*   1467 */	ldr	s0, [x26, -40]	//  (*)
	.loc 13 1511 0
..LDL2036:
/*   1511 */	fmla	z4.s, p0/m, z28.s, z9.s
	.loc 13 1510 0
..LDL2037:
/*   1510 */	fmla	z17.s, p0/m, z28.s, z10.s
	.loc 13 1516 0
..LDL2038:
/*   1516 */	fmla	z3.s, p0/m, z16.s, z10.s
	.loc 13 1517 0
..LDL2039:
/*   1517 */	fmla	z6.s, p0/m, z16.s, z9.s
	.loc 13 1522 0
..LDL2040:
/*   1522 */	fmla	z7.s, p0/m, z31.s, z10.s
	.loc 13 1523 0
..LDL2041:
/*   1523 */	fmla	z12.s, p0/m, z31.s, z9.s
	.loc 13 1467 0
..LDL2042:
/*   1467 */	dup	z0.s, z0.s[0]
	.loc 13 1468 0
..LDL2043:
/*   1468 */	fmla	z19.s, p0/m, z0.s, z10.s
	.loc 13 1469 0
..LDL2044:
/*   1469 */	fmla	z5.s, p0/m, z0.s, z9.s
	.loc 13 1473 0
..LDL2045:
/*   1473 */	ldr	s0, [x26, -36]	//  (*)
/*   1473 */	dup	z0.s, z0.s[0]
	.loc 13 1474 0
..LDL2046:
/*   1474 */	fmla	z2.s, p0/m, z0.s, z10.s
	.loc 13 1475 0
..LDL2047:
/*   1475 */	fmla	z11.s, p0/m, z0.s, z9.s
	.loc 13 1479 0
..LDL2048:
/*   1479 */	ldr	s0, [x26, -32]	//  (*)
/*   1479 */	dup	z0.s, z0.s[0]
	.loc 13 1480 0
..LDL2049:
/*   1480 */	fmla	z8.s, p0/m, z0.s, z10.s
	.loc 13 1481 0
..LDL2050:
/*   1481 */	fmla	z30.s, p0/m, z0.s, z9.s
	.loc 13 1485 0
..LDL2051:
/*   1485 */	ldr	s0, [x26, -28]	//  (*)
/*   1485 */	dup	z0.s, z0.s[0]
	.loc 13 1486 0
..LDL2052:
/*   1486 */	fmla	z29.s, p0/m, z0.s, z10.s
	.loc 13 1487 0
..LDL2053:
/*   1487 */	fmla	z27.s, p0/m, z0.s, z9.s
	.loc 13 1491 0
..LDL2054:
/*   1491 */	ldr	s0, [x26, -24]	//  (*)
/*   1491 */	dup	z0.s, z0.s[0]
	.loc 13 1492 0
..LDL2055:
/*   1492 */	fmla	z26.s, p0/m, z0.s, z10.s
	.loc 13 1493 0
..LDL2056:
/*   1493 */	fmla	z24.s, p0/m, z0.s, z9.s
	.loc 13 1497 0
..LDL2057:
/*   1497 */	ldr	s0, [x26, -20]	//  (*)
/*   1497 */	dup	z0.s, z0.s[0]
	.loc 13 1498 0
..LDL2058:
/*   1498 */	fmla	z23.s, p0/m, z0.s, z10.s
	.loc 13 1499 0
..LDL2059:
/*   1499 */	fmla	z21.s, p0/m, z0.s, z9.s
	.loc 13 1503 0
..LDL2060:
/*   1503 */	ldr	s0, [x26, -16]	//  (*)
/*   1503 */	dup	z0.s, z0.s[0]
	.loc 13 1504 0
..LDL2061:
/*   1504 */	fmla	z20.s, p0/m, z0.s, z10.s
	.loc 13 1505 0
..LDL2062:
/*   1505 */	fmla	z18.s, p0/m, z0.s, z9.s
	.loc 13 1527 0
..LDL2063:
/*   1527 */	ld1rw	{z0.s}, p0/z, [x26]	//  (*)
	.loc 13 1546 0
..LDL2064:
/*   1546 */	add	x26, x26, 48
	.loc 13 1528 0
..LDL2065:
/*   1528 */	fmla	z13.s, p0/m, z0.s, z10.s
	.loc 13 1529 0
..LDL2066:
/*   1529 */	fmla	z1.s, p0/m, z0.s, z9.s
	.loc 13 1547 0
..LDL2067:
/*   1547 */	bne	.L1919
.L1921:
	.loc 13 1553 0
..LDL2068:
/*   1553 */	st1w	{z25.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1554 0
..LDL2069:
/*   1554 */	st1w	{z22.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1559 0
..LDL2070:
/*   1559 */	st1w	{z19.s}, p0, [x19, 0, mul vl]	//  (*)
	.loc 13 1560 0
..LDL2071:
/*   1560 */	st1w	{z5.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1565 0
..LDL2072:
/*   1565 */	st1w	{z2.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 1566 0
..LDL2073:
/*   1566 */	st1w	{z11.s}, p0, [x29, 0, mul vl]	//  (*)
	.loc 13 1571 0
..LDL2074:
/*   1571 */	st1w	{z8.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 1572 0
..LDL2075:
/*   1572 */	st1w	{z30.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1577 0
..LDL2076:
/*   1577 */	st1w	{z29.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1578 0
..LDL2077:
/*   1578 */	st1w	{z27.s}, p0, [x17, 0, mul vl]	//  (*)
	.loc 13 1583 0
..LDL2078:
/*   1583 */	st1w	{z26.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1584 0
..LDL2079:
/*   1584 */	st1w	{z24.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 1589 0
..LDL2080:
/*   1589 */	st1w	{z23.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1590 0
..LDL2081:
/*   1590 */	st1w	{z21.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1595 0
..LDL2082:
/*   1595 */	st1w	{z20.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1596 0
..LDL2083:
/*   1596 */	st1w	{z18.s}, p0, [x23, 0, mul vl]	//  (*)
	.loc 13 1601 0
..LDL2084:
/*   1601 */	st1w	{z17.s}, p0, [x30, 0, mul vl]	//  (*)
	.loc 13 1602 0
..LDL2085:
/*   1602 */	st1w	{z4.s}, p0, [x22, 0, mul vl]	//  (*)
	.loc 13 1607 0
..LDL2086:
/*   1607 */	st1w	{z3.s}, p0, [x20, 0, mul vl]	//  (*)
	.loc 13 1608 0
..LDL2087:
/*   1608 */	st1w	{z6.s}, p0, [x21, 0, mul vl]	//  (*)
	.loc 13 1613 0
..LDL2088:
/*   1613 */	st1w	{z7.s}, p0, [x18, 0, mul vl]	//  (*)
	.loc 13 1614 0
..LDL2089:
/*   1614 */	st1w	{z12.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1619 0
..LDL2090:
/*   1619 */	st1w	{z13.s}, p0, [x24, 0, mul vl]	//  (*)
	.loc 13 1620 0
..LDL2091:
/*   1620 */	st1w	{z1.s}, p0, [x4, 0, mul vl]	//  (*)
	.loc 13 1635 0
..LDL2092:
/*    ??? */	ldp	x19, x20, [sp, 160]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [sp, 144]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [sp, 128]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [sp, 112]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	ldp	d8, d9, [sp, 88]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 72]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 56]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	ldp	x29, x30, [sp, 176]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	ldr	x27, [sp, 104]	//  (*)
	.cfi_restore 27
/*   1635 */	add	sp, sp, 192
	.cfi_def_cfa_offset 0
/*   1635 */	ret	
..D19.pchi:
	.cfi_endproc
.LFE18:
	.size	_Z20kernel_Nx32_templateILi12EEviPfS0_S0_i, .-_Z20kernel_Nx32_templateILi12EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx32_templateILi13EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx32_templateILi13EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx32_templateILi13EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx32_templateILi13EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx32_templateILi13EEviPfS0_S0_i, %function
_Z20kernel_Nx32_templateILi13EEviPfS0_S0_i:
	.loc 13 1337 0
..LDL2093:
.LFB19:
	.cfi_startproc
/*   1635 */	sub	sp, sp, 192
	.cfi_def_cfa_offset 192
/*    ??? */	stp	x29, x30, [sp, 176]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    ??? */	stp	x19, x20, [sp, 160]	//  (*)
	.cfi_offset 19, -32
	.cfi_offset 20, -24
/*    ??? */	stp	x21, x22, [sp, 144]	//  (*)
	.cfi_offset 21, -48
	.cfi_offset 22, -40
/*    ??? */	stp	x23, x24, [sp, 128]	//  (*)
	.cfi_offset 23, -64
	.cfi_offset 24, -56
/*    ??? */	stp	x25, x26, [sp, 112]	//  (*)
	.cfi_offset 25, -80
	.cfi_offset 26, -72
/*    ??? */	str	x27, [sp, 104]	//  (*)
	.cfi_offset 27, -88
/*    ??? */	stp	d8, d9, [sp, 88]	//  (*)
	.cfi_offset 72, -104
	.cfi_offset 73, -96
/*    ??? */	stp	d10, d11, [sp, 72]	//  (*)
	.cfi_offset 74, -120
	.cfi_offset 75, -112
/*    ??? */	stp	d12, d13, [sp, 56]	//  (*)
	.cfi_offset 76, -136
	.cfi_offset 77, -128
	.loc 13 1343 0
..LDL2094:
/*   1343 */	ptrue	p0.s, ALL
	.loc 13 1365 0
..LDL2095:
/*   1365 */	add	x6, x3, 64
	.loc 13 1366 0
..LDL2096:
/*   1366 */	sxtw	x4, w4
/*   1366 */	lsl	x5, x4, 2
	.loc 13 1371 0
..LDL2097:
/*   1371 */	add	x4, x4, 16
	.loc 13 1364 0
..LDL2098:
/*   1364 */	ld1w	{z6.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1366 0
..LDL2099:
/*   1366 */	add	x18, x5, x3
	.loc 13 1371 0
..LDL2100:
/*   1371 */	add	x10, x3, x4, lsl #2
	.loc 13 1365 0
..LDL2101:
/*   1365 */	ld1w	{z10.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1372 0
..LDL2102:
/*   1372 */	add	x17, x5, x18
	.loc 13 1370 0
..LDL2103:
/*   1370 */	ld1w	{z31.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 1377 0
..LDL2104:
/*   1377 */	add	x8, x18, x4, lsl #2
	.loc 13 1378 0
..LDL2105:
/*   1378 */	add	x19, x5, x17
	.loc 13 1371 0
..LDL2106:
/*   1371 */	ld1w	{z27.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1384 0
..LDL2107:
/*   1384 */	add	x15, x5, x19
	.loc 13 1376 0
..LDL2108:
/*   1376 */	ld1w	{z24.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 1383 0
..LDL2109:
/*   1383 */	add	x9, x17, x4, lsl #2
	.loc 13 1390 0
..LDL2110:
/*   1390 */	add	x16, x5, x15
	.loc 13 1377 0
..LDL2111:
/*   1377 */	ld1w	{z20.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1396 0
..LDL2112:
/*   1396 */	add	x11, x5, x16
	.loc 13 1382 0
..LDL2113:
/*   1382 */	ld1w	{z17.s}, p0/z, [x19, 0, mul vl]	//  (*)
	.loc 13 1389 0
..LDL2114:
/*   1389 */	add	x12, x19, x4, lsl #2
	.loc 13 1402 0
..LDL2115:
/*   1402 */	add	x30, x5, x11
	.loc 13 1383 0
..LDL2116:
/*   1383 */	ld1w	{z5.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1408 0
..LDL2117:
/*   1408 */	add	x13, x5, x30
	.loc 13 1388 0
..LDL2118:
/*   1388 */	ld1w	{z3.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1395 0
..LDL2119:
/*   1395 */	add	x14, x15, x4, lsl #2
	.loc 13 1414 0
..LDL2120:
/*   1414 */	add	x21, x5, x13
	.loc 13 1389 0
..LDL2121:
/*   1389 */	ld1w	{z9.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1420 0
..LDL2122:
/*   1420 */	add	x29, x5, x21
	.loc 13 1394 0
..LDL2123:
/*   1394 */	ld1w	{z8.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1401 0
..LDL2124:
/*   1401 */	add	x7, x16, x4, lsl #2
	.loc 13 1426 0
..LDL2125:
/*   1426 */	add	x20, x5, x29
	.loc 13 1395 0
..LDL2126:
/*   1395 */	ld1w	{z30.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1432 0
..LDL2127:
/*   1432 */	add	x24, x5, x20
	.loc 13 1400 0
..LDL2128:
/*   1400 */	ld1w	{z29.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1407 0
..LDL2129:
/*   1407 */	add	x5, x11, x4, lsl #2
	.loc 13 1401 0
..LDL2130:
/*   1401 */	ld1w	{z26.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1406 0
..LDL2131:
/*   1406 */	ld1w	{z25.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1407 0
..LDL2132:
/*   1407 */	ld1w	{z23.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1413 0
..LDL2133:
/*   1413 */	add	x23, x30, x4, lsl #2
	.loc 13 1412 0
..LDL2134:
/*   1412 */	ld1w	{z28.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1418 0
..LDL2135:
/*   1418 */	ld1w	{z18.s}, p0/z, [x21, 0, mul vl]	//  (*)
	.loc 13 1413 0
..LDL2136:
/*   1413 */	ld1w	{z22.s}, p0/z, [x23, 0, mul vl]	//  (*)
	.loc 13 1419 0
..LDL2137:
/*   1419 */	add	x22, x13, x4, lsl #2
	.loc 13 1424 0
..LDL2138:
/*   1424 */	ld1w	{z19.s}, p0/z, [x29, 0, mul vl]	//  (*)
	.loc 13 1436 0
..LDL2139:
/*   1436 */	ld1w	{z2.s}, p0/z, [x24, 0, mul vl]	//  (*)
	.loc 13 1419 0
..LDL2140:
/*   1419 */	ld1w	{z11.s}, p0/z, [x22, 0, mul vl]	//  (*)
	.loc 13 1425 0
..LDL2141:
/*   1425 */	add	x26, x21, x4, lsl #2
/*   1425 */	ld1w	{z4.s}, p0/z, [x26, 0, mul vl]	//  (*)
	.loc 13 1437 0
..LDL2142:
/*   1437 */	add	x25, x20, x4, lsl #2
/*   1437 */	ld1w	{z1.s}, p0/z, [x25, 0, mul vl]	//  (*)
	.loc 13 1454 0
..LDL2143:
/*   1454 */	cmp	w0, 0
/*   1454 */	ble	.L1929
	.loc 13 1461 0 is_stmt 0
..LDL2144:
/*   1461 */	orr	x1, x1, 6917529027641081856
	.loc 13 1457 0
..LDL2145:
/*   1457 */	add	x27, x2, 64
	.loc 13 1461 0
..LDL2146:
/*   1461 */	add	x1, x1, 48
	.p2align 5
.L1927:					// :entr:term
	.loc 13 1456 0 is_stmt 1
..LDL2147:
/*   1456 */	ld1w	{z2.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1461 0
..LDL2148:
/*   1461 */	ldr	s1, [x1, -48]	//  (*)
	.loc 13 1545 0
..LDL2149:
/*   1545 */	add	x2, x2, 128
	.loc 13 1547 0
..LDL2150:
/*   1547 */	subs	w0, w0, 1
	.loc 13 1457 0
..LDL2151:
/*   1457 */	ld1w	{z0.s}, p0/z, [x27, 0, mul vl]	//  (*)
	.loc 13 1509 0
..LDL2152:
/*   1509 */	ldr	s21, [x1, -16]	//  (*)
	.loc 13 1545 0
..LDL2153:
/*   1545 */	add	x27, x27, 128
	.loc 13 1515 0
..LDL2154:
/*   1515 */	ldp	s13, s12, [x1, -12]	//  (*)
	.loc 13 1533 0
..LDL2155:
/*   1533 */	prfm	2, [x1, 2560]	//  (*)
/*   1533 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1461 0
..LDL2156:
/*   1461 */	dup	z1.s, z1.s[0]
	.loc 13 1509 0
..LDL2157:
/*   1509 */	dup	z21.s, z21.s[0]
	.loc 13 1515 0
..LDL2158:
/*   1515 */	dup	z13.s, z13.s[0]
	.loc 13 1521 0
..LDL2159:
/*   1521 */	dup	z12.s, z12.s[0]
	.loc 13 1462 0
..LDL2160:
/*   1462 */	fmla	z6.s, p0/m, z1.s, z2.s
	.loc 13 1463 0
..LDL2161:
/*   1463 */	fmla	z10.s, p0/m, z1.s, z0.s
	.loc 13 1467 0
..LDL2162:
/*   1467 */	ldr	s1, [x1, -44]	//  (*)
	.loc 13 1511 0
..LDL2163:
/*   1511 */	fmla	z22.s, p0/m, z21.s, z0.s
	.loc 13 1510 0
..LDL2164:
/*   1510 */	fmla	z28.s, p0/m, z21.s, z2.s
	.loc 13 1516 0
..LDL2165:
/*   1516 */	fmla	z18.s, p0/m, z13.s, z2.s
	.loc 13 1517 0
..LDL2166:
/*   1517 */	fmla	z11.s, p0/m, z13.s, z0.s
	.loc 13 1522 0
..LDL2167:
/*   1522 */	fmla	z19.s, p0/m, z12.s, z2.s
	.loc 13 1523 0
..LDL2168:
/*   1523 */	fmla	z4.s, p0/m, z12.s, z0.s
	.loc 13 1467 0
..LDL2169:
/*   1467 */	dup	z1.s, z1.s[0]
	.loc 13 1468 0
..LDL2170:
/*   1468 */	fmla	z31.s, p0/m, z1.s, z2.s
	.loc 13 1469 0
..LDL2171:
/*   1469 */	fmla	z27.s, p0/m, z1.s, z0.s
	.loc 13 1473 0
..LDL2172:
/*   1473 */	ldr	s1, [x1, -40]	//  (*)
/*   1473 */	dup	z1.s, z1.s[0]
	.loc 13 1474 0
..LDL2173:
/*   1474 */	fmla	z24.s, p0/m, z1.s, z2.s
	.loc 13 1475 0
..LDL2174:
/*   1475 */	fmla	z20.s, p0/m, z1.s, z0.s
	.loc 13 1479 0
..LDL2175:
/*   1479 */	ldr	s1, [x1, -36]	//  (*)
/*   1479 */	dup	z1.s, z1.s[0]
	.loc 13 1480 0
..LDL2176:
/*   1480 */	fmla	z17.s, p0/m, z1.s, z2.s
	.loc 13 1481 0
..LDL2177:
/*   1481 */	fmla	z5.s, p0/m, z1.s, z0.s
	.loc 13 1485 0
..LDL2178:
/*   1485 */	ldr	s1, [x1, -32]	//  (*)
/*   1485 */	dup	z1.s, z1.s[0]
	.loc 13 1486 0
..LDL2179:
/*   1486 */	fmla	z3.s, p0/m, z1.s, z2.s
	.loc 13 1487 0
..LDL2180:
/*   1487 */	fmla	z9.s, p0/m, z1.s, z0.s
	.loc 13 1491 0
..LDL2181:
/*   1491 */	ldr	s1, [x1, -28]	//  (*)
/*   1491 */	dup	z1.s, z1.s[0]
	.loc 13 1492 0
..LDL2182:
/*   1492 */	fmla	z8.s, p0/m, z1.s, z2.s
	.loc 13 1493 0
..LDL2183:
/*   1493 */	fmla	z30.s, p0/m, z1.s, z0.s
	.loc 13 1497 0
..LDL2184:
/*   1497 */	ldr	s1, [x1, -24]	//  (*)
/*   1497 */	dup	z1.s, z1.s[0]
	.loc 13 1498 0
..LDL2185:
/*   1498 */	fmla	z29.s, p0/m, z1.s, z2.s
	.loc 13 1499 0
..LDL2186:
/*   1499 */	fmla	z26.s, p0/m, z1.s, z0.s
	.loc 13 1503 0
..LDL2187:
/*   1503 */	ldr	s1, [x1, -20]	//  (*)
/*   1503 */	dup	z1.s, z1.s[0]
	.loc 13 1504 0
..LDL2188:
/*   1504 */	fmla	z25.s, p0/m, z1.s, z2.s
	.loc 13 1505 0
..LDL2189:
/*   1505 */	fmla	z23.s, p0/m, z1.s, z0.s
	.loc 13 1533 0
..LDL2190:
/*   1533 */	ld1rw	{z1.s}, p0/z, [x1]	//  (*)
	.loc 13 1546 0
..LDL2191:
/*   1546 */	add	x1, x1, 52
	.loc 13 1534 0
..LDL2192:
/*   1534 */	fmad	z2.s, p0/m, z1.s, z16.s
	.loc 13 1535 0
..LDL2193:
/*   1535 */	fmad	z1.s, p0/m, z0.s, z7.s
	.loc 13 1547 0
..LDL2194:
/*   1547 */	bne	.L1927
.L1929:
	.loc 13 1553 0
..LDL2195:
/*   1553 */	st1w	{z6.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1620 0
..LDL2196:
/*   1620 */	add	x0, x29, x4, lsl #2
	.loc 13 1554 0
..LDL2197:
/*   1554 */	st1w	{z10.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1559 0
..LDL2198:
/*   1559 */	st1w	{z31.s}, p0, [x18, 0, mul vl]	//  (*)
	.loc 13 1560 0
..LDL2199:
/*   1560 */	st1w	{z27.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1565 0
..LDL2200:
/*   1565 */	st1w	{z24.s}, p0, [x17, 0, mul vl]	//  (*)
	.loc 13 1566 0
..LDL2201:
/*   1566 */	st1w	{z20.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1571 0
..LDL2202:
/*   1571 */	st1w	{z17.s}, p0, [x19, 0, mul vl]	//  (*)
	.loc 13 1572 0
..LDL2203:
/*   1572 */	st1w	{z5.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1577 0
..LDL2204:
/*   1577 */	st1w	{z3.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 1578 0
..LDL2205:
/*   1578 */	st1w	{z9.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1583 0
..LDL2206:
/*   1583 */	st1w	{z8.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 1584 0
..LDL2207:
/*   1584 */	st1w	{z30.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1589 0
..LDL2208:
/*   1589 */	st1w	{z29.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1590 0
..LDL2209:
/*   1590 */	st1w	{z26.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1595 0
..LDL2210:
/*   1595 */	st1w	{z25.s}, p0, [x30, 0, mul vl]	//  (*)
	.loc 13 1596 0
..LDL2211:
/*   1596 */	st1w	{z23.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1601 0
..LDL2212:
/*   1601 */	st1w	{z28.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 1602 0
..LDL2213:
/*   1602 */	st1w	{z22.s}, p0, [x23, 0, mul vl]	//  (*)
	.loc 13 1607 0
..LDL2214:
/*   1607 */	st1w	{z18.s}, p0, [x21, 0, mul vl]	//  (*)
	.loc 13 1608 0
..LDL2215:
/*   1608 */	st1w	{z11.s}, p0, [x22, 0, mul vl]	//  (*)
	.loc 13 1613 0
..LDL2216:
/*   1613 */	st1w	{z19.s}, p0, [x29, 0, mul vl]	//  (*)
	.loc 13 1614 0
..LDL2217:
/*   1614 */	st1w	{z4.s}, p0, [x26, 0, mul vl]	//  (*)
	.loc 13 1619 0
..LDL2218:
/*   1619 */	st1w	{z2.s}, p0, [x20, 0, mul vl]	//  (*)
	.loc 13 1620 0
..LDL2219:
/*   1620 */	st1w	{z1.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 1625 0
..LDL2220:
/*   1625 */	st1w	{z16.s}, p0, [x24, 0, mul vl]	//  (*)
	.loc 13 1626 0
..LDL2221:
/*   1626 */	st1w	{z7.s}, p0, [x25, 0, mul vl]	//  (*)
	.loc 13 1635 0
..LDL2222:
/*    ??? */	ldp	x19, x20, [sp, 160]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [sp, 144]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [sp, 128]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [sp, 112]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	ldp	d8, d9, [sp, 88]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 72]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 56]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	ldp	x29, x30, [sp, 176]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	ldr	x27, [sp, 104]	//  (*)
	.cfi_restore 27
/*   1635 */	add	sp, sp, 192
	.cfi_def_cfa_offset 0
/*   1635 */	ret	
..D20.pchi:
	.cfi_endproc
.LFE19:
	.size	_Z20kernel_Nx32_templateILi13EEviPfS0_S0_i, .-_Z20kernel_Nx32_templateILi13EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx32_templateILi14EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx32_templateILi14EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx32_templateILi14EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx32_templateILi14EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx32_templateILi14EEviPfS0_S0_i, %function
_Z20kernel_Nx32_templateILi14EEviPfS0_S0_i:
	.loc 13 1337 0
..LDL2223:
.LFB20:
	.cfi_startproc
/*   1635 */	sub	sp, sp, 160
	.cfi_def_cfa_offset 160
/*    ??? */	stp	x29, x30, [sp, 144]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    ??? */	stp	x19, x20, [sp, 128]	//  (*)
	.cfi_offset 19, -32
	.cfi_offset 20, -24
/*    ??? */	stp	x21, x22, [sp, 112]	//  (*)
	.cfi_offset 21, -48
	.cfi_offset 22, -40
/*    ??? */	stp	x23, x24, [sp, 96]	//  (*)
	.cfi_offset 23, -64
	.cfi_offset 24, -56
/*   1635 */	mov	x24, x1
/*   1635 */	mov	w23, w0
/*    ??? */	stp	x25, x26, [sp, 80]	//  (*)
	.cfi_offset 25, -80
	.cfi_offset 26, -72
/*    ??? */	stp	x27, x28, [sp, 64]	//  (*)
	.cfi_offset 27, -96
	.cfi_offset 28, -88
/*    ??? */	stp	d8, d9, [sp, 48]	//  (*)
	.cfi_offset 72, -112
	.cfi_offset 73, -104
/*    ??? */	stp	d10, d11, [sp, 32]	//  (*)
	.cfi_offset 74, -128
	.cfi_offset 75, -120
/*    ??? */	stp	d12, d13, [sp, 16]	//  (*)
	.cfi_offset 76, -144
	.cfi_offset 77, -136
/*    ??? */	stp	d14, d15, [sp]	//  (*)
	.cfi_offset 78, -160
	.cfi_offset 79, -152
/*    ??? */	sub	sp, sp, 32
	.cfi_def_cfa_offset 192
	.loc 13 1343 0
..LDL2224:
/*   1343 */	ptrue	p0.s, ALL
	.loc 13 1365 0
..LDL2225:
/*   1365 */	add	x1, x3, 64
	.loc 13 1366 0
..LDL2226:
/*   1366 */	sxtw	x0, w4
/*   1366 */	lsl	x16, x0, 2
	.loc 13 1371 0
..LDL2227:
/*   1371 */	add	x0, x0, 16
	.loc 13 1364 0
..LDL2228:
/*   1364 */	ld1w	{z4.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1366 0
..LDL2229:
/*   1366 */	add	x4, x16, x3
	.loc 13 1371 0
..LDL2230:
/*   1371 */	add	x8, x3, x0, lsl #2
	.loc 13 1365 0
..LDL2231:
/*   1365 */	ld1w	{z3.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1372 0
..LDL2232:
/*   1372 */	add	x5, x16, x4
	.loc 13 1371 0
..LDL2233:
/*    ??? */	str	x8, [sp, 24]	//  (*)
	.loc 13 1378 0
..LDL2234:
/*   1378 */	add	x7, x16, x5
	.loc 13 1383 0
..LDL2235:
/*   1383 */	add	x12, x5, x0, lsl #2
	.loc 13 1371 0
..LDL2236:
/*   1371 */	ld1w	{z1.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1384 0
..LDL2237:
/*   1384 */	add	x10, x16, x7
	.loc 13 1390 0
..LDL2238:
/*   1390 */	add	x9, x16, x10
	.loc 13 1383 0
..LDL2239:
/*   1383 */	ld1w	{z23.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1388 0
..LDL2240:
/*   1388 */	ld1w	{z22.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1370 0
..LDL2241:
/*   1370 */	ld1w	{z2.s}, p0/z, [x4, 0, mul vl]	//  (*)
	.loc 13 1377 0
..LDL2242:
/*   1377 */	add	x6, x4, x0, lsl #2
	.loc 13 1396 0
..LDL2243:
/*   1396 */	add	x11, x16, x9
	.loc 13 1376 0
..LDL2244:
/*   1376 */	ld1w	{z0.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1402 0
..LDL2245:
/*   1402 */	add	x13, x16, x11
	.loc 13 1377 0
..LDL2246:
/*   1377 */	ld1w	{z25.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1389 0
..LDL2247:
/*   1389 */	add	x8, x7, x0, lsl #2
	.loc 13 1408 0
..LDL2248:
/*   1408 */	add	x15, x16, x13
	.loc 13 1384 0
..LDL2249:
/*    ??? */	str	x10, [sp, 8]	//  (*)
	.loc 13 1414 0
..LDL2250:
/*   1414 */	add	x17, x16, x15
	.loc 13 1382 0
..LDL2251:
/*   1382 */	ld1w	{z24.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1395 0
..LDL2252:
/*   1395 */	add	x10, x10, x0, lsl #2
	.loc 13 1420 0
..LDL2253:
/*   1420 */	add	x28, x16, x17
	.loc 13 1389 0
..LDL2254:
/*   1389 */	ld1w	{z21.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1426 0
..LDL2255:
/*   1426 */	add	x30, x16, x28
	.loc 13 1394 0
..LDL2256:
/*   1394 */	ld1w	{z20.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1432 0
..LDL2257:
/*   1432 */	add	x19, x16, x30
	.loc 13 1407 0
..LDL2258:
/*   1407 */	add	x14, x11, x0, lsl #2
	.loc 13 1395 0
..LDL2259:
/*   1395 */	ld1w	{z19.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1438 0
..LDL2260:
/*   1438 */	add	x21, x16, x19
	.loc 13 1400 0
..LDL2261:
/*   1400 */	ld1w	{z18.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1406 0
..LDL2262:
/*   1406 */	ld1w	{z16.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1383 0
..LDL2263:
/*    ??? */	str	x12, [sp, 16]	//  (*)
	.loc 13 1401 0
..LDL2264:
/*   1401 */	add	x12, x9, x0, lsl #2
	.loc 13 1407 0
..LDL2265:
/*   1407 */	ld1w	{z10.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1412 0
..LDL2266:
/*   1412 */	ld1w	{z31.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1401 0
..LDL2267:
/*   1401 */	ld1w	{z17.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1413 0
..LDL2268:
/*   1413 */	add	x16, x13, x0, lsl #2
	.loc 13 1418 0
..LDL2269:
/*   1418 */	ld1w	{z9.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 1424 0
..LDL2270:
/*   1424 */	ld1w	{z29.s}, p0/z, [x28, 0, mul vl]	//  (*)
	.loc 13 1413 0
..LDL2271:
/*   1413 */	ld1w	{z8.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1419 0
..LDL2272:
/*   1419 */	add	x18, x15, x0, lsl #2
	.loc 13 1436 0
..LDL2273:
/*   1436 */	ld1w	{z27.s}, p0/z, [x19, 0, mul vl]	//  (*)
	.loc 13 1442 0
..LDL2274:
/*   1442 */	ld1w	{z7.s}, p0/z, [x21, 0, mul vl]	//  (*)
	.loc 13 1419 0
..LDL2275:
/*   1419 */	ld1w	{z30.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 1425 0
..LDL2276:
/*   1425 */	add	x29, x17, x0, lsl #2
/*   1425 */	ld1w	{z28.s}, p0/z, [x29, 0, mul vl]	//  (*)
	.loc 13 1437 0
..LDL2277:
/*   1437 */	add	x20, x30, x0, lsl #2
/*   1437 */	ld1w	{z26.s}, p0/z, [x20, 0, mul vl]	//  (*)
	.loc 13 1443 0
..LDL2278:
/*   1443 */	add	x22, x19, x0, lsl #2
/*   1443 */	ld1w	{z6.s}, p0/z, [x22, 0, mul vl]	//  (*)
	.loc 13 1454 0
..LDL2279:
/*   1454 */	cmp	w23, 0
/*   1454 */	ble	.L1937
	.loc 13 1461 0 is_stmt 0
..LDL2280:
/*   1461 */	orr	x25, x24, 6917529027641081856
	.loc 13 1457 0
..LDL2281:
/*   1457 */	add	x24, x2, 64
	.loc 13 1461 0
..LDL2282:
/*   1461 */	add	x26, x25, 52
	.loc 13 1539 0
..LDL2283:
/*   1539 */	mov	x25, 2564
/*   1539 */	mov	x27, 516
	.p2align 5
.L1935:					// :entr:term
	.loc 13 1456 0 is_stmt 1
..LDL2284:
/*   1456 */	ld1w	{z27.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1461 0
..LDL2285:
/*   1461 */	ldr	s26, [x26, -52]	//  (*)
	.loc 13 1545 0
..LDL2286:
/*   1545 */	add	x2, x2, 128
	.loc 13 1547 0
..LDL2287:
/*   1547 */	subs	w23, w23, 1
	.loc 13 1457 0
..LDL2288:
/*   1457 */	ld1w	{z12.s}, p0/z, [x24, 0, mul vl]	//  (*)
	.loc 13 1509 0
..LDL2289:
/*   1509 */	ldr	s13, [x26, -20]	//  (*)
	.loc 13 1545 0
..LDL2290:
/*   1545 */	add	x24, x24, 128
	.loc 13 1515 0
..LDL2291:
/*   1515 */	ldp	s15, s14, [x26, -16]	//  (*)
	.loc 13 1539 0
..LDL2292:
/*   1539 */	prfm	2, [x26, x25]	//  (*)
/*   1539 */	prfm	0, [x26, x27]	//  (*)
	.loc 13 1461 0
..LDL2293:
/*   1461 */	dup	z26.s, z26.s[0]
	.loc 13 1509 0
..LDL2294:
/*   1509 */	dup	z13.s, z13.s[0]
	.loc 13 1515 0
..LDL2295:
/*   1515 */	dup	z15.s, z15.s[0]
	.loc 13 1521 0
..LDL2296:
/*   1521 */	dup	z14.s, z14.s[0]
	.loc 13 1462 0
..LDL2297:
/*   1462 */	fmla	z4.s, p0/m, z26.s, z27.s
	.loc 13 1463 0
..LDL2298:
/*   1463 */	fmla	z3.s, p0/m, z26.s, z12.s
	.loc 13 1467 0
..LDL2299:
/*   1467 */	ldr	s26, [x26, -48]	//  (*)
	.loc 13 1511 0
..LDL2300:
/*   1511 */	fmla	z8.s, p0/m, z13.s, z12.s
	.loc 13 1510 0
..LDL2301:
/*   1510 */	fmla	z31.s, p0/m, z13.s, z27.s
	.loc 13 1516 0
..LDL2302:
/*   1516 */	fmla	z9.s, p0/m, z15.s, z27.s
	.loc 13 1517 0
..LDL2303:
/*   1517 */	fmla	z30.s, p0/m, z15.s, z12.s
	.loc 13 1522 0
..LDL2304:
/*   1522 */	fmla	z29.s, p0/m, z14.s, z27.s
	.loc 13 1523 0
..LDL2305:
/*   1523 */	fmla	z28.s, p0/m, z14.s, z12.s
	.loc 13 1467 0
..LDL2306:
/*   1467 */	dup	z26.s, z26.s[0]
	.loc 13 1468 0
..LDL2307:
/*   1468 */	fmla	z2.s, p0/m, z26.s, z27.s
	.loc 13 1469 0
..LDL2308:
/*   1469 */	fmla	z1.s, p0/m, z26.s, z12.s
	.loc 13 1473 0
..LDL2309:
/*   1473 */	ldr	s26, [x26, -44]	//  (*)
/*   1473 */	dup	z26.s, z26.s[0]
	.loc 13 1474 0
..LDL2310:
/*   1474 */	fmla	z0.s, p0/m, z26.s, z27.s
	.loc 13 1475 0
..LDL2311:
/*   1475 */	fmla	z25.s, p0/m, z26.s, z12.s
	.loc 13 1479 0
..LDL2312:
/*   1479 */	ldr	s26, [x26, -40]	//  (*)
/*   1479 */	dup	z26.s, z26.s[0]
	.loc 13 1480 0
..LDL2313:
/*   1480 */	fmla	z24.s, p0/m, z26.s, z27.s
	.loc 13 1481 0
..LDL2314:
/*   1481 */	fmla	z23.s, p0/m, z26.s, z12.s
	.loc 13 1485 0
..LDL2315:
/*   1485 */	ldr	s26, [x26, -36]	//  (*)
/*   1485 */	dup	z26.s, z26.s[0]
	.loc 13 1486 0
..LDL2316:
/*   1486 */	fmla	z22.s, p0/m, z26.s, z27.s
	.loc 13 1487 0
..LDL2317:
/*   1487 */	fmla	z21.s, p0/m, z26.s, z12.s
	.loc 13 1491 0
..LDL2318:
/*   1491 */	ldr	s26, [x26, -32]	//  (*)
/*   1491 */	dup	z26.s, z26.s[0]
	.loc 13 1492 0
..LDL2319:
/*   1492 */	fmla	z20.s, p0/m, z26.s, z27.s
	.loc 13 1493 0
..LDL2320:
/*   1493 */	fmla	z19.s, p0/m, z26.s, z12.s
	.loc 13 1497 0
..LDL2321:
/*   1497 */	ldr	s26, [x26, -28]	//  (*)
/*   1497 */	dup	z26.s, z26.s[0]
	.loc 13 1498 0
..LDL2322:
/*   1498 */	fmla	z18.s, p0/m, z26.s, z27.s
	.loc 13 1499 0
..LDL2323:
/*   1499 */	fmla	z17.s, p0/m, z26.s, z12.s
	.loc 13 1503 0
..LDL2324:
/*   1503 */	ldr	s26, [x26, -24]	//  (*)
/*   1503 */	dup	z26.s, z26.s[0]
	.loc 13 1504 0
..LDL2325:
/*   1504 */	fmla	z16.s, p0/m, z26.s, z27.s
	.loc 13 1505 0
..LDL2326:
/*   1505 */	fmla	z10.s, p0/m, z26.s, z12.s
	.loc 13 1539 0
..LDL2327:
/*   1539 */	ld1rw	{z26.s}, p0/z, [x26]	//  (*)
	.loc 13 1546 0
..LDL2328:
/*   1546 */	add	x26, x26, 56
	.loc 13 1540 0
..LDL2329:
/*   1540 */	fmad	z27.s, p0/m, z26.s, z5.s
	.loc 13 1541 0
..LDL2330:
/*   1541 */	fmad	z26.s, p0/m, z12.s, z11.s
	.loc 13 1547 0
..LDL2331:
/*   1547 */	bne	.L1935
.L1937:
	.loc 13 1553 0
..LDL2332:
/*   1553 */	st1w	{z4.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1620 0
..LDL2333:
/*   1620 */	add	x0, x28, x0, lsl #2
	.loc 13 1554 0
..LDL2334:
/*   1554 */	st1w	{z3.s}, p0, [x1, 0, mul vl]	//  (*)
	.loc 13 1559 0
..LDL2335:
/*   1559 */	st1w	{z2.s}, p0, [x4, 0, mul vl]	//  (*)
	.loc 13 1560 0
..LDL2336:
/*    ??? */	ldr	x1, [sp, 24]	//  (*)
/*   1560 */	st1w	{z1.s}, p0, [x1, 0, mul vl]	//  (*)
	.loc 13 1565 0
..LDL2337:
/*   1565 */	st1w	{z0.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1566 0
..LDL2338:
/*   1566 */	st1w	{z25.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1571 0
..LDL2339:
/*   1571 */	st1w	{z24.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1572 0
..LDL2340:
/*    ??? */	ldr	x1, [sp, 16]	//  (*)
/*   1572 */	st1w	{z23.s}, p0, [x1, 0, mul vl]	//  (*)
	.loc 13 1577 0
..LDL2341:
/*    ??? */	ldr	x1, [sp, 8]	//  (*)
/*   1577 */	st1w	{z22.s}, p0, [x1, 0, mul vl]	//  (*)
	.loc 13 1578 0
..LDL2342:
/*   1578 */	st1w	{z21.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1583 0
..LDL2343:
/*   1583 */	st1w	{z20.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1584 0
..LDL2344:
/*   1584 */	st1w	{z19.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1589 0
..LDL2345:
/*   1589 */	st1w	{z18.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1590 0
..LDL2346:
/*   1590 */	st1w	{z17.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1595 0
..LDL2347:
/*   1595 */	st1w	{z16.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 1596 0
..LDL2348:
/*   1596 */	st1w	{z10.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1601 0
..LDL2349:
/*   1601 */	st1w	{z31.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 1602 0
..LDL2350:
/*   1602 */	st1w	{z8.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 1607 0
..LDL2351:
/*   1607 */	st1w	{z9.s}, p0, [x17, 0, mul vl]	//  (*)
	.loc 13 1608 0
..LDL2352:
/*   1608 */	st1w	{z30.s}, p0, [x18, 0, mul vl]	//  (*)
	.loc 13 1613 0
..LDL2353:
/*   1613 */	st1w	{z29.s}, p0, [x28, 0, mul vl]	//  (*)
	.loc 13 1614 0
..LDL2354:
/*   1614 */	st1w	{z28.s}, p0, [x29, 0, mul vl]	//  (*)
	.loc 13 1619 0
..LDL2355:
/*   1619 */	st1w	{z27.s}, p0, [x30, 0, mul vl]	//  (*)
	.loc 13 1620 0
..LDL2356:
/*   1620 */	st1w	{z26.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 1625 0
..LDL2357:
/*   1625 */	st1w	{z7.s}, p0, [x19, 0, mul vl]	//  (*)
	.loc 13 1626 0
..LDL2358:
/*   1626 */	st1w	{z6.s}, p0, [x20, 0, mul vl]	//  (*)
	.loc 13 1631 0
..LDL2359:
/*   1631 */	st1w	{z5.s}, p0, [x21, 0, mul vl]	//  (*)
	.loc 13 1632 0
..LDL2360:
/*   1632 */	st1w	{z11.s}, p0, [x22, 0, mul vl]	//  (*)
	.loc 13 1635 0
..LDL2361:
/*    ??? */	add	sp, sp, 32
	.cfi_def_cfa_offset 160
/*    ??? */	ldp	x19, x20, [sp, 128]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [sp, 112]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [sp, 96]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [sp, 80]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	ldp	x27, x28, [sp, 64]	//  (*)
	.cfi_restore 27
	.cfi_restore 28
/*    ??? */	ldp	d8, d9, [sp, 48]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 32]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 16]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	ldp	d14, d15, [sp]	//  (*)
	.cfi_restore 78
	.cfi_restore 79
/*    ??? */	ldp	x29, x30, [sp, 144]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*   1635 */	add	sp, sp, 160
	.cfi_def_cfa_offset 0
/*   1635 */	ret	
..D21.pchi:
	.cfi_endproc
.LFE20:
	.size	_Z20kernel_Nx32_templateILi14EEviPfS0_S0_i, .-_Z20kernel_Nx32_templateILi14EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z15get_kernel_Nx32i $"
	.text
	.align	2
	.global	_Z15get_kernel_Nx32i
	.type	_Z15get_kernel_Nx32i, %function
_Z15get_kernel_Nx32i:
	.loc 13 1637 0
..LDL2362:
.LFB21:
	.cfi_startproc
	.loc 13 1638 0
..LDL2363:
/*   1638 */	cmp	w0, 1
/*   1638 */	beq	.L1390
	.loc 13 1640 0
..LDL2364:
/*   1640 */	cmp	w0, 2
/*   1640 */	beq	.L1395
	.loc 13 1642 0
..LDL2365:
/*   1642 */	cmp	w0, 3
/*   1642 */	beq	.L1399
	.loc 13 1644 0
..LDL2366:
/*   1644 */	cmp	w0, 4
/*   1644 */	beq	.L1403
	.loc 13 1646 0
..LDL2367:
/*   1646 */	cmp	w0, 5
/*   1646 */	beq	.L1407
	.loc 13 1648 0
..LDL2368:
/*   1648 */	cmp	w0, 6
/*   1648 */	beq	.L1411
	.loc 13 1650 0
..LDL2369:
/*   1650 */	cmp	w0, 7
/*   1650 */	beq	.L1415
	.loc 13 1652 0
..LDL2370:
/*   1652 */	cmp	w0, 8
/*   1652 */	beq	.L1419
	.loc 13 1654 0
..LDL2371:
/*   1654 */	cmp	w0, 9
/*   1654 */	beq	.L1423
	.loc 13 1656 0
..LDL2372:
/*   1656 */	cmp	w0, 10
/*   1656 */	beq	.L1427
	.loc 13 1658 0
..LDL2373:
/*   1658 */	cmp	w0, 11
/*   1658 */	beq	.L1431
	.loc 13 1660 0
..LDL2374:
/*   1660 */	cmp	w0, 12
/*   1660 */	beq	.L1435
	.loc 13 1663 0
..LDL2375:
/*   1663 */	adrp	x2, _Z20kernel_Nx32_templateILi13EEviPfS0_S0_i
	.loc 13 1664 0
..LDL2376:
/*   1664 */	adrp	x1, _Z20kernel_Nx32_templateILi14EEviPfS0_S0_i
/*   1664 */	cmp	w0, 13
	.loc 13 1663 0
..LDL2377:
/*   1663 */	add	x0, x2, :lo12:_Z20kernel_Nx32_templateILi13EEviPfS0_S0_i
	.loc 13 1664 0
..LDL2378:
/*   1664 */	add	x1, x1, :lo12:_Z20kernel_Nx32_templateILi14EEviPfS0_S0_i
/*   1664 */	csel	x0, x1, x0, ne
	.loc 13 1663 0 is_stmt 0
..LDL2379:
/*   1663 */	b	.L1392
.L1435:
	.loc 13 1661 0 is_stmt 1
..LDL2380:
/*   1661 */	adrp	x0, _Z20kernel_Nx32_templateILi12EEviPfS0_S0_i
/*   1661 */	add	x0, x0, :lo12:_Z20kernel_Nx32_templateILi12EEviPfS0_S0_i
/*   1661 */	b	.L1392
.L1431:
	.loc 13 1659 0
..LDL2381:
/*   1659 */	adrp	x0, _Z20kernel_Nx32_templateILi11EEviPfS0_S0_i
/*   1659 */	add	x0, x0, :lo12:_Z20kernel_Nx32_templateILi11EEviPfS0_S0_i
/*   1659 */	b	.L1392
.L1427:
	.loc 13 1657 0
..LDL2382:
/*   1657 */	adrp	x0, _Z20kernel_Nx32_templateILi10EEviPfS0_S0_i
/*   1657 */	add	x0, x0, :lo12:_Z20kernel_Nx32_templateILi10EEviPfS0_S0_i
/*   1657 */	b	.L1392
.L1423:
	.loc 13 1655 0
..LDL2383:
/*   1655 */	adrp	x0, _Z20kernel_Nx32_templateILi9EEviPfS0_S0_i
/*   1655 */	add	x0, x0, :lo12:_Z20kernel_Nx32_templateILi9EEviPfS0_S0_i
/*   1655 */	b	.L1392
.L1419:
	.loc 13 1653 0
..LDL2384:
/*   1653 */	adrp	x0, _Z20kernel_Nx32_templateILi8EEviPfS0_S0_i
/*   1653 */	add	x0, x0, :lo12:_Z20kernel_Nx32_templateILi8EEviPfS0_S0_i
/*   1653 */	b	.L1392
.L1415:
	.loc 13 1651 0
..LDL2385:
/*   1651 */	adrp	x0, _Z20kernel_Nx32_templateILi7EEviPfS0_S0_i
/*   1651 */	add	x0, x0, :lo12:_Z20kernel_Nx32_templateILi7EEviPfS0_S0_i
/*   1651 */	b	.L1392
.L1411:
	.loc 13 1649 0
..LDL2386:
/*   1649 */	adrp	x0, _Z20kernel_Nx32_templateILi6EEviPfS0_S0_i
/*   1649 */	add	x0, x0, :lo12:_Z20kernel_Nx32_templateILi6EEviPfS0_S0_i
/*   1649 */	b	.L1392
.L1407:
	.loc 13 1647 0
..LDL2387:
/*   1647 */	adrp	x0, _Z20kernel_Nx32_templateILi5EEviPfS0_S0_i
/*   1647 */	add	x0, x0, :lo12:_Z20kernel_Nx32_templateILi5EEviPfS0_S0_i
/*   1647 */	b	.L1392
.L1403:
	.loc 13 1645 0
..LDL2388:
/*   1645 */	adrp	x0, _Z20kernel_Nx32_templateILi4EEviPfS0_S0_i
/*   1645 */	add	x0, x0, :lo12:_Z20kernel_Nx32_templateILi4EEviPfS0_S0_i
/*   1645 */	b	.L1392
.L1399:
	.loc 13 1643 0
..LDL2389:
/*   1643 */	adrp	x0, _Z20kernel_Nx32_templateILi3EEviPfS0_S0_i
/*   1643 */	add	x0, x0, :lo12:_Z20kernel_Nx32_templateILi3EEviPfS0_S0_i
/*   1643 */	b	.L1392
.L1395:
	.loc 13 1641 0
..LDL2390:
/*   1641 */	adrp	x0, _Z20kernel_Nx32_templateILi2EEviPfS0_S0_i
/*   1641 */	add	x0, x0, :lo12:_Z20kernel_Nx32_templateILi2EEviPfS0_S0_i
/*   1641 */	b	.L1392
.L1390:
	.loc 13 1639 0
..LDL2391:
/*   1639 */	adrp	x0, _Z20kernel_Nx32_templateILi1EEviPfS0_S0_i
/*   1639 */	add	x0, x0, :lo12:_Z20kernel_Nx32_templateILi1EEviPfS0_S0_i
.L1392:					// :epi:term
	.loc 13 1665 0
..LDL2392:
/*   1665 */	ret	
..D22.pchi:
	.cfi_endproc
.LFE21:
	.size	_Z15get_kernel_Nx32i, .-_Z15get_kernel_Nx32i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx64_templateILi1EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx64_templateILi1EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx64_templateILi1EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx64_templateILi1EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx64_templateILi1EEviPfS0_S0_i, %function
_Z20kernel_Nx64_templateILi1EEviPfS0_S0_i:
	.loc 13 1668 0
..LDL2393:
.LFB22:
	.cfi_startproc
	.loc 13 1674 0
..LDL2394:
/*   1674 */	ptrue	p0.s, ALL
	.loc 13 1686 0
..LDL2395:
/*   1686 */	add	x6, x3, 64
	.loc 13 1687 0
..LDL2396:
/*   1687 */	add	x5, x3, 128
	.loc 13 1688 0
..LDL2397:
/*   1688 */	add	x4, x3, 192
	.loc 13 1685 0
..LDL2398:
/*   1685 */	ld1w	{z16.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1686 0
..LDL2399:
/*   1686 */	ld1w	{z6.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1687 0
..LDL2400:
/*   1687 */	ld1w	{z4.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1688 0
..LDL2401:
/*   1688 */	ld1w	{z1.s}, p0/z, [x4, 0, mul vl]	//  (*)
	.loc 13 1717 0
..LDL2402:
/*   1717 */	cmp	w0, 0
/*   1717 */	ble	.L1945
	.loc 13 1726 0 is_stmt 0
..LDL2403:
/*   1726 */	orr	x1, x1, 6917529027641081856
	.loc 13 1720 0
..LDL2404:
/*   1720 */	add	x7, x2, 192
	.loc 13 1718 0 is_stmt 1
..LDL2405:
/*   1718 */	cmp	w0, 5
/*   1718 */	blt	.L2146
	.loc 13 1759 0 is_stmt 0
..LDL2406:
/*   1759 */	mov	x9, x7
	.loc 13 1719 0
..LDL2407:
/*   1719 */	ld1w	{z21.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1758 0
..LDL2408:
/*   1758 */	add	x8, x1, 4
	.loc 13 1757 0
..LDL2409:
/*   1757 */	add	x10, x9, 256
/*   1757 */	add	x7, x9, 512
	.loc 13 1719 0
..LDL2410:
/*   1719 */	ld1w	{z7.s}, p0/z, [x2, 4, mul vl]	//  (*)
	.loc 13 1720 0
..LDL2411:
/*   1720 */	ld1w	{z20.s}, p0/z, [x9, -2, mul vl]	//  (*)
	.loc 13 1722 0
..LDL2412:
/*   1722 */	ld1w	{z17.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1757 0
..LDL2413:
/*   1757 */	add	x2, x2, 512
	.loc 13 1726 0
..LDL2414:
/*   1726 */	ld1rw	{z18.s}, p0/z, [x1]	//  (*)
	.loc 13 1721 0
..LDL2415:
/*   1721 */	ld1w	{z19.s}, p0/z, [x9, -1, mul vl]	//  (*)
	.loc 13 1720 0
..LDL2416:
/*   1720 */	ld1w	{z5.s}, p0/z, [x10, -2, mul vl]	//  (*)
	.loc 13 1722 0
..LDL2417:
/*   1722 */	ld1w	{z0.s}, p0/z, [x9, 4, mul vl]	//  (*)
	.loc 13 1726 0
..LDL2418:
/*   1726 */	ld1rw	{z2.s}, p0/z, [x8]	//  (*)
	.loc 13 1721 0
..LDL2419:
/*   1721 */	ld1w	{z3.s}, p0/z, [x10, -1, mul vl]	//  (*)
	.p2align 5
.L1943:					// :entr:term:swpl
	.loc 13 1719 0
..LDL2420:
/*   1719 */	ld1w	{z26.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1720 0
..LDL2421:
/*   1720 */	ld1w	{z23.s}, p0/z, [x7, -2, mul vl]	//  (*)
	.loc 13 1757 0
..LDL2422:
/*   1757 */	add	x1, x7, 256
	.loc 13 1722 0
..LDL2423:
/*   1722 */	ld1w	{z22.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1758 0
..LDL2424:
/*   1758 */	add	x9, x8, 4
	.loc 13 1726 0
..LDL2425:
/*   1726 */	ld1rw	{z24.s}, p0/z, [x9]	//  (*)
	.loc 13 1727 0
..LDL2426:
/*   1727 */	fmla	z16.s, p0/m, z18.s, z21.s
	.loc 13 1728 0
..LDL2427:
/*   1728 */	fmla	z6.s, p0/m, z18.s, z20.s
	.loc 13 1721 0
..LDL2428:
/*   1721 */	ld1w	{z25.s}, p0/z, [x7, -1, mul vl]	//  (*)
	.loc 13 1729 0
..LDL2429:
/*   1729 */	fmla	z4.s, p0/m, z18.s, z19.s
	.loc 13 1730 0
..LDL2430:
/*   1730 */	fmla	z1.s, p0/m, z18.s, z17.s
	.loc 13 1719 0
..LDL2431:
/*   1719 */	ld1w	{z21.s}, p0/z, [x2, 4, mul vl]	//  (*)
	.loc 13 1720 0
..LDL2432:
/*   1720 */	ld1w	{z20.s}, p0/z, [x1, -2, mul vl]	//  (*)
	.loc 13 1757 0
..LDL2433:
/*   1757 */	add	x10, x7, 512
	.loc 13 1722 0
..LDL2434:
/*   1722 */	ld1w	{z17.s}, p0/z, [x7, 4, mul vl]	//  (*)
	.loc 13 1758 0
..LDL2435:
/*   1758 */	add	x9, x8, 8
	.loc 13 1726 0
..LDL2436:
/*   1726 */	ld1rw	{z18.s}, p0/z, [x9]	//  (*)
	.loc 13 1727 0
..LDL2437:
/*   1727 */	fmla	z16.s, p0/m, z2.s, z7.s
	.loc 13 1728 0
..LDL2438:
/*   1728 */	fmla	z6.s, p0/m, z2.s, z5.s
	.loc 13 1721 0
..LDL2439:
/*   1721 */	ld1w	{z19.s}, p0/z, [x1, -1, mul vl]	//  (*)
	.loc 13 1757 0
..LDL2440:
/*   1757 */	add	x1, x2, 512
	.loc 13 1729 0
..LDL2441:
/*   1729 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1730 0
..LDL2442:
/*   1730 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1719 0
..LDL2443:
/*   1719 */	ld1w	{z7.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1720 0
..LDL2444:
/*   1720 */	ld1w	{z5.s}, p0/z, [x10, -2, mul vl]	//  (*)
	.loc 13 1757 0
..LDL2445:
/*   1757 */	add	x7, x7, 768
	.loc 13 1722 0
..LDL2446:
/*   1722 */	ld1w	{z0.s}, p0/z, [x7, -4, mul vl]	//  (*)
	.loc 13 1758 0
..LDL2447:
/*   1758 */	add	x8, x8, 12
	.loc 13 1726 0
..LDL2448:
/*   1726 */	prfm	2, [x8, 2552]	//  (*)
/*   1726 */	ld1rw	{z2.s}, p0/z, [x8]	//  (*)
	.loc 13 1727 0
..LDL2449:
/*   1727 */	fmla	z16.s, p0/m, z24.s, z26.s
	.loc 13 1728 0
..LDL2450:
/*   1728 */	fmla	z6.s, p0/m, z24.s, z23.s
	.loc 13 1721 0
..LDL2451:
/*   1721 */	ld1w	{z3.s}, p0/z, [x10, -1, mul vl]	//  (*)
	.loc 13 1757 0
..LDL2452:
/*   1757 */	add	x2, x1, 256
	.loc 13 1729 0
..LDL2453:
/*   1729 */	fmla	z4.s, p0/m, z24.s, z25.s
	.loc 13 1730 0
..LDL2454:
/*   1730 */	fmla	z1.s, p0/m, z24.s, z22.s
	.loc 13 1726 0
..LDL2455:
/*   1726 */	prfm	0, [x8, 504]	//  (*)
	.loc 13 1759 0
..LDL2456:
/*   1759 */	sub	w0, w0, 3
	.loc 13 1724 0
..LDL2457:
/*   1724 */	cmp	w0, 5
/*   1724 */	bge	.L1943
	.loc 13 1758 0
..LDL2458:
/*   1758 */	add	x1, x8, 4
	.loc 13 1726 0
..LDL2459:
/*   1726 */	prfm	2, [x9, 2560]	//  (*)
	.loc 13 1727 0
..LDL2460:
/*   1727 */	fmla	z16.s, p0/m, z18.s, z21.s
	.loc 13 1728 0
..LDL2461:
/*   1728 */	fmla	z6.s, p0/m, z18.s, z20.s
	.loc 13 1729 0
..LDL2462:
/*   1729 */	fmla	z4.s, p0/m, z18.s, z19.s
	.loc 13 1730 0
..LDL2463:
/*   1730 */	fmla	z1.s, p0/m, z18.s, z17.s
	.loc 13 1726 0
..LDL2464:
/*   1726 */	prfm	0, [x9, 512]	//  (*)
	.loc 13 1759 0
..LDL2465:
/*   1759 */	sub	w0, w0, 2
	.loc 13 1726 0
..LDL2466:
/*   1726 */	prfm	2, [x8, 2560]	//  (*)
/*   1726 */	prfm	0, [x8, 512]	//  (*)
	.loc 13 1727 0
..LDL2467:
/*   1727 */	fmla	z16.s, p0/m, z2.s, z7.s
	.loc 13 1728 0
..LDL2468:
/*   1728 */	fmla	z6.s, p0/m, z2.s, z5.s
	.loc 13 1729 0
..LDL2469:
/*   1729 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1730 0
..LDL2470:
/*   1730 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1759 0
..LDL2471:
/*   1759 */	cbz	w0, .L2143
.L2146:
	.p2align 5
.L2149:					// :entr:term:mod:swpl
	.loc 13 1719 0 is_stmt 1
..LDL2472:
/*   1719 */	ld1w	{z7.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1720 0
..LDL2473:
/*   1720 */	sub	x9, x7, 128
	.loc 13 1721 0
..LDL2474:
/*   1721 */	sub	x8, x7, 64
	.loc 13 1720 0
..LDL2475:
/*   1720 */	ld1w	{z0.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1721 0
..LDL2476:
/*   1721 */	ld1w	{z5.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1757 0
..LDL2477:
/*   1757 */	add	x2, x2, 256
	.loc 13 1759 0
..LDL2478:
/*   1759 */	subs	w0, w0, 1
	.loc 13 1722 0
..LDL2479:
/*   1722 */	ld1w	{z3.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1726 0
..LDL2480:
/*   1726 */	ld1rw	{z2.s}, p0/z, [x1]	//  (*)
	.loc 13 1757 0
..LDL2481:
/*   1757 */	add	x7, x7, 256
	.loc 13 1726 0
..LDL2482:
/*   1726 */	prfm	2, [x1, 2560]	//  (*)
/*   1726 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1758 0
..LDL2483:
/*   1758 */	add	x1, x1, 4
	.loc 13 1727 0
..LDL2484:
/*   1727 */	fmla	z16.s, p0/m, z2.s, z7.s
	.loc 13 1728 0
..LDL2485:
/*   1728 */	fmla	z6.s, p0/m, z2.s, z0.s
	.loc 13 1729 0
..LDL2486:
/*   1729 */	fmla	z4.s, p0/m, z2.s, z5.s
	.loc 13 1730 0
..LDL2487:
/*   1730 */	fmla	z1.s, p0/m, z2.s, z3.s
	.loc 13 1759 0 is_stmt 0
..LDL2488:
/*   1759 */	bne	.L2149
.L2143:
.L1945:
	.loc 13 1765 0 is_stmt 1
..LDL2489:
/*   1765 */	st1w	{z16.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1766 0
..LDL2490:
/*   1766 */	st1w	{z6.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1767 0
..LDL2491:
/*   1767 */	st1w	{z4.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1768 0
..LDL2492:
/*   1768 */	st1w	{z1.s}, p0, [x4, 0, mul vl]	//  (*)
	.loc 13 1795 0
..LDL2493:
/*   1795 */	ret	
..D23.pchi:
	.cfi_endproc
.LFE22:
	.size	_Z20kernel_Nx64_templateILi1EEviPfS0_S0_i, .-_Z20kernel_Nx64_templateILi1EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx64_templateILi2EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx64_templateILi2EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx64_templateILi2EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx64_templateILi2EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx64_templateILi2EEviPfS0_S0_i, %function
_Z20kernel_Nx64_templateILi2EEviPfS0_S0_i:
	.loc 13 1668 0
..LDL2494:
.LFB23:
	.cfi_startproc
/*   1795 */	sub	sp, sp, 64
	.cfi_def_cfa_offset 64
/*    ??? */	str	d8, [sp, 56]	//  (*)
	.cfi_offset 72, -8
	.loc 13 1674 0
..LDL2495:
/*   1674 */	ptrue	p0.s, ALL
	.loc 13 1686 0
..LDL2496:
/*   1686 */	add	x8, x3, 64
	.loc 13 1689 0
..LDL2497:
/*   1689 */	sxtw	x4, w4
	.loc 13 1694 0
..LDL2498:
/*   1694 */	add	x7, x4, 16
	.loc 13 1695 0
..LDL2499:
/*   1695 */	add	x6, x4, 32
	.loc 13 1689 0
..LDL2500:
/*   1689 */	lsl	x5, x4, 2
	.loc 13 1696 0
..LDL2501:
/*   1696 */	add	x4, x4, 48
	.loc 13 1685 0
..LDL2502:
/*   1685 */	ld1w	{z19.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1686 0
..LDL2503:
/*   1686 */	ld1w	{z18.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1687 0
..LDL2504:
/*   1687 */	add	x9, x3, 128
	.loc 13 1694 0
..LDL2505:
/*   1694 */	add	x7, x3, x7, lsl #2
	.loc 13 1687 0
..LDL2506:
/*   1687 */	ld1w	{z17.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1688 0
..LDL2507:
/*   1688 */	add	x10, x3, 192
	.loc 13 1689 0
..LDL2508:
/*   1689 */	add	x5, x5, x3
	.loc 13 1688 0
..LDL2509:
/*   1688 */	ld1w	{z7.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1695 0
..LDL2510:
/*   1695 */	add	x6, x3, x6, lsl #2
	.loc 13 1693 0
..LDL2511:
/*   1693 */	ld1w	{z6.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1694 0
..LDL2512:
/*   1694 */	ld1w	{z5.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1695 0
..LDL2513:
/*   1695 */	ld1w	{z2.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1696 0
..LDL2514:
/*   1696 */	add	x11, x3, x4, lsl #2
/*   1696 */	ld1w	{z1.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1717 0
..LDL2515:
/*   1717 */	cmp	w0, 0
/*   1717 */	ble	.L1953
	.loc 13 1726 0 is_stmt 0
..LDL2516:
/*   1726 */	orr	x4, x1, 6917529027641081856
	.loc 13 1720 0
..LDL2517:
/*   1720 */	add	x1, x2, 192
	.loc 13 1726 0
..LDL2518:
/*   1726 */	add	x4, x4, 4
	.loc 13 1734 0
..LDL2519:
/*   1734 */	mov	x12, 2564
/*   1734 */	mov	x13, 516
	.loc 13 1718 0 is_stmt 1
..LDL2520:
/*   1718 */	cmp	w0, 5
/*   1718 */	blt	.L2157
	.loc 13 1726 0 is_stmt 0
..LDL2521:
/*   1726 */	ldr	s0, [x4, -4]	//  (*)
	.loc 13 1720 0
..LDL2522:
/*   1720 */	ld1w	{z26.s}, p0/z, [x1, -2, mul vl]	//  (*)
	.loc 13 1757 0
..LDL2523:
/*   1757 */	add	x15, x1, 256
	.loc 13 1758 0
..LDL2524:
/*   1758 */	add	x14, x4, 8
	.loc 13 1721 0
..LDL2525:
/*   1721 */	ld1w	{z25.s}, p0/z, [x1, -1, mul vl]	//  (*)
	.loc 13 1722 0
..LDL2526:
/*   1722 */	ld1w	{z24.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1757 0
..LDL2527:
/*   1757 */	add	x1, x2, 256
	.loc 13 1721 0
..LDL2528:
/*   1721 */	sub	x16, x15, 64
	.loc 13 1719 0
..LDL2529:
/*   1719 */	ld1w	{z27.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1734 0
..LDL2530:
/*   1734 */	ld1rw	{z23.s}, p0/z, [x4]	//  (*)
	.loc 13 1719 0
..LDL2531:
/*   1719 */	ld1w	{z8.s}, p0/z, [x2, 4, mul vl]	//  (*)
	.loc 13 1720 0
..LDL2532:
/*   1720 */	ld1w	{z21.s}, p0/z, [x15, -2, mul vl]	//  (*)
	.loc 13 1726 0
..LDL2533:
/*   1726 */	ldr	s22, [x4, 4]	//  (*)
/*   1726 */	dup	z28.s, z0.s[0]
	.p2align 5
.L1951:					// :entr:term:swpl
	.loc 13 1721 0
..LDL2534:
/*   1721 */	ld1w	{z20.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1722 0
..LDL2535:
/*   1722 */	ld1w	{z30.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1758 0
..LDL2536:
/*   1758 */	add	x4, x14, 8
	.loc 13 1726 0
..LDL2537:
/*   1726 */	ldr	s16, [x14, 4]	//  (*)
	.loc 13 1734 0
..LDL2538:
/*   1734 */	ld1rw	{z31.s}, p0/z, [x14]	//  (*)
	.loc 13 1757 0
..LDL2539:
/*   1757 */	add	x2, x15, 256
	.loc 13 1726 0
..LDL2540:
/*   1726 */	dup	z22.s, z22.s[0]
	.loc 13 1719 0
..LDL2541:
/*   1719 */	ld1w	{z29.s}, p0/z, [x1, 4, mul vl]	//  (*)
	.loc 13 1727 0
..LDL2542:
/*   1727 */	fmla	z19.s, p0/m, z28.s, z27.s
	.loc 13 1728 0
..LDL2543:
/*   1728 */	fmla	z18.s, p0/m, z28.s, z26.s
	.loc 13 1729 0
..LDL2544:
/*   1729 */	fmla	z17.s, p0/m, z28.s, z25.s
	.loc 13 1730 0
..LDL2545:
/*   1730 */	fmla	z7.s, p0/m, z28.s, z24.s
	.loc 13 1735 0
..LDL2546:
/*   1735 */	fmla	z6.s, p0/m, z23.s, z27.s
	.loc 13 1736 0
..LDL2547:
/*   1736 */	fmla	z5.s, p0/m, z23.s, z26.s
	.loc 13 1720 0
..LDL2548:
/*   1720 */	ld1w	{z4.s}, p0/z, [x2, -2, mul vl]	//  (*)
	.loc 13 1737 0
..LDL2549:
/*   1737 */	fmla	z2.s, p0/m, z23.s, z25.s
	.loc 13 1738 0
..LDL2550:
/*   1738 */	fmad	z23.s, p0/m, z24.s, z1.s
	.loc 13 1721 0
..LDL2551:
/*   1721 */	ld1w	{z3.s}, p0/z, [x2, -1, mul vl]	//  (*)
	.loc 13 1722 0
..LDL2552:
/*   1722 */	ld1w	{z0.s}, p0/z, [x15, 4, mul vl]	//  (*)
	.loc 13 1758 0
..LDL2553:
/*   1758 */	add	x2, x14, 16
	.loc 13 1726 0
..LDL2554:
/*   1726 */	ldr	s28, [x14, 12]	//  (*)
	.loc 13 1734 0
..LDL2555:
/*   1734 */	ld1rw	{z1.s}, p0/z, [x4]	//  (*)
	.loc 13 1757 0
..LDL2556:
/*   1757 */	add	x16, x1, 512
/*   1757 */	add	x15, x15, 512
	.loc 13 1726 0
..LDL2557:
/*   1726 */	dup	z16.s, z16.s[0]
	.loc 13 1719 0
..LDL2558:
/*   1719 */	ld1w	{z27.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1727 0
..LDL2559:
/*   1727 */	fmla	z19.s, p0/m, z22.s, z8.s
	.loc 13 1728 0
..LDL2560:
/*   1728 */	fmla	z18.s, p0/m, z22.s, z21.s
	.loc 13 1729 0
..LDL2561:
/*   1729 */	fmla	z17.s, p0/m, z22.s, z20.s
	.loc 13 1730 0
..LDL2562:
/*   1730 */	fmla	z7.s, p0/m, z22.s, z30.s
	.loc 13 1735 0
..LDL2563:
/*   1735 */	fmla	z6.s, p0/m, z31.s, z8.s
	.loc 13 1736 0
..LDL2564:
/*   1736 */	fmla	z5.s, p0/m, z31.s, z21.s
	.loc 13 1720 0
..LDL2565:
/*   1720 */	ld1w	{z26.s}, p0/z, [x15, -2, mul vl]	//  (*)
	.loc 13 1737 0
..LDL2566:
/*   1737 */	fmla	z2.s, p0/m, z31.s, z20.s
	.loc 13 1738 0
..LDL2567:
/*   1738 */	fmad	z31.s, p0/m, z30.s, z23.s
	.loc 13 1721 0
..LDL2568:
/*   1721 */	ld1w	{z25.s}, p0/z, [x15, -1, mul vl]	//  (*)
	.loc 13 1722 0
..LDL2569:
/*   1722 */	ld1w	{z24.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1758 0
..LDL2570:
/*   1758 */	add	x14, x14, 24
	.loc 13 1726 0
..LDL2571:
/*   1726 */	ldr	s22, [x14, -4]	//  (*)
	.loc 13 1734 0
..LDL2572:
/*   1734 */	ld1rw	{z23.s}, p0/z, [x2]	//  (*)
	.loc 13 1757 0
..LDL2573:
/*   1757 */	add	x1, x16, 256
/*   1757 */	add	x15, x15, 256
	.loc 13 1726 0
..LDL2574:
/*   1726 */	dup	z28.s, z28.s[0]
	.loc 13 1719 0
..LDL2575:
/*   1719 */	ld1w	{z8.s}, p0/z, [x16, 4, mul vl]	//  (*)
	.loc 13 1727 0
..LDL2576:
/*   1727 */	fmla	z19.s, p0/m, z16.s, z29.s
	.loc 13 1728 0
..LDL2577:
/*   1728 */	fmla	z18.s, p0/m, z16.s, z4.s
	.loc 13 1729 0
..LDL2578:
/*   1729 */	fmla	z17.s, p0/m, z16.s, z3.s
	.loc 13 1721 0
..LDL2579:
/*   1721 */	sub	x16, x15, 64
	.loc 13 1730 0
..LDL2580:
/*   1730 */	fmla	z7.s, p0/m, z16.s, z0.s
	.loc 13 1734 0
..LDL2581:
/*   1734 */	prfm	2, [x4, x12]	//  (*)
	.loc 13 1735 0
..LDL2582:
/*   1735 */	fmla	z6.s, p0/m, z1.s, z29.s
	.loc 13 1736 0
..LDL2583:
/*   1736 */	fmla	z5.s, p0/m, z1.s, z4.s
	.loc 13 1720 0
..LDL2584:
/*   1720 */	ld1w	{z21.s}, p0/z, [x15, -2, mul vl]	//  (*)
	.loc 13 1737 0
..LDL2585:
/*   1737 */	fmla	z2.s, p0/m, z1.s, z3.s
	.loc 13 1738 0
..LDL2586:
/*   1738 */	fmad	z1.s, p0/m, z0.s, z31.s
	.loc 13 1734 0
..LDL2587:
/*   1734 */	prfm	0, [x4, x13]	//  (*)
	.loc 13 1759 0
..LDL2588:
/*   1759 */	sub	w0, w0, 3
	.loc 13 1724 0
..LDL2589:
/*   1724 */	cmp	w0, 5
/*   1724 */	bge	.L1951
	.loc 13 1721 0
..LDL2590:
/*   1721 */	ld1w	{z4.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1722 0
..LDL2591:
/*   1722 */	ld1w	{z0.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1727 0
..LDL2592:
/*   1727 */	fmla	z19.s, p0/m, z28.s, z27.s
	.loc 13 1728 0
..LDL2593:
/*   1728 */	fmla	z18.s, p0/m, z28.s, z26.s
	.loc 13 1734 0
..LDL2594:
/*   1734 */	ld1rw	{z3.s}, p0/z, [x14]	//  (*)
	.loc 13 1729 0
..LDL2595:
/*   1729 */	fmla	z17.s, p0/m, z28.s, z25.s
	.loc 13 1730 0
..LDL2596:
/*   1730 */	fmla	z7.s, p0/m, z28.s, z24.s
	.loc 13 1734 0
..LDL2597:
/*   1734 */	prfm	2, [x2, x12]	//  (*)
	.loc 13 1735 0
..LDL2598:
/*   1735 */	fmla	z6.s, p0/m, z23.s, z27.s
	.loc 13 1736 0
..LDL2599:
/*   1736 */	fmla	z5.s, p0/m, z23.s, z26.s
	.loc 13 1734 0
..LDL2600:
/*   1734 */	prfm	0, [x2, x13]	//  (*)
	.loc 13 1757 0
..LDL2601:
/*   1757 */	add	x2, x1, 256
	.loc 13 1758 0
..LDL2602:
/*   1758 */	add	x4, x14, 8
	.loc 13 1737 0
..LDL2603:
/*   1737 */	fmla	z2.s, p0/m, z23.s, z25.s
	.loc 13 1738 0
..LDL2604:
/*   1738 */	fmla	z1.s, p0/m, z23.s, z24.s
	.loc 13 1734 0
..LDL2605:
/*   1734 */	prfm	2, [x14, x12]	//  (*)
	.loc 13 1757 0
..LDL2606:
/*   1757 */	add	x1, x15, 256
	.loc 13 1726 0
..LDL2607:
/*   1726 */	dup	z16.s, z22.s[0]
	.loc 13 1734 0
..LDL2608:
/*   1734 */	prfm	0, [x14, x13]	//  (*)
	.loc 13 1759 0
..LDL2609:
/*   1759 */	sub	w0, w0, 2
	.loc 13 1727 0
..LDL2610:
/*   1727 */	fmla	z19.s, p0/m, z16.s, z8.s
	.loc 13 1728 0
..LDL2611:
/*   1728 */	fmla	z18.s, p0/m, z16.s, z21.s
	.loc 13 1729 0
..LDL2612:
/*   1729 */	fmla	z17.s, p0/m, z16.s, z4.s
	.loc 13 1730 0
..LDL2613:
/*   1730 */	fmla	z7.s, p0/m, z16.s, z0.s
	.loc 13 1735 0
..LDL2614:
/*   1735 */	fmla	z6.s, p0/m, z3.s, z8.s
	.loc 13 1736 0
..LDL2615:
/*   1736 */	fmla	z5.s, p0/m, z3.s, z21.s
	.loc 13 1737 0
..LDL2616:
/*   1737 */	fmla	z2.s, p0/m, z3.s, z4.s
	.loc 13 1738 0
..LDL2617:
/*   1738 */	fmla	z1.s, p0/m, z3.s, z0.s
	.loc 13 1759 0
..LDL2618:
/*   1759 */	cbz	w0, .L2154
.L2157:
	.p2align 5
.L2160:					// :entr:term:mod:swpl
	.loc 13 1719 0 is_stmt 1
..LDL2619:
/*   1719 */	ld1w	{z20.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1720 0
..LDL2620:
/*   1720 */	sub	x14, x1, 128
	.loc 13 1721 0
..LDL2621:
/*   1721 */	sub	x15, x1, 64
	.loc 13 1726 0
..LDL2622:
/*   1726 */	ldr	s21, [x4, -4]	//  (*)
	.loc 13 1720 0
..LDL2623:
/*   1720 */	ld1w	{z16.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1721 0
..LDL2624:
/*   1721 */	ld1w	{z4.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1757 0
..LDL2625:
/*   1757 */	add	x2, x2, 256
	.loc 13 1759 0
..LDL2626:
/*   1759 */	subs	w0, w0, 1
	.loc 13 1722 0
..LDL2627:
/*   1722 */	ld1w	{z3.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1734 0
..LDL2628:
/*   1734 */	ld1rw	{z0.s}, p0/z, [x4]	//  (*)
	.loc 13 1757 0
..LDL2629:
/*   1757 */	add	x1, x1, 256
	.loc 13 1734 0
..LDL2630:
/*   1734 */	prfm	2, [x4, x12]	//  (*)
/*   1734 */	prfm	0, [x4, x13]	//  (*)
	.loc 13 1758 0
..LDL2631:
/*   1758 */	add	x4, x4, 8
	.loc 13 1726 0
..LDL2632:
/*   1726 */	dup	z21.s, z21.s[0]
	.loc 13 1735 0
..LDL2633:
/*   1735 */	fmla	z6.s, p0/m, z0.s, z20.s
	.loc 13 1736 0
..LDL2634:
/*   1736 */	fmla	z5.s, p0/m, z0.s, z16.s
	.loc 13 1727 0
..LDL2635:
/*   1727 */	fmla	z19.s, p0/m, z21.s, z20.s
	.loc 13 1728 0
..LDL2636:
/*   1728 */	fmla	z18.s, p0/m, z21.s, z16.s
	.loc 13 1729 0
..LDL2637:
/*   1729 */	fmla	z17.s, p0/m, z21.s, z4.s
	.loc 13 1730 0
..LDL2638:
/*   1730 */	fmla	z7.s, p0/m, z21.s, z3.s
	.loc 13 1737 0
..LDL2639:
/*   1737 */	fmla	z2.s, p0/m, z0.s, z4.s
	.loc 13 1738 0
..LDL2640:
/*   1738 */	fmla	z1.s, p0/m, z0.s, z3.s
	.loc 13 1759 0 is_stmt 0
..LDL2641:
/*   1759 */	bne	.L2160
.L2154:
.L1953:
	.loc 13 1765 0 is_stmt 1
..LDL2642:
/*   1765 */	st1w	{z19.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1766 0
..LDL2643:
/*   1766 */	st1w	{z18.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1767 0
..LDL2644:
/*   1767 */	st1w	{z17.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1768 0
..LDL2645:
/*   1768 */	st1w	{z7.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1773 0
..LDL2646:
/*   1773 */	st1w	{z6.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1774 0
..LDL2647:
/*   1774 */	st1w	{z5.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1775 0
..LDL2648:
/*   1775 */	st1w	{z2.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1776 0
..LDL2649:
/*   1776 */	st1w	{z1.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1795 0
..LDL2650:
/*    ??? */	ldr	d8, [sp, 56]	//  (*)
	.cfi_restore 72
/*    ??? */	add	sp, sp, 64
	.cfi_def_cfa_offset 0
/*   1795 */	ret	
..D24.pchi:
	.cfi_endproc
.LFE23:
	.size	_Z20kernel_Nx64_templateILi2EEviPfS0_S0_i, .-_Z20kernel_Nx64_templateILi2EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx64_templateILi3EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx64_templateILi3EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx64_templateILi3EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx64_templateILi3EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx64_templateILi3EEviPfS0_S0_i, %function
_Z20kernel_Nx64_templateILi3EEviPfS0_S0_i:
	.loc 13 1668 0
..LDL2651:
.LFB24:
	.cfi_startproc
/*   1795 */	sub	sp, sp, 128
	.cfi_def_cfa_offset 128
/*    ??? */	str	x29, [sp, 112]	//  (*)
	.cfi_offset 29, -16
/*    ??? */	stp	d8, d9, [sp, 96]	//  (*)
	.cfi_offset 72, -32
	.cfi_offset 73, -24
/*    ??? */	stp	d10, d11, [sp, 80]	//  (*)
	.cfi_offset 74, -48
	.cfi_offset 75, -40
/*    ??? */	stp	d12, d13, [sp, 64]	//  (*)
	.cfi_offset 76, -64
	.cfi_offset 77, -56
/*    ??? */	stp	d14, d15, [sp, 48]	//  (*)
	.cfi_offset 78, -80
	.cfi_offset 79, -72
	.loc 13 1674 0
..LDL2652:
/*   1674 */	ptrue	p0.s, ALL
	.loc 13 1686 0
..LDL2653:
/*   1686 */	add	x8, x3, 64
	.loc 13 1689 0
..LDL2654:
/*   1689 */	sxtw	x4, w4
/*   1689 */	lsl	x7, x4, 2
	.loc 13 1694 0
..LDL2655:
/*   1694 */	add	x6, x4, 16
	.loc 13 1695 0
..LDL2656:
/*   1695 */	add	x5, x4, 32
	.loc 13 1685 0
..LDL2657:
/*   1685 */	ld1w	{z25.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1689 0
..LDL2658:
/*   1689 */	add	x9, x7, x3
	.loc 13 1696 0
..LDL2659:
/*   1696 */	add	x4, x4, 48
	.loc 13 1686 0
..LDL2660:
/*   1686 */	ld1w	{z24.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1693 0
..LDL2661:
/*   1693 */	ld1w	{z20.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1694 0
..LDL2662:
/*   1694 */	add	x10, x3, x6, lsl #2
	.loc 13 1687 0
..LDL2663:
/*   1687 */	add	x13, x3, 128
	.loc 13 1697 0
..LDL2664:
/*   1697 */	add	x14, x7, x9
	.loc 13 1688 0
..LDL2665:
/*   1688 */	add	x11, x3, 192
	.loc 13 1687 0
..LDL2666:
/*   1687 */	ld1w	{z23.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1695 0
..LDL2667:
/*   1695 */	add	x12, x3, x5, lsl #2
	.loc 13 1688 0
..LDL2668:
/*   1688 */	ld1w	{z21.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1694 0
..LDL2669:
/*   1694 */	ld1w	{z5.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1695 0
..LDL2670:
/*   1695 */	ld1w	{z4.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1696 0
..LDL2671:
/*   1696 */	add	x7, x3, x4, lsl #2
	.loc 13 1701 0
..LDL2672:
/*   1701 */	ld1w	{z1.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1696 0
..LDL2673:
/*   1696 */	ld1w	{z2.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1702 0
..LDL2674:
/*   1702 */	add	x6, x9, x6, lsl #2
/*   1702 */	ld1w	{z16.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1703 0
..LDL2675:
/*   1703 */	add	x5, x9, x5, lsl #2
/*   1703 */	ld1w	{z7.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1704 0
..LDL2676:
/*   1704 */	add	x15, x9, x4, lsl #2
/*   1704 */	ld1w	{z0.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1717 0
..LDL2677:
/*   1717 */	cmp	w0, 0
/*   1717 */	ble	.L1961
	.loc 13 1726 0 is_stmt 0
..LDL2678:
/*   1726 */	orr	x4, x1, 6917529027641081856
	.loc 13 1720 0
..LDL2679:
/*   1720 */	add	x1, x2, 192
	.loc 13 1726 0
..LDL2680:
/*   1726 */	add	x4, x4, 8
	.loc 13 1718 0 is_stmt 1
..LDL2681:
/*   1718 */	cmp	w0, 5
/*   1718 */	blt	.L2168
/*   1726 */	ldp	s19, s3, [x4, -8]	//  (*)
	.loc 13 1758 0 is_stmt 0
..LDL2682:
/*   1758 */	add	x16, x4, 12
	.loc 13 1719 0
..LDL2683:
/*   1719 */	ld1w	{z18.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1720 0
..LDL2684:
/*   1720 */	ld1w	{z17.s}, p0/z, [x1, -2, mul vl]	//  (*)
	.loc 13 1721 0
..LDL2685:
/*   1721 */	ld1w	{z6.s}, p0/z, [x1, -1, mul vl]	//  (*)
	.loc 13 1722 0
..LDL2686:
/*   1722 */	ld1w	{z10.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1726 0
..LDL2687:
/*   1726 */	ldr	s26, [x4, 4]	//  (*)
	.loc 13 1742 0
..LDL2688:
/*   1742 */	ld1rw	{z29.s}, p0/z, [x4]	//  (*)
	.loc 13 1734 0
..LDL2689:
/*   1734 */	ldr	s13, [x4, 8]	//  (*)
	.loc 13 1726 0
..LDL2690:
/*   1726 */	dup	z22.s, z19.s[0]
	.loc 13 1734 0
..LDL2691:
/*   1734 */	dup	z19.s, z3.s[0]
	.p2align 5
.L1959:					// :entr:term:swpl
	.loc 13 1757 0
..LDL2692:
/*   1757 */	add	x4, x1, 256
	.loc 13 1719 0
..LDL2693:
/*   1719 */	ld1w	{z28.s}, p0/z, [x2, 4, mul vl]	//  (*)
	.loc 13 1726 0
..LDL2694:
/*   1726 */	dup	z3.s, z26.s[0]
	.loc 13 1720 0
..LDL2695:
/*   1720 */	ld1w	{z27.s}, p0/z, [x4, -2, mul vl]	//  (*)
	.loc 13 1721 0
..LDL2696:
/*   1721 */	ld1w	{z11.s}, p0/z, [x4, -1, mul vl]	//  (*)
	.loc 13 1758 0
..LDL2697:
/*   1758 */	add	x29, x16, 12
	.loc 13 1727 0
..LDL2698:
/*   1727 */	fmla	z25.s, p0/m, z22.s, z18.s
	.loc 13 1722 0
..LDL2699:
/*   1722 */	ld1w	{z26.s}, p0/z, [x1, 4, mul vl]	//  (*)
	.loc 13 1726 0
..LDL2700:
/*   1726 */	ldr	s8, [x16, 4]	//  (*)
	.loc 13 1728 0
..LDL2701:
/*   1728 */	fmla	z24.s, p0/m, z22.s, z17.s
	.loc 13 1729 0
..LDL2702:
/*   1729 */	fmla	z23.s, p0/m, z22.s, z6.s
	.loc 13 1730 0
..LDL2703:
/*   1730 */	fmla	z21.s, p0/m, z22.s, z10.s
	.loc 13 1735 0
..LDL2704:
/*   1735 */	fmla	z20.s, p0/m, z19.s, z18.s
	.loc 13 1736 0
..LDL2705:
/*   1736 */	fmla	z5.s, p0/m, z19.s, z17.s
	.loc 13 1734 0
..LDL2706:
/*   1734 */	ldr	s15, [x16, 8]	//  (*)
	.loc 13 1737 0
..LDL2707:
/*   1737 */	fmla	z4.s, p0/m, z19.s, z6.s
	.loc 13 1734 0
..LDL2708:
/*   1734 */	dup	z22.s, z13.s[0]
	.loc 13 1738 0
..LDL2709:
/*   1738 */	fmla	z2.s, p0/m, z19.s, z10.s
	.loc 13 1742 0
..LDL2710:
/*   1742 */	ld1rw	{z30.s}, p0/z, [x16]	//  (*)
	.loc 13 1743 0
..LDL2711:
/*   1743 */	fmla	z1.s, p0/m, z29.s, z18.s
	.loc 13 1744 0
..LDL2712:
/*   1744 */	fmla	z16.s, p0/m, z29.s, z17.s
	.loc 13 1745 0
..LDL2713:
/*   1745 */	fmla	z7.s, p0/m, z29.s, z6.s
	.loc 13 1746 0
..LDL2714:
/*   1746 */	fmad	z29.s, p0/m, z10.s, z0.s
	.loc 13 1757 0
..LDL2715:
/*   1757 */	add	x18, x2, 512
/*   1757 */	add	x4, x1, 512
	.loc 13 1719 0
..LDL2716:
/*   1719 */	ld1w	{z31.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 1726 0
..LDL2717:
/*   1726 */	dup	z19.s, z8.s[0]
	.loc 13 1720 0
..LDL2718:
/*   1720 */	ld1w	{z8.s}, p0/z, [x4, -2, mul vl]	//  (*)
	.loc 13 1721 0
..LDL2719:
/*   1721 */	ld1w	{z9.s}, p0/z, [x4, -1, mul vl]	//  (*)
	.loc 13 1758 0
..LDL2720:
/*   1758 */	add	x17, x16, 24
	.loc 13 1727 0
..LDL2721:
/*   1727 */	fmla	z25.s, p0/m, z3.s, z28.s
	.loc 13 1722 0
..LDL2722:
/*   1722 */	ld1w	{z12.s}, p0/z, [x4, 0, mul vl]	//  (*)
	.loc 13 1726 0
..LDL2723:
/*   1726 */	ldr	s6, [x16, 16]	//  (*)
	.loc 13 1728 0
..LDL2724:
/*   1728 */	fmla	z24.s, p0/m, z3.s, z27.s
	.loc 13 1729 0
..LDL2725:
/*   1729 */	fmla	z23.s, p0/m, z3.s, z11.s
	.loc 13 1730 0
..LDL2726:
/*   1730 */	fmla	z21.s, p0/m, z3.s, z26.s
	.loc 13 1735 0
..LDL2727:
/*   1735 */	fmla	z20.s, p0/m, z22.s, z28.s
	.loc 13 1736 0
..LDL2728:
/*   1736 */	fmla	z5.s, p0/m, z22.s, z27.s
	.loc 13 1734 0
..LDL2729:
/*   1734 */	ldr	s14, [x16, 20]	//  (*)
	.loc 13 1737 0
..LDL2730:
/*   1737 */	fmla	z4.s, p0/m, z22.s, z11.s
	.loc 13 1734 0
..LDL2731:
/*   1734 */	dup	z3.s, z15.s[0]
	.loc 13 1738 0
..LDL2732:
/*   1738 */	fmla	z2.s, p0/m, z22.s, z26.s
	.loc 13 1742 0
..LDL2733:
/*   1742 */	ld1rw	{z0.s}, p0/z, [x29]	//  (*)
	.loc 13 1743 0
..LDL2734:
/*   1743 */	fmla	z1.s, p0/m, z30.s, z28.s
	.loc 13 1744 0
..LDL2735:
/*   1744 */	fmla	z16.s, p0/m, z30.s, z27.s
	.loc 13 1745 0
..LDL2736:
/*   1745 */	fmla	z7.s, p0/m, z30.s, z11.s
	.loc 13 1746 0
..LDL2737:
/*   1746 */	fmad	z30.s, p0/m, z26.s, z29.s
	.loc 13 1757 0
..LDL2738:
/*   1757 */	add	x2, x18, 256
/*   1757 */	add	x1, x4, 256
	.loc 13 1719 0
..LDL2739:
/*   1719 */	ld1w	{z18.s}, p0/z, [x18, 4, mul vl]	//  (*)
	.loc 13 1726 0
..LDL2740:
/*   1726 */	dup	z22.s, z6.s[0]
	.loc 13 1720 0
..LDL2741:
/*   1720 */	ld1w	{z17.s}, p0/z, [x1, -2, mul vl]	//  (*)
	.loc 13 1721 0
..LDL2742:
/*   1721 */	ld1w	{z6.s}, p0/z, [x1, -1, mul vl]	//  (*)
	.loc 13 1758 0
..LDL2743:
/*   1758 */	add	x16, x16, 36
	.loc 13 1727 0
..LDL2744:
/*   1727 */	fmla	z25.s, p0/m, z19.s, z31.s
	.loc 13 1722 0
..LDL2745:
/*   1722 */	ld1w	{z10.s}, p0/z, [x4, 4, mul vl]	//  (*)
	.loc 13 1726 0
..LDL2746:
/*   1726 */	ldr	s26, [x16, -8]	//  (*)
	.loc 13 1728 0
..LDL2747:
/*   1728 */	fmla	z24.s, p0/m, z19.s, z8.s
	.loc 13 1729 0
..LDL2748:
/*   1729 */	fmla	z23.s, p0/m, z19.s, z9.s
	.loc 13 1730 0
..LDL2749:
/*   1730 */	fmla	z21.s, p0/m, z19.s, z12.s
	.loc 13 1735 0
..LDL2750:
/*   1735 */	fmla	z20.s, p0/m, z3.s, z31.s
	.loc 13 1736 0
..LDL2751:
/*   1736 */	fmla	z5.s, p0/m, z3.s, z8.s
	.loc 13 1734 0
..LDL2752:
/*   1734 */	ldr	s13, [x16, -4]	//  (*)
	.loc 13 1737 0
..LDL2753:
/*   1737 */	fmla	z4.s, p0/m, z3.s, z9.s
	.loc 13 1742 0
..LDL2754:
/*   1742 */	prfm	2, [x16, 2536]	//  (*)
	.loc 13 1734 0
..LDL2755:
/*   1734 */	dup	z19.s, z14.s[0]
	.loc 13 1738 0
..LDL2756:
/*   1738 */	fmla	z2.s, p0/m, z3.s, z12.s
	.loc 13 1742 0
..LDL2757:
/*   1742 */	ld1rw	{z29.s}, p0/z, [x17]	//  (*)
	.loc 13 1743 0
..LDL2758:
/*   1743 */	fmla	z1.s, p0/m, z0.s, z31.s
	.loc 13 1744 0
..LDL2759:
/*   1744 */	fmla	z16.s, p0/m, z0.s, z8.s
	.loc 13 1745 0
..LDL2760:
/*   1745 */	fmla	z7.s, p0/m, z0.s, z9.s
	.loc 13 1746 0
..LDL2761:
/*   1746 */	fmad	z0.s, p0/m, z12.s, z30.s
	.loc 13 1742 0
..LDL2762:
/*   1742 */	prfm	0, [x16, 488]	//  (*)
	.loc 13 1759 0
..LDL2763:
/*   1759 */	sub	w0, w0, 3
	.loc 13 1724 0
..LDL2764:
/*   1724 */	cmp	w0, 5
/*   1724 */	bge	.L1959
	.loc 13 1757 0
..LDL2765:
/*   1757 */	add	x4, x1, 256
	.loc 13 1719 0
..LDL2766:
/*   1719 */	ld1w	{z3.s}, p0/z, [x2, 4, mul vl]	//  (*)
	.loc 13 1735 0
..LDL2767:
/*   1735 */	fmla	z20.s, p0/m, z19.s, z18.s
	.loc 13 1736 0
..LDL2768:
/*   1736 */	fmla	z5.s, p0/m, z19.s, z17.s
	.loc 13 1721 0
..LDL2769:
/*   1721 */	ld1w	{z28.s}, p0/z, [x4, -1, mul vl]	//  (*)
	.loc 13 1737 0
..LDL2770:
/*   1737 */	fmla	z4.s, p0/m, z19.s, z6.s
	.loc 13 1738 0
..LDL2771:
/*   1738 */	fmla	z2.s, p0/m, z19.s, z10.s
	.loc 13 1757 0
..LDL2772:
/*   1757 */	add	x2, x2, 512
	.loc 13 1726 0
..LDL2773:
/*   1726 */	dup	z27.s, z26.s[0]
	.loc 13 1720 0
..LDL2774:
/*   1720 */	ld1w	{z26.s}, p0/z, [x4, -2, mul vl]	//  (*)
	.loc 13 1758 0
..LDL2775:
/*   1758 */	add	x4, x16, 12
	.loc 13 1727 0
..LDL2776:
/*   1727 */	fmla	z25.s, p0/m, z22.s, z18.s
	.loc 13 1722 0
..LDL2777:
/*   1722 */	ld1w	{z30.s}, p0/z, [x1, 4, mul vl]	//  (*)
	.loc 13 1728 0
..LDL2778:
/*   1728 */	fmla	z24.s, p0/m, z22.s, z17.s
	.loc 13 1729 0
..LDL2779:
/*   1729 */	fmla	z23.s, p0/m, z22.s, z6.s
	.loc 13 1757 0
..LDL2780:
/*   1757 */	add	x1, x1, 512
	.loc 13 1730 0
..LDL2781:
/*   1730 */	fmla	z21.s, p0/m, z22.s, z10.s
	.loc 13 1742 0
..LDL2782:
/*   1742 */	ld1rw	{z19.s}, p0/z, [x16]	//  (*)
	.loc 13 1743 0
..LDL2783:
/*   1743 */	fmla	z1.s, p0/m, z29.s, z18.s
	.loc 13 1759 0
..LDL2784:
/*   1759 */	sub	w0, w0, 2
	.loc 13 1742 0
..LDL2785:
/*   1742 */	prfm	2, [x17, 2560]	//  (*)
	.loc 13 1744 0
..LDL2786:
/*   1744 */	fmla	z16.s, p0/m, z29.s, z17.s
	.loc 13 1745 0
..LDL2787:
/*   1745 */	fmla	z7.s, p0/m, z29.s, z6.s
	.loc 13 1746 0
..LDL2788:
/*   1746 */	fmla	z0.s, p0/m, z29.s, z10.s
	.loc 13 1742 0
..LDL2789:
/*   1742 */	prfm	0, [x17, 512]	//  (*)
	.loc 13 1734 0
..LDL2790:
/*   1734 */	dup	z22.s, z13.s[0]
	.loc 13 1742 0
..LDL2791:
/*   1742 */	prfm	2, [x16, 2560]	//  (*)
/*   1742 */	prfm	0, [x16, 512]	//  (*)
	.loc 13 1727 0
..LDL2792:
/*   1727 */	fmla	z25.s, p0/m, z27.s, z3.s
	.loc 13 1729 0
..LDL2793:
/*   1729 */	fmla	z23.s, p0/m, z27.s, z28.s
	.loc 13 1728 0
..LDL2794:
/*   1728 */	fmla	z24.s, p0/m, z27.s, z26.s
	.loc 13 1735 0
..LDL2795:
/*   1735 */	fmla	z20.s, p0/m, z22.s, z3.s
	.loc 13 1730 0
..LDL2796:
/*   1730 */	fmla	z21.s, p0/m, z27.s, z30.s
	.loc 13 1736 0
..LDL2797:
/*   1736 */	fmla	z5.s, p0/m, z22.s, z26.s
	.loc 13 1737 0
..LDL2798:
/*   1737 */	fmla	z4.s, p0/m, z22.s, z28.s
	.loc 13 1738 0
..LDL2799:
/*   1738 */	fmla	z2.s, p0/m, z22.s, z30.s
	.loc 13 1743 0
..LDL2800:
/*   1743 */	fmla	z1.s, p0/m, z19.s, z3.s
	.loc 13 1744 0
..LDL2801:
/*   1744 */	fmla	z16.s, p0/m, z19.s, z26.s
	.loc 13 1745 0
..LDL2802:
/*   1745 */	fmla	z7.s, p0/m, z19.s, z28.s
	.loc 13 1746 0
..LDL2803:
/*   1746 */	fmla	z0.s, p0/m, z19.s, z30.s
	.loc 13 1759 0
..LDL2804:
/*   1759 */	cbz	w0, .L2165
.L2168:
	.p2align 5
.L2171:					// :entr:term:mod:swpl
	.loc 13 1720 0 is_stmt 1
..LDL2805:
/*   1720 */	sub	x17, x1, 128
	.loc 13 1721 0
..LDL2806:
/*   1721 */	sub	x16, x1, 64
	.loc 13 1726 0
..LDL2807:
/*   1726 */	ldp	s19, s6, [x4, -8]	//  (*)
	.loc 13 1719 0
..LDL2808:
/*   1719 */	ld1w	{z26.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1720 0
..LDL2809:
/*   1720 */	ld1w	{z22.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 1757 0
..LDL2810:
/*   1757 */	add	x2, x2, 256
	.loc 13 1759 0
..LDL2811:
/*   1759 */	subs	w0, w0, 1
	.loc 13 1721 0
..LDL2812:
/*   1721 */	ld1w	{z3.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1722 0
..LDL2813:
/*   1722 */	ld1w	{z18.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1757 0
..LDL2814:
/*   1757 */	add	x1, x1, 256
	.loc 13 1742 0
..LDL2815:
/*   1742 */	prfm	2, [x4, 2560]	//  (*)
/*   1742 */	ld1rw	{z17.s}, p0/z, [x4]	//  (*)
/*   1742 */	prfm	0, [x4, 512]	//  (*)
	.loc 13 1758 0
..LDL2816:
/*   1758 */	add	x4, x4, 12
	.loc 13 1726 0
..LDL2817:
/*   1726 */	dup	z19.s, z19.s[0]
	.loc 13 1734 0
..LDL2818:
/*   1734 */	dup	z6.s, z6.s[0]
	.loc 13 1727 0
..LDL2819:
/*   1727 */	fmla	z25.s, p0/m, z19.s, z26.s
	.loc 13 1728 0
..LDL2820:
/*   1728 */	fmla	z24.s, p0/m, z19.s, z22.s
	.loc 13 1729 0
..LDL2821:
/*   1729 */	fmla	z23.s, p0/m, z19.s, z3.s
	.loc 13 1730 0
..LDL2822:
/*   1730 */	fmla	z21.s, p0/m, z19.s, z18.s
	.loc 13 1735 0
..LDL2823:
/*   1735 */	fmla	z20.s, p0/m, z6.s, z26.s
	.loc 13 1736 0
..LDL2824:
/*   1736 */	fmla	z5.s, p0/m, z6.s, z22.s
	.loc 13 1737 0
..LDL2825:
/*   1737 */	fmla	z4.s, p0/m, z6.s, z3.s
	.loc 13 1738 0
..LDL2826:
/*   1738 */	fmla	z2.s, p0/m, z6.s, z18.s
	.loc 13 1743 0
..LDL2827:
/*   1743 */	fmla	z1.s, p0/m, z17.s, z26.s
	.loc 13 1744 0
..LDL2828:
/*   1744 */	fmla	z16.s, p0/m, z17.s, z22.s
	.loc 13 1745 0
..LDL2829:
/*   1745 */	fmla	z7.s, p0/m, z17.s, z3.s
	.loc 13 1746 0
..LDL2830:
/*   1746 */	fmla	z0.s, p0/m, z17.s, z18.s
	.loc 13 1759 0 is_stmt 0
..LDL2831:
/*   1759 */	bne	.L2171
.L2165:
.L1961:
	.loc 13 1765 0 is_stmt 1
..LDL2832:
/*   1765 */	st1w	{z25.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1766 0
..LDL2833:
/*   1766 */	st1w	{z24.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1767 0
..LDL2834:
/*   1767 */	st1w	{z23.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 1768 0
..LDL2835:
/*   1768 */	st1w	{z21.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1773 0
..LDL2836:
/*   1773 */	st1w	{z20.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1774 0
..LDL2837:
/*   1774 */	st1w	{z5.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1775 0
..LDL2838:
/*   1775 */	st1w	{z4.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1776 0
..LDL2839:
/*   1776 */	st1w	{z2.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1781 0
..LDL2840:
/*   1781 */	st1w	{z1.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1782 0
..LDL2841:
/*   1782 */	st1w	{z16.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1783 0
..LDL2842:
/*   1783 */	st1w	{z7.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1784 0
..LDL2843:
/*   1784 */	st1w	{z0.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 1795 0
..LDL2844:
/*    ??? */	ldp	d8, d9, [sp, 96]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 80]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 64]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	ldp	d14, d15, [sp, 48]	//  (*)
	.cfi_restore 78
	.cfi_restore 79
/*    ??? */	ldr	x29, [sp, 112]	//  (*)
	.cfi_restore 29
/*   1795 */	add	sp, sp, 128
	.cfi_def_cfa_offset 0
/*   1795 */	ret	
..D25.pchi:
	.cfi_endproc
.LFE24:
	.size	_Z20kernel_Nx64_templateILi3EEviPfS0_S0_i, .-_Z20kernel_Nx64_templateILi3EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z20kernel_Nx64_templateILi4EEviPfS0_S0_i $"
	.section	.text._Z20kernel_Nx64_templateILi4EEviPfS0_S0_i,"axG",%progbits,_Z20kernel_Nx64_templateILi4EEviPfS0_S0_i,comdat

	.weak	_Z20kernel_Nx64_templateILi4EEviPfS0_S0_i
	.align	2
	.type	_Z20kernel_Nx64_templateILi4EEviPfS0_S0_i, %function
_Z20kernel_Nx64_templateILi4EEviPfS0_S0_i:
	.loc 13 1668 0
..LDL2845:
.LFB25:
	.cfi_startproc
/*   1795 */	sub	sp, sp, 64
	.cfi_def_cfa_offset 64
/*    ??? */	stp	x29, x30, [sp, 48]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    ??? */	stp	x19, x20, [sp, 32]	//  (*)
	.cfi_offset 19, -32
	.cfi_offset 20, -24
/*    ??? */	str	x21, [sp, 24]	//  (*)
	.cfi_offset 21, -40
/*    ??? */	stp	d8, d9, [sp, 8]	//  (*)
	.cfi_offset 72, -56
	.cfi_offset 73, -48
	.loc 13 1674 0
..LDL2846:
/*   1674 */	ptrue	p0.s, ALL
	.loc 13 1686 0
..LDL2847:
/*   1686 */	add	x8, x3, 64
	.loc 13 1689 0
..LDL2848:
/*   1689 */	sxtw	x4, w4
/*   1689 */	lsl	x7, x4, 2
	.loc 13 1694 0
..LDL2849:
/*   1694 */	add	x6, x4, 16
	.loc 13 1695 0
..LDL2850:
/*   1695 */	add	x5, x4, 32
	.loc 13 1685 0
..LDL2851:
/*   1685 */	ld1w	{z21.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1689 0
..LDL2852:
/*   1689 */	add	x9, x7, x3
	.loc 13 1696 0
..LDL2853:
/*   1696 */	add	x4, x4, 48
	.loc 13 1686 0
..LDL2854:
/*   1686 */	ld1w	{z20.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1697 0
..LDL2855:
/*   1697 */	add	x10, x7, x9
	.loc 13 1693 0
..LDL2856:
/*   1693 */	ld1w	{z22.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1694 0
..LDL2857:
/*   1694 */	add	x12, x3, x6, lsl #2
	.loc 13 1701 0
..LDL2858:
/*   1701 */	ld1w	{z17.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1705 0
..LDL2859:
/*   1705 */	add	x14, x7, x10
	.loc 13 1687 0
..LDL2860:
/*   1687 */	add	x11, x3, 128
	.loc 13 1688 0
..LDL2861:
/*   1688 */	add	x13, x3, 192
	.loc 13 1709 0
..LDL2862:
/*   1709 */	ld1w	{z6.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1687 0
..LDL2863:
/*   1687 */	ld1w	{z28.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1695 0
..LDL2864:
/*   1695 */	add	x17, x3, x5, lsl #2
	.loc 13 1688 0
..LDL2865:
/*   1688 */	ld1w	{z29.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1694 0
..LDL2866:
/*   1694 */	ld1w	{z19.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1695 0
..LDL2867:
/*   1695 */	ld1w	{z18.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 1696 0
..LDL2868:
/*   1696 */	add	x18, x3, x4, lsl #2
/*   1696 */	ld1w	{z2.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 1702 0
..LDL2869:
/*   1702 */	add	x16, x9, x6, lsl #2
/*   1702 */	ld1w	{z23.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1703 0
..LDL2870:
/*   1703 */	add	x15, x9, x5, lsl #2
/*   1703 */	ld1w	{z16.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1704 0
..LDL2871:
/*   1704 */	add	x7, x9, x4, lsl #2
/*   1704 */	ld1w	{z31.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1710 0
..LDL2872:
/*   1710 */	add	x6, x10, x6, lsl #2
/*   1710 */	ld1w	{z5.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1711 0
..LDL2873:
/*   1711 */	add	x5, x10, x5, lsl #2
/*   1711 */	ld1w	{z3.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1712 0
..LDL2874:
/*   1712 */	add	x4, x10, x4, lsl #2
/*   1712 */	ld1w	{z1.s}, p0/z, [x4, 0, mul vl]	//  (*)
	.loc 13 1717 0
..LDL2875:
/*   1717 */	cmp	w0, 0
/*   1717 */	ble	.L1969
	.loc 13 1726 0 is_stmt 0
..LDL2876:
/*   1726 */	orr	x29, x1, 6917529027641081856
	.loc 13 1720 0
..LDL2877:
/*   1720 */	add	x1, x2, 192
	.loc 13 1726 0
..LDL2878:
/*   1726 */	add	x19, x29, 12
	.loc 13 1750 0
..LDL2879:
/*   1750 */	mov	x30, 2564
/*   1750 */	mov	x29, 516
	.loc 13 1718 0 is_stmt 1
..LDL2880:
/*   1718 */	cmp	w0, 3
/*   1718 */	blt	.L2179
	.loc 13 1759 0 is_stmt 0
..LDL2881:
/*   1759 */	mov	x20, x19
	.loc 13 1719 0
..LDL2882:
/*   1719 */	ld1w	{z24.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1759 0
..LDL2883:
/*   1759 */	mov	z7.d, z31.d
	.loc 13 1720 0
..LDL2884:
/*   1720 */	ld1w	{z4.s}, p0/z, [x1, -2, mul vl]	//  (*)
	.loc 13 1721 0
..LDL2885:
/*   1721 */	ld1w	{z0.s}, p0/z, [x1, -1, mul vl]	//  (*)
	.loc 13 1759 0
..LDL2886:
/*   1759 */	mov	z25.d, z2.d
/*   1759 */	mov	z26.d, z29.d
/*   1726 */	ldp	s9, s31, [x20, -12]	//  (*)
	.loc 13 1742 0
..LDL2887:
/*   1742 */	ldr	s8, [x20, -4]	//  (*)
	.p2align 5
.L1967:					// :entr:term:swpl
	.loc 13 1722 0
..LDL2888:
/*   1722 */	ld1w	{z29.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1726 0
..LDL2889:
/*   1726 */	dup	z9.s, z9.s[0]
	.loc 13 1734 0
..LDL2890:
/*   1734 */	dup	z27.s, z31.s[0]
	.loc 13 1750 0
..LDL2891:
/*   1750 */	ld1rw	{z2.s}, p0/z, [x20]	//  (*)
	.loc 13 1742 0
..LDL2892:
/*   1742 */	dup	z30.s, z8.s[0]
	.loc 13 1727 0
..LDL2893:
/*   1727 */	fmla	z21.s, p0/m, z9.s, z24.s
	.loc 13 1728 0
..LDL2894:
/*   1728 */	fmla	z20.s, p0/m, z9.s, z4.s
	.loc 13 1729 0
..LDL2895:
/*   1729 */	fmla	z28.s, p0/m, z9.s, z0.s
	.loc 13 1757 0
..LDL2896:
/*   1757 */	add	x21, x1, 256
	.loc 13 1730 0
..LDL2897:
/*   1730 */	fmla	z26.s, p0/m, z9.s, z29.s
	.loc 13 1735 0
..LDL2898:
/*   1735 */	fmla	z22.s, p0/m, z27.s, z24.s
	.loc 13 1758 0
..LDL2899:
/*   1758 */	add	x19, x20, 16
	.loc 13 1736 0
..LDL2900:
/*   1736 */	fmla	z19.s, p0/m, z27.s, z4.s
	.loc 13 1737 0
..LDL2901:
/*   1737 */	fmla	z18.s, p0/m, z27.s, z0.s
	.loc 13 1726 0
..LDL2902:
/*   1726 */	ldr	s9, [x20, 4]	//  (*)
	.loc 13 1738 0
..LDL2903:
/*   1738 */	fmla	z25.s, p0/m, z27.s, z29.s
	.loc 13 1719 0
..LDL2904:
/*   1719 */	ld1w	{z27.s}, p0/z, [x2, 4, mul vl]	//  (*)
	.loc 13 1743 0
..LDL2905:
/*   1743 */	fmla	z17.s, p0/m, z30.s, z24.s
/*   1734 */	ldp	s31, s8, [x20, 8]	//  (*)
	.loc 13 1744 0
..LDL2906:
/*   1744 */	fmla	z23.s, p0/m, z30.s, z4.s
	.loc 13 1745 0
..LDL2907:
/*   1745 */	fmla	z16.s, p0/m, z30.s, z0.s
	.loc 13 1746 0
..LDL2908:
/*   1746 */	fmla	z7.s, p0/m, z30.s, z29.s
	.loc 13 1751 0
..LDL2909:
/*   1751 */	fmla	z6.s, p0/m, z2.s, z24.s
	.loc 13 1752 0
..LDL2910:
/*   1752 */	fmla	z5.s, p0/m, z2.s, z4.s
	.loc 13 1720 0
..LDL2911:
/*   1720 */	ld1w	{z4.s}, p0/z, [x21, -2, mul vl]	//  (*)
	.loc 13 1753 0
..LDL2912:
/*   1753 */	fmla	z3.s, p0/m, z2.s, z0.s
	.loc 13 1754 0
..LDL2913:
/*   1754 */	fmad	z2.s, p0/m, z29.s, z1.s
	.loc 13 1721 0
..LDL2914:
/*   1721 */	ld1w	{z29.s}, p0/z, [x21, -1, mul vl]	//  (*)
	.loc 13 1722 0
..LDL2915:
/*   1722 */	ld1w	{z0.s}, p0/z, [x1, 4, mul vl]	//  (*)
	.loc 13 1726 0
..LDL2916:
/*   1726 */	dup	z9.s, z9.s[0]
	.loc 13 1734 0
..LDL2917:
/*   1734 */	dup	z24.s, z31.s[0]
	.loc 13 1750 0
..LDL2918:
/*   1750 */	ld1rw	{z1.s}, p0/z, [x19]	//  (*)
	.loc 13 1742 0
..LDL2919:
/*   1742 */	dup	z30.s, z8.s[0]
	.loc 13 1727 0
..LDL2920:
/*   1727 */	fmla	z21.s, p0/m, z9.s, z27.s
	.loc 13 1728 0
..LDL2921:
/*   1728 */	fmla	z20.s, p0/m, z9.s, z4.s
	.loc 13 1729 0
..LDL2922:
/*   1729 */	fmla	z28.s, p0/m, z9.s, z29.s
	.loc 13 1757 0
..LDL2923:
/*   1757 */	add	x2, x2, 512
/*   1757 */	add	x1, x1, 512
	.loc 13 1730 0
..LDL2924:
/*   1730 */	fmla	z26.s, p0/m, z9.s, z0.s
	.loc 13 1735 0
..LDL2925:
/*   1735 */	fmla	z22.s, p0/m, z24.s, z27.s
	.loc 13 1758 0
..LDL2926:
/*   1758 */	add	x20, x20, 32
	.loc 13 1736 0
..LDL2927:
/*   1736 */	fmla	z19.s, p0/m, z24.s, z4.s
	.loc 13 1737 0
..LDL2928:
/*   1737 */	fmla	z18.s, p0/m, z24.s, z29.s
	.loc 13 1726 0
..LDL2929:
/*   1726 */	ldr	s9, [x20, -12]	//  (*)
	.loc 13 1738 0
..LDL2930:
/*   1738 */	fmla	z25.s, p0/m, z24.s, z0.s
	.loc 13 1719 0
..LDL2931:
/*   1719 */	ld1w	{z24.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1743 0
..LDL2932:
/*   1743 */	fmla	z17.s, p0/m, z30.s, z27.s
/*   1734 */	ldp	s31, s8, [x20, -8]	//  (*)
	.loc 13 1744 0
..LDL2933:
/*   1744 */	fmla	z23.s, p0/m, z30.s, z4.s
	.loc 13 1745 0
..LDL2934:
/*   1745 */	fmla	z16.s, p0/m, z30.s, z29.s
	.loc 13 1750 0
..LDL2935:
/*   1750 */	prfm	2, [x19, x30]	//  (*)
	.loc 13 1746 0
..LDL2936:
/*   1746 */	fmla	z7.s, p0/m, z30.s, z0.s
	.loc 13 1750 0
..LDL2937:
/*   1750 */	prfm	0, [x19, x29]	//  (*)
	.loc 13 1751 0
..LDL2938:
/*   1751 */	fmla	z6.s, p0/m, z1.s, z27.s
	.loc 13 1752 0
..LDL2939:
/*   1752 */	fmla	z5.s, p0/m, z1.s, z4.s
	.loc 13 1720 0
..LDL2940:
/*   1720 */	ld1w	{z4.s}, p0/z, [x1, -2, mul vl]	//  (*)
	.loc 13 1753 0
..LDL2941:
/*   1753 */	fmla	z3.s, p0/m, z1.s, z29.s
	.loc 13 1754 0
..LDL2942:
/*   1754 */	fmad	z1.s, p0/m, z0.s, z2.s
	.loc 13 1721 0
..LDL2943:
/*   1721 */	ld1w	{z0.s}, p0/z, [x1, -1, mul vl]	//  (*)
	.loc 13 1759 0
..LDL2944:
/*   1759 */	sub	w0, w0, 2
	.loc 13 1724 0
..LDL2945:
/*   1724 */	cmp	w0, 3
/*   1724 */	bge	.L1967
	.loc 13 1722 0
..LDL2946:
/*   1722 */	ld1w	{z27.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1757 0
..LDL2947:
/*   1757 */	add	x2, x2, 256
	.loc 13 1734 0
..LDL2948:
/*   1734 */	dup	z2.s, z31.s[0]
	.loc 13 1757 0
..LDL2949:
/*   1757 */	add	x1, x1, 256
	.loc 13 1726 0
..LDL2950:
/*   1726 */	dup	z29.s, z9.s[0]
	.loc 13 1750 0
..LDL2951:
/*   1750 */	ld1rw	{z30.s}, p0/z, [x20]	//  (*)
	.loc 13 1758 0
..LDL2952:
/*   1758 */	add	x19, x20, 16
	.loc 13 1759 0
..LDL2953:
/*   1759 */	sub	w0, w0, 1
	.loc 13 1750 0
..LDL2954:
/*   1750 */	prfm	2, [x20, x30]	//  (*)
	.loc 13 1742 0
..LDL2955:
/*   1742 */	dup	z31.s, z8.s[0]
	.loc 13 1750 0
..LDL2956:
/*   1750 */	prfm	0, [x20, x29]	//  (*)
	.loc 13 1735 0
..LDL2957:
/*   1735 */	fmla	z22.s, p0/m, z2.s, z24.s
	.loc 13 1736 0
..LDL2958:
/*   1736 */	fmla	z19.s, p0/m, z2.s, z4.s
	.loc 13 1727 0
..LDL2959:
/*   1727 */	fmla	z21.s, p0/m, z29.s, z24.s
	.loc 13 1728 0
..LDL2960:
/*   1728 */	fmla	z20.s, p0/m, z29.s, z4.s
	.loc 13 1729 0
..LDL2961:
/*   1729 */	fmla	z28.s, p0/m, z29.s, z0.s
	.loc 13 1737 0
..LDL2962:
/*   1737 */	fmla	z18.s, p0/m, z2.s, z0.s
	.loc 13 1743 0
..LDL2963:
/*   1743 */	fmla	z17.s, p0/m, z31.s, z24.s
	.loc 13 1744 0
..LDL2964:
/*   1744 */	fmla	z23.s, p0/m, z31.s, z4.s
	.loc 13 1745 0
..LDL2965:
/*   1745 */	fmla	z16.s, p0/m, z31.s, z0.s
	.loc 13 1730 0
..LDL2966:
/*   1730 */	fmad	z29.s, p0/m, z27.s, z26.s
	.loc 13 1738 0
..LDL2967:
/*   1738 */	fmad	z2.s, p0/m, z27.s, z25.s
	.loc 13 1746 0
..LDL2968:
/*   1746 */	fmad	z31.s, p0/m, z27.s, z7.s
	.loc 13 1751 0
..LDL2969:
/*   1751 */	fmla	z6.s, p0/m, z30.s, z24.s
	.loc 13 1752 0
..LDL2970:
/*   1752 */	fmla	z5.s, p0/m, z30.s, z4.s
	.loc 13 1753 0
..LDL2971:
/*   1753 */	fmla	z3.s, p0/m, z30.s, z0.s
	.loc 13 1754 0
..LDL2972:
/*   1754 */	fmla	z1.s, p0/m, z30.s, z27.s
	.loc 13 1759 0
..LDL2973:
/*   1759 */	cbz	w0, .L2176
.L2179:
	.p2align 5
.L2182:					// :entr:term:mod:swpl
	.loc 13 1720 0 is_stmt 1
..LDL2974:
/*   1720 */	sub	x20, x1, 128
	.loc 13 1721 0
..LDL2975:
/*   1721 */	sub	x21, x1, 64
	.loc 13 1726 0
..LDL2976:
/*   1726 */	ldp	s25, s30, [x19, -12]	//  (*)
	.loc 13 1719 0
..LDL2977:
/*   1719 */	ld1w	{z0.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1742 0
..LDL2978:
/*   1742 */	ldr	s27, [x19, -4]	//  (*)
	.loc 13 1757 0
..LDL2979:
/*   1757 */	add	x2, x2, 256
	.loc 13 1759 0
..LDL2980:
/*   1759 */	subs	w0, w0, 1
	.loc 13 1720 0
..LDL2981:
/*   1720 */	ld1w	{z24.s}, p0/z, [x20, 0, mul vl]	//  (*)
	.loc 13 1721 0
..LDL2982:
/*   1721 */	ld1w	{z26.s}, p0/z, [x21, 0, mul vl]	//  (*)
	.loc 13 1722 0
..LDL2983:
/*   1722 */	ld1w	{z4.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1750 0
..LDL2984:
/*   1750 */	ld1rw	{z7.s}, p0/z, [x19]	//  (*)
	.loc 13 1757 0
..LDL2985:
/*   1757 */	add	x1, x1, 256
	.loc 13 1750 0
..LDL2986:
/*   1750 */	prfm	2, [x19, x30]	//  (*)
/*   1750 */	prfm	0, [x19, x29]	//  (*)
	.loc 13 1758 0
..LDL2987:
/*   1758 */	add	x19, x19, 16
	.loc 13 1726 0
..LDL2988:
/*   1726 */	dup	z25.s, z25.s[0]
	.loc 13 1734 0
..LDL2989:
/*   1734 */	dup	z30.s, z30.s[0]
	.loc 13 1742 0
..LDL2990:
/*   1742 */	dup	z27.s, z27.s[0]
	.loc 13 1727 0
..LDL2991:
/*   1727 */	fmla	z21.s, p0/m, z25.s, z0.s
	.loc 13 1728 0
..LDL2992:
/*   1728 */	fmla	z20.s, p0/m, z25.s, z24.s
	.loc 13 1729 0
..LDL2993:
/*   1729 */	fmla	z28.s, p0/m, z25.s, z26.s
	.loc 13 1730 0
..LDL2994:
/*   1730 */	fmla	z29.s, p0/m, z25.s, z4.s
	.loc 13 1735 0
..LDL2995:
/*   1735 */	fmla	z22.s, p0/m, z30.s, z0.s
	.loc 13 1736 0
..LDL2996:
/*   1736 */	fmla	z19.s, p0/m, z30.s, z24.s
	.loc 13 1737 0
..LDL2997:
/*   1737 */	fmla	z18.s, p0/m, z30.s, z26.s
	.loc 13 1738 0
..LDL2998:
/*   1738 */	fmla	z2.s, p0/m, z30.s, z4.s
	.loc 13 1743 0
..LDL2999:
/*   1743 */	fmla	z17.s, p0/m, z27.s, z0.s
	.loc 13 1744 0
..LDL3000:
/*   1744 */	fmla	z23.s, p0/m, z27.s, z24.s
	.loc 13 1745 0
..LDL3001:
/*   1745 */	fmla	z16.s, p0/m, z27.s, z26.s
	.loc 13 1746 0
..LDL3002:
/*   1746 */	fmla	z31.s, p0/m, z27.s, z4.s
	.loc 13 1751 0
..LDL3003:
/*   1751 */	fmla	z6.s, p0/m, z7.s, z0.s
	.loc 13 1752 0
..LDL3004:
/*   1752 */	fmla	z5.s, p0/m, z7.s, z24.s
	.loc 13 1753 0
..LDL3005:
/*   1753 */	fmla	z3.s, p0/m, z7.s, z26.s
	.loc 13 1754 0
..LDL3006:
/*   1754 */	fmla	z1.s, p0/m, z7.s, z4.s
	.loc 13 1759 0 is_stmt 0
..LDL3007:
/*   1759 */	bne	.L2182
.L2176:
.L1969:
	.loc 13 1765 0 is_stmt 1
..LDL3008:
/*   1765 */	st1w	{z21.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1766 0
..LDL3009:
/*   1766 */	st1w	{z20.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1767 0
..LDL3010:
/*   1767 */	st1w	{z28.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1768 0
..LDL3011:
/*   1768 */	st1w	{z29.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 1773 0
..LDL3012:
/*   1773 */	st1w	{z22.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1774 0
..LDL3013:
/*   1774 */	st1w	{z19.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1775 0
..LDL3014:
/*   1775 */	st1w	{z18.s}, p0, [x17, 0, mul vl]	//  (*)
	.loc 13 1776 0
..LDL3015:
/*   1776 */	st1w	{z2.s}, p0, [x18, 0, mul vl]	//  (*)
	.loc 13 1781 0
..LDL3016:
/*   1781 */	st1w	{z17.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1782 0
..LDL3017:
/*   1782 */	st1w	{z23.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 1783 0
..LDL3018:
/*   1783 */	st1w	{z16.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 1784 0
..LDL3019:
/*   1784 */	st1w	{z31.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1789 0
..LDL3020:
/*   1789 */	st1w	{z6.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1790 0
..LDL3021:
/*   1790 */	st1w	{z5.s}, p0, [x6, 0, mul vl]	//  (*)
	.loc 13 1791 0
..LDL3022:
/*   1791 */	st1w	{z3.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1792 0
..LDL3023:
/*   1792 */	st1w	{z1.s}, p0, [x4, 0, mul vl]	//  (*)
	.loc 13 1795 0
..LDL3024:
/*    ??? */	ldp	x19, x20, [sp, 32]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	d8, d9, [sp, 8]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldr	x21, [sp, 24]	//  (*)
	.cfi_restore 21
/*    ??? */	ldp	x29, x30, [sp, 48]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*   1795 */	add	sp, sp, 64
	.cfi_def_cfa_offset 0
/*   1795 */	ret	
..D26.pchi:
	.cfi_endproc
.LFE25:
	.size	_Z20kernel_Nx64_templateILi4EEviPfS0_S0_i, .-_Z20kernel_Nx64_templateILi4EEviPfS0_S0_i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _Z15get_kernel_Nx64i $"
	.text
	.align	2
	.global	_Z15get_kernel_Nx64i
	.type	_Z15get_kernel_Nx64i, %function
_Z15get_kernel_Nx64i:
	.loc 13 1797 0
..LDL3025:
.LFB26:
	.cfi_startproc
	.loc 13 1798 0
..LDL3026:
/*   1798 */	cmp	w0, 1
/*   1798 */	beq	.L1579
	.loc 13 1800 0
..LDL3027:
/*   1800 */	cmp	w0, 2
/*   1800 */	beq	.L1584
	.loc 13 1803 0
..LDL3028:
/*   1803 */	adrp	x2, _Z20kernel_Nx64_templateILi3EEviPfS0_S0_i
	.loc 13 1804 0
..LDL3029:
/*   1804 */	adrp	x1, _Z20kernel_Nx64_templateILi4EEviPfS0_S0_i
/*   1804 */	cmp	w0, 3
	.loc 13 1803 0
..LDL3030:
/*   1803 */	add	x0, x2, :lo12:_Z20kernel_Nx64_templateILi3EEviPfS0_S0_i
	.loc 13 1804 0
..LDL3031:
/*   1804 */	add	x1, x1, :lo12:_Z20kernel_Nx64_templateILi4EEviPfS0_S0_i
/*   1804 */	csel	x0, x1, x0, ne
	.loc 13 1803 0 is_stmt 0
..LDL3032:
/*   1803 */	b	.L1581
.L1584:
	.loc 13 1801 0 is_stmt 1
..LDL3033:
/*   1801 */	adrp	x0, _Z20kernel_Nx64_templateILi2EEviPfS0_S0_i
/*   1801 */	add	x0, x0, :lo12:_Z20kernel_Nx64_templateILi2EEviPfS0_S0_i
/*   1801 */	b	.L1581
.L1579:
	.loc 13 1799 0
..LDL3034:
/*   1799 */	adrp	x0, _Z20kernel_Nx64_templateILi1EEviPfS0_S0_i
/*   1799 */	add	x0, x0, :lo12:_Z20kernel_Nx64_templateILi1EEviPfS0_S0_i
.L1581:					// :epi:term
	.loc 13 1805 0
..LDL3035:
/*   1805 */	ret	
..D27.pchi:
	.cfi_endproc
.LFE26:
	.size	_Z15get_kernel_Nx64i, .-_Z15get_kernel_Nx64i
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp _ZN5TimerD0Ev $"
	.section	.text._ZN5TimerD0Ev,"axG",%progbits,_ZN5TimerD0Ev,comdat

	.weak	_ZN5TimerD0Ev
	.align	2
	.type	_ZN5TimerD0Ev, %function
_ZN5TimerD0Ev:
	.loc 13 1806 0
..LDL3036:
.LFB27:
	.cfi_startproc
/*     71 */	adrp	x1, _ZTV5Timer+16
/*     71 */	add	x1, x1, :lo12:_ZTV5Timer+16
/*     71 */	str	x1, [x0]	//  (*)
/*   1806 */	b	_ZdlPv
..D28.pchi:
	.cfi_endproc
.LFE27:
	.size	_ZN5TimerD0Ev, .-_ZN5TimerD0Ev
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel.cpp __fjc_check_hpctag $"
	.text
	.align	2
	.type	__fjc_check_hpctag, %function
__fjc_check_hpctag:
.LFB28:
	.cfi_startproc
/*        */	mov	x0, 0
/*        */	b	__jwe_check_hpctag
..D29.pchi:
	.cfi_endproc
.LFE28:
	.size	__fjc_check_hpctag, .-__fjc_check_hpctag
	.section	.init_array,"aw"
	.align	3
	.xword		__fjc_check_hpctag
	.file 14 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/arm_sve.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "/usr/include/alloca.h"
	.file 17 "/usr/include/bits/floatn-common.h"
	.file 18 "/usr/include/bits/floatn.h"
	.file 19 "/usr/include/bits/types/locale_t.h"
	.file 20 "/usr/include/bits/types/__locale_t.h"
	.file 21 "/usr/include/sys/select.h"
	.file 22 "/usr/include/bits/types/struct_timeval.h"
	.file 23 "/usr/include/bits/types/struct_timespec.h"
	.file 24 "/usr/include/bits/types/__sigset_t.h"
	.file 25 "/usr/include/bits/stdint-intn.h"
	.file 26 "/usr/include/assert.h"
	.file 27 "/usr/include/bits/types/cookie_io_functions_t.h"
	.file 28 "/usr/include/bits/types/__fpos_t.h"
	.file 29 "/usr/include/bits/types/__fpos64_t.h"
	.file 30 "/usr/include/bits/time.h"
	.file 31 "/usr/include/bits/timex.h"
	.file 32 "/usr/include/time.h"
	.file 33 "/usr/include/bits/types/clock_t.h"
	.file 34 "/usr/include/bits/types/time_t.h"
	.file 35 "/usr/include/bits/types/struct_tm.h"
	.file 36 "/usr/include/bits/types/clockid_t.h"
	.file 37 "/usr/include/sys/types.h"
	.file 38 "/usr/include/bits/types/timer_t.h"
	.file 39 "/usr/include/bits/types/struct_itimerspec.h"
	.file 40 "/usr/include/bits/stdint-uintn.h"
	.file 41 "/usr/include/bits/types/sigset_t.h"
	.file 42 "/usr/include/bits/pthreadtypes-arch.h"
	.file 43 "/usr/include/bits/thread-shared-types.h"
	.file 44 "/usr/include/bits/pthreadtypes.h"
	.file 45 "/usr/include/bits/types/__mbstate_t.h"
	.file 46 "/usr/include/bits/types/__FILE.h"
	.file 47 "/usr/include/stdint.h"
	.pushsection	.text
..text.e:
	.popsection
	.section	.debug_info
	.4byte	.LSEdebug_info-.LSBdebug_info	// Length of .debug_info section
.LSBdebug_info:
	.2byte	0x4	// Version of DWARF information
	.4byte	.Ldebug_abbrev	// Offset into .debug_abbrev section
	.byte	0x8	// Address size
	.uleb128	0x1	// DW_TAG_compile_unit (0xb)
	.ascii	"./im2col/SVE/sve_gemm_kernel.cpp\0"	// DW_AT_name
	.4byte	.Ldebug_line	// DW_AT_stmt_list
	.byte	0x4	// DW_AT_language
	.ascii	"/vol0004/ra000012/a04453/FastConv\0"	// DW_AT_comp_dir
	.ascii	"ccpcom: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39)\0"	// DW_AT_producer
	.4byte	.Ldebug_ranges1	// DW_AT_ranges
	.uleb128	0x2	// DW_TAG_class_type (0x94)
	.4byte	0x1a4	// DW_AT_sibling
	.ascii	"Timer\0"	// DW_AT_name
	.byte	0x30	// DW_AT_byte_size
	.byte	0xc	// DW_AT_decl_file
	.byte	0x43	// DW_AT_decl_line
	.uleb128	0x3	// DW_TAG_subprogram (0xa2)
	.ascii	"Timer\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x46	// DW_AT_decl_line
			// DW_AT_external
	.ascii	"_ZN5TimerC1Ev\0"	// DW_AT_linkage_name
	.uleb128	0x4	// DW_TAG_subprogram (0xba)
	.ascii	"~Timer\0"	// DW_AT_name
	.byte	0x1	// DW_AT_inline
	.byte	0xc	// DW_AT_decl_file
	.byte	0x47	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"_ZN5TimerD1Ev\0"	// DW_AT_linkage_name
	.uleb128	0x5	// DW_TAG_subprogram (0xd3)
	.8byte	_ZN5TimerD1Ev	// DW_AT_low_pc
	.8byte	..D1.pchi-_ZN5TimerD1Ev	// DW_AT_high_pc
	.4byte	0xba	// DW_AT_abstract_origin
	.byte	0x1	// DW_AT_accessibility
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.byte	0x1	// DW_AT_virtuality
	.uleb128	0x2	// DW_AT_vtable_elem_location
	.byte	0x10	// DW_OP_constu
	.uleb128	0x0
	.ascii	"_ZN5TimerD1Ev\0"	// DW_AT_linkage_name
	.uleb128	0x6	// DW_TAG_subprogram (0xfd)
	.ascii	"startBench\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x48	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"startBench\0"	// DW_AT_linkage_name
	.uleb128	0x6	// DW_TAG_subprogram (0x117)
	.ascii	"accumBench\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x49	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"accumBench\0"	// DW_AT_linkage_name
	.uleb128	0x6	// DW_TAG_subprogram (0x131)
	.ascii	"printBench\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x4a	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"printBench\0"	// DW_AT_linkage_name
	.uleb128	0x6	// DW_TAG_subprogram (0x14b)
	.ascii	"endBench\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x4b	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"endBench\0"	// DW_AT_linkage_name
	.uleb128	0x6	// DW_TAG_subprogram (0x161)
	.ascii	"endBench\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x4c	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"endBench\0"	// DW_AT_linkage_name
	.uleb128	0x6	// DW_TAG_subprogram (0x177)
	.ascii	"endBench\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x4d	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"endBench\0"	// DW_AT_linkage_name
	.uleb128	0x6	// DW_TAG_subprogram (0x18d)
	.ascii	"getBench\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x4e	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"getBench\0"	// DW_AT_linkage_name
	.byte	0x0	// End of children (0x94)
	.uleb128	0x7	// DW_TAG_subprogram (0x1a4)
	.ascii	"kernel_8x32\0"	// DW_AT_name
	.8byte	_Z11kernel_8x32iPfS_S_iiii	// DW_AT_low_pc
	.8byte	..D2.pchi-_Z11kernel_8x32iPfS_S_iiii	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.byte	0xe	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z11kernel_8x32iPfS_S_iiii\0"	// DW_AT_linkage_name
	.uleb128	0x7	// DW_TAG_subprogram (0x1e0)
	.ascii	"kernel_12x32\0"	// DW_AT_name
	.8byte	_Z12kernel_12x32iPfS_S_iiii	// DW_AT_low_pc
	.8byte	..D3.pchi-_Z12kernel_12x32iPfS_S_iiii	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.byte	0xfd	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z12kernel_12x32iPfS_S_iiii\0"	// DW_AT_linkage_name
	.uleb128	0x8	// DW_TAG_subprogram (0x21e)
	.ascii	"kernel_4x64\0"	// DW_AT_name
	.8byte	_Z11kernel_4x64iPfS_S_iiii	// DW_AT_low_pc
	.8byte	..D4.pchi-_Z11kernel_4x64iPfS_S_iiii	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x220	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z11kernel_4x64iPfS_S_iiii\0"	// DW_AT_linkage_name
	.uleb128	0x8	// DW_TAG_subprogram (0x25b)
	.ascii	"kernel_12x32_v1\0"	// DW_AT_name
	.8byte	_Z15kernel_12x32_v1iPfS_S_iiii	// DW_AT_low_pc
	.8byte	..D5.pchi-_Z15kernel_12x32_v1iPfS_S_iiii	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x2cf	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z15kernel_12x32_v1iPfS_S_iiii\0"	// DW_AT_linkage_name
	.uleb128	0x8	// DW_TAG_subprogram (0x2a0)
	.ascii	"kernel_12x32_v2\0"	// DW_AT_name
	.8byte	_Z15kernel_12x32_v2iPfS_S_iiii	// DW_AT_low_pc
	.8byte	..D6.pchi-_Z15kernel_12x32_v2iPfS_S_iiii	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x37e	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z15kernel_12x32_v2iPfS_S_iiii\0"	// DW_AT_linkage_name
	.uleb128	0x8	// DW_TAG_subprogram (0x2e5)
	.ascii	"kernel_14x32\0"	// DW_AT_name
	.8byte	_Z12kernel_14x32iPfS_S_iiii	// DW_AT_low_pc
	.8byte	..D7.pchi-_Z12kernel_14x32iPfS_S_iiii	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x470	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z12kernel_14x32iPfS_S_iiii\0"	// DW_AT_linkage_name
	.uleb128	0x8	// DW_TAG_subprogram (0x324)
	.ascii	"get_kernel_Nx32\0"	// DW_AT_name
	.8byte	_Z15get_kernel_Nx32i	// DW_AT_low_pc
	.8byte	..D22.pchi-_Z15get_kernel_Nx32i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x665	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z15get_kernel_Nx32i\0"	// DW_AT_linkage_name
	.uleb128	0x8	// DW_TAG_subprogram (0x35f)
	.ascii	"get_kernel_Nx64\0"	// DW_AT_name
	.8byte	_Z15get_kernel_Nx64i	// DW_AT_low_pc
	.8byte	..D27.pchi-_Z15get_kernel_Nx64i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x705	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z15get_kernel_Nx64i\0"	// DW_AT_linkage_name
	.uleb128	0x9	// DW_TAG_subprogram (0x39a)
	.4byte	0x3fc	// DW_AT_sibling
	.ascii	"kernel_Nx32_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx32_templateILi1EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D8.pchi-_Z20kernel_Nx32_templateILi1EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x539	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx32_templateILi1EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x3f3)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x5ae	// DW_AT_FJ_loop_start_line
	.2byte	0x60b	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x39a)
	.uleb128	0x9	// DW_TAG_subprogram (0x3fc)
	.4byte	0x45e	// DW_AT_sibling
	.ascii	"kernel_Nx32_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx32_templateILi2EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D9.pchi-_Z20kernel_Nx32_templateILi2EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x539	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx32_templateILi2EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x455)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x5ae	// DW_AT_FJ_loop_start_line
	.2byte	0x60b	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x3fc)
	.uleb128	0x9	// DW_TAG_subprogram (0x45e)
	.4byte	0x4c0	// DW_AT_sibling
	.ascii	"kernel_Nx32_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx32_templateILi3EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D10.pchi-_Z20kernel_Nx32_templateILi3EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x539	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx32_templateILi3EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x4b7)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x5ae	// DW_AT_FJ_loop_start_line
	.2byte	0x60b	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x45e)
	.uleb128	0x9	// DW_TAG_subprogram (0x4c0)
	.4byte	0x522	// DW_AT_sibling
	.ascii	"kernel_Nx32_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx32_templateILi4EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D11.pchi-_Z20kernel_Nx32_templateILi4EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x539	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx32_templateILi4EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x519)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x5ae	// DW_AT_FJ_loop_start_line
	.2byte	0x60b	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x4c0)
	.uleb128	0x9	// DW_TAG_subprogram (0x522)
	.4byte	0x584	// DW_AT_sibling
	.ascii	"kernel_Nx32_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx32_templateILi5EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D12.pchi-_Z20kernel_Nx32_templateILi5EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x539	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx32_templateILi5EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x57b)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x5ae	// DW_AT_FJ_loop_start_line
	.2byte	0x60b	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x522)
	.uleb128	0x9	// DW_TAG_subprogram (0x584)
	.4byte	0x5e6	// DW_AT_sibling
	.ascii	"kernel_Nx32_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx32_templateILi6EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D13.pchi-_Z20kernel_Nx32_templateILi6EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x539	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx32_templateILi6EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x5dd)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x5ae	// DW_AT_FJ_loop_start_line
	.2byte	0x60b	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x584)
	.uleb128	0x9	// DW_TAG_subprogram (0x5e6)
	.4byte	0x648	// DW_AT_sibling
	.ascii	"kernel_Nx32_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx32_templateILi7EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D14.pchi-_Z20kernel_Nx32_templateILi7EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x539	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx32_templateILi7EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x63f)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x5ae	// DW_AT_FJ_loop_start_line
	.2byte	0x60b	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x5e6)
	.uleb128	0x9	// DW_TAG_subprogram (0x648)
	.4byte	0x6aa	// DW_AT_sibling
	.ascii	"kernel_Nx32_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx32_templateILi8EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D15.pchi-_Z20kernel_Nx32_templateILi8EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x539	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx32_templateILi8EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x6a1)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x5ae	// DW_AT_FJ_loop_start_line
	.2byte	0x60b	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x648)
	.uleb128	0x9	// DW_TAG_subprogram (0x6aa)
	.4byte	0x70c	// DW_AT_sibling
	.ascii	"kernel_Nx32_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx32_templateILi9EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D16.pchi-_Z20kernel_Nx32_templateILi9EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x539	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx32_templateILi9EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x703)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x5ae	// DW_AT_FJ_loop_start_line
	.2byte	0x60b	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x6aa)
	.uleb128	0x9	// DW_TAG_subprogram (0x70c)
	.4byte	0x76f	// DW_AT_sibling
	.ascii	"kernel_Nx32_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx32_templateILi10EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D17.pchi-_Z20kernel_Nx32_templateILi10EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x539	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx32_templateILi10EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x766)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x5ae	// DW_AT_FJ_loop_start_line
	.2byte	0x60b	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x70c)
	.uleb128	0x9	// DW_TAG_subprogram (0x76f)
	.4byte	0x7d2	// DW_AT_sibling
	.ascii	"kernel_Nx32_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx32_templateILi11EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D18.pchi-_Z20kernel_Nx32_templateILi11EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x539	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx32_templateILi11EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x7c9)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x5ae	// DW_AT_FJ_loop_start_line
	.2byte	0x60b	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x76f)
	.uleb128	0x9	// DW_TAG_subprogram (0x7d2)
	.4byte	0x835	// DW_AT_sibling
	.ascii	"kernel_Nx32_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx32_templateILi12EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D19.pchi-_Z20kernel_Nx32_templateILi12EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x539	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx32_templateILi12EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x82c)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x5ae	// DW_AT_FJ_loop_start_line
	.2byte	0x60b	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x7d2)
	.uleb128	0x9	// DW_TAG_subprogram (0x835)
	.4byte	0x898	// DW_AT_sibling
	.ascii	"kernel_Nx32_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx32_templateILi13EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D20.pchi-_Z20kernel_Nx32_templateILi13EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x539	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx32_templateILi13EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x88f)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x5ae	// DW_AT_FJ_loop_start_line
	.2byte	0x60b	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x835)
	.uleb128	0x9	// DW_TAG_subprogram (0x898)
	.4byte	0x8fb	// DW_AT_sibling
	.ascii	"kernel_Nx32_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx32_templateILi14EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D21.pchi-_Z20kernel_Nx32_templateILi14EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x539	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx32_templateILi14EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x8f2)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x5ae	// DW_AT_FJ_loop_start_line
	.2byte	0x60b	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x898)
	.uleb128	0x9	// DW_TAG_subprogram (0x8fb)
	.4byte	0x95d	// DW_AT_sibling
	.ascii	"kernel_Nx64_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx64_templateILi1EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D23.pchi-_Z20kernel_Nx64_templateILi1EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x684	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx64_templateILi1EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x954)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x6b5	// DW_AT_FJ_loop_start_line
	.2byte	0x6df	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x8fb)
	.uleb128	0x9	// DW_TAG_subprogram (0x95d)
	.4byte	0x9bf	// DW_AT_sibling
	.ascii	"kernel_Nx64_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx64_templateILi2EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D24.pchi-_Z20kernel_Nx64_templateILi2EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x684	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx64_templateILi2EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x9b6)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x6b5	// DW_AT_FJ_loop_start_line
	.2byte	0x6df	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x95d)
	.uleb128	0x9	// DW_TAG_subprogram (0x9bf)
	.4byte	0xa21	// DW_AT_sibling
	.ascii	"kernel_Nx64_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx64_templateILi3EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D25.pchi-_Z20kernel_Nx64_templateILi3EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x684	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx64_templateILi3EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0xa18)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x6b5	// DW_AT_FJ_loop_start_line
	.2byte	0x6df	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x9bf)
	.uleb128	0xb	// DW_TAG_subprogram (0xa21)
	.ascii	"kernel_Nx64_template\0"	// DW_AT_name
	.8byte	_Z20kernel_Nx64_templateILi4EEviPfS0_S0_i	// DW_AT_low_pc
	.8byte	..D26.pchi-_Z20kernel_Nx64_templateILi4EEviPfS0_S0_i	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x684	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_Nx64_templateILi4EEviPfS0_S0_i\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0xa76)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x6b5	// DW_AT_FJ_loop_start_line
	.2byte	0x6df	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xa21)
	.byte	0x0	// End of children (0xb)
.LSEdebug_info:
	.section	.debug_abbrev
.Ldebug_abbrev:
	.uleb128	0x1	// Abbreviation code
	.uleb128	0x11	// DW_TAG_compile_unit
	.byte	0x1	// DW_CHILDREN_yes
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x10	// DW_AT_stmt_list
	.uleb128	0x17	// DW_FORM_sec_offset
	.uleb128	0x13	// DW_AT_language
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x1b	// DW_AT_comp_dir
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x25	// DW_AT_producer
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x55	// DW_AT_ranges
	.uleb128	0x17	// DW_FORM_sec_offset
	.byte	0x0
	.byte	0x0
	.uleb128	0x2	// Abbreviation code
	.uleb128	0x2	// DW_TAG_class_type
	.byte	0x1	// DW_CHILDREN_yes
	.uleb128	0x1	// DW_AT_sibling
	.uleb128	0x13	// DW_FORM_ref4
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0xb	// DW_AT_byte_size
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3b	// DW_AT_decl_line
	.uleb128	0xb	// DW_FORM_data1
	.byte	0x0
	.byte	0x0
	.uleb128	0x3	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x0	// DW_CHILDREN_no
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x32	// DW_AT_accessibility
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3b	// DW_AT_decl_line
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3f	// DW_AT_external
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x6e	// DW_AT_linkage_name
	.uleb128	0x8	// DW_FORM_string
	.byte	0x0
	.byte	0x0
	.uleb128	0x4	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x0	// DW_CHILDREN_no
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x20	// DW_AT_inline
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3b	// DW_AT_decl_line
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3c	// DW_AT_declaration
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x3f	// DW_AT_external
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x6e	// DW_AT_linkage_name
	.uleb128	0x8	// DW_FORM_string
	.byte	0x0
	.byte	0x0
	.uleb128	0x5	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x0	// DW_CHILDREN_no
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
	.uleb128	0x12	// DW_AT_high_pc
	.uleb128	0x7	// DW_FORM_data8
	.uleb128	0x31	// DW_AT_abstract_origin
	.uleb128	0x13	// DW_FORM_ref4
	.uleb128	0x32	// DW_AT_accessibility
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.uleb128	0x4c	// DW_AT_virtuality
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x4d	// DW_AT_vtable_elem_location
	.uleb128	0x18	// DW_FORM_exprloc
	.uleb128	0x6e	// DW_AT_linkage_name
	.uleb128	0x8	// DW_FORM_string
	.byte	0x0
	.byte	0x0
	.uleb128	0x6	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x0	// DW_CHILDREN_no
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x32	// DW_AT_accessibility
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3b	// DW_AT_decl_line
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3c	// DW_AT_declaration
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x3f	// DW_AT_external
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x6e	// DW_AT_linkage_name
	.uleb128	0x8	// DW_FORM_string
	.byte	0x0
	.byte	0x0
	.uleb128	0x7	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x0	// DW_CHILDREN_no
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
	.uleb128	0x12	// DW_AT_high_pc
	.uleb128	0x7	// DW_FORM_data8
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3b	// DW_AT_decl_line
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3f	// DW_AT_external
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.uleb128	0x6e	// DW_AT_linkage_name
	.uleb128	0x8	// DW_FORM_string
	.byte	0x0
	.byte	0x0
	.uleb128	0x8	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x0	// DW_CHILDREN_no
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
	.uleb128	0x12	// DW_AT_high_pc
	.uleb128	0x7	// DW_FORM_data8
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3b	// DW_AT_decl_line
	.uleb128	0x5	// DW_FORM_data2
	.uleb128	0x3f	// DW_AT_external
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.uleb128	0x6e	// DW_AT_linkage_name
	.uleb128	0x8	// DW_FORM_string
	.byte	0x0
	.byte	0x0
	.uleb128	0x9	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x1	// DW_CHILDREN_yes
	.uleb128	0x1	// DW_AT_sibling
	.uleb128	0x13	// DW_FORM_ref4
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
	.uleb128	0x12	// DW_AT_high_pc
	.uleb128	0x7	// DW_FORM_data8
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3b	// DW_AT_decl_line
	.uleb128	0x5	// DW_FORM_data2
	.uleb128	0x3f	// DW_AT_external
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.uleb128	0x6e	// DW_AT_linkage_name
	.uleb128	0x8	// DW_FORM_string
	.byte	0x0
	.byte	0x0
	.uleb128	0xa	// Abbreviation code
	.uleb128	0xf000	// DW_TAG_FJ_loop
	.byte	0x0	// DW_CHILDREN_no
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3300	// DW_AT_FJ_loop_start_line
	.uleb128	0x5	// DW_FORM_data2
	.uleb128	0x3301	// DW_AT_FJ_loop_end_line
	.uleb128	0x5	// DW_FORM_data2
	.uleb128	0x3302	// DW_AT_FJ_loop_nest_level
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3303	// DW_AT_FJ_loop_type
	.uleb128	0xb	// DW_FORM_data1
	.byte	0x0
	.byte	0x0
	.uleb128	0xb	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x1	// DW_CHILDREN_yes
	.uleb128	0x3	// DW_AT_name
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
	.uleb128	0x12	// DW_AT_high_pc
	.uleb128	0x7	// DW_FORM_data8
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3b	// DW_AT_decl_line
	.uleb128	0x5	// DW_FORM_data2
	.uleb128	0x3f	// DW_AT_external
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.uleb128	0x6e	// DW_AT_linkage_name
	.uleb128	0x8	// DW_FORM_string
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_line
.Ldebug_line:
	.section	.debug_ranges
.Ldebug_ranges1:
	.8byte	0xffffffffffffffff	// Base addr selection entry ID
	.8byte	0x0
	.8byte	_ZN5TimerD1Ev
	.8byte	..D1.pchi
	.8byte	_Z11kernel_8x32iPfS_S_iiii
	.8byte	..D2.pchi
	.8byte	_Z12kernel_12x32iPfS_S_iiii
	.8byte	..D3.pchi
	.8byte	_Z11kernel_4x64iPfS_S_iiii
	.8byte	..D4.pchi
	.8byte	_Z15kernel_12x32_v1iPfS_S_iiii
	.8byte	..D5.pchi
	.8byte	_Z15kernel_12x32_v2iPfS_S_iiii
	.8byte	..D6.pchi
	.8byte	_Z12kernel_14x32iPfS_S_iiii
	.8byte	..D7.pchi
	.8byte	_Z15get_kernel_Nx32i
	.8byte	..D22.pchi
	.8byte	_Z15get_kernel_Nx64i
	.8byte	..D27.pchi
	.8byte	_Z20kernel_Nx32_templateILi1EEviPfS0_S0_i
	.8byte	..D8.pchi
	.8byte	_Z20kernel_Nx32_templateILi2EEviPfS0_S0_i
	.8byte	..D9.pchi
	.8byte	_Z20kernel_Nx32_templateILi3EEviPfS0_S0_i
	.8byte	..D10.pchi
	.8byte	_Z20kernel_Nx32_templateILi4EEviPfS0_S0_i
	.8byte	..D11.pchi
	.8byte	_Z20kernel_Nx32_templateILi5EEviPfS0_S0_i
	.8byte	..D12.pchi
	.8byte	_Z20kernel_Nx32_templateILi6EEviPfS0_S0_i
	.8byte	..D13.pchi
	.8byte	_Z20kernel_Nx32_templateILi7EEviPfS0_S0_i
	.8byte	..D14.pchi
	.8byte	_Z20kernel_Nx32_templateILi8EEviPfS0_S0_i
	.8byte	..D15.pchi
	.8byte	_Z20kernel_Nx32_templateILi9EEviPfS0_S0_i
	.8byte	..D16.pchi
	.8byte	_Z20kernel_Nx32_templateILi10EEviPfS0_S0_i
	.8byte	..D17.pchi
	.8byte	_Z20kernel_Nx32_templateILi11EEviPfS0_S0_i
	.8byte	..D18.pchi
	.8byte	_Z20kernel_Nx32_templateILi12EEviPfS0_S0_i
	.8byte	..D19.pchi
	.8byte	_Z20kernel_Nx32_templateILi13EEviPfS0_S0_i
	.8byte	..D20.pchi
	.8byte	_Z20kernel_Nx32_templateILi14EEviPfS0_S0_i
	.8byte	..D21.pchi
	.8byte	_Z20kernel_Nx64_templateILi1EEviPfS0_S0_i
	.8byte	..D23.pchi
	.8byte	_Z20kernel_Nx64_templateILi2EEviPfS0_S0_i
	.8byte	..D24.pchi
	.8byte	_Z20kernel_Nx64_templateILi3EEviPfS0_S0_i
	.8byte	..D25.pchi
	.8byte	_Z20kernel_Nx64_templateILi4EEviPfS0_S0_i
	.8byte	..D26.pchi
	.8byte	0x0
	.8byte	0x0
	.weak	_ZTV5Timer
	.section	.rodata._ZTV5Timer,"aG",%progbits,_ZTV5Timer,comdat
	.align	3
_ZTV5Timer:
	.type	_ZTV5Timer, %object
	.size	_ZTV5Timer, 32
	.zero	8
	.xword	_ZTI5Timer
	.xword	_ZN5TimerD1Ev
	.xword	_ZN5TimerD0Ev
	.weak	_ZTI5Timer
	.section	.rodata._ZTI5Timer,"aG",%progbits,_ZTI5Timer,comdat
	.align	3
_ZTI5Timer:
	.type	_ZTI5Timer, %object
	.size	_ZTI5Timer, 16
	.xword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.xword	_ZTS5Timer
	.weak	_ZTS5Timer
	.section	.rodata._ZTS5Timer,"aG",%progbits,_ZTS5Timer,comdat
	.align	3
_ZTS5Timer:
	.type	_ZTS5Timer, %object
	.size	_ZTS5Timer, 7
	.byte	53
	.byte	84
	.byte	105
	.byte	109
	.byte	101
	.byte	114
	.zero	1
	.section	.note.GNU-stack,"",%progbits
	.section	.fj.compile_info, "e"
	.ascii	"C++::trad-libc++"
