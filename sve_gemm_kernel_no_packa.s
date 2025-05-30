..text.b:
	.ident	"$Options: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) --preinclude /opt/FJSVxtclanga/tcsds-1.2.33/bin/../lib/FCC.pre --g++ --c++11 -D__STRICT_ANSI__ -D__FUJITSU -D__FCC_major__=4 -D__FCC_minor__=6 -D__FCC_patchlevel__=1 -D__FCC_version__=\"4.6.1\" -D__aarch64__ -D__unix -D_OPENMP=201107 -D__PRAGMA_REDEFINE_EXTNAME -D__FCC_VERSION=800 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__ARM_FEATURE_SVE -D__FP_FAST_FMA -D__ELF__ -D__linux -Asystem(unix) -D__LIBC_6B -D_LP64 -D__LP64__ -I/vol0004/ra000012/a04453/FastConv --K=omp --K=noocl -D_REENTRANT -D__MT__ --zmode=64 --sys_include=/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371 --sys_include=/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include --K=opt --exceptions ./im2col/SVE/sve_gemm_kernel_no_packa.cpp -- -ncmdname=FCC -zobe=cplus -zcfc=target_sve -O3 -x- -Komitfp,mfunc,eval,fp_relaxed,fz,fast_matmul,fp_contract,ilfunc,simd_packed_promotion -Kopenmp,threadsafe -Nlibomp -Kprefetch_cache_level=all -Kprefetch_sequential=soft -Kprefetch_line=2 -Kprefetch_line_L2=10 -Kzfill=9 -Kswp -Klargepage sve_gemm_kernel_no_packa.s $"
	.file	"sve_gemm_kernel_no_packa.cpp"
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _ZN5TimerD1Ev $"
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
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z21kernel_12x32_no_packaiPfS_S_iiii $"
	.text
	.align	2
	.global	_Z21kernel_12x32_no_packaiPfS_S_iiii
	.type	_Z21kernel_12x32_no_packaiPfS_S_iiii, %function
_Z21kernel_12x32_no_packaiPfS_S_iiii:
	.file 13 "./im2col/SVE/sve_gemm_kernel_no_packa.cpp"
	.loc 13 18 0
..LDL3:
.LFB1:
	.cfi_startproc
/*     71 */	sub	sp, sp, 192
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
/*    ??? */	stp	x27, x28, [sp, 96]	//  (*)
	.cfi_offset 27, -96
	.cfi_offset 28, -88
/*    ??? */	stp	d8, d9, [sp, 80]	//  (*)
	.cfi_offset 72, -112
	.cfi_offset 73, -104
/*    ??? */	stp	d10, d11, [sp, 64]	//  (*)
	.cfi_offset 74, -128
	.cfi_offset 75, -120
/*    ??? */	stp	d12, d13, [sp, 48]	//  (*)
	.cfi_offset 76, -144
	.cfi_offset 77, -136
/*    ??? */	stp	d14, d15, [sp, 32]	//  (*)
	.cfi_offset 78, -160
	.cfi_offset 79, -152
	.loc 13 26 0
..LDL4:
/*     26 */	add	w15, w4, w4
	.loc 13 29 0
..LDL5:
/*     29 */	add	w12, w4, w4, lsl #2
	.loc 13 27 0
..LDL6:
/*     27 */	add	w14, w15, w4
	.loc 13 31 0
..LDL7:
/*     31 */	lsl	w9, w4, 3
	.loc 13 33 0
..LDL8:
/*     33 */	add	w8, w4, w4, lsl #3
	.loc 13 35 0
..LDL9:
/*     35 */	lsl	w6, w14, 2
	.loc 13 28 0
..LDL10:
/*     28 */	lsl	w13, w4, 2
	.loc 13 30 0
..LDL11:
/*     30 */	add	w11, w14, w14
	.loc 13 31 0
..LDL12:
/*     31 */	sub	w10, w9, w4
	.loc 13 34 0
..LDL13:
/*     34 */	add	w7, w12, w12
	.loc 13 25 0
..LDL14:
/*     25 */	sxtw	x16, w4
	.loc 13 35 0
..LDL15:
/*     35 */	sub	w6, w6, w4
	.loc 13 26 0
..LDL16:
/*     26 */	sxtw	x15, w15
	.loc 13 27 0
..LDL17:
/*     27 */	sxtw	x14, w14
	.loc 13 28 0
..LDL18:
/*     28 */	sxtw	x13, w13
	.loc 13 29 0
..LDL19:
/*     29 */	sxtw	x12, w12
	.loc 13 30 0
..LDL20:
/*     30 */	sxtw	x11, w11
	.loc 13 31 0
..LDL21:
/*     31 */	sxtw	x10, w10
	.loc 13 32 0
..LDL22:
/*     32 */	sxtw	x9, w9
	.loc 13 33 0
..LDL23:
/*     33 */	sxtw	x8, w8
	.loc 13 34 0
..LDL24:
/*     34 */	sxtw	x7, w7
	.loc 13 35 0
..LDL25:
/*     35 */	sxtw	x6, w6
	.loc 13 25 0
..LDL26:
/*     25 */	add	x28, x3, x16, lsl #2
	.loc 13 26 0
..LDL27:
/*     26 */	add	x29, x3, x15, lsl #2
	.loc 13 27 0
..LDL28:
/*     27 */	add	x30, x3, x14, lsl #2
	.loc 13 28 0
..LDL29:
/*     28 */	add	x20, x3, x13, lsl #2
	.loc 13 29 0
..LDL30:
/*     29 */	add	x21, x3, x12, lsl #2
	.loc 13 30 0
..LDL31:
/*     30 */	add	x22, x3, x11, lsl #2
	.loc 13 31 0
..LDL32:
/*     31 */	add	x23, x3, x10, lsl #2
	.loc 13 32 0
..LDL33:
/*     32 */	add	x24, x3, x9, lsl #2
	.loc 13 33 0
..LDL34:
/*     33 */	add	x25, x3, x8, lsl #2
	.loc 13 34 0
..LDL35:
/*     34 */	add	x26, x3, x7, lsl #2
	.loc 13 35 0
..LDL36:
/*     35 */	add	x27, x3, x6, lsl #2
	.loc 13 37 0 is_stmt 0
..LDL37:
	ptrue  p0.s  
lsr    x6, x0, 0x1  
lsl    x7, x6, 0x1  
lsl    x19, x5, #1 
mov    x8,  x1   
add    x10, x1, x19, lsl #1
add    x12, x1, x19, lsl #2
add    x14, x10,   x19, lsl #2
add    x16, x1, x19, lsl #3
add    x18, x10,   x19, lsl #3
add    x9,  x8,    x19        
add    x11, x10,   x19        
add    x13, x12,   x19        
add    x15, x14,   x19        
add    x17, x16,   x19        
add    x19, x18,   x19        
cmp    x0, #0  
b.eq   3f      
ld1w	{ z8.s },  p0/z, [x3]      
ld1w	{ z9.s },  p0/z, [x3, #1, MUL VL]    
ld1w	{ z10.s }, p0/z, [x28]      
ld1w	{ z11.s }, p0/z, [x28, #1, MUL VL]    
ld1w	{ z12.s }, p0/z, [x29]      
ld1w	{ z13.s }, p0/z, [x29, #1, MUL VL]    
ld1w	{ z14.s }, p0/z, [x30]      
ld1w	{ z15.s }, p0/z, [x30, #1, MUL VL]    
ld1w	{ z16.s }, p0/z, [x20]      
ld1w	{ z17.s }, p0/z, [x20, #1, MUL VL]    
ld1w	{ z18.s }, p0/z, [x21]      
ld1w	{ z19.s }, p0/z, [x21, #1, MUL VL]    
ld1w	{ z20.s }, p0/z, [x22]      
ld1w	{ z21.s }, p0/z, [x22, #1, MUL VL]    
ld1w	{ z22.s }, p0/z, [x23]      
ld1w	{ z23.s }, p0/z, [x23, #1, MUL VL]    
ld1w	{ z24.s }, p0/z, [x24]      
ld1w	{ z25.s }, p0/z, [x24, #1, MUL VL]    
ld1w	{ z26.s }, p0/z, [x25]      
ld1w	{ z27.s }, p0/z, [x25, #1, MUL VL]    
ld1w	{ z28.s }, p0/z, [x26]     
ld1w	{ z29.s }, p0/z, [x26, #1, MUL VL]    
ld1w	{ z30.s }, p0/z, [x27]     
ld1w	{ z31.s }, p0/z, [x27, #1, MUL VL]    
ld1w	{ z4.s }, p0/z, [x2]                 
ld1w	{ z5.s }, p0/z, [x2, #1, MUL VL]     
ld1rw	{ z0.s }, p0/z, [x8]                 
ld1rw	{ z1.s }, p0/z, [x9]                 
cmp    w6, #0                                  
b.eq   1f                                      
0:                                                 
ld1w	{ z6.s }, p0/z, [x2, #2, MUL VL]    
ld1w	{ z7.s }, p0/z, [x2, #3, MUL VL]    
fmla	z8.s,  p0/m, z4.s, z0.s                 
fmla	z9.s,  p0/m, z5.s, z0.s                 
ld1rw	{ z2.s }, p0/z, [x10]                
ld1rw	{ z3.s }, p0/z, [x11]                
fmla	z10.s, p0/m, z4.s, z1.s                 
fmla	z11.s, p0/m, z5.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x12]                
ld1rw	{ z1.s }, p0/z, [x13]                
fmla	z12.s, p0/m, z4.s, z2.s                 
fmla	z13.s, p0/m, z5.s, z2.s                 
fmla	z14.s, p0/m, z4.s, z3.s                 
fmla	z15.s, p0/m, z5.s, z3.s                 
ld1rw	{ z2.s }, p0/z, [x14]                
ld1rw	{ z3.s }, p0/z, [x15]                
fmla	z16.s, p0/m, z4.s, z0.s                 
fmla	z17.s, p0/m, z5.s, z0.s                 
fmla	z18.s, p0/m, z4.s, z1.s                 
fmla	z19.s, p0/m, z5.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x16]                
ld1rw	{ z1.s }, p0/z, [x17]                
fmla	z20.s, p0/m, z4.s, z2.s                 
fmla	z21.s, p0/m, z5.s, z2.s                 
fmla	z22.s, p0/m, z4.s, z3.s                 
fmla	z23.s, p0/m, z5.s, z3.s                 
ld1rw	{ z2.s }, p0/z, [x18]               
ld1rw	{ z3.s }, p0/z, [x19]               
add	x2, x2, #256                      
fmla	z24.s, p0/m, z4.s, z0.s                 
fmla	z25.s, p0/m, z5.s, z0.s                 
fmla	z26.s, p0/m, z4.s, z1.s                 
fmla	z27.s, p0/m, z5.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x8, #4]            
ld1rw	{ z1.s }, p0/z, [x9, #4]            
add	x8, x8, #8                      
add	x9, x9, #8                      
fmla	z28.s, p0/m, z4.s, z2.s                 
fmla	z29.s, p0/m, z5.s, z2.s                 
fmla	z30.s, p0/m, z4.s, z3.s                 
fmla	z31.s, p0/m, z5.s, z3.s                 
ld1w	{ z4.s },  p0/z, [x2]                
ld1w	{ z5.s },  p0/z, [x2, #1, MUL VL]    
ld1rw	{ z2.s }, p0/z, [x10, #4]            
ld1rw	{ z3.s }, p0/z, [x11, #4]            
add	x10, x10, #8                      
add	x11, x11, #8                      
fmla	z8.s,  p0/m, z6.s, z0.s                 
fmla	z9.s,  p0/m, z7.s, z0.s                 
fmla	z10.s, p0/m, z6.s, z1.s                 
fmla	z11.s, p0/m, z7.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x12, #4]            
ld1rw	{ z1.s }, p0/z, [x13, #4]            
add	x12, x12, #8                      
add	x13, x13, #8                      
fmla	z12.s, p0/m, z6.s, z2.s                 
fmla	z13.s, p0/m, z7.s, z2.s                 
fmla	z14.s, p0/m, z6.s, z3.s                 
fmla	z15.s, p0/m, z7.s, z3.s                 
ld1rw	{ z2.s }, p0/z, [x14, #4]            
ld1rw	{ z3.s }, p0/z, [x15, #4]            
add	x14, x14, #8                      
add	x15, x15, #8                      
fmla	z16.s, p0/m, z6.s, z0.s                 
fmla	z17.s, p0/m, z7.s, z0.s                 
fmla	z18.s, p0/m, z6.s, z1.s                 
fmla	z19.s, p0/m, z7.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x16, #4]            
ld1rw	{ z1.s }, p0/z, [x17, #4]            
add	x16, x16, #8                      
add	x17, x17, #8                      
fmla	z20.s, p0/m, z6.s, z2.s                 
fmla	z21.s, p0/m, z7.s, z2.s                 
fmla	z22.s, p0/m, z6.s, z3.s                 
fmla	z23.s, p0/m, z7.s, z3.s                 
ld1rw	{ z2.s }, p0/z, [x18, #4]           
ld1rw	{ z3.s }, p0/z, [x19, #4]           
add	x18, x18, #8                    
add	x19, x19, #8                    
fmla	z24.s, p0/m, z6.s, z0.s                 
fmla	z25.s, p0/m, z7.s, z0.s                 
fmla	z26.s, p0/m, z6.s, z1.s                 
fmla	z27.s, p0/m, z7.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x8]                
ld1rw	{ z1.s }, p0/z, [x9]                
fmla	z28.s, p0/m, z6.s, z2.s                 
fmla	z29.s, p0/m, z7.s, z2.s                 
fmla	z30.s, p0/m, z6.s, z3.s                 
fmla	z31.s, p0/m, z7.s, z3.s                 
subs   x6, x6, #1                              
b.ne   0b                                      
1:                                                 
cmp    x7, x0                                  
b.eq   2f                                      
fmla	z8.s,  p0/m, z4.s, z0.s                 
fmla	z9.s,  p0/m, z5.s, z0.s                 
ld1rw	{ z2.s }, p0/z, [x10]                
ld1rw	{ z3.s }, p0/z, [x11]                
fmla	z10.s, p0/m, z4.s, z1.s                 
fmla	z11.s, p0/m, z5.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x12]                
ld1rw	{ z1.s }, p0/z, [x13]                
fmla	z12.s, p0/m, z4.s, z2.s                 
fmla	z13.s, p0/m, z5.s, z2.s                 
fmla	z14.s, p0/m, z4.s, z3.s                 
fmla	z15.s, p0/m, z5.s, z3.s                 
ld1rw	{ z2.s }, p0/z, [x14]                
ld1rw	{ z3.s }, p0/z, [x15]                
fmla	z16.s, p0/m, z4.s, z0.s                 
fmla	z17.s, p0/m, z5.s, z0.s                 
fmla	z18.s, p0/m, z4.s, z1.s                 
fmla	z19.s, p0/m, z5.s, z1.s                 
ld1rw	{ z0.s }, p0/z, [x16]                
ld1rw	{ z1.s }, p0/z, [x17]                
fmla	z20.s, p0/m, z4.s, z2.s                 
fmla	z21.s, p0/m, z5.s, z2.s                 
fmla	z22.s, p0/m, z4.s, z3.s                 
fmla	z23.s, p0/m, z5.s, z3.s                 
ld1rw	{ z2.s }, p0/z, [x18]               
ld1rw	{ z3.s }, p0/z, [x19]               
fmla	z24.s, p0/m, z4.s, z0.s                 
fmla	z25.s, p0/m, z5.s, z0.s                 
fmla	z26.s, p0/m, z4.s, z1.s                 
fmla	z27.s, p0/m, z5.s, z1.s                 
fmla	z28.s, p0/m, z4.s, z2.s                 
fmla	z29.s, p0/m, z5.s, z2.s                 
fmla	z30.s, p0/m, z4.s, z3.s                 
fmla	z31.s, p0/m, z5.s, z3.s                 
2:                                                 
st1w	{ z8.s },  p0, [x3]      
st1w	{ z9.s },  p0, [x3, #1, MUL VL]    
st1w	{ z10.s }, p0, [x28]      
st1w	{ z11.s }, p0, [x28, #1, MUL VL]    
st1w	{ z12.s }, p0, [x29]      
st1w	{ z13.s }, p0, [x29, #1, MUL VL]    
st1w	{ z14.s }, p0, [x30]      
st1w	{ z15.s }, p0, [x30, #1, MUL VL]    
st1w	{ z16.s }, p0, [x20]      
st1w	{ z17.s }, p0, [x20, #1, MUL VL]    
st1w	{ z18.s }, p0, [x21]      
st1w	{ z19.s }, p0, [x21, #1, MUL VL]    
st1w	{ z20.s }, p0, [x22]      
st1w	{ z21.s }, p0, [x22, #1, MUL VL]    
st1w	{ z22.s }, p0, [x23]      
st1w	{ z23.s }, p0, [x23, #1, MUL VL]    
st1w	{ z24.s }, p0, [x24]      
st1w	{ z25.s }, p0, [x24, #1, MUL VL]    
st1w	{ z26.s }, p0, [x25]      
st1w	{ z27.s }, p0, [x25, #1, MUL VL]    
st1w	{ z28.s }, p0, [x26]     
st1w	{ z29.s }, p0, [x26, #1, MUL VL]    
st1w	{ z30.s }, p0, [x27]     
st1w	{ z31.s }, p0, [x27, #1, MUL VL]    
3:                                                 

	.loc 13 350 0 is_stmt 1
..LDL38:
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
/*    ??? */	ldp	x27, x28, [sp, 96]	//  (*)
	.cfi_restore 27
	.cfi_restore 28
/*    ??? */	ldp	d8, d9, [sp, 80]	//  (*)
	.cfi_restore 72
	.cfi_restore 73
/*    ??? */	ldp	d10, d11, [sp, 64]	//  (*)
	.cfi_restore 74
	.cfi_restore 75
/*    ??? */	ldp	d12, d13, [sp, 48]	//  (*)
	.cfi_restore 76
	.cfi_restore 77
/*    ??? */	ldp	d14, d15, [sp, 32]	//  (*)
	.cfi_restore 78
	.cfi_restore 79
/*    ??? */	ldp	x29, x30, [sp, 176]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    350 */	add	sp, sp, 192
	.cfi_def_cfa_offset 0
/*    350 */	ret	
..D2.pchi:
	.cfi_endproc
.LFE1:
	.size	_Z21kernel_12x32_no_packaiPfS_S_iiii, .-_Z21kernel_12x32_no_packaiPfS_S_iiii
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL39:
.LFB2:
	.cfi_startproc
/*    ??? */	stp	x29, x30, [sp, -16]!	//  (*)
/*    350 */	add	x29, sp, 0
	.cfi_def_cfa 29, 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    350 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_offset 19, -24
/*    350 */	add	x19, sp, 0
/*    350 */	and	sp, x19, -64
	.loc 13 379 0
..LDL40:
/*    379 */	ld1w	{z1.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL41:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11142
/*    451 */	mov	x5, 0
	.loc 13 544 0 is_stmt 0
..LDL42:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 451 0
..LDL43:
/*    451 */	subs	w0, w0, 2
/*    451 */	bmi	.L11145
	.loc 13 459 0
..LDL44:
/*    459 */	orr	x6, x1, 6917529027641081856
/*    459 */	add	x9, x6, 4
/*    459 */	mov	x6, 2564
/*    459 */	mov	x7, 516
	.loc 13 451 0
..LDL45:
/*    451 */	cmp	w0, 4
/*    451 */	blt	.L11744
	.loc 13 545 0
..LDL46:
/*    545 */	mov	x8, x9
	.loc 13 454 0
..LDL47:
/*    454 */	orr	x9, x2, 6917529027641081856
	.loc 13 459 0
..LDL48:
/*    459 */	ldr	s4, [x8, -4]	//  (*)
	.loc 13 454 0
..LDL49:
/*    454 */	ld1w	{z3.s}, p0/z, [x9, 0, mul vl]	//  (*)
/*    454 */	prfm	2, [x9, 2560]	//  (*)
/*    454 */	prfm	0, [x9, 512]	//  (*)
	.p2align 5
.L11140:					// :entr:term:body:swpl
	.loc 13 459 0
..LDL50:
/*    459 */	dup	z4.s, z4.s[0]
	.loc 13 544 0
..LDL51:
/*    544 */	add	x2, x2, x4
	.loc 13 459 0
..LDL52:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 454 0
..LDL53:
/*    454 */	orr	x9, x2, 6917529027641081856
/*    454 */	prfm	2, [x9, 2560]	//  (*)
/*    454 */	prfm	0, [x9, 512]	//  (*)
/*    454 */	ld1w	{z0.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL54:
/*    459 */	ld1rw	{z2.s}, p1/z, [x8]	//  (*)
	.loc 13 461 0
..LDL55:
/*    461 */	fmla	z1.s, p0/m, z4.s, z3.s
	.loc 13 545 0
..LDL56:
/*    545 */	add	x9, x8, 8
	.loc 13 544 0
..LDL57:
/*    544 */	add	x10, x2, x4
	.loc 13 459 0
..LDL58:
/*    459 */	ldr	s4, [x8, 4]	//  (*)
	.loc 13 454 0
..LDL59:
/*    454 */	orr	x2, x10, 6917529027641081856
/*    454 */	prfm	2, [x2, 2560]	//  (*)
/*    454 */	prfm	0, [x2, 512]	//  (*)
/*    454 */	ld1w	{z3.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 461 0
..LDL60:
/*    461 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 459 0
..LDL61:
/*    459 */	dup	z4.s, z4.s[0]
	.loc 13 544 0
..LDL62:
/*    544 */	add	x2, x10, x4
	.loc 13 454 0
..LDL63:
/*    454 */	orr	x10, x2, 6917529027641081856
/*    454 */	prfm	2, [x10, 2560]	//  (*)
/*    454 */	prfm	0, [x10, 512]	//  (*)
/*    454 */	ld1w	{z0.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL64:
/*    459 */	ld1rw	{z2.s}, p1/z, [x9]	//  (*)
	.loc 13 461 0
..LDL65:
/*    461 */	fmla	z1.s, p0/m, z4.s, z3.s
	.loc 13 545 0
..LDL66:
/*    545 */	add	x8, x8, 16
	.loc 13 544 0
..LDL67:
/*    544 */	add	x2, x2, x4
	.loc 13 459 0
..LDL68:
/*    459 */	ldr	s4, [x8, -4]	//  (*)
	.loc 13 454 0
..LDL69:
/*    454 */	orr	x10, x2, 6917529027641081856
/*    454 */	prfm	2, [x10, 2560]	//  (*)
/*    454 */	prfm	0, [x10, 512]	//  (*)
/*    454 */	ld1w	{z3.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL70:
/*    459 */	prfm	2, [x9, x6]	//  (*)
	.loc 13 543 0
..LDL71:
/*    543 */	add	x5, x5, 16
	.loc 13 459 0
..LDL72:
/*    459 */	prfm	0, [x9, x7]	//  (*)
	.loc 13 461 0
..LDL73:
/*    461 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 545 0
..LDL74:
/*    545 */	sub	w0, w0, 4
	.loc 13 453 0
..LDL75:
/*    453 */	cmp	w0, 4
/*    453 */	bge	.L11140
	.loc 13 459 0
..LDL76:
/*    459 */	dup	z4.s, z4.s[0]
	.loc 13 544 0
..LDL77:
/*    544 */	add	x2, x4, x2
	.loc 13 459 0
..LDL78:
/*    459 */	ptrue	p1.s, ALL
/*    459 */	prfm	2, [x8, x6]	//  (*)
	.loc 13 454 0
..LDL79:
/*    454 */	orr	x9, x2, 6917529027641081856
	.loc 13 459 0
..LDL80:
/*    459 */	prfm	0, [x8, x7]	//  (*)
	.loc 13 545 0
..LDL81:
/*    545 */	sub	w0, w0, 2
	.loc 13 454 0
..LDL82:
/*    454 */	prfm	2, [x9, 2560]	//  (*)
/*    454 */	ld1w	{z0.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 544 0
..LDL83:
/*    544 */	add	x2, x2, x4
	.loc 13 543 0
..LDL84:
/*    543 */	add	x5, x5, 8
	.loc 13 454 0
..LDL85:
/*    454 */	prfm	0, [x9, 512]	//  (*)
	.loc 13 459 0
..LDL86:
/*    459 */	ld1rw	{z2.s}, p1/z, [x8]	//  (*)
	.loc 13 545 0
..LDL87:
/*    545 */	add	x9, x8, 8
/*    545 */	cmp	w0, 0
	.loc 13 461 0
..LDL88:
/*    461 */	fmla	z1.s, p0/m, z4.s, z3.s
/*    461 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 545 0
..LDL89:
/*    545 */	blt	.L11741
.L11744:
	.p2align 5
.L11747:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL90:
/*    454 */	orr	x8, x2, 6917529027641081856
	.loc 13 459 0
..LDL91:
/*    459 */	ldr	s2, [x9, -4]	//  (*)
	.loc 13 544 0
..LDL92:
/*    544 */	add	x2, x4, x2
	.loc 13 459 0
..LDL93:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 454 0
..LDL94:
/*    454 */	ld1w	{z0.s}, p0/z, [x8, 0, mul vl]	//  (*)
/*    454 */	orr	x10, x2, 6917529027641081856
	.loc 13 459 0
..LDL95:
/*    459 */	prfm	2, [x9, x6]	//  (*)
	.loc 13 544 0
..LDL96:
/*    544 */	add	x2, x2, x4
	.loc 13 454 0
..LDL97:
/*    454 */	ld1w	{z4.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL98:
/*    459 */	prfm	0, [x9, x7]	//  (*)
	.loc 13 545 0
..LDL99:
	.loc 13 543 0 is_stmt 0
..LDL100:
/*    543 */	add	x5, x5, 8
	.loc 13 545 0
..LDL101:
/*    545 */	subs	w0, w0, 2
	.loc 13 454 0 is_stmt 1
..LDL102:
/*    454 */	prfm	2, [x8, 2560]	//  (*)
	.loc 13 459 0
..LDL103:
/*    459 */	ld1rw	{z3.s}, p1/z, [x9]	//  (*)
	.loc 13 545 0
..LDL104:
/*    545 */	add	x9, x9, 8
	.loc 13 454 0
..LDL105:
/*    454 */	prfm	0, [x8, 512]	//  (*)
/*    454 */	prfm	2, [x10, 2560]	//  (*)
/*    454 */	prfm	0, [x10, 512]	//  (*)
	.loc 13 459 0
..LDL106:
/*    459 */	dup	z2.s, z2.s[0]
	.loc 13 461 0
..LDL107:
/*    461 */	fmla	z1.s, p0/m, z2.s, z0.s
/*    461 */	fmla	z1.s, p0/m, z3.s, z4.s
	.loc 13 545 0 is_stmt 0
..LDL108:
/*    545 */	bpl	.L11747
.L11741:
.L11145:
	.loc 13 451 0 is_stmt 1
..LDL109:
/*    451 */	adds	w0, w0, 1
/*    451 */	bmi	.L11142
	.loc 13 459 0 is_stmt 0
..LDL110:
/*    459 */	orr	x1, x1, 6917529027641081856
/*    459 */	add	x1, x1, x5
	.p2align 5
.L11151:					// :entr:term:mod
	.loc 13 454 0 is_stmt 1
..LDL111:
/*    454 */	orr	x5, x2, 6917529027641081856
	.loc 13 459 0
..LDL112:
/*    459 */	prfm	2, [x1, 2560]	//  (*)
/*    459 */	ptrue	p1.s, ALL
	.loc 13 544 0
..LDL113:
/*    544 */	add	x2, x2, x4
	.loc 13 454 0
..LDL114:
/*    454 */	ld1w	{z2.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL115:
/*    459 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 545 0
..LDL116:
/*    545 */	subs	w0, w0, 1
	.loc 13 454 0
..LDL117:
/*    454 */	prfm	2, [x5, 2560]	//  (*)
/*    454 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 459 0
..LDL118:
/*    459 */	ld1rw	{z0.s}, p1/z, [x1]	//  (*)
	.loc 13 543 0
..LDL119:
/*    543 */	add	x1, x1, 4
	.loc 13 461 0
..LDL120:
/*    461 */	fmla	z1.s, p0/m, z0.s, z2.s
	.loc 13 545 0 is_stmt 0
..LDL121:
/*    545 */	bpl	.L11151
.L11142:
	.loc 13 550 0 is_stmt 1
..LDL122:
/*    550 */	st1w	{z1.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL123:
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp], 16	//  (*)
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D3.pchi:
	.cfi_endproc
.LFE2:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL124:
.LFB3:
	.cfi_startproc
/*    ??? */	stp	x29, x30, [sp, -16]!	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_def_cfa 29, 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    620 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_offset 19, -24
/*    620 */	add	x19, sp, 0
/*    620 */	and	sp, x19, -64
	.loc 13 379 0
..LDL125:
/*    379 */	ld1w	{z4.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 381 0
..LDL126:
/*    381 */	add	x7, x3, 64
/*    381 */	ld1w	{z1.s}, p1/z, [x7, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL127:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11158
/*    451 */	mov	x5, 0
	.loc 13 544 0 is_stmt 0
..LDL128:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 451 0
..LDL129:
/*    451 */	subs	w0, w0, 2
/*    451 */	bmi	.L11161
	.loc 13 459 0
..LDL130:
/*    459 */	orr	x6, x1, 6917529027641081856
/*    459 */	add	x9, x6, 4
/*    459 */	mov	x8, 2564
/*    459 */	mov	x6, 516
	.loc 13 451 0
..LDL131:
/*    451 */	cmp	w0, 4
/*    451 */	blt	.L11755
	.loc 13 545 0
..LDL132:
/*    545 */	mov	x10, x9
	.loc 13 454 0
..LDL133:
/*    454 */	orr	x9, x2, 6917529027641081856
	.loc 13 456 0
..LDL134:
/*    456 */	ld1w	{z5.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 459 0
..LDL135:
/*    459 */	ldr	s6, [x10, -4]	//  (*)
	.loc 13 454 0
..LDL136:
/*    454 */	ld1w	{z7.s}, p0/z, [x9, 0, mul vl]	//  (*)
/*    454 */	prfm	2, [x9, 2560]	//  (*)
/*    454 */	prfm	0, [x9, 512]	//  (*)
	.p2align 5
.L11156:					// :entr:term:body:swpl
	.loc 13 459 0
..LDL137:
/*    459 */	dup	z6.s, z6.s[0]
	.loc 13 544 0
..LDL138:
/*    544 */	add	x2, x2, x4
	.loc 13 454 0
..LDL139:
/*    454 */	orr	x9, x2, 6917529027641081856
	.loc 13 459 0
..LDL140:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 454 0
..LDL141:
/*    454 */	prfm	2, [x9, 2560]	//  (*)
/*    454 */	prfm	0, [x9, 512]	//  (*)
/*    454 */	ld1w	{z3.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 456 0
..LDL142:
/*    456 */	ld1w	{z0.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 459 0
..LDL143:
/*    459 */	ld1rw	{z2.s}, p2/z, [x10]	//  (*)
	.loc 13 461 0
..LDL144:
/*    461 */	fmla	z4.s, p0/m, z6.s, z7.s
	.loc 13 463 0
..LDL145:
/*    463 */	fmla	z1.s, p1/m, z6.s, z5.s
	.loc 13 545 0
..LDL146:
/*    545 */	add	x9, x10, 8
	.loc 13 544 0
..LDL147:
/*    544 */	add	x2, x2, x4
	.loc 13 459 0
..LDL148:
/*    459 */	ldr	s6, [x10, 4]	//  (*)
	.loc 13 454 0
..LDL149:
/*    454 */	orr	x11, x2, 6917529027641081856
/*    454 */	prfm	2, [x11, 2560]	//  (*)
/*    454 */	prfm	0, [x11, 512]	//  (*)
/*    454 */	ld1w	{z7.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 456 0
..LDL150:
/*    456 */	ld1w	{z5.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 461 0
..LDL151:
/*    461 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 463 0
..LDL152:
/*    463 */	fmla	z1.s, p1/m, z2.s, z0.s
	.loc 13 459 0
..LDL153:
/*    459 */	dup	z6.s, z6.s[0]
	.loc 13 544 0
..LDL154:
/*    544 */	add	x2, x2, x4
	.loc 13 454 0
..LDL155:
/*    454 */	orr	x11, x2, 6917529027641081856
/*    454 */	prfm	2, [x11, 2560]	//  (*)
/*    454 */	prfm	0, [x11, 512]	//  (*)
/*    454 */	ld1w	{z3.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 456 0
..LDL156:
/*    456 */	ld1w	{z0.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 459 0
..LDL157:
/*    459 */	ld1rw	{z2.s}, p2/z, [x9]	//  (*)
	.loc 13 461 0
..LDL158:
/*    461 */	fmla	z4.s, p0/m, z6.s, z7.s
	.loc 13 463 0
..LDL159:
/*    463 */	fmla	z1.s, p1/m, z6.s, z5.s
	.loc 13 545 0
..LDL160:
/*    545 */	add	x10, x10, 16
	.loc 13 544 0
..LDL161:
/*    544 */	add	x2, x2, x4
	.loc 13 459 0
..LDL162:
/*    459 */	ldr	s6, [x10, -4]	//  (*)
	.loc 13 454 0
..LDL163:
/*    454 */	orr	x11, x2, 6917529027641081856
/*    454 */	prfm	2, [x11, 2560]	//  (*)
/*    454 */	prfm	0, [x11, 512]	//  (*)
/*    454 */	ld1w	{z7.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 456 0
..LDL164:
/*    456 */	ld1w	{z5.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 459 0
..LDL165:
/*    459 */	prfm	2, [x9, x8]	//  (*)
/*    459 */	prfm	0, [x9, x6]	//  (*)
	.loc 13 543 0
..LDL166:
/*    543 */	add	x5, x5, 16
	.loc 13 461 0
..LDL167:
/*    461 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 463 0
..LDL168:
/*    463 */	fmla	z1.s, p1/m, z2.s, z0.s
	.loc 13 545 0
..LDL169:
/*    545 */	sub	w0, w0, 4
	.loc 13 453 0
..LDL170:
/*    453 */	cmp	w0, 4
/*    453 */	bge	.L11156
	.loc 13 459 0
..LDL171:
/*    459 */	dup	z6.s, z6.s[0]
	.loc 13 544 0
..LDL172:
/*    544 */	add	x2, x4, x2
	.loc 13 459 0
..LDL173:
/*    459 */	ptrue	p2.s, ALL
/*    459 */	prfm	2, [x10, x8]	//  (*)
	.loc 13 454 0
..LDL174:
/*    454 */	orr	x9, x2, 6917529027641081856
	.loc 13 456 0
..LDL175:
/*    456 */	ld1w	{z0.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 545 0
..LDL176:
/*    545 */	sub	w0, w0, 2
	.loc 13 454 0
..LDL177:
/*    454 */	prfm	2, [x9, 2560]	//  (*)
/*    454 */	ld1w	{z3.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 544 0
..LDL178:
/*    544 */	add	x2, x2, x4
	.loc 13 543 0
..LDL179:
/*    543 */	add	x5, x5, 8
	.loc 13 454 0
..LDL180:
/*    454 */	prfm	0, [x9, 512]	//  (*)
	.loc 13 459 0
..LDL181:
/*    459 */	ld1rw	{z2.s}, p2/z, [x10]	//  (*)
	.loc 13 545 0
..LDL182:
/*    545 */	add	x9, x10, 8
/*    545 */	cmp	w0, 0
	.loc 13 459 0
..LDL183:
/*    459 */	prfm	0, [x10, x6]	//  (*)
	.loc 13 461 0
..LDL184:
/*    461 */	fmla	z4.s, p0/m, z6.s, z7.s
	.loc 13 463 0
..LDL185:
/*    463 */	fmla	z1.s, p1/m, z6.s, z5.s
	.loc 13 461 0
..LDL186:
/*    461 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 463 0
..LDL187:
/*    463 */	fmla	z1.s, p1/m, z2.s, z0.s
	.loc 13 545 0
..LDL188:
/*    545 */	blt	.L11752
.L11755:
	.p2align 5
.L11758:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL189:
/*    454 */	orr	x11, x2, 6917529027641081856
	.loc 13 456 0
..LDL190:
/*    456 */	add	x10, x2, 64
	.loc 13 459 0
..LDL191:
/*    459 */	ldr	s2, [x9, -4]	//  (*)
/*    459 */	ptrue	p2.s, ALL
	.loc 13 454 0
..LDL192:
/*    454 */	ld1w	{z3.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 456 0
..LDL193:
/*    456 */	ld1w	{z0.s}, p1/z, [x10, 0, mul vl]	//  (*)
	.loc 13 544 0
..LDL194:
/*    544 */	add	x12, x4, x2
	.loc 13 545 0
..LDL195:
	.loc 13 543 0 is_stmt 0
..LDL196:
/*    543 */	add	x5, x5, 8
	.loc 13 454 0 is_stmt 1
..LDL197:
/*    454 */	orr	x10, x12, 6917529027641081856
	.loc 13 456 0
..LDL198:
/*    456 */	add	x2, x12, 64
	.loc 13 459 0
..LDL199:
/*    459 */	prfm	2, [x9, x8]	//  (*)
	.loc 13 454 0
..LDL200:
/*    454 */	ld1w	{z7.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 456 0
..LDL201:
/*    456 */	ld1w	{z6.s}, p1/z, [x2, 0, mul vl]	//  (*)
	.loc 13 544 0
..LDL202:
/*    544 */	add	x2, x12, x4
	.loc 13 545 0
..LDL203:
/*    545 */	subs	w0, w0, 2
	.loc 13 459 0
..LDL204:
/*    459 */	prfm	0, [x9, x6]	//  (*)
/*    459 */	ld1rw	{z5.s}, p2/z, [x9]	//  (*)
	.loc 13 545 0
..LDL205:
/*    545 */	add	x9, x9, 8
	.loc 13 454 0
..LDL206:
/*    454 */	prfm	2, [x11, 2560]	//  (*)
/*    454 */	prfm	0, [x11, 512]	//  (*)
/*    454 */	prfm	2, [x10, 2560]	//  (*)
/*    454 */	prfm	0, [x10, 512]	//  (*)
	.loc 13 459 0
..LDL207:
/*    459 */	dup	z2.s, z2.s[0]
	.loc 13 461 0
..LDL208:
/*    461 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 463 0
..LDL209:
/*    463 */	fmla	z1.s, p1/m, z2.s, z0.s
	.loc 13 461 0
..LDL210:
/*    461 */	fmla	z4.s, p0/m, z5.s, z7.s
	.loc 13 463 0
..LDL211:
/*    463 */	fmla	z1.s, p1/m, z5.s, z6.s
	.loc 13 545 0 is_stmt 0
..LDL212:
/*    545 */	bpl	.L11758
.L11752:
.L11161:
	.loc 13 451 0 is_stmt 1
..LDL213:
/*    451 */	adds	w0, w0, 1
/*    451 */	bmi	.L11158
	.loc 13 459 0 is_stmt 0
..LDL214:
/*    459 */	orr	x1, x1, 6917529027641081856
/*    459 */	add	x1, x1, x5
	.p2align 5
.L11167:					// :entr:term:mod
	.loc 13 454 0 is_stmt 1
..LDL215:
/*    454 */	orr	x6, x2, 6917529027641081856
	.loc 13 456 0
..LDL216:
/*    456 */	add	x5, x2, 64
	.loc 13 459 0
..LDL217:
/*    459 */	prfm	2, [x1, 2560]	//  (*)
/*    459 */	ptrue	p2.s, ALL
	.loc 13 454 0
..LDL218:
/*    454 */	ld1w	{z3.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 456 0
..LDL219:
/*    456 */	ld1w	{z2.s}, p1/z, [x5, 0, mul vl]	//  (*)
	.loc 13 544 0
..LDL220:
/*    544 */	add	x2, x2, x4
	.loc 13 545 0
..LDL221:
/*    545 */	subs	w0, w0, 1
	.loc 13 454 0
..LDL222:
/*    454 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 459 0
..LDL223:
/*    459 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 454 0
..LDL224:
/*    454 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 459 0
..LDL225:
/*    459 */	ld1rw	{z0.s}, p2/z, [x1]	//  (*)
	.loc 13 543 0
..LDL226:
/*    543 */	add	x1, x1, 4
	.loc 13 461 0
..LDL227:
/*    461 */	fmla	z4.s, p0/m, z0.s, z3.s
	.loc 13 463 0
..LDL228:
/*    463 */	fmla	z1.s, p1/m, z0.s, z2.s
	.loc 13 545 0 is_stmt 0
..LDL229:
/*    545 */	bpl	.L11167
.L11158:
	.loc 13 550 0 is_stmt 1
..LDL230:
/*    550 */	st1w	{z4.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 552 0
..LDL231:
/*    552 */	st1w	{z1.s}, p1, [x7, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL232:
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp], 16	//  (*)
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D4.pchi:
	.cfi_endproc
.LFE3:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL233:
.LFB4:
	.cfi_startproc
/*    ??? */	stp	x29, x30, [sp, -16]!	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_def_cfa 29, 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    620 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_offset 19, -24
/*    620 */	add	x19, sp, 0
/*    620 */	and	sp, x19, -64
	.loc 13 379 0
..LDL234:
/*    379 */	ld1w	{z4.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 385 0
..LDL235:
/*    385 */	sxtw	x4, w4
/*    385 */	add	x8, x3, x4, lsl #2
/*    385 */	ld1w	{z1.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL236:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11174
	.loc 13 544 0 is_stmt 0
..LDL237:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 451 0
..LDL238:
/*    451 */	sub	w7, w0, 2
	.loc 13 466 0
..LDL239:
/*    466 */	sxtw	x11, w5
	.loc 13 451 0
..LDL240:
/*    451 */	mov	x6, 0
/*    451 */	cmp	w7, 0
/*    451 */	mov	x5, x1
/*    451 */	blt	.L11177
/*    451 */	mov	x0, 0
	.loc 13 459 0
..LDL241:
/*    459 */	orr	x9, x1, 6917529027641081856
/*    459 */	add	x14, x9, 4
/*    459 */	mov	x10, 2564
/*    459 */	mov	x12, 516
	.loc 13 466 0
..LDL242:
/*    466 */	add	x9, x11, 1
	.loc 13 451 0
..LDL243:
/*    451 */	cmp	w7, 4
/*    451 */	blt	.L11766
	.loc 13 545 0
..LDL244:
/*    545 */	mov	x13, x14
	.loc 13 466 0
..LDL245:
/*    466 */	ldr	s7, [x5, x11, lsl #2]	//  (*)
	.loc 13 454 0
..LDL246:
/*    454 */	orr	x14, x2, 6917529027641081856
	.loc 13 459 0
..LDL247:
/*    459 */	ldr	s6, [x13, -4]	//  (*)
	.loc 13 454 0
..LDL248:
/*    454 */	ld1w	{z2.s}, p0/z, [x14, 0, mul vl]	//  (*)
/*    454 */	prfm	2, [x14, 2560]	//  (*)
/*    454 */	prfm	0, [x14, 512]	//  (*)
	.p2align 5
.L11172:					// :entr:term:body:swpl
	.loc 13 459 0
..LDL249:
/*    459 */	dup	z6.s, z6.s[0]
	.loc 13 466 0
..LDL250:
/*    466 */	dup	z3.s, z7.s[0]
	.loc 13 544 0
..LDL251:
/*    544 */	add	x15, x2, x4
	.loc 13 459 0
..LDL252:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 466 0
..LDL253:
/*    466 */	ldr	s7, [x5, x9, lsl #2]	//  (*)
	.loc 13 454 0
..LDL254:
/*    454 */	orr	x2, x15, 6917529027641081856
/*    454 */	prfm	2, [x2, 2560]	//  (*)
/*    454 */	prfm	0, [x2, 512]	//  (*)
/*    454 */	ld1w	{z0.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL255:
/*    459 */	ld1rw	{z5.s}, p1/z, [x13]	//  (*)
	.loc 13 461 0
..LDL256:
/*    461 */	fmla	z4.s, p0/m, z6.s, z2.s
	.loc 13 468 0
..LDL257:
/*    468 */	fmla	z1.s, p0/m, z3.s, z2.s
	.loc 13 545 0
..LDL258:
/*    545 */	add	x14, x13, 8
	.loc 13 459 0
..LDL259:
/*    459 */	ldr	s6, [x13, 4]	//  (*)
	.loc 13 545 0
..LDL260:
/*    545 */	add	x2, x5, 8
	.loc 13 466 0
..LDL261:
/*    466 */	dup	z3.s, z7.s[0]
	.loc 13 544 0
..LDL262:
/*    544 */	add	x15, x15, x4
	.loc 13 466 0
..LDL263:
/*    466 */	ldr	s7, [x2, x11, lsl #2]	//  (*)
	.loc 13 454 0
..LDL264:
/*    454 */	orr	x16, x15, 6917529027641081856
/*    454 */	prfm	2, [x16, 2560]	//  (*)
/*    454 */	prfm	0, [x16, 512]	//  (*)
/*    454 */	ld1w	{z2.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 461 0
..LDL265:
/*    461 */	fmla	z4.s, p0/m, z5.s, z0.s
	.loc 13 468 0
..LDL266:
/*    468 */	fmla	z1.s, p0/m, z3.s, z0.s
	.loc 13 459 0
..LDL267:
/*    459 */	dup	z6.s, z6.s[0]
	.loc 13 466 0
..LDL268:
/*    466 */	dup	z3.s, z7.s[0]
	.loc 13 544 0
..LDL269:
/*    544 */	add	x15, x15, x4
	.loc 13 466 0
..LDL270:
/*    466 */	ldr	s7, [x2, x9, lsl #2]	//  (*)
	.loc 13 454 0
..LDL271:
/*    454 */	orr	x2, x15, 6917529027641081856
/*    454 */	prfm	2, [x2, 2560]	//  (*)
/*    454 */	prfm	0, [x2, 512]	//  (*)
/*    454 */	ld1w	{z0.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL272:
/*    459 */	ld1rw	{z5.s}, p1/z, [x14]	//  (*)
	.loc 13 461 0
..LDL273:
/*    461 */	fmla	z4.s, p0/m, z6.s, z2.s
	.loc 13 468 0
..LDL274:
/*    468 */	fmla	z1.s, p0/m, z3.s, z2.s
	.loc 13 545 0
..LDL275:
/*    545 */	add	x13, x13, 16
	.loc 13 459 0
..LDL276:
/*    459 */	ldr	s6, [x13, -4]	//  (*)
	.loc 13 545 0
..LDL277:
/*    545 */	add	x5, x5, 16
	.loc 13 466 0
..LDL278:
/*    466 */	dup	z3.s, z7.s[0]
	.loc 13 544 0
..LDL279:
/*    544 */	add	x2, x15, x4
	.loc 13 466 0
..LDL280:
/*    466 */	ldr	s7, [x5, x11, lsl #2]	//  (*)
	.loc 13 454 0
..LDL281:
/*    454 */	orr	x15, x2, 6917529027641081856
/*    454 */	prfm	2, [x15, 2560]	//  (*)
/*    454 */	prfm	0, [x15, 512]	//  (*)
/*    454 */	ld1w	{z2.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 545 0
..LDL282:
/*    545 */	add	x0, x0, 16
	.loc 13 459 0
..LDL283:
/*    459 */	prfm	2, [x14, x10]	//  (*)
/*    459 */	prfm	0, [x14, x12]	//  (*)
	.loc 13 543 0
..LDL284:
/*    543 */	add	x6, x6, 16
	.loc 13 461 0
..LDL285:
/*    461 */	fmla	z4.s, p0/m, z5.s, z0.s
	.loc 13 468 0
..LDL286:
/*    468 */	fmla	z1.s, p0/m, z3.s, z0.s
	.loc 13 545 0
..LDL287:
/*    545 */	sub	w7, w7, 4
	.loc 13 453 0
..LDL288:
/*    453 */	cmp	w7, 4
/*    453 */	bge	.L11172
	.loc 13 459 0
..LDL289:
/*    459 */	dup	z6.s, z6.s[0]
	.loc 13 544 0
..LDL290:
/*    544 */	add	x2, x4, x2
	.loc 13 459 0
..LDL291:
/*    459 */	ptrue	p1.s, ALL
/*    459 */	prfm	2, [x13, x10]	//  (*)
	.loc 13 466 0
..LDL292:
/*    466 */	dup	z5.s, z7.s[0]
/*    466 */	ldr	s7, [x5, x9, lsl #2]	//  (*)
	.loc 13 454 0
..LDL293:
/*    454 */	orr	x14, x2, 6917529027641081856
	.loc 13 545 0
..LDL294:
/*    545 */	sub	w7, w7, 2
	.loc 13 454 0
..LDL295:
/*    454 */	prfm	2, [x14, 2560]	//  (*)
/*    454 */	ld1w	{z0.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 545 0
..LDL296:
/*    545 */	add	x5, x5, 8
	.loc 13 544 0
..LDL297:
/*    544 */	add	x2, x2, x4
	.loc 13 454 0
..LDL298:
/*    454 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 459 0
..LDL299:
/*    459 */	ld1rw	{z3.s}, p1/z, [x13]	//  (*)
	.loc 13 545 0
..LDL300:
/*    545 */	add	x14, x13, 8
/*    545 */	add	x0, x0, 8
	.loc 13 459 0
..LDL301:
/*    459 */	prfm	0, [x13, x12]	//  (*)
	.loc 13 543 0
..LDL302:
/*    543 */	add	x6, x6, 8
	.loc 13 545 0
..LDL303:
/*    545 */	cmp	w7, 0
	.loc 13 461 0
..LDL304:
/*    461 */	fmla	z4.s, p0/m, z6.s, z2.s
	.loc 13 468 0
..LDL305:
/*    468 */	fmla	z1.s, p0/m, z5.s, z2.s
	.loc 13 466 0
..LDL306:
/*    466 */	dup	z2.s, z7.s[0]
	.loc 13 461 0
..LDL307:
/*    461 */	fmla	z4.s, p0/m, z3.s, z0.s
	.loc 13 468 0
..LDL308:
/*    468 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 545 0
..LDL309:
/*    545 */	blt	.L11763
.L11766:
	.p2align 5
.L11769:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL310:
/*    454 */	orr	x13, x2, 6917529027641081856
	.loc 13 459 0
..LDL311:
/*    459 */	ldr	s3, [x14, -4]	//  (*)
	.loc 13 466 0
..LDL312:
/*    466 */	ldr	s2, [x5, x11, lsl #2]	//  (*)
	.loc 13 459 0
..LDL313:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 454 0
..LDL314:
/*    454 */	ld1w	{z0.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 544 0
..LDL315:
/*    544 */	add	x2, x4, x2
	.loc 13 466 0
..LDL316:
/*    466 */	ldr	s7, [x5, x9, lsl #2]	//  (*)
	.loc 13 545 0
..LDL317:
/*    545 */	add	x0, x0, 8
	.loc 13 454 0
..LDL318:
/*    454 */	orr	x15, x2, 6917529027641081856
	.loc 13 459 0
..LDL319:
/*    459 */	prfm	2, [x14, x10]	//  (*)
	.loc 13 544 0
..LDL320:
/*    544 */	add	x2, x2, x4
	.loc 13 454 0
..LDL321:
/*    454 */	ld1w	{z6.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL322:
/*    459 */	ld1rw	{z5.s}, p1/z, [x14]	//  (*)
	.loc 13 545 0
..LDL323:
/*    545 */	add	x5, x5, 8
	.loc 13 543 0 is_stmt 0
..LDL324:
/*    543 */	add	x6, x6, 8
	.loc 13 454 0 is_stmt 1
..LDL325:
/*    454 */	prfm	2, [x13, 2560]	//  (*)
	.loc 13 459 0
..LDL326:
/*    459 */	prfm	0, [x14, x12]	//  (*)
	.loc 13 545 0
..LDL327:
/*    545 */	add	x14, x14, 8
/*    545 */	subs	w7, w7, 2
	.loc 13 454 0
..LDL328:
/*    454 */	prfm	0, [x13, 512]	//  (*)
/*    454 */	prfm	2, [x15, 2560]	//  (*)
/*    454 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 459 0
..LDL329:
/*    459 */	dup	z3.s, z3.s[0]
	.loc 13 466 0
..LDL330:
/*    466 */	dup	z2.s, z2.s[0]
/*    466 */	dup	z7.s, z7.s[0]
	.loc 13 461 0
..LDL331:
/*    461 */	fmla	z4.s, p0/m, z3.s, z0.s
	.loc 13 468 0
..LDL332:
/*    468 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 461 0
..LDL333:
/*    461 */	fmla	z4.s, p0/m, z5.s, z6.s
	.loc 13 468 0
..LDL334:
/*    468 */	fmla	z1.s, p0/m, z7.s, z6.s
	.loc 13 545 0 is_stmt 0
..LDL335:
/*    545 */	bpl	.L11769
.L11763:
	.loc 13 545 0 is_stmt 1
..LDL336:
/*    545 */	add	x5, x0, x1
.L11177:
	.loc 13 451 0
..LDL337:
/*    451 */	adds	w0, w7, 1
/*    451 */	bmi	.L11174
	.loc 13 459 0 is_stmt 0
..LDL338:
/*    459 */	orr	x1, x1, 6917529027641081856
/*    459 */	add	x1, x1, x6
	.p2align 5
.L11183:					// :entr:term:mod
	.loc 13 454 0 is_stmt 1
..LDL339:
/*    454 */	orr	x6, x2, 6917529027641081856
	.loc 13 459 0
..LDL340:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 466 0
..LDL341:
/*    466 */	ldr	s3, [x5, x11, lsl #2]	//  (*)
	.loc 13 543 0
..LDL342:
/*    543 */	add	x5, x5, 4
	.loc 13 454 0
..LDL343:
/*    454 */	ld1w	{z0.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL344:
/*    459 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 544 0
..LDL345:
/*    544 */	add	x2, x2, x4
	.loc 13 545 0
..LDL346:
/*    545 */	subs	w0, w0, 1
	.loc 13 454 0
..LDL347:
/*    454 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 459 0
..LDL348:
/*    459 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 454 0
..LDL349:
/*    454 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 459 0
..LDL350:
/*    459 */	ld1rw	{z2.s}, p1/z, [x1]	//  (*)
	.loc 13 543 0
..LDL351:
/*    543 */	add	x1, x1, 4
	.loc 13 466 0
..LDL352:
/*    466 */	dup	z3.s, z3.s[0]
	.loc 13 461 0
..LDL353:
/*    461 */	fmla	z4.s, p0/m, z2.s, z0.s
	.loc 13 468 0
..LDL354:
/*    468 */	fmla	z1.s, p0/m, z3.s, z0.s
	.loc 13 545 0 is_stmt 0
..LDL355:
/*    545 */	bpl	.L11183
.L11174:
	.loc 13 550 0 is_stmt 1
..LDL356:
/*    550 */	st1w	{z4.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL357:
/*    556 */	st1w	{z1.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL358:
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp], 16	//  (*)
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D5.pchi:
	.cfi_endproc
.LFE4:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL359:
.LFB5:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -3
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xa,0x92,0x1d,0x0,0x11,0x18,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xa,0x11,0x8,0x22,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xa,0x11,0x78,0x22,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL360:
/*    379 */	ld1w	{z7.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 381 0
..LDL361:
/*    381 */	add	x8, x3, 64
	.loc 13 385 0
..LDL362:
/*    385 */	sxtw	x7, w4
	.loc 13 381 0
..LDL363:
/*    381 */	ld1w	{z6.s}, p1/z, [x8, 0, mul vl]	//  (*)
	.loc 13 387 0
..LDL364:
/*    387 */	add	x4, x7, 16
	.loc 13 385 0
..LDL365:
/*    385 */	add	x9, x3, x7, lsl #2
/*    385 */	ld1w	{z4.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 387 0
..LDL366:
/*    387 */	add	x7, x3, x4, lsl #2
/*    387 */	ld1w	{z1.s}, p1/z, [x7, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL367:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11190
	.loc 13 466 0 is_stmt 0
..LDL368:
/*    466 */	sxtw	x10, w5
	.loc 13 544 0
..LDL369:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 459 0
..LDL370:
/*    459 */	orr	x5, x1, 6917529027641081856
	.loc 13 451 0
..LDL371:
/*    451 */	cmp	w0, 7
/*    451 */	blt	.L11777
	.loc 13 544 0
..LDL372:
/*    544 */	add	x6, x2, x4
	.loc 13 466 0
..LDL373:
/*    466 */	ldr	s0, [x1, x10, lsl #2]	//  (*)
	.loc 13 459 0
..LDL374:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 456 0
..LDL375:
/*    456 */	ld1w	{z2.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 459 0
..LDL376:
/*    459 */	ptrue	p3.s, ALL
	.loc 13 544 0
..LDL377:
/*    544 */	add	x14, x6, x4
	.loc 13 543 0
..LDL378:
/*    543 */	add	x11, x5, 4
	.loc 13 456 0
..LDL379:
/*    456 */	ld1w	{z24.s}, p1/z, [x6, 1, mul vl]	//  (*)
	.loc 13 454 0
..LDL380:
/*    454 */	orr	x15, x2, 6917529027641081856
/*    454 */	orr	x12, x6, 6917529027641081856
/*    454 */	orr	x13, x14, 6917529027641081856
	.loc 13 543 0
..LDL381:
/*    543 */	add	x2, x1, 4
	.loc 13 459 0
..LDL382:
/*    459 */	ld1rw	{z27.s}, p2/z, [x11]	//  (*)
/*    459 */	ld1rw	{z5.s}, p3/z, [x5]	//  (*)
	.loc 13 454 0
..LDL383:
/*    454 */	ld1w	{z28.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL384:
/*    543 */	add	x1, x1, 8
	.loc 13 456 0
..LDL385:
/*    456 */	add	x11, x14, 64
	.loc 13 454 0
..LDL386:
/*    454 */	ld1w	{z26.s}, p0/z, [x12, 0, mul vl]	//  (*)
/*    454 */	ld1w	{z3.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL387:
/*    543 */	add	x6, x5, 8
	.loc 13 466 0
..LDL388:
/*    466 */	ldr	s9, [x2, x10, lsl #2]	//  (*)
	.loc 13 544 0
..LDL389:
/*    544 */	add	x2, x14, x4
	.loc 13 466 0
..LDL390:
/*    466 */	ldr	s8, [x1, x10, lsl #2]	//  (*)
	.loc 13 454 0
..LDL391:
/*    454 */	prfm	0, [x15, 512]	//  (*)
/*    454 */	prfm	2, [x15, 2560]	//  (*)
/*    454 */	prfm	0, [x12, 512]	//  (*)
/*    454 */	prfm	2, [x12, 2560]	//  (*)
	.loc 13 466 0
..LDL392:
/*    466 */	dup	z25.s, z0.s[0]
	.loc 13 454 0
..LDL393:
/*    454 */	prfm	0, [x13, 512]	//  (*)
/*    454 */	prfm	2, [x13, 2560]	//  (*)
	.p2align 5
.L11188:					// :entr:term:swpl
	.loc 13 456 0
..LDL394:
/*    456 */	ld1w	{z30.s}, p1/z, [x11, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL395:
/*    459 */	ld1rw	{z29.s}, p3/z, [x6]	//  (*)
	.loc 13 454 0
..LDL396:
/*    454 */	orr	x5, x2, 6917529027641081856
/*    454 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 459 0
..LDL397:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 454 0
..LDL398:
/*    454 */	prfm	2, [x5, 2560]	//  (*)
/*    454 */	ld1w	{z31.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 461 0
..LDL399:
/*    461 */	fmla	z7.s, p0/m, z5.s, z28.s
	.loc 13 463 0
..LDL400:
/*    463 */	fmla	z6.s, p1/m, z5.s, z2.s
	.loc 13 466 0
..LDL401:
/*    466 */	dup	z5.s, z9.s[0]
	.loc 13 543 0
..LDL402:
/*    543 */	add	x5, x6, 4
/*    543 */	add	x11, x1, 4
	.loc 13 468 0
..LDL403:
/*    468 */	fmla	z4.s, p0/m, z25.s, z28.s
	.loc 13 470 0
..LDL404:
/*    470 */	fmla	z1.s, p1/m, z25.s, z2.s
	.loc 13 544 0
..LDL405:
/*    544 */	add	x13, x4, x2
	.loc 13 466 0
..LDL406:
/*    466 */	ldr	s9, [x11, x10, lsl #2]	//  (*)
	.loc 13 456 0
..LDL407:
/*    456 */	ld1w	{z0.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 459 0
..LDL408:
/*    459 */	ld1rw	{z25.s}, p2/z, [x5]	//  (*)
	.loc 13 454 0
..LDL409:
/*    454 */	orr	x2, x13, 6917529027641081856
/*    454 */	prfm	0, [x2, 512]	//  (*)
/*    454 */	prfm	2, [x2, 2560]	//  (*)
/*    454 */	ld1w	{z28.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 461 0
..LDL410:
/*    461 */	fmla	z7.s, p0/m, z27.s, z26.s
	.loc 13 463 0
..LDL411:
/*    463 */	fmla	z6.s, p1/m, z27.s, z24.s
	.loc 13 466 0
..LDL412:
/*    466 */	dup	z27.s, z8.s[0]
	.loc 13 543 0
..LDL413:
/*    543 */	add	x12, x6, 8
/*    543 */	add	x2, x1, 8
	.loc 13 468 0
..LDL414:
/*    468 */	fmla	z4.s, p0/m, z5.s, z26.s
	.loc 13 470 0
..LDL415:
/*    470 */	fmla	z1.s, p1/m, z5.s, z24.s
	.loc 13 544 0
..LDL416:
/*    544 */	add	x11, x13, x4
	.loc 13 466 0
..LDL417:
/*    466 */	ldr	s8, [x2, x10, lsl #2]	//  (*)
	.loc 13 456 0
..LDL418:
/*    456 */	ld1w	{z2.s}, p1/z, [x13, 1, mul vl]	//  (*)
	.loc 13 459 0
..LDL419:
/*    459 */	ld1rw	{z5.s}, p2/z, [x12]	//  (*)
	.loc 13 454 0
..LDL420:
/*    454 */	orr	x2, x11, 6917529027641081856
/*    454 */	prfm	0, [x2, 512]	//  (*)
/*    454 */	prfm	2, [x2, 2560]	//  (*)
/*    454 */	ld1w	{z26.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 461 0
..LDL421:
/*    461 */	fmla	z7.s, p0/m, z29.s, z3.s
	.loc 13 463 0
..LDL422:
/*    463 */	fmla	z6.s, p1/m, z29.s, z30.s
	.loc 13 466 0
..LDL423:
/*    466 */	dup	z29.s, z9.s[0]
	.loc 13 543 0
..LDL424:
/*    543 */	add	x13, x6, 12
/*    543 */	add	x14, x1, 12
	.loc 13 468 0
..LDL425:
/*    468 */	fmla	z4.s, p0/m, z27.s, z3.s
	.loc 13 470 0
..LDL426:
/*    470 */	fmla	z1.s, p1/m, z27.s, z30.s
	.loc 13 544 0
..LDL427:
/*    544 */	add	x2, x11, x4
	.loc 13 466 0
..LDL428:
/*    466 */	ldr	s9, [x14, x10, lsl #2]	//  (*)
	.loc 13 456 0
..LDL429:
/*    456 */	ld1w	{z24.s}, p1/z, [x11, 1, mul vl]	//  (*)
	.loc 13 459 0
..LDL430:
/*    459 */	ld1rw	{z27.s}, p2/z, [x13]	//  (*)
	.loc 13 454 0
..LDL431:
/*    454 */	orr	x14, x2, 6917529027641081856
	.loc 13 545 0
..LDL432:
/*    545 */	sub	w0, w0, 4
	.loc 13 454 0
..LDL433:
/*    454 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 459 0
..LDL434:
/*    459 */	ptrue	p3.s, ALL
	.loc 13 456 0
..LDL435:
/*    456 */	add	x11, x2, 64
	.loc 13 454 0
..LDL436:
/*    454 */	prfm	2, [x14, 2560]	//  (*)
/*    454 */	ld1w	{z3.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL437:
/*    459 */	prfm	2, [x5, 2560]	//  (*)
	.loc 13 461 0
..LDL438:
/*    461 */	fmla	z7.s, p0/m, z25.s, z31.s
	.loc 13 463 0
..LDL439:
/*    463 */	fmla	z6.s, p1/m, z25.s, z0.s
	.loc 13 459 0
..LDL440:
/*    459 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 466 0
..LDL441:
/*    466 */	dup	z25.s, z8.s[0]
	.loc 13 543 0
..LDL442:
/*    543 */	add	x6, x6, 16
/*    543 */	add	x1, x1, 16
	.loc 13 468 0
..LDL443:
/*    468 */	fmla	z4.s, p0/m, z29.s, z31.s
	.loc 13 470 0
..LDL444:
/*    470 */	fmla	z1.s, p1/m, z29.s, z0.s
	.loc 13 544 0
..LDL445:
/*    544 */	add	x2, x2, x4
	.loc 13 466 0
..LDL446:
/*    466 */	ldr	s8, [x1, x10, lsl #2]	//  (*)
	.loc 13 453 0
..LDL447:
/*    453 */	cmp	w0, 7
/*    453 */	bge	.L11188
	.loc 13 456 0
..LDL448:
/*    456 */	ld1w	{z0.s}, p1/z, [x11, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL449:
/*    543 */	add	x5, x6, 4
	.loc 13 468 0
..LDL450:
/*    468 */	fmla	z4.s, p0/m, z25.s, z28.s
	.loc 13 470 0
..LDL451:
/*    470 */	fmla	z1.s, p1/m, z25.s, z2.s
	.loc 13 461 0
..LDL452:
/*    461 */	fmla	z7.s, p0/m, z5.s, z28.s
	.loc 13 463 0
..LDL453:
/*    463 */	fmla	z6.s, p1/m, z5.s, z2.s
	.loc 13 459 0
..LDL454:
/*    459 */	ld1rw	{z5.s}, p3/z, [x6]	//  (*)
	.loc 13 543 0
..LDL455:
/*    543 */	add	x1, x1, 4
	.loc 13 459 0
..LDL456:
/*    459 */	prfm	2, [x12, 2560]	//  (*)
	.loc 13 466 0
..LDL457:
/*    466 */	dup	z25.s, z9.s[0]
	.loc 13 545 0
..LDL458:
/*    545 */	sub	w0, w0, 3
	.loc 13 459 0
..LDL459:
/*    459 */	prfm	0, [x12, 512]	//  (*)
	.loc 13 466 0
..LDL460:
/*    466 */	dup	z2.s, z8.s[0]
	.loc 13 459 0
..LDL461:
/*    459 */	prfm	2, [x13, 2560]	//  (*)
/*    459 */	prfm	0, [x13, 512]	//  (*)
/*    459 */	prfm	2, [x6, 2560]	//  (*)
/*    459 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 468 0
..LDL462:
/*    468 */	fmla	z4.s, p0/m, z25.s, z26.s
	.loc 13 470 0
..LDL463:
/*    470 */	fmla	z1.s, p1/m, z25.s, z24.s
	.loc 13 461 0
..LDL464:
/*    461 */	fmla	z7.s, p0/m, z27.s, z26.s
	.loc 13 463 0
..LDL465:
/*    463 */	fmla	z6.s, p1/m, z27.s, z24.s
	.loc 13 468 0
..LDL466:
/*    468 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 470 0
..LDL467:
/*    470 */	fmla	z1.s, p1/m, z2.s, z0.s
	.loc 13 461 0
..LDL468:
/*    461 */	fmla	z7.s, p0/m, z5.s, z3.s
	.loc 13 463 0
..LDL469:
/*    463 */	fmla	z6.s, p1/m, z5.s, z0.s
	.loc 13 545 0
..LDL470:
/*    545 */	cbz	w0, .L11774
.L11777:
	.p2align 5
.L11780:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL471:
/*    454 */	orr	x6, x2, 6917529027641081856
	.loc 13 456 0
..LDL472:
/*    456 */	add	x11, x2, 64
	.loc 13 459 0
..LDL473:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 466 0
..LDL474:
/*    466 */	ldr	s5, [x1, x10, lsl #2]	//  (*)
	.loc 13 454 0
..LDL475:
/*    454 */	ld1w	{z3.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 456 0
..LDL476:
/*    456 */	ld1w	{z0.s}, p1/z, [x11, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL477:
/*    543 */	add	x1, x1, 4
	.loc 13 544 0
..LDL478:
/*    544 */	add	x2, x2, x4
	.loc 13 459 0
..LDL479:
/*    459 */	prfm	2, [x5, 2560]	//  (*)
/*    459 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 545 0
..LDL480:
/*    545 */	subs	w0, w0, 1
	.loc 13 454 0
..LDL481:
/*    454 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 459 0
..LDL482:
/*    459 */	ld1rw	{z2.s}, p2/z, [x5]	//  (*)
	.loc 13 543 0
..LDL483:
/*    543 */	add	x5, x5, 4
	.loc 13 454 0
..LDL484:
/*    454 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 466 0
..LDL485:
/*    466 */	dup	z5.s, z5.s[0]
	.loc 13 461 0
..LDL486:
/*    461 */	fmla	z7.s, p0/m, z2.s, z3.s
	.loc 13 463 0
..LDL487:
/*    463 */	fmla	z6.s, p1/m, z2.s, z0.s
	.loc 13 468 0
..LDL488:
/*    468 */	fmla	z4.s, p0/m, z5.s, z3.s
	.loc 13 470 0
..LDL489:
/*    470 */	fmla	z1.s, p1/m, z5.s, z0.s
	.loc 13 545 0 is_stmt 0
..LDL490:
/*    545 */	bne	.L11780
.L11774:
.L11190:
	.loc 13 550 0 is_stmt 1
..LDL491:
/*    550 */	st1w	{z7.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 552 0
..LDL492:
/*    552 */	st1w	{z6.s}, p1, [x8, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL493:
/*    556 */	st1w	{z4.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 558 0
..LDL494:
/*    558 */	st1w	{z1.s}, p1, [x7, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL495:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 3
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D6.pchi:
	.cfi_endproc
.LFE5:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL496:
.LFB6:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -3
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xa,0x92,0x1d,0x0,0x11,0x18,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xa,0x11,0x8,0x22,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xa,0x11,0x78,0x22,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL497:
/*    379 */	ld1w	{z5.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 385 0
..LDL498:
/*    385 */	sxtw	x7, w4
	.loc 13 391 0
..LDL499:
/*    391 */	add	w4, w4, w4
/*    391 */	sxtw	x4, w4
	.loc 13 385 0
..LDL500:
/*    385 */	add	x7, x3, x7, lsl #2
/*    385 */	ld1w	{z3.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL501:
/*    391 */	add	x8, x3, x4, lsl #2
/*    391 */	ld1w	{z1.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL502:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11198
	.loc 13 473 0 is_stmt 0
..LDL503:
/*    473 */	add	w10, w5, w5
	.loc 13 544 0
..LDL504:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 466 0
..LDL505:
/*    466 */	sxtw	x9, w5
	.loc 13 473 0
..LDL506:
/*    473 */	sxtw	x10, w10
	.loc 13 459 0
..LDL507:
/*    459 */	orr	x5, x1, 6917529027641081856
	.loc 13 451 0
..LDL508:
/*    451 */	cmp	w0, 6
/*    451 */	blt	.L11788
	.loc 13 466 0
..LDL509:
/*    466 */	ldr	s4, [x1, x9, lsl #2]	//  (*)
	.loc 13 459 0
..LDL510:
/*    459 */	ptrue	p3.s, ALL
	.loc 13 544 0
..LDL511:
/*    544 */	add	x13, x2, x4
	.loc 13 473 0
..LDL512:
/*    473 */	ldr	s2, [x1, x10, lsl #2]	//  (*)
	.loc 13 454 0
..LDL513:
/*    454 */	orr	x12, x2, 6917529027641081856
/*    454 */	orr	x11, x13, 6917529027641081856
	.loc 13 459 0
..LDL514:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 454 0
..LDL515:
/*    454 */	ld1w	{z0.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL516:
/*    543 */	add	x14, x1, 4
/*    543 */	add	x6, x5, 4
	.loc 13 459 0
..LDL517:
/*    459 */	ptrue	p2.s, ALL
/*    459 */	ld1rw	{z7.s}, p3/z, [x5]	//  (*)
	.loc 13 544 0
..LDL518:
/*    544 */	add	x2, x13, x4
	.loc 13 454 0
..LDL519:
/*    454 */	ld1w	{z6.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL520:
/*    543 */	add	x1, x1, 8
	.loc 13 466 0
..LDL521:
/*    466 */	ldr	s30, [x14, x9, lsl #2]	//  (*)
	.loc 13 454 0
..LDL522:
/*    454 */	orr	x13, x2, 6917529027641081856
	.loc 13 459 0
..LDL523:
/*    459 */	ld1rw	{z25.s}, p1/z, [x6]	//  (*)
	.loc 13 544 0
..LDL524:
/*    544 */	add	x2, x2, x4
	.loc 13 473 0
..LDL525:
/*    473 */	ldr	s27, [x14, x10, lsl #2]	//  (*)
	.loc 13 466 0
..LDL526:
/*    466 */	ldr	s29, [x1, x9, lsl #2]	//  (*)
	.loc 13 454 0
..LDL527:
/*    454 */	prfm	0, [x12, 512]	//  (*)
/*    454 */	prfm	2, [x12, 2560]	//  (*)
/*    454 */	prfm	0, [x11, 512]	//  (*)
/*    454 */	prfm	2, [x11, 2560]	//  (*)
	.loc 13 466 0
..LDL528:
/*    466 */	dup	z4.s, z4.s[0]
	.loc 13 454 0
..LDL529:
/*    454 */	prfm	0, [x13, 512]	//  (*)
	.loc 13 473 0
..LDL530:
/*    473 */	dup	z2.s, z2.s[0]
	.p2align 5
.L11196:					// :entr:term:swpl
/*    473 */	ldr	s24, [x1, x10, lsl #2]	//  (*)
	.loc 13 454 0
..LDL531:
/*    454 */	prfm	2, [x13, 2560]	//  (*)
/*    454 */	orr	x11, x2, 6917529027641081856
	.loc 13 543 0
..LDL532:
/*    543 */	add	x5, x6, 4
	.loc 13 454 0
..LDL533:
/*    454 */	ld1w	{z8.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL534:
/*    459 */	ld1rw	{z31.s}, p2/z, [x5]	//  (*)
	.loc 13 461 0
..LDL535:
/*    461 */	fmla	z5.s, p0/m, z7.s, z0.s
	.loc 13 543 0
..LDL536:
/*    543 */	add	x5, x1, 4
	.loc 13 466 0
..LDL537:
/*    466 */	dup	z28.s, z30.s[0]
/*    466 */	ldr	s9, [x5, x9, lsl #2]	//  (*)
	.loc 13 473 0
..LDL538:
/*    473 */	dup	z27.s, z27.s[0]
	.loc 13 459 0
..LDL539:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 468 0
..LDL540:
/*    468 */	fmla	z3.s, p0/m, z4.s, z0.s
	.loc 13 475 0
..LDL541:
/*    475 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 544 0
..LDL542:
/*    544 */	add	x12, x4, x2
	.loc 13 454 0
..LDL543:
/*    454 */	prfm	0, [x11, 512]	//  (*)
	.loc 13 473 0
..LDL544:
/*    473 */	ldr	s2, [x5, x10, lsl #2]	//  (*)
	.loc 13 454 0
..LDL545:
/*    454 */	prfm	2, [x11, 2560]	//  (*)
/*    454 */	orr	x2, x12, 6917529027641081856
	.loc 13 543 0
..LDL546:
/*    543 */	add	x5, x6, 8
	.loc 13 454 0
..LDL547:
/*    454 */	ld1w	{z0.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL548:
/*    459 */	ld1rw	{z7.s}, p1/z, [x5]	//  (*)
	.loc 13 461 0
..LDL549:
/*    461 */	fmla	z5.s, p0/m, z25.s, z6.s
	.loc 13 543 0
..LDL550:
/*    543 */	add	x13, x1, 8
	.loc 13 466 0
..LDL551:
/*    466 */	dup	z26.s, z29.s[0]
/*    466 */	ldr	s30, [x13, x9, lsl #2]	//  (*)
	.loc 13 473 0
..LDL552:
/*    473 */	dup	z24.s, z24.s[0]
	.loc 13 468 0
..LDL553:
/*    468 */	fmla	z3.s, p0/m, z28.s, z6.s
	.loc 13 475 0
..LDL554:
/*    475 */	fmla	z1.s, p0/m, z27.s, z6.s
	.loc 13 544 0
..LDL555:
/*    544 */	add	x11, x12, x4
	.loc 13 454 0
..LDL556:
/*    454 */	prfm	0, [x2, 512]	//  (*)
	.loc 13 473 0
..LDL557:
/*    473 */	ldr	s27, [x13, x10, lsl #2]	//  (*)
	.loc 13 454 0
..LDL558:
/*    454 */	prfm	2, [x2, 2560]	//  (*)
/*    454 */	orr	x13, x11, 6917529027641081856
	.loc 13 543 0
..LDL559:
/*    543 */	add	x6, x6, 12
	.loc 13 454 0
..LDL560:
/*    454 */	ld1w	{z6.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 545 0
..LDL561:
/*    545 */	sub	w0, w0, 3
	.loc 13 459 0
..LDL562:
/*    459 */	ld1rw	{z25.s}, p1/z, [x6]	//  (*)
/*    459 */	prfm	2, [x6, 2552]	//  (*)
	.loc 13 461 0
..LDL563:
/*    461 */	fmla	z5.s, p0/m, z31.s, z8.s
	.loc 13 543 0
..LDL564:
/*    543 */	add	x1, x1, 12
	.loc 13 466 0
..LDL565:
/*    466 */	dup	z4.s, z9.s[0]
/*    466 */	ldr	s29, [x1, x9, lsl #2]	//  (*)
	.loc 13 473 0
..LDL566:
/*    473 */	dup	z2.s, z2.s[0]
	.loc 13 459 0
..LDL567:
/*    459 */	prfm	0, [x6, 504]	//  (*)
/*    459 */	ptrue	p2.s, ALL
	.loc 13 468 0
..LDL568:
/*    468 */	fmla	z3.s, p0/m, z26.s, z8.s
	.loc 13 475 0
..LDL569:
/*    475 */	fmla	z1.s, p0/m, z24.s, z8.s
	.loc 13 544 0
..LDL570:
/*    544 */	add	x2, x11, x4
	.loc 13 454 0
..LDL571:
/*    454 */	prfm	0, [x13, 512]	//  (*)
	.loc 13 453 0
..LDL572:
/*    453 */	cmp	w0, 6
/*    453 */	bge	.L11196
	.loc 13 473 0
..LDL573:
/*    473 */	ldr	s28, [x1, x10, lsl #2]	//  (*)
	.loc 13 543 0
..LDL574:
/*    543 */	add	x11, x6, 4
	.loc 13 461 0
..LDL575:
/*    461 */	fmla	z5.s, p0/m, z7.s, z0.s
	.loc 13 468 0
..LDL576:
/*    468 */	fmla	z3.s, p0/m, z4.s, z0.s
	.loc 13 454 0
..LDL577:
/*    454 */	ld1w	{z26.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL578:
/*    543 */	add	x1, x1, 4
	.loc 13 475 0
..LDL579:
/*    475 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 545 0
..LDL580:
/*    545 */	sub	w0, w0, 3
	.loc 13 459 0
..LDL581:
/*    459 */	ld1rw	{z4.s}, p2/z, [x11]	//  (*)
	.loc 13 466 0
..LDL582:
/*    466 */	dup	z24.s, z30.s[0]
	.loc 13 459 0
..LDL583:
/*    459 */	prfm	2, [x5, 2560]	//  (*)
	.loc 13 473 0
..LDL584:
/*    473 */	dup	z7.s, z27.s[0]
	.loc 13 459 0
..LDL585:
/*    459 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 543 0
..LDL586:
/*    543 */	add	x5, x6, 8
	.loc 13 466 0
..LDL587:
/*    466 */	dup	z2.s, z29.s[0]
	.loc 13 454 0
..LDL588:
/*    454 */	prfm	2, [x13, 2560]	//  (*)
	.loc 13 459 0
..LDL589:
/*    459 */	prfm	2, [x6, 2560]	//  (*)
/*    459 */	prfm	0, [x6, 512]	//  (*)
/*    459 */	prfm	2, [x11, 2560]	//  (*)
/*    459 */	prfm	0, [x11, 512]	//  (*)
	.loc 13 473 0
..LDL590:
/*    473 */	dup	z0.s, z28.s[0]
	.loc 13 461 0
..LDL591:
/*    461 */	fmla	z5.s, p0/m, z25.s, z6.s
	.loc 13 468 0
..LDL592:
/*    468 */	fmla	z3.s, p0/m, z24.s, z6.s
	.loc 13 475 0
..LDL593:
/*    475 */	fmla	z1.s, p0/m, z7.s, z6.s
	.loc 13 461 0
..LDL594:
/*    461 */	fmla	z5.s, p0/m, z4.s, z26.s
	.loc 13 468 0
..LDL595:
/*    468 */	fmla	z3.s, p0/m, z2.s, z26.s
	.loc 13 475 0
..LDL596:
/*    475 */	fmla	z1.s, p0/m, z0.s, z26.s
	.loc 13 545 0
..LDL597:
/*    545 */	cbz	w0, .L11785
.L11788:
	.p2align 5
.L11791:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL598:
/*    454 */	orr	x6, x2, 6917529027641081856
	.loc 13 459 0
..LDL599:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 466 0
..LDL600:
/*    466 */	ldr	s6, [x1, x9, lsl #2]	//  (*)
	.loc 13 544 0
..LDL601:
/*    544 */	add	x2, x2, x4
	.loc 13 454 0
..LDL602:
/*    454 */	ld1w	{z2.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 473 0
..LDL603:
/*    473 */	ldr	s4, [x1, x10, lsl #2]	//  (*)
	.loc 13 543 0
..LDL604:
/*    543 */	add	x1, x1, 4
	.loc 13 545 0
..LDL605:
/*    545 */	subs	w0, w0, 1
	.loc 13 459 0
..LDL606:
/*    459 */	prfm	2, [x5, 2560]	//  (*)
/*    459 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 454 0
..LDL607:
/*    454 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 459 0
..LDL608:
/*    459 */	ld1rw	{z0.s}, p1/z, [x5]	//  (*)
	.loc 13 543 0
..LDL609:
/*    543 */	add	x5, x5, 4
	.loc 13 454 0
..LDL610:
/*    454 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 466 0
..LDL611:
/*    466 */	dup	z6.s, z6.s[0]
	.loc 13 473 0
..LDL612:
/*    473 */	dup	z4.s, z4.s[0]
	.loc 13 461 0
..LDL613:
/*    461 */	fmla	z5.s, p0/m, z0.s, z2.s
	.loc 13 468 0
..LDL614:
/*    468 */	fmla	z3.s, p0/m, z6.s, z2.s
	.loc 13 475 0
..LDL615:
/*    475 */	fmla	z1.s, p0/m, z4.s, z2.s
	.loc 13 545 0 is_stmt 0
..LDL616:
/*    545 */	bne	.L11791
.L11785:
.L11198:
	.loc 13 550 0 is_stmt 1
..LDL617:
/*    550 */	st1w	{z5.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL618:
/*    556 */	st1w	{z3.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL619:
/*    562 */	st1w	{z1.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL620:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 3
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D7.pchi:
	.cfi_endproc
.LFE6:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL621:
.LFB7:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -7
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xa,0x92,0x1d,0x0,0x11,0x38,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xa,0x11,0x8,0x22,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xa,0x11,0x78,0x22,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	p4, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x34,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL622:
/*    379 */	ld1w	{z25.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 385 0
..LDL623:
/*    385 */	sxtw	x7, w4
	.loc 13 391 0
..LDL624:
/*    391 */	add	w4, w4, w4
	.loc 13 381 0
..LDL625:
/*    381 */	add	x8, x3, 64
	.loc 13 385 0
..LDL626:
/*    385 */	add	x9, x3, x7, lsl #2
	.loc 13 387 0
..LDL627:
/*    387 */	add	x7, x7, 16
	.loc 13 381 0
..LDL628:
/*    381 */	ld1w	{z24.s}, p1/z, [x8, 0, mul vl]	//  (*)
	.loc 13 387 0
..LDL629:
/*    387 */	add	x10, x3, x7, lsl #2
	.loc 13 391 0
..LDL630:
/*    391 */	sxtw	x7, w4
	.loc 13 385 0
..LDL631:
/*    385 */	ld1w	{z6.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 393 0
..LDL632:
/*    393 */	add	x4, x7, 16
	.loc 13 391 0
..LDL633:
/*    391 */	add	x11, x3, x7, lsl #2
	.loc 13 387 0
..LDL634:
/*    387 */	ld1w	{z5.s}, p1/z, [x10, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL635:
/*    391 */	ld1w	{z3.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 393 0
..LDL636:
/*    393 */	add	x12, x3, x4, lsl #2
/*    393 */	ld1w	{z1.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL637:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11206
	.loc 13 473 0 is_stmt 0
..LDL638:
/*    473 */	add	w7, w5, w5
	.loc 13 544 0
..LDL639:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 466 0
..LDL640:
/*    466 */	sxtw	x5, w5
	.loc 13 473 0
..LDL641:
/*    473 */	sxtw	x6, w7
	.loc 13 459 0
..LDL642:
/*    459 */	orr	x13, x1, 6917529027641081856
	.loc 13 451 0
..LDL643:
/*    451 */	cmp	w0, 6
/*    451 */	blt	.L11799
	.loc 13 459 0
..LDL644:
/*    459 */	ptrue	p3.s, ALL
	.loc 13 544 0
..LDL645:
/*    544 */	add	x18, x2, x4
	.loc 13 466 0
..LDL646:
/*    466 */	ldr	s26, [x1, x5, lsl #2]	//  (*)
	.loc 13 456 0
..LDL647:
/*    456 */	ld1w	{z0.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 454 0
..LDL648:
/*    454 */	orr	x17, x2, 6917529027641081856
	.loc 13 459 0
..LDL649:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 473 0
..LDL650:
/*    473 */	ldr	s4, [x1, x6, lsl #2]	//  (*)
	.loc 13 454 0
..LDL651:
/*    454 */	orr	x15, x18, 6917529027641081856
	.loc 13 543 0
..LDL652:
/*    543 */	add	x7, x13, 4
	.loc 13 454 0
..LDL653:
/*    454 */	ld1w	{z7.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL654:
/*    543 */	add	x2, x1, 4
	.loc 13 544 0
..LDL655:
/*    544 */	add	x16, x18, x4
	.loc 13 459 0
..LDL656:
/*    459 */	ld1rw	{z28.s}, p3/z, [x13]	//  (*)
	.loc 13 454 0
..LDL657:
/*    454 */	ld1w	{z27.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL658:
/*    543 */	add	x1, x1, 8
	.loc 13 454 0
..LDL659:
/*    454 */	orr	x14, x16, 6917529027641081856
	.loc 13 459 0
..LDL660:
/*    459 */	ld1rw	{z29.s}, p2/z, [x7]	//  (*)
	.loc 13 456 0
..LDL661:
/*    456 */	ld1w	{z2.s}, p1/z, [x18, 1, mul vl]	//  (*)
	.loc 13 466 0
..LDL662:
/*    466 */	ldr	s8, [x2, x5, lsl #2]	//  (*)
	.loc 13 473 0
..LDL663:
/*    473 */	ldr	s31, [x2, x6, lsl #2]	//  (*)
	.loc 13 454 0
..LDL664:
/*    454 */	prfm	2, [x17, 2560]	//  (*)
/*    454 */	prfm	0, [x17, 512]	//  (*)
/*    454 */	prfm	2, [x15, 2560]	//  (*)
/*    454 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 466 0
..LDL665:
/*    466 */	dup	z26.s, z26.s[0]
	.loc 13 454 0
..LDL666:
/*    454 */	prfm	2, [x14, 2560]	//  (*)
	.loc 13 473 0
..LDL667:
/*    473 */	dup	z4.s, z4.s[0]
	.p2align 5
.L11204:					// :entr:term:swpl
	.loc 13 454 0
..LDL668:
/*    454 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 459 0
..LDL669:
/*    459 */	ptrue	p4.s, ALL
	.loc 13 544 0
..LDL670:
/*    544 */	add	x2, x16, x4
	.loc 13 466 0
..LDL671:
/*    466 */	ldr	s12, [x1, x5, lsl #2]	//  (*)
	.loc 13 454 0
..LDL672:
/*    454 */	ld1w	{z9.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL673:
/*    543 */	add	x13, x7, 4
	.loc 13 461 0
..LDL674:
/*    461 */	fmla	z25.s, p0/m, z28.s, z7.s
	.loc 13 459 0
..LDL675:
/*    459 */	ld1rw	{z10.s}, p3/z, [x13]	//  (*)
	.loc 13 463 0
..LDL676:
/*    463 */	fmla	z24.s, p1/m, z28.s, z0.s
	.loc 13 466 0
..LDL677:
/*    466 */	dup	z30.s, z8.s[0]
	.loc 13 473 0
..LDL678:
/*    473 */	ldr	s8, [x1, x6, lsl #2]	//  (*)
	.loc 13 456 0
..LDL679:
/*    456 */	ld1w	{z11.s}, p1/z, [x16, 1, mul vl]	//  (*)
	.loc 13 468 0
..LDL680:
/*    468 */	fmla	z6.s, p0/m, z26.s, z7.s
	.loc 13 470 0
..LDL681:
/*    470 */	fmla	z5.s, p1/m, z26.s, z0.s
	.loc 13 473 0
..LDL682:
/*    473 */	dup	z26.s, z31.s[0]
	.loc 13 543 0
..LDL683:
/*    543 */	add	x15, x1, 4
	.loc 13 454 0
..LDL684:
/*    454 */	orr	x13, x2, 6917529027641081856
	.loc 13 475 0
..LDL685:
/*    475 */	fmla	z3.s, p0/m, z4.s, z7.s
	.loc 13 477 0
..LDL686:
/*    477 */	fmla	z1.s, p1/m, z4.s, z0.s
	.loc 13 454 0
..LDL687:
/*    454 */	prfm	2, [x13, 2560]	//  (*)
/*    454 */	prfm	0, [x13, 512]	//  (*)
	.loc 13 459 0
..LDL688:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 544 0
..LDL689:
/*    544 */	add	x14, x2, x4
	.loc 13 466 0
..LDL690:
/*    466 */	ldr	s31, [x15, x5, lsl #2]	//  (*)
	.loc 13 454 0
..LDL691:
/*    454 */	ld1w	{z7.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL692:
/*    543 */	add	x13, x7, 8
	.loc 13 461 0
..LDL693:
/*    461 */	fmla	z25.s, p0/m, z29.s, z27.s
	.loc 13 459 0
..LDL694:
/*    459 */	ld1rw	{z28.s}, p4/z, [x13]	//  (*)
	.loc 13 463 0
..LDL695:
/*    463 */	fmla	z24.s, p1/m, z29.s, z2.s
	.loc 13 466 0
..LDL696:
/*    466 */	dup	z4.s, z12.s[0]
	.loc 13 473 0
..LDL697:
/*    473 */	ldr	s12, [x15, x6, lsl #2]	//  (*)
	.loc 13 456 0
..LDL698:
/*    456 */	ld1w	{z0.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 468 0
..LDL699:
/*    468 */	fmla	z6.s, p0/m, z30.s, z27.s
	.loc 13 470 0
..LDL700:
/*    470 */	fmla	z5.s, p1/m, z30.s, z2.s
	.loc 13 473 0
..LDL701:
/*    473 */	dup	z30.s, z8.s[0]
	.loc 13 543 0
..LDL702:
/*    543 */	add	x15, x1, 8
	.loc 13 454 0
..LDL703:
/*    454 */	orr	x2, x14, 6917529027641081856
	.loc 13 475 0
..LDL704:
/*    475 */	fmla	z3.s, p0/m, z26.s, z27.s
	.loc 13 477 0
..LDL705:
/*    477 */	fmla	z1.s, p1/m, z26.s, z2.s
	.loc 13 454 0
..LDL706:
/*    454 */	prfm	2, [x2, 2560]	//  (*)
/*    454 */	prfm	0, [x2, 512]	//  (*)
	.loc 13 459 0
..LDL707:
/*    459 */	ptrue	p3.s, ALL
	.loc 13 544 0
..LDL708:
/*    544 */	add	x16, x14, x4
	.loc 13 466 0
..LDL709:
/*    466 */	ldr	s8, [x15, x5, lsl #2]	//  (*)
	.loc 13 454 0
..LDL710:
/*    454 */	ld1w	{z27.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL711:
/*    543 */	add	x7, x7, 12
	.loc 13 461 0
..LDL712:
/*    461 */	fmla	z25.s, p0/m, z10.s, z9.s
	.loc 13 459 0
..LDL713:
/*    459 */	ld1rw	{z29.s}, p2/z, [x7]	//  (*)
	.loc 13 463 0
..LDL714:
/*    463 */	fmla	z24.s, p1/m, z10.s, z11.s
	.loc 13 466 0
..LDL715:
/*    466 */	dup	z26.s, z31.s[0]
	.loc 13 473 0
..LDL716:
/*    473 */	ldr	s31, [x15, x6, lsl #2]	//  (*)
	.loc 13 456 0
..LDL717:
/*    456 */	ld1w	{z2.s}, p1/z, [x14, 1, mul vl]	//  (*)
	.loc 13 459 0
..LDL718:
/*    459 */	prfm	2, [x7, 2552]	//  (*)
	.loc 13 468 0
..LDL719:
/*    468 */	fmla	z6.s, p0/m, z4.s, z9.s
	.loc 13 470 0
..LDL720:
/*    470 */	fmla	z5.s, p1/m, z4.s, z11.s
	.loc 13 459 0
..LDL721:
/*    459 */	prfm	0, [x7, 504]	//  (*)
	.loc 13 473 0
..LDL722:
/*    473 */	dup	z4.s, z12.s[0]
	.loc 13 543 0
..LDL723:
/*    543 */	add	x1, x1, 12
	.loc 13 454 0
..LDL724:
/*    454 */	orr	x14, x16, 6917529027641081856
	.loc 13 475 0
..LDL725:
/*    475 */	fmla	z3.s, p0/m, z30.s, z9.s
	.loc 13 477 0
..LDL726:
/*    477 */	fmla	z1.s, p1/m, z30.s, z11.s
	.loc 13 454 0
..LDL727:
/*    454 */	prfm	2, [x14, 2560]	//  (*)
	.loc 13 545 0
..LDL728:
/*    545 */	sub	w0, w0, 3
	.loc 13 453 0
..LDL729:
/*    453 */	cmp	w0, 6
/*    453 */	bge	.L11204
	.loc 13 466 0
..LDL730:
/*    466 */	ldr	s10, [x1, x5, lsl #2]	//  (*)
	.loc 13 543 0
..LDL731:
/*    543 */	add	x15, x7, 4
	.loc 13 461 0
..LDL732:
/*    461 */	fmla	z25.s, p0/m, z28.s, z7.s
	.loc 13 463 0
..LDL733:
/*    463 */	fmla	z24.s, p1/m, z28.s, z0.s
	.loc 13 544 0
..LDL734:
/*    544 */	add	x2, x16, x4
	.loc 13 473 0
..LDL735:
/*    473 */	ldr	s9, [x1, x6, lsl #2]	//  (*)
	.loc 13 468 0
..LDL736:
/*    468 */	fmla	z6.s, p0/m, z26.s, z7.s
	.loc 13 470 0
..LDL737:
/*    470 */	fmla	z5.s, p1/m, z26.s, z0.s
	.loc 13 454 0
..LDL738:
/*    454 */	ld1w	{z30.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL739:
/*    543 */	add	x1, x1, 4
	.loc 13 475 0
..LDL740:
/*    475 */	fmla	z3.s, p0/m, z4.s, z7.s
	.loc 13 477 0
..LDL741:
/*    477 */	fmla	z1.s, p1/m, z4.s, z0.s
	.loc 13 459 0
..LDL742:
/*    459 */	ld1rw	{z7.s}, p3/z, [x15]	//  (*)
	.loc 13 466 0
..LDL743:
/*    466 */	dup	z28.s, z8.s[0]
	.loc 13 545 0
..LDL744:
/*    545 */	sub	w0, w0, 3
	.loc 13 456 0
..LDL745:
/*    456 */	ld1w	{z0.s}, p1/z, [x16, 1, mul vl]	//  (*)
	.loc 13 473 0
..LDL746:
/*    473 */	dup	z26.s, z31.s[0]
	.loc 13 459 0
..LDL747:
/*    459 */	prfm	2, [x13, 2560]	//  (*)
/*    459 */	prfm	0, [x13, 512]	//  (*)
	.loc 13 543 0
..LDL748:
/*    543 */	add	x13, x7, 8
	.loc 13 454 0
..LDL749:
/*    454 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 459 0
..LDL750:
/*    459 */	prfm	2, [x7, 2560]	//  (*)
/*    459 */	prfm	0, [x7, 512]	//  (*)
/*    459 */	prfm	2, [x15, 2560]	//  (*)
	.loc 13 466 0
..LDL751:
/*    466 */	dup	z4.s, z10.s[0]
	.loc 13 459 0
..LDL752:
/*    459 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 461 0
..LDL753:
/*    461 */	fmla	z25.s, p0/m, z29.s, z27.s
	.loc 13 463 0
..LDL754:
/*    463 */	fmla	z24.s, p1/m, z29.s, z2.s
	.loc 13 468 0
..LDL755:
/*    468 */	fmla	z6.s, p0/m, z28.s, z27.s
	.loc 13 470 0
..LDL756:
/*    470 */	fmla	z5.s, p1/m, z28.s, z2.s
	.loc 13 475 0
..LDL757:
/*    475 */	fmla	z3.s, p0/m, z26.s, z27.s
	.loc 13 477 0
..LDL758:
/*    477 */	fmla	z1.s, p1/m, z26.s, z2.s
	.loc 13 473 0
..LDL759:
/*    473 */	dup	z2.s, z9.s[0]
	.loc 13 461 0
..LDL760:
/*    461 */	fmla	z25.s, p0/m, z7.s, z30.s
	.loc 13 463 0
..LDL761:
/*    463 */	fmla	z24.s, p1/m, z7.s, z0.s
	.loc 13 468 0
..LDL762:
/*    468 */	fmla	z6.s, p0/m, z4.s, z30.s
	.loc 13 470 0
..LDL763:
/*    470 */	fmla	z5.s, p1/m, z4.s, z0.s
	.loc 13 475 0
..LDL764:
/*    475 */	fmla	z3.s, p0/m, z2.s, z30.s
	.loc 13 477 0
..LDL765:
/*    477 */	fmla	z1.s, p1/m, z2.s, z0.s
	.loc 13 545 0
..LDL766:
/*    545 */	cbz	w0, .L11796
.L11799:
	.p2align 5
.L11802:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL767:
/*    454 */	orr	x7, x2, 6917529027641081856
	.loc 13 456 0
..LDL768:
/*    456 */	add	x14, x2, 64
	.loc 13 459 0
..LDL769:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 466 0
..LDL770:
/*    466 */	ldr	s26, [x1, x5, lsl #2]	//  (*)
	.loc 13 454 0
..LDL771:
/*    454 */	ld1w	{z4.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 473 0
..LDL772:
/*    473 */	ldr	s7, [x1, x6, lsl #2]	//  (*)
	.loc 13 543 0
..LDL773:
/*    543 */	add	x1, x1, 4
	.loc 13 544 0
..LDL774:
/*    544 */	add	x2, x2, x4
	.loc 13 456 0
..LDL775:
/*    456 */	ld1w	{z0.s}, p1/z, [x14, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL776:
/*    459 */	prfm	2, [x13, 2560]	//  (*)
	.loc 13 545 0
..LDL777:
/*    545 */	subs	w0, w0, 1
	.loc 13 459 0
..LDL778:
/*    459 */	prfm	0, [x13, 512]	//  (*)
/*    459 */	ld1rw	{z2.s}, p2/z, [x13]	//  (*)
	.loc 13 543 0
..LDL779:
/*    543 */	add	x13, x13, 4
	.loc 13 454 0
..LDL780:
/*    454 */	prfm	2, [x7, 2560]	//  (*)
/*    454 */	prfm	0, [x7, 512]	//  (*)
	.loc 13 466 0
..LDL781:
/*    466 */	dup	z26.s, z26.s[0]
	.loc 13 473 0
..LDL782:
/*    473 */	dup	z7.s, z7.s[0]
	.loc 13 461 0
..LDL783:
/*    461 */	fmla	z25.s, p0/m, z2.s, z4.s
	.loc 13 463 0
..LDL784:
/*    463 */	fmla	z24.s, p1/m, z2.s, z0.s
	.loc 13 468 0
..LDL785:
/*    468 */	fmla	z6.s, p0/m, z26.s, z4.s
	.loc 13 470 0
..LDL786:
/*    470 */	fmla	z5.s, p1/m, z26.s, z0.s
	.loc 13 475 0
..LDL787:
/*    475 */	fmla	z3.s, p0/m, z7.s, z4.s
	.loc 13 477 0
..LDL788:
/*    477 */	fmla	z1.s, p1/m, z7.s, z0.s
	.loc 13 545 0 is_stmt 0
..LDL789:
/*    545 */	bne	.L11802
.L11796:
.L11206:
	.loc 13 550 0 is_stmt 1
..LDL790:
/*    550 */	st1w	{z25.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 552 0
..LDL791:
/*    552 */	st1w	{z24.s}, p1, [x8, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL792:
/*    556 */	st1w	{z6.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 558 0
..LDL793:
/*    558 */	st1w	{z5.s}, p1, [x10, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL794:
/*    562 */	st1w	{z3.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 564 0
..LDL795:
/*    564 */	st1w	{z1.s}, p1, [x12, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL796:
/*    ??? */	ldr	p4, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z8, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 7
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D8.pchi:
	.cfi_endproc
.LFE7:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL797:
.LFB8:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -4
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xa,0x92,0x1d,0x0,0x11,0x20,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xa,0x11,0x8,0x22,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xa,0x11,0x78,0x22,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL798:
/*    379 */	ld1w	{z24.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 385 0
..LDL799:
/*    385 */	sxtw	x8, w4
	.loc 13 391 0
..LDL800:
/*    391 */	add	w9, w4, w4
/*    391 */	sxtw	x7, w9
	.loc 13 397 0
..LDL801:
/*    397 */	add	w4, w9, w4
/*    397 */	sxtw	x4, w4
	.loc 13 385 0
..LDL802:
/*    385 */	add	x9, x3, x8, lsl #2
/*    385 */	ld1w	{z6.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL803:
/*    391 */	add	x10, x3, x7, lsl #2
/*    391 */	ld1w	{z4.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL804:
/*    397 */	add	x11, x3, x4, lsl #2
/*    397 */	ld1w	{z1.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL805:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11214
	.loc 13 473 0 is_stmt 0
..LDL806:
/*    473 */	add	w7, w5, w5
	.loc 13 544 0
..LDL807:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 480 0
..LDL808:
/*    480 */	add	w6, w7, w5
	.loc 13 466 0
..LDL809:
/*    466 */	sxtw	x8, w5
	.loc 13 473 0
..LDL810:
/*    473 */	sxtw	x7, w7
	.loc 13 480 0
..LDL811:
/*    480 */	sxtw	x6, w6
	.loc 13 459 0
..LDL812:
/*    459 */	orr	x5, x1, 6917529027641081856
	.loc 13 451 0
..LDL813:
/*    451 */	cmp	w0, 6
/*    451 */	blt	.L11810
	.loc 13 544 0
..LDL814:
/*    544 */	add	x13, x2, x4
	.loc 13 466 0
..LDL815:
/*    466 */	ldr	s7, [x1, x8, lsl #2]	//  (*)
	.loc 13 459 0
..LDL816:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 473 0
..LDL817:
/*    473 */	ldr	s5, [x1, x7, lsl #2]	//  (*)
	.loc 13 454 0
..LDL818:
/*    454 */	orr	x15, x2, 6917529027641081856
/*    454 */	orr	x16, x13, 6917529027641081856
	.loc 13 480 0
..LDL819:
/*    480 */	ldr	s3, [x1, x6, lsl #2]	//  (*)
	.loc 13 459 0
..LDL820:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 454 0
..LDL821:
/*    454 */	ld1w	{z0.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL822:
/*    543 */	add	x14, x1, 4
/*    543 */	add	x12, x5, 4
	.loc 13 459 0
..LDL823:
/*    459 */	ld1rw	{z25.s}, p1/z, [x5]	//  (*)
	.loc 13 544 0
..LDL824:
/*    544 */	add	x2, x13, x4
	.loc 13 454 0
..LDL825:
/*    454 */	ld1w	{z2.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL826:
/*    543 */	add	x1, x1, 8
	.loc 13 466 0
..LDL827:
/*    466 */	ldr	s29, [x14, x8, lsl #2]	//  (*)
	.loc 13 454 0
..LDL828:
/*    454 */	orr	x13, x2, 6917529027641081856
	.loc 13 459 0
..LDL829:
/*    459 */	ld1rw	{z27.s}, p2/z, [x12]	//  (*)
	.loc 13 473 0
..LDL830:
/*    473 */	ldr	s31, [x14, x7, lsl #2]	//  (*)
	.loc 13 480 0
..LDL831:
/*    480 */	ldr	s30, [x14, x6, lsl #2]	//  (*)
	.loc 13 454 0
..LDL832:
/*    454 */	prfm	2, [x15, 2560]	//  (*)
/*    454 */	prfm	0, [x15, 512]	//  (*)
/*    454 */	prfm	2, [x16, 2560]	//  (*)
/*    454 */	prfm	0, [x16, 512]	//  (*)
	.loc 13 466 0
..LDL833:
/*    466 */	dup	z7.s, z7.s[0]
	.loc 13 473 0
..LDL834:
/*    473 */	dup	z5.s, z5.s[0]
	.loc 13 480 0
..LDL835:
/*    480 */	dup	z3.s, z3.s[0]
	.p2align 5
.L11212:					// :entr:term:swpl
	.loc 13 454 0
..LDL836:
/*    454 */	prfm	2, [x13, 2560]	//  (*)
	.loc 13 544 0
..LDL837:
/*    544 */	add	x2, x2, x4
	.loc 13 466 0
..LDL838:
/*    466 */	ldr	s28, [x1, x8, lsl #2]	//  (*)
	.loc 13 459 0
..LDL839:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 454 0
..LDL840:
/*    454 */	prfm	0, [x13, 512]	//  (*)
/*    454 */	orr	x5, x2, 6917529027641081856
	.loc 13 473 0
..LDL841:
/*    473 */	ldr	s10, [x1, x7, lsl #2]	//  (*)
	.loc 13 454 0
..LDL842:
/*    454 */	ld1w	{z9.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL843:
/*    543 */	add	x14, x12, 4
	.loc 13 466 0
..LDL844:
/*    466 */	dup	z29.s, z29.s[0]
	.loc 13 459 0
..LDL845:
/*    459 */	ld1rw	{z8.s}, p1/z, [x14]	//  (*)
	.loc 13 461 0
..LDL846:
/*    461 */	fmla	z24.s, p0/m, z25.s, z0.s
	.loc 13 473 0
..LDL847:
/*    473 */	dup	z26.s, z31.s[0]
	.loc 13 480 0
..LDL848:
/*    480 */	ldr	s31, [x1, x6, lsl #2]	//  (*)
	.loc 13 543 0
..LDL849:
/*    543 */	add	x13, x1, 4
	.loc 13 468 0
..LDL850:
/*    468 */	fmla	z6.s, p0/m, z7.s, z0.s
	.loc 13 475 0
..LDL851:
/*    475 */	fmla	z4.s, p0/m, z5.s, z0.s
	.loc 13 480 0
..LDL852:
/*    480 */	dup	z5.s, z30.s[0]
	.loc 13 482 0
..LDL853:
/*    482 */	fmla	z1.s, p0/m, z3.s, z0.s
	.loc 13 454 0
..LDL854:
/*    454 */	prfm	2, [x5, 2560]	//  (*)
	.loc 13 544 0
..LDL855:
/*    544 */	add	x2, x2, x4
	.loc 13 466 0
..LDL856:
/*    466 */	ldr	s7, [x13, x8, lsl #2]	//  (*)
	.loc 13 454 0
..LDL857:
/*    454 */	prfm	0, [x5, 512]	//  (*)
/*    454 */	orr	x15, x2, 6917529027641081856
	.loc 13 473 0
..LDL858:
/*    473 */	ldr	s30, [x13, x7, lsl #2]	//  (*)
	.loc 13 454 0
..LDL859:
/*    454 */	ld1w	{z0.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL860:
/*    543 */	add	x5, x12, 8
	.loc 13 466 0
..LDL861:
/*    466 */	dup	z28.s, z28.s[0]
	.loc 13 459 0
..LDL862:
/*    459 */	ld1rw	{z25.s}, p1/z, [x5]	//  (*)
	.loc 13 461 0
..LDL863:
/*    461 */	fmla	z24.s, p0/m, z27.s, z2.s
	.loc 13 473 0
..LDL864:
/*    473 */	dup	z3.s, z10.s[0]
	.loc 13 480 0
..LDL865:
/*    480 */	ldr	s10, [x13, x6, lsl #2]	//  (*)
	.loc 13 543 0
..LDL866:
/*    543 */	add	x16, x1, 8
	.loc 13 468 0
..LDL867:
/*    468 */	fmla	z6.s, p0/m, z29.s, z2.s
	.loc 13 475 0
..LDL868:
/*    475 */	fmla	z4.s, p0/m, z26.s, z2.s
	.loc 13 480 0
..LDL869:
/*    480 */	dup	z26.s, z31.s[0]
	.loc 13 482 0
..LDL870:
/*    482 */	fmla	z1.s, p0/m, z5.s, z2.s
	.loc 13 454 0
..LDL871:
/*    454 */	prfm	2, [x15, 2560]	//  (*)
	.loc 13 544 0
..LDL872:
/*    544 */	add	x2, x2, x4
	.loc 13 466 0
..LDL873:
/*    466 */	ldr	s29, [x16, x8, lsl #2]	//  (*)
	.loc 13 454 0
..LDL874:
/*    454 */	prfm	0, [x15, 512]	//  (*)
/*    454 */	orr	x13, x2, 6917529027641081856
	.loc 13 473 0
..LDL875:
/*    473 */	ldr	s31, [x16, x7, lsl #2]	//  (*)
	.loc 13 454 0
..LDL876:
/*    454 */	ld1w	{z2.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL877:
/*    459 */	prfm	2, [x14, 2560]	//  (*)
	.loc 13 543 0
..LDL878:
/*    543 */	add	x12, x12, 12
	.loc 13 466 0
..LDL879:
/*    466 */	dup	z7.s, z7.s[0]
	.loc 13 459 0
..LDL880:
/*    459 */	ld1rw	{z27.s}, p1/z, [x12]	//  (*)
	.loc 13 461 0
..LDL881:
/*    461 */	fmla	z24.s, p0/m, z8.s, z9.s
	.loc 13 473 0
..LDL882:
/*    473 */	dup	z5.s, z30.s[0]
	.loc 13 480 0
..LDL883:
/*    480 */	ldr	s30, [x16, x6, lsl #2]	//  (*)
	.loc 13 543 0
..LDL884:
/*    543 */	add	x1, x1, 12
	.loc 13 468 0
..LDL885:
/*    468 */	fmla	z6.s, p0/m, z28.s, z9.s
	.loc 13 459 0
..LDL886:
/*    459 */	prfm	0, [x12, 504]	//  (*)
	.loc 13 475 0
..LDL887:
/*    475 */	fmla	z4.s, p0/m, z3.s, z9.s
	.loc 13 480 0
..LDL888:
/*    480 */	dup	z3.s, z10.s[0]
	.loc 13 482 0
..LDL889:
/*    482 */	fmla	z1.s, p0/m, z26.s, z9.s
	.loc 13 545 0
..LDL890:
/*    545 */	sub	w0, w0, 3
	.loc 13 453 0
..LDL891:
/*    453 */	cmp	w0, 6
/*    453 */	bge	.L11212
	.loc 13 466 0
..LDL892:
/*    466 */	ldr	s8, [x1, x8, lsl #2]	//  (*)
	.loc 13 459 0
..LDL893:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 461 0
..LDL894:
/*    461 */	fmla	z24.s, p0/m, z25.s, z0.s
	.loc 13 482 0
..LDL895:
/*    482 */	fmla	z1.s, p0/m, z3.s, z0.s
	.loc 13 468 0
..LDL896:
/*    468 */	fmla	z6.s, p0/m, z7.s, z0.s
	.loc 13 473 0
..LDL897:
/*    473 */	ldr	s28, [x1, x7, lsl #2]	//  (*)
	.loc 13 543 0
..LDL898:
/*    543 */	add	x14, x12, 4
	.loc 13 475 0
..LDL899:
/*    475 */	fmla	z4.s, p0/m, z5.s, z0.s
	.loc 13 544 0
..LDL900:
/*    544 */	add	x2, x2, x4
	.loc 13 466 0
..LDL901:
/*    466 */	dup	z26.s, z29.s[0]
	.loc 13 480 0
..LDL902:
/*    480 */	ldr	s29, [x1, x6, lsl #2]	//  (*)
	.loc 13 543 0
..LDL903:
/*    543 */	add	x1, x1, 4
	.loc 13 454 0
..LDL904:
/*    454 */	ld1w	{z0.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 473 0
..LDL905:
/*    473 */	dup	z25.s, z31.s[0]
	.loc 13 545 0
..LDL906:
/*    545 */	sub	w0, w0, 3
	.loc 13 459 0
..LDL907:
/*    459 */	ld1rw	{z7.s}, p1/z, [x14]	//  (*)
	.loc 13 480 0
..LDL908:
/*    480 */	dup	z3.s, z30.s[0]
	.loc 13 459 0
..LDL909:
/*    459 */	prfm	2, [x5, 2560]	//  (*)
/*    459 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 543 0
..LDL910:
/*    543 */	add	x5, x12, 8
	.loc 13 454 0
..LDL911:
/*    454 */	prfm	2, [x13, 2560]	//  (*)
/*    454 */	prfm	0, [x13, 512]	//  (*)
	.loc 13 459 0
..LDL912:
/*    459 */	prfm	2, [x12, 2560]	//  (*)
/*    459 */	prfm	0, [x12, 512]	//  (*)
	.loc 13 466 0
..LDL913:
/*    466 */	dup	z5.s, z8.s[0]
	.loc 13 459 0
..LDL914:
/*    459 */	prfm	2, [x14, 2560]	//  (*)
	.loc 13 461 0
..LDL915:
/*    461 */	fmla	z24.s, p0/m, z27.s, z2.s
	.loc 13 459 0
..LDL916:
/*    459 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 468 0
..LDL917:
/*    468 */	fmla	z6.s, p0/m, z26.s, z2.s
	.loc 13 475 0
..LDL918:
/*    475 */	fmla	z4.s, p0/m, z25.s, z2.s
	.loc 13 482 0
..LDL919:
/*    482 */	fmla	z1.s, p0/m, z3.s, z2.s
	.loc 13 473 0
..LDL920:
/*    473 */	dup	z3.s, z28.s[0]
	.loc 13 480 0
..LDL921:
/*    480 */	dup	z2.s, z29.s[0]
	.loc 13 461 0
..LDL922:
/*    461 */	fmla	z24.s, p0/m, z7.s, z0.s
	.loc 13 468 0
..LDL923:
/*    468 */	fmla	z6.s, p0/m, z5.s, z0.s
	.loc 13 475 0
..LDL924:
/*    475 */	fmla	z4.s, p0/m, z3.s, z0.s
	.loc 13 482 0
..LDL925:
/*    482 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 545 0
..LDL926:
/*    545 */	cbz	w0, .L11807
.L11810:
	.p2align 5
.L11813:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL927:
/*    454 */	orr	x12, x2, 6917529027641081856
	.loc 13 459 0
..LDL928:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 466 0
..LDL929:
/*    466 */	ldr	s0, [x1, x8, lsl #2]	//  (*)
	.loc 13 544 0
..LDL930:
/*    544 */	add	x2, x2, x4
	.loc 13 473 0
..LDL931:
/*    473 */	ldr	s7, [x1, x7, lsl #2]	//  (*)
	.loc 13 480 0
..LDL932:
/*    480 */	ldr	s3, [x1, x6, lsl #2]	//  (*)
	.loc 13 543 0
..LDL933:
/*    543 */	add	x1, x1, 4
	.loc 13 545 0
..LDL934:
/*    545 */	subs	w0, w0, 1
	.loc 13 454 0
..LDL935:
/*    454 */	ld1w	{z5.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL936:
/*    459 */	prfm	2, [x5, 2560]	//  (*)
/*    459 */	prfm	0, [x5, 512]	//  (*)
/*    459 */	ld1rw	{z2.s}, p1/z, [x5]	//  (*)
	.loc 13 543 0
..LDL937:
/*    543 */	add	x5, x5, 4
	.loc 13 454 0
..LDL938:
/*    454 */	prfm	2, [x12, 2560]	//  (*)
/*    454 */	prfm	0, [x12, 512]	//  (*)
	.loc 13 466 0
..LDL939:
/*    466 */	dup	z0.s, z0.s[0]
	.loc 13 473 0
..LDL940:
/*    473 */	dup	z7.s, z7.s[0]
	.loc 13 480 0
..LDL941:
/*    480 */	dup	z3.s, z3.s[0]
	.loc 13 461 0
..LDL942:
/*    461 */	fmla	z24.s, p0/m, z2.s, z5.s
	.loc 13 468 0
..LDL943:
/*    468 */	fmla	z6.s, p0/m, z0.s, z5.s
	.loc 13 475 0
..LDL944:
/*    475 */	fmla	z4.s, p0/m, z7.s, z5.s
	.loc 13 482 0
..LDL945:
/*    482 */	fmla	z1.s, p0/m, z3.s, z5.s
	.loc 13 545 0 is_stmt 0
..LDL946:
/*    545 */	bne	.L11813
.L11807:
.L11214:
	.loc 13 550 0 is_stmt 1
..LDL947:
/*    550 */	st1w	{z24.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL948:
/*    556 */	st1w	{z6.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL949:
/*    562 */	st1w	{z4.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL950:
/*    568 */	st1w	{z1.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL951:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 4
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D9.pchi:
	.cfi_endproc
.LFE8:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL952:
.LFB9:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -10
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xd0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 32
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL953:
/*    379 */	ld1w	{z24.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 385 0
..LDL954:
/*    385 */	sxtw	x11, w4
	.loc 13 391 0
..LDL955:
/*    391 */	add	w7, w4, w4
/*    391 */	sxtw	x9, w7
	.loc 13 397 0
..LDL956:
/*    397 */	add	w4, w7, w4
	.loc 13 387 0
..LDL957:
/*    387 */	add	x10, x11, 16
	.loc 13 397 0
..LDL958:
/*    397 */	sxtw	x7, w4
	.loc 13 393 0
..LDL959:
/*    393 */	add	x8, x9, 16
	.loc 13 399 0
..LDL960:
/*    399 */	add	x4, x7, 16
	.loc 13 381 0
..LDL961:
/*    381 */	add	x12, x3, 64
	.loc 13 385 0
..LDL962:
/*    385 */	add	x11, x3, x11, lsl #2
	.loc 13 381 0
..LDL963:
/*    381 */	ld1w	{z7.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 385 0
..LDL964:
/*    385 */	ld1w	{z11.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 387 0
..LDL965:
/*    387 */	add	x10, x3, x10, lsl #2
/*    387 */	ld1w	{z27.s}, p1/z, [x10, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL966:
/*    391 */	add	x9, x3, x9, lsl #2
/*    391 */	ld1w	{z5.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 393 0
..LDL967:
/*    393 */	add	x13, x3, x8, lsl #2
/*    393 */	ld1w	{z3.s}, p1/z, [x13, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL968:
/*    397 */	add	x7, x3, x7, lsl #2
/*    397 */	ld1w	{z2.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 399 0
..LDL969:
/*    399 */	add	x15, x3, x4, lsl #2
/*    399 */	ld1w	{z0.s}, p1/z, [x15, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL970:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11222
	.loc 13 473 0 is_stmt 0
..LDL971:
/*    473 */	add	w8, w5, w5
	.loc 13 544 0
..LDL972:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 480 0
..LDL973:
/*    480 */	add	w6, w8, w5
	.loc 13 466 0
..LDL974:
/*    466 */	sxtw	x17, w5
	.loc 13 473 0
..LDL975:
/*    473 */	sxtw	x8, w8
	.loc 13 480 0
..LDL976:
/*    480 */	sxtw	x16, w6
	.loc 13 459 0
..LDL977:
/*    459 */	orr	x18, x1, 6917529027641081856
	.loc 13 451 0
..LDL978:
/*    451 */	cmp	w0, 6
/*    451 */	blt	.L11821
	.loc 13 454 0
..LDL979:
/*    454 */	orr	x20, x2, 6917529027641081856
	.loc 13 544 0
..LDL980:
/*    544 */	add	x21, x2, x4
	.loc 13 459 0
..LDL981:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 466 0
..LDL982:
/*    466 */	ldr	s4, [x1, x17, lsl #2]	//  (*)
	.loc 13 473 0
..LDL983:
/*    473 */	ldr	s1, [x1, x8, lsl #2]	//  (*)
	.loc 13 454 0
..LDL984:
/*    454 */	orr	x22, x21, 6917529027641081856
	.loc 13 459 0
..LDL985:
/*    459 */	ptrue	p3.s, ALL
	.loc 13 543 0
..LDL986:
/*    543 */	add	x6, x18, 4
	.loc 13 454 0
..LDL987:
/*    454 */	ld1w	{z8.s}, p0/z, [x20, 0, mul vl]	//  (*)
	.loc 13 456 0
..LDL988:
/*    456 */	ld1w	{z31.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 544 0
..LDL989:
/*    544 */	add	x14, x21, x4
	.loc 13 543 0
..LDL990:
/*    543 */	add	x5, x1, 4
	.loc 13 459 0
..LDL991:
/*    459 */	ld1rw	{z28.s}, p2/z, [x18]	//  (*)
	.loc 13 454 0
..LDL992:
/*    454 */	ld1w	{z12.s}, p0/z, [x22, 0, mul vl]	//  (*)
/*    454 */	orr	x30, x14, 6917529027641081856
	.loc 13 456 0
..LDL993:
/*    456 */	ld1w	{z30.s}, p1/z, [x21, 1, mul vl]	//  (*)
	.loc 13 459 0
..LDL994:
/*    459 */	ld1rw	{z25.s}, p3/z, [x6]	//  (*)
	.loc 13 480 0
..LDL995:
/*    480 */	ldr	s15, [x1, x16, lsl #2]	//  (*)
	.loc 13 466 0
..LDL996:
/*    466 */	ldr	s29, [x5, x17, lsl #2]	//  (*)
	.loc 13 473 0
..LDL997:
/*    473 */	ldr	s14, [x5, x8, lsl #2]	//  (*)
	.loc 13 480 0
..LDL998:
/*    480 */	ldr	s13, [x5, x16, lsl #2]	//  (*)
	.loc 13 454 0
..LDL999:
/*    454 */	prfm	2, [x20, 2560]	//  (*)
/*    454 */	prfm	0, [x20, 512]	//  (*)
/*    454 */	prfm	2, [x22, 2560]	//  (*)
/*    454 */	prfm	0, [x22, 512]	//  (*)
	.loc 13 466 0
..LDL1000:
/*    466 */	dup	z6.s, z4.s[0]
	.loc 13 473 0
..LDL1001:
/*    473 */	dup	z26.s, z1.s[0]
	.loc 13 454 0
..LDL1002:
/*    454 */	prfm	2, [x30, 2560]	//  (*)
	.p2align 5
.L11220:					// :entr:term:swpl
	.loc 13 544 0
..LDL1003:
/*    544 */	add	x1, x14, x4
	.loc 13 454 0
..LDL1004:
/*    454 */	prfm	0, [x30, 512]	//  (*)
	.loc 13 543 0
..LDL1005:
/*    543 */	add	x2, x5, 4
	.loc 13 480 0
..LDL1006:
/*    480 */	dup	z1.s, z15.s[0]
	.loc 13 459 0
..LDL1007:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 461 0
..LDL1008:
/*    461 */	fmla	z24.s, p0/m, z28.s, z8.s
	.loc 13 466 0
..LDL1009:
/*    466 */	ldr	s15, [x2, x17, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1010:
/*    454 */	ld1w	{z10.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 463 0
..LDL1011:
/*    463 */	fmla	z7.s, p1/m, z28.s, z31.s
	.loc 13 466 0
..LDL1012:
/*    466 */	dup	z4.s, z29.s[0]
	.loc 13 456 0
..LDL1013:
/*    456 */	ld1w	{z9.s}, p1/z, [x14, 1, mul vl]	//  (*)
	.loc 13 468 0
..LDL1014:
/*    468 */	fmla	z11.s, p0/m, z6.s, z8.s
	.loc 13 543 0
..LDL1015:
/*    543 */	add	x14, x6, 4
	.loc 13 470 0
..LDL1016:
/*    470 */	fmla	z27.s, p1/m, z6.s, z31.s
	.loc 13 473 0
..LDL1017:
/*    473 */	ldr	s28, [x2, x8, lsl #2]	//  (*)
/*    473 */	dup	z29.s, z14.s[0]
	.loc 13 475 0
..LDL1018:
/*    475 */	fmla	z5.s, p0/m, z26.s, z8.s
	.loc 13 459 0
..LDL1019:
/*    459 */	ld1rw	{z6.s}, p2/z, [x14]	//  (*)
	.loc 13 480 0
..LDL1020:
/*    480 */	ldr	s14, [x2, x16, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1021:
/*    454 */	orr	x18, x1, 6917529027641081856
	.loc 13 477 0
..LDL1022:
/*    477 */	fmla	z3.s, p1/m, z26.s, z31.s
	.loc 13 482 0
..LDL1023:
/*    482 */	fmla	z2.s, p0/m, z1.s, z8.s
	.loc 13 484 0
..LDL1024:
/*    484 */	fmad	z1.s, p1/m, z31.s, z0.s
	.loc 13 454 0
..LDL1025:
/*    454 */	prfm	2, [x18, 2560]	//  (*)
	.loc 13 544 0
..LDL1026:
/*    544 */	add	x2, x1, x4
	.loc 13 454 0
..LDL1027:
/*    454 */	prfm	0, [x18, 512]	//  (*)
	.loc 13 543 0
..LDL1028:
/*    543 */	add	x14, x5, 8
	.loc 13 480 0
..LDL1029:
/*    480 */	dup	z0.s, z13.s[0]
	.loc 13 461 0
..LDL1030:
/*    461 */	fmla	z24.s, p0/m, z25.s, z12.s
	.loc 13 466 0
..LDL1031:
/*    466 */	ldr	s26, [x14, x17, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1032:
/*    454 */	ld1w	{z8.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 463 0
..LDL1033:
/*    463 */	fmla	z7.s, p1/m, z25.s, z30.s
	.loc 13 466 0
..LDL1034:
/*    466 */	dup	z25.s, z15.s[0]
	.loc 13 456 0
..LDL1035:
/*    456 */	ld1w	{z31.s}, p1/z, [x1, 1, mul vl]	//  (*)
	.loc 13 468 0
..LDL1036:
/*    468 */	fmla	z11.s, p0/m, z4.s, z12.s
	.loc 13 543 0
..LDL1037:
/*    543 */	add	x18, x6, 8
	.loc 13 470 0
..LDL1038:
/*    470 */	fmla	z27.s, p1/m, z4.s, z30.s
	.loc 13 473 0
..LDL1039:
/*    473 */	ldr	s13, [x14, x8, lsl #2]	//  (*)
/*    473 */	dup	z4.s, z28.s[0]
	.loc 13 475 0
..LDL1040:
/*    475 */	fmla	z5.s, p0/m, z29.s, z12.s
	.loc 13 459 0
..LDL1041:
/*    459 */	ld1rw	{z28.s}, p2/z, [x18]	//  (*)
	.loc 13 480 0
..LDL1042:
/*    480 */	ldr	s15, [x14, x16, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1043:
/*    454 */	orr	x1, x2, 6917529027641081856
	.loc 13 477 0
..LDL1044:
/*    477 */	fmla	z3.s, p1/m, z29.s, z30.s
	.loc 13 482 0
..LDL1045:
/*    482 */	fmla	z2.s, p0/m, z0.s, z12.s
	.loc 13 484 0
..LDL1046:
/*    484 */	fmla	z1.s, p1/m, z0.s, z30.s
	.loc 13 454 0
..LDL1047:
/*    454 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 544 0
..LDL1048:
/*    544 */	add	x14, x2, x4
	.loc 13 454 0
..LDL1049:
/*    454 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 543 0
..LDL1050:
/*    543 */	add	x5, x5, 12
	.loc 13 480 0
..LDL1051:
/*    480 */	dup	z0.s, z14.s[0]
	.loc 13 461 0
..LDL1052:
/*    461 */	fmla	z24.s, p0/m, z6.s, z10.s
	.loc 13 466 0
..LDL1053:
/*    466 */	ldr	s29, [x5, x17, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1054:
/*    454 */	ld1w	{z12.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 463 0
..LDL1055:
/*    463 */	fmla	z7.s, p1/m, z6.s, z9.s
	.loc 13 466 0
..LDL1056:
/*    466 */	dup	z6.s, z26.s[0]
	.loc 13 456 0
..LDL1057:
/*    456 */	ld1w	{z30.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 468 0
..LDL1058:
/*    468 */	fmla	z11.s, p0/m, z25.s, z10.s
	.loc 13 543 0
..LDL1059:
/*    543 */	add	x6, x6, 12
	.loc 13 470 0
..LDL1060:
/*    470 */	fmla	z27.s, p1/m, z25.s, z9.s
	.loc 13 473 0
..LDL1061:
/*    473 */	ldr	s14, [x5, x8, lsl #2]	//  (*)
	.loc 13 459 0
..LDL1062:
/*    459 */	prfm	2, [x6, 2552]	//  (*)
	.loc 13 473 0
..LDL1063:
/*    473 */	dup	z26.s, z13.s[0]
	.loc 13 475 0
..LDL1064:
/*    475 */	fmla	z5.s, p0/m, z4.s, z10.s
	.loc 13 459 0
..LDL1065:
/*    459 */	ld1rw	{z25.s}, p2/z, [x6]	//  (*)
/*    459 */	prfm	0, [x6, 504]	//  (*)
	.loc 13 480 0
..LDL1066:
/*    480 */	ldr	s13, [x5, x16, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1067:
/*    454 */	orr	x30, x14, 6917529027641081856
	.loc 13 477 0
..LDL1068:
/*    477 */	fmla	z3.s, p1/m, z4.s, z9.s
	.loc 13 482 0
..LDL1069:
/*    482 */	fmla	z2.s, p0/m, z0.s, z10.s
	.loc 13 484 0
..LDL1070:
/*    484 */	fmad	z0.s, p1/m, z9.s, z1.s
	.loc 13 454 0
..LDL1071:
/*    454 */	prfm	2, [x30, 2560]	//  (*)
	.loc 13 545 0
..LDL1072:
/*    545 */	sub	w0, w0, 3
	.loc 13 453 0
..LDL1073:
/*    453 */	cmp	w0, 6
/*    453 */	bge	.L11220
	.loc 13 543 0
..LDL1074:
/*    543 */	add	x1, x5, 4
	.loc 13 480 0
..LDL1075:
/*    480 */	dup	z9.s, z15.s[0]
	.loc 13 459 0
..LDL1076:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 468 0
..LDL1077:
/*    468 */	fmla	z11.s, p0/m, z6.s, z8.s
	.loc 13 543 0
..LDL1078:
/*    543 */	add	x20, x6, 4
	.loc 13 470 0
..LDL1079:
/*    470 */	fmla	z27.s, p1/m, z6.s, z31.s
	.loc 13 475 0
..LDL1080:
/*    475 */	fmla	z5.s, p0/m, z26.s, z8.s
	.loc 13 480 0
..LDL1081:
/*    480 */	ldr	s15, [x1, x16, lsl #2]	//  (*)
	.loc 13 461 0
..LDL1082:
/*    461 */	fmla	z24.s, p0/m, z28.s, z8.s
	.loc 13 544 0
..LDL1083:
/*    544 */	add	x2, x14, x4
	.loc 13 477 0
..LDL1084:
/*    477 */	fmla	z3.s, p1/m, z26.s, z31.s
	.loc 13 454 0
..LDL1085:
/*    454 */	ld1w	{z26.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 466 0
..LDL1086:
/*    466 */	ldr	s10, [x1, x17, lsl #2]	//  (*)
	.loc 13 463 0
..LDL1087:
/*    463 */	fmla	z7.s, p1/m, z28.s, z31.s
	.loc 13 545 0
..LDL1088:
/*    545 */	sub	w0, w0, 3
	.loc 13 466 0
..LDL1089:
/*    466 */	dup	z6.s, z29.s[0]
	.loc 13 473 0
..LDL1090:
/*    473 */	ldr	s16, [x1, x8, lsl #2]	//  (*)
	.loc 13 543 0
..LDL1091:
/*    543 */	add	x1, x5, 8
	.loc 13 473 0
..LDL1092:
/*    473 */	dup	z4.s, z14.s[0]
	.loc 13 456 0
..LDL1093:
/*    456 */	ld1w	{z28.s}, p1/z, [x14, 1, mul vl]	//  (*)
	.loc 13 459 0
..LDL1094:
/*    459 */	ld1rw	{z1.s}, p2/z, [x20]	//  (*)
	.loc 13 482 0
..LDL1095:
/*    482 */	fmla	z2.s, p0/m, z9.s, z8.s
	.loc 13 484 0
..LDL1096:
/*    484 */	fmad	z9.s, p1/m, z31.s, z0.s
	.loc 13 459 0
..LDL1097:
/*    459 */	prfm	2, [x18, 2560]	//  (*)
	.loc 13 480 0
..LDL1098:
/*    480 */	dup	z0.s, z13.s[0]
	.loc 13 459 0
..LDL1099:
/*    459 */	prfm	0, [x18, 512]	//  (*)
	.loc 13 543 0
..LDL1100:
/*    543 */	add	x18, x6, 8
	.loc 13 454 0
..LDL1101:
/*    454 */	prfm	0, [x30, 512]	//  (*)
	.loc 13 459 0
..LDL1102:
/*    459 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 468 0
..LDL1103:
/*    468 */	fmla	z11.s, p0/m, z6.s, z12.s
	.loc 13 459 0
..LDL1104:
/*    459 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 470 0
..LDL1105:
/*    470 */	fmla	z27.s, p1/m, z6.s, z30.s
	.loc 13 475 0
..LDL1106:
/*    475 */	fmla	z5.s, p0/m, z4.s, z12.s
	.loc 13 459 0
..LDL1107:
/*    459 */	prfm	2, [x20, 2560]	//  (*)
	.loc 13 461 0
..LDL1108:
/*    461 */	fmla	z24.s, p0/m, z25.s, z12.s
	.loc 13 477 0
..LDL1109:
/*    477 */	fmla	z3.s, p1/m, z4.s, z30.s
	.loc 13 459 0
..LDL1110:
/*    459 */	prfm	0, [x20, 512]	//  (*)
	.loc 13 463 0
..LDL1111:
/*    463 */	fmla	z7.s, p1/m, z25.s, z30.s
	.loc 13 466 0
..LDL1112:
/*    466 */	dup	z6.s, z10.s[0]
	.loc 13 473 0
..LDL1113:
/*    473 */	dup	z4.s, z16.s[0]
	.loc 13 482 0
..LDL1114:
/*    482 */	fmla	z2.s, p0/m, z0.s, z12.s
	.loc 13 484 0
..LDL1115:
/*    484 */	fmla	z9.s, p1/m, z0.s, z30.s
	.loc 13 480 0
..LDL1116:
/*    480 */	dup	z0.s, z15.s[0]
	.loc 13 468 0
..LDL1117:
/*    468 */	fmla	z11.s, p0/m, z6.s, z26.s
	.loc 13 470 0
..LDL1118:
/*    470 */	fmla	z27.s, p1/m, z6.s, z28.s
	.loc 13 461 0
..LDL1119:
/*    461 */	fmla	z24.s, p0/m, z1.s, z26.s
	.loc 13 475 0
..LDL1120:
/*    475 */	fmla	z5.s, p0/m, z4.s, z26.s
	.loc 13 463 0
..LDL1121:
/*    463 */	fmla	z7.s, p1/m, z1.s, z28.s
	.loc 13 477 0
..LDL1122:
/*    477 */	fmla	z3.s, p1/m, z4.s, z28.s
	.loc 13 482 0
..LDL1123:
/*    482 */	fmla	z2.s, p0/m, z0.s, z26.s
	.loc 13 484 0
..LDL1124:
/*    484 */	fmad	z0.s, p1/m, z28.s, z9.s
	.loc 13 545 0
..LDL1125:
/*    545 */	cbz	w0, .L11818
.L11821:
	.p2align 5
.L11824:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL1126:
/*    454 */	orr	x5, x2, 6917529027641081856
	.loc 13 456 0
..LDL1127:
/*    456 */	add	x6, x2, 64
	.loc 13 459 0
..LDL1128:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 466 0
..LDL1129:
/*    466 */	ldr	s4, [x1, x17, lsl #2]	//  (*)
	.loc 13 473 0
..LDL1130:
/*    473 */	ldr	s28, [x1, x8, lsl #2]	//  (*)
	.loc 13 480 0
..LDL1131:
/*    480 */	ldr	s25, [x1, x16, lsl #2]	//  (*)
	.loc 13 543 0
..LDL1132:
/*    543 */	add	x1, x1, 4
	.loc 13 544 0
..LDL1133:
/*    544 */	add	x2, x2, x4
	.loc 13 454 0
..LDL1134:
/*    454 */	ld1w	{z26.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 456 0
..LDL1135:
/*    456 */	ld1w	{z1.s}, p1/z, [x6, 0, mul vl]	//  (*)
	.loc 13 545 0
..LDL1136:
/*    545 */	subs	w0, w0, 1
	.loc 13 459 0
..LDL1137:
/*    459 */	prfm	2, [x18, 2560]	//  (*)
/*    459 */	ld1rw	{z6.s}, p2/z, [x18]	//  (*)
	.loc 13 454 0
..LDL1138:
/*    454 */	prfm	2, [x5, 2560]	//  (*)
	.loc 13 459 0
..LDL1139:
/*    459 */	prfm	0, [x18, 512]	//  (*)
	.loc 13 543 0
..LDL1140:
/*    543 */	add	x18, x18, 4
	.loc 13 454 0
..LDL1141:
/*    454 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 466 0
..LDL1142:
/*    466 */	dup	z4.s, z4.s[0]
	.loc 13 473 0
..LDL1143:
/*    473 */	dup	z28.s, z28.s[0]
	.loc 13 480 0
..LDL1144:
/*    480 */	dup	z25.s, z25.s[0]
	.loc 13 461 0
..LDL1145:
/*    461 */	fmla	z24.s, p0/m, z6.s, z26.s
	.loc 13 463 0
..LDL1146:
/*    463 */	fmla	z7.s, p1/m, z6.s, z1.s
	.loc 13 468 0
..LDL1147:
/*    468 */	fmla	z11.s, p0/m, z4.s, z26.s
	.loc 13 470 0
..LDL1148:
/*    470 */	fmla	z27.s, p1/m, z4.s, z1.s
	.loc 13 475 0
..LDL1149:
/*    475 */	fmla	z5.s, p0/m, z28.s, z26.s
	.loc 13 477 0
..LDL1150:
/*    477 */	fmla	z3.s, p1/m, z28.s, z1.s
	.loc 13 482 0
..LDL1151:
/*    482 */	fmla	z2.s, p0/m, z25.s, z26.s
	.loc 13 484 0
..LDL1152:
/*    484 */	fmla	z0.s, p1/m, z25.s, z1.s
	.loc 13 545 0 is_stmt 0
..LDL1153:
/*    545 */	bne	.L11824
.L11818:
.L11222:
	.loc 13 550 0 is_stmt 1
..LDL1154:
/*    550 */	st1w	{z24.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 552 0
..LDL1155:
/*    552 */	st1w	{z7.s}, p1, [x12, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL1156:
/*    556 */	st1w	{z11.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 558 0
..LDL1157:
/*    558 */	st1w	{z27.s}, p1, [x10, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL1158:
/*    562 */	st1w	{z5.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 564 0
..LDL1159:
/*    564 */	st1w	{z3.s}, p1, [x13, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL1160:
/*    568 */	st1w	{z2.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 570 0
..LDL1161:
/*    570 */	st1w	{z0.s}, p1, [x15, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL1162:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 10
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D10.pchi:
	.cfi_endproc
.LFE9:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL1163:
.LFB10:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -7
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xa,0x92,0x1d,0x0,0x11,0x38,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xa,0x11,0x8,0x22,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xa,0x11,0x78,0x22,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL1164:
/*    379 */	ld1w	{z25.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL1165:
/*    391 */	add	w7, w4, w4
	.loc 13 403 0
..LDL1166:
/*    403 */	lsl	w10, w4, 2
	.loc 13 385 0
..LDL1167:
/*    385 */	sxtw	x9, w4
	.loc 13 397 0
..LDL1168:
/*    397 */	add	w4, w7, w4
	.loc 13 391 0
..LDL1169:
/*    391 */	sxtw	x8, w7
	.loc 13 397 0
..LDL1170:
/*    397 */	sxtw	x7, w4
	.loc 13 403 0
..LDL1171:
/*    403 */	sxtw	x4, w10
	.loc 13 397 0
..LDL1172:
/*    397 */	add	x11, x3, x7, lsl #2
	.loc 13 385 0
..LDL1173:
/*    385 */	add	x9, x3, x9, lsl #2
	.loc 13 397 0
..LDL1174:
/*    397 */	ld1w	{z3.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 385 0
..LDL1175:
/*    385 */	ld1w	{z7.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL1176:
/*    391 */	add	x10, x3, x8, lsl #2
/*    391 */	ld1w	{z5.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 403 0
..LDL1177:
/*    403 */	add	x7, x3, x4, lsl #2
/*    403 */	ld1w	{z1.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL1178:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11230
	.loc 13 473 0 is_stmt 0
..LDL1179:
/*    473 */	add	w12, w5, w5
	.loc 13 544 0
..LDL1180:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 480 0
..LDL1181:
/*    480 */	add	w6, w12, w5
	.loc 13 466 0
..LDL1182:
/*    466 */	sxtw	x8, w5
	.loc 13 487 0
..LDL1183:
/*    487 */	lsl	w5, w5, 2
	.loc 13 473 0
..LDL1184:
/*    473 */	sxtw	x14, w12
	.loc 13 487 0
..LDL1185:
/*    487 */	sxtw	x13, w5
	.loc 13 480 0
..LDL1186:
/*    480 */	sxtw	x12, w6
	.loc 13 459 0
..LDL1187:
/*    459 */	orr	x5, x1, 6917529027641081856
	.loc 13 451 0
..LDL1188:
/*    451 */	cmp	w0, 6
/*    451 */	blt	.L11832
	.loc 13 544 0
..LDL1189:
/*    544 */	add	x18, x2, x4
	.loc 13 466 0
..LDL1190:
/*    466 */	ldr	s2, [x1, x8, lsl #2]	//  (*)
	.loc 13 459 0
..LDL1191:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 473 0
..LDL1192:
/*    473 */	ldr	s24, [x1, x14, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1193:
/*    454 */	orr	x16, x2, 6917529027641081856
	.loc 13 480 0
..LDL1194:
/*    480 */	ldr	s4, [x1, x12, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1195:
/*    454 */	orr	x17, x18, 6917529027641081856
	.loc 13 459 0
..LDL1196:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 454 0
..LDL1197:
/*    454 */	ld1w	{z6.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL1198:
/*    543 */	add	x6, x1, 4
/*    543 */	add	x15, x5, 4
	.loc 13 459 0
..LDL1199:
/*    459 */	ld1rw	{z29.s}, p2/z, [x5]	//  (*)
	.loc 13 544 0
..LDL1200:
/*    544 */	add	x2, x18, x4
	.loc 13 454 0
..LDL1201:
/*    454 */	ld1w	{z0.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 487 0
..LDL1202:
/*    487 */	ldr	s8, [x1, x13, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1203:
/*    454 */	orr	x1, x2, 6917529027641081856
	.loc 13 459 0
..LDL1204:
/*    459 */	ld1rw	{z28.s}, p1/z, [x15]	//  (*)
	.loc 13 466 0
..LDL1205:
/*    466 */	ldr	s31, [x6, x8, lsl #2]	//  (*)
	.loc 13 473 0
..LDL1206:
/*    473 */	ldr	s12, [x6, x14, lsl #2]	//  (*)
	.loc 13 480 0
..LDL1207:
/*    480 */	ldr	s11, [x6, x12, lsl #2]	//  (*)
	.loc 13 487 0
..LDL1208:
/*    487 */	ldr	s9, [x6, x13, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1209:
/*    454 */	prfm	2, [x16, 2560]	//  (*)
/*    454 */	prfm	0, [x16, 512]	//  (*)
/*    454 */	prfm	2, [x17, 2560]	//  (*)
	.loc 13 473 0
..LDL1210:
/*    473 */	dup	z27.s, z24.s[0]
	.loc 13 454 0
..LDL1211:
/*    454 */	prfm	0, [x17, 512]	//  (*)
	.loc 13 466 0
..LDL1212:
/*    466 */	dup	z2.s, z2.s[0]
	.loc 13 480 0
..LDL1213:
/*    480 */	dup	z24.s, z4.s[0]
	.p2align 5
.L11228:					// :entr:term:swpl
	.loc 13 454 0
..LDL1214:
/*    454 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 543 0
..LDL1215:
/*    543 */	add	x5, x6, 4
	.loc 13 487 0
..LDL1216:
/*    487 */	dup	z8.s, z8.s[0]
	.loc 13 454 0
..LDL1217:
/*    454 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 544 0
..LDL1218:
/*    544 */	add	x16, x2, x4
	.loc 13 466 0
..LDL1219:
/*    466 */	ldr	s13, [x5, x8, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1220:
/*    454 */	ld1w	{z10.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 466 0
..LDL1221:
/*    466 */	dup	z31.s, z31.s[0]
	.loc 13 459 0
..LDL1222:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 461 0
..LDL1223:
/*    461 */	fmla	z25.s, p0/m, z29.s, z6.s
	.loc 13 473 0
..LDL1224:
/*    473 */	ldr	s29, [x5, x14, lsl #2]	//  (*)
	.loc 13 468 0
..LDL1225:
/*    468 */	fmla	z7.s, p0/m, z2.s, z6.s
	.loc 13 543 0
..LDL1226:
/*    543 */	add	x1, x15, 4
	.loc 13 473 0
..LDL1227:
/*    473 */	dup	z26.s, z12.s[0]
	.loc 13 475 0
..LDL1228:
/*    475 */	fmla	z5.s, p0/m, z27.s, z6.s
	.loc 13 480 0
..LDL1229:
/*    480 */	ldr	s12, [x5, x12, lsl #2]	//  (*)
/*    480 */	dup	z4.s, z11.s[0]
	.loc 13 482 0
..LDL1230:
/*    482 */	fmla	z3.s, p0/m, z24.s, z6.s
	.loc 13 454 0
..LDL1231:
/*    454 */	orr	x18, x16, 6917529027641081856
	.loc 13 459 0
..LDL1232:
/*    459 */	ld1rw	{z30.s}, p1/z, [x1]	//  (*)
	.loc 13 487 0
..LDL1233:
/*    487 */	ldr	s11, [x5, x13, lsl #2]	//  (*)
	.loc 13 489 0
..LDL1234:
/*    489 */	fmla	z1.s, p0/m, z8.s, z6.s
	.loc 13 454 0
..LDL1235:
/*    454 */	prfm	2, [x18, 2560]	//  (*)
	.loc 13 543 0
..LDL1236:
/*    543 */	add	x2, x6, 8
	.loc 13 487 0
..LDL1237:
/*    487 */	dup	z2.s, z9.s[0]
	.loc 13 454 0
..LDL1238:
/*    454 */	prfm	0, [x18, 512]	//  (*)
	.loc 13 544 0
..LDL1239:
/*    544 */	add	x17, x16, x4
	.loc 13 466 0
..LDL1240:
/*    466 */	ldr	s9, [x2, x8, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1241:
/*    454 */	ld1w	{z6.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 466 0
..LDL1242:
/*    466 */	dup	z27.s, z13.s[0]
	.loc 13 461 0
..LDL1243:
/*    461 */	fmla	z25.s, p0/m, z28.s, z0.s
	.loc 13 473 0
..LDL1244:
/*    473 */	ldr	s28, [x2, x14, lsl #2]	//  (*)
	.loc 13 468 0
..LDL1245:
/*    468 */	fmla	z7.s, p0/m, z31.s, z0.s
	.loc 13 543 0
..LDL1246:
/*    543 */	add	x5, x15, 8
	.loc 13 473 0
..LDL1247:
/*    473 */	dup	z24.s, z29.s[0]
	.loc 13 475 0
..LDL1248:
/*    475 */	fmla	z5.s, p0/m, z26.s, z0.s
	.loc 13 480 0
..LDL1249:
/*    480 */	ldr	s13, [x2, x12, lsl #2]	//  (*)
/*    480 */	dup	z26.s, z12.s[0]
	.loc 13 482 0
..LDL1250:
/*    482 */	fmla	z3.s, p0/m, z4.s, z0.s
	.loc 13 454 0
..LDL1251:
/*    454 */	orr	x16, x17, 6917529027641081856
	.loc 13 459 0
..LDL1252:
/*    459 */	ld1rw	{z29.s}, p1/z, [x5]	//  (*)
	.loc 13 487 0
..LDL1253:
/*    487 */	ldr	s8, [x2, x13, lsl #2]	//  (*)
	.loc 13 489 0
..LDL1254:
/*    489 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 454 0
..LDL1255:
/*    454 */	prfm	2, [x16, 2560]	//  (*)
	.loc 13 543 0
..LDL1256:
/*    543 */	add	x6, x6, 12
	.loc 13 487 0
..LDL1257:
/*    487 */	dup	z4.s, z11.s[0]
	.loc 13 454 0
..LDL1258:
/*    454 */	prfm	0, [x16, 512]	//  (*)
	.loc 13 544 0
..LDL1259:
/*    544 */	add	x2, x17, x4
	.loc 13 466 0
..LDL1260:
/*    466 */	ldr	s31, [x6, x8, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1261:
/*    454 */	ld1w	{z0.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL1262:
/*    459 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 466 0
..LDL1263:
/*    466 */	dup	z2.s, z9.s[0]
	.loc 13 459 0
..LDL1264:
/*    459 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 461 0
..LDL1265:
/*    461 */	fmla	z25.s, p0/m, z30.s, z10.s
	.loc 13 473 0
..LDL1266:
/*    473 */	ldr	s12, [x6, x14, lsl #2]	//  (*)
	.loc 13 468 0
..LDL1267:
/*    468 */	fmla	z7.s, p0/m, z27.s, z10.s
	.loc 13 543 0
..LDL1268:
/*    543 */	add	x15, x15, 12
	.loc 13 473 0
..LDL1269:
/*    473 */	dup	z27.s, z28.s[0]
	.loc 13 475 0
..LDL1270:
/*    475 */	fmla	z5.s, p0/m, z24.s, z10.s
	.loc 13 480 0
..LDL1271:
/*    480 */	ldr	s11, [x6, x12, lsl #2]	//  (*)
/*    480 */	dup	z24.s, z13.s[0]
	.loc 13 482 0
..LDL1272:
/*    482 */	fmla	z3.s, p0/m, z26.s, z10.s
	.loc 13 454 0
..LDL1273:
/*    454 */	orr	x1, x2, 6917529027641081856
	.loc 13 459 0
..LDL1274:
/*    459 */	ld1rw	{z28.s}, p1/z, [x15]	//  (*)
	.loc 13 487 0
..LDL1275:
/*    487 */	ldr	s9, [x6, x13, lsl #2]	//  (*)
	.loc 13 489 0
..LDL1276:
/*    489 */	fmla	z1.s, p0/m, z4.s, z10.s
	.loc 13 545 0
..LDL1277:
/*    545 */	sub	w0, w0, 3
	.loc 13 453 0
..LDL1278:
/*    453 */	cmp	w0, 6
/*    453 */	bge	.L11228
	.loc 13 543 0
..LDL1279:
/*    543 */	add	x16, x6, 4
	.loc 13 487 0
..LDL1280:
/*    487 */	dup	z26.s, z8.s[0]
	.loc 13 459 0
..LDL1281:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 468 0
..LDL1282:
/*    468 */	fmla	z7.s, p0/m, z2.s, z6.s
	.loc 13 466 0
..LDL1283:
/*    466 */	ldr	s8, [x16, x8, lsl #2]	//  (*)
	.loc 13 461 0
..LDL1284:
/*    461 */	fmla	z25.s, p0/m, z29.s, z6.s
	.loc 13 543 0
..LDL1285:
/*    543 */	add	x17, x15, 4
	.loc 13 475 0
..LDL1286:
/*    475 */	fmla	z5.s, p0/m, z27.s, z6.s
	.loc 13 544 0
..LDL1287:
/*    544 */	add	x2, x2, x4
	.loc 13 473 0
..LDL1288:
/*    473 */	ldr	s29, [x16, x14, lsl #2]	//  (*)
	.loc 13 482 0
..LDL1289:
/*    482 */	fmla	z3.s, p0/m, z24.s, z6.s
	.loc 13 545 0
..LDL1290:
/*    545 */	sub	w0, w0, 3
	.loc 13 466 0
..LDL1291:
/*    466 */	dup	z4.s, z31.s[0]
	.loc 13 480 0
..LDL1292:
/*    480 */	ldr	s31, [x16, x12, lsl #2]	//  (*)
	.loc 13 473 0
..LDL1293:
/*    473 */	dup	z2.s, z12.s[0]
	.loc 13 487 0
..LDL1294:
/*    487 */	ldr	s10, [x16, x13, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1295:
/*    454 */	ld1w	{z30.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 480 0
..LDL1296:
/*    480 */	dup	z27.s, z11.s[0]
	.loc 13 459 0
..LDL1297:
/*    459 */	ld1rw	{z24.s}, p1/z, [x17]	//  (*)
	.loc 13 489 0
..LDL1298:
/*    489 */	fmla	z1.s, p0/m, z26.s, z6.s
	.loc 13 454 0
..LDL1299:
/*    454 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 487 0
..LDL1300:
/*    487 */	dup	z26.s, z9.s[0]
	.loc 13 454 0
..LDL1301:
/*    454 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 459 0
..LDL1302:
/*    459 */	prfm	2, [x5, 2560]	//  (*)
	.loc 13 543 0
..LDL1303:
/*    543 */	add	x1, x6, 8
	.loc 13 459 0
..LDL1304:
/*    459 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 468 0
..LDL1305:
/*    468 */	fmla	z7.s, p0/m, z4.s, z0.s
	.loc 13 543 0
..LDL1306:
/*    543 */	add	x5, x15, 8
	.loc 13 459 0
..LDL1307:
/*    459 */	prfm	2, [x15, 2560]	//  (*)
	.loc 13 461 0
..LDL1308:
/*    461 */	fmla	z25.s, p0/m, z28.s, z0.s
	.loc 13 475 0
..LDL1309:
/*    475 */	fmla	z5.s, p0/m, z2.s, z0.s
	.loc 13 459 0
..LDL1310:
/*    459 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 482 0
..LDL1311:
/*    482 */	fmla	z3.s, p0/m, z27.s, z0.s
	.loc 13 466 0
..LDL1312:
/*    466 */	dup	z6.s, z8.s[0]
	.loc 13 459 0
..LDL1313:
/*    459 */	prfm	2, [x17, 2560]	//  (*)
	.loc 13 473 0
..LDL1314:
/*    473 */	dup	z4.s, z29.s[0]
	.loc 13 459 0
..LDL1315:
/*    459 */	prfm	0, [x17, 512]	//  (*)
	.loc 13 480 0
..LDL1316:
/*    480 */	dup	z2.s, z31.s[0]
	.loc 13 489 0
..LDL1317:
/*    489 */	fmla	z1.s, p0/m, z26.s, z0.s
	.loc 13 487 0
..LDL1318:
/*    487 */	dup	z0.s, z10.s[0]
	.loc 13 468 0
..LDL1319:
/*    468 */	fmla	z7.s, p0/m, z6.s, z30.s
	.loc 13 461 0
..LDL1320:
/*    461 */	fmla	z25.s, p0/m, z24.s, z30.s
	.loc 13 475 0
..LDL1321:
/*    475 */	fmla	z5.s, p0/m, z4.s, z30.s
	.loc 13 482 0
..LDL1322:
/*    482 */	fmla	z3.s, p0/m, z2.s, z30.s
	.loc 13 489 0
..LDL1323:
/*    489 */	fmla	z1.s, p0/m, z0.s, z30.s
	.loc 13 545 0
..LDL1324:
/*    545 */	cbz	w0, .L11829
.L11832:
	.p2align 5
.L11835:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL1325:
/*    454 */	orr	x6, x2, 6917529027641081856
	.loc 13 459 0
..LDL1326:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 466 0
..LDL1327:
/*    466 */	ldr	s0, [x1, x8, lsl #2]	//  (*)
	.loc 13 544 0
..LDL1328:
/*    544 */	add	x2, x2, x4
	.loc 13 473 0
..LDL1329:
/*    473 */	ldr	s26, [x1, x14, lsl #2]	//  (*)
	.loc 13 480 0
..LDL1330:
/*    480 */	ldr	s24, [x1, x12, lsl #2]	//  (*)
	.loc 13 545 0
..LDL1331:
/*    545 */	subs	w0, w0, 1
	.loc 13 454 0
..LDL1332:
/*    454 */	ld1w	{z6.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 487 0
..LDL1333:
/*    487 */	ldr	s4, [x1, x13, lsl #2]	//  (*)
	.loc 13 543 0
..LDL1334:
/*    543 */	add	x1, x1, 4
	.loc 13 459 0
..LDL1335:
/*    459 */	prfm	2, [x5, 2560]	//  (*)
/*    459 */	ld1rw	{z2.s}, p1/z, [x5]	//  (*)
	.loc 13 454 0
..LDL1336:
/*    454 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 459 0
..LDL1337:
/*    459 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 543 0
..LDL1338:
/*    543 */	add	x5, x5, 4
	.loc 13 454 0
..LDL1339:
/*    454 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 466 0
..LDL1340:
/*    466 */	dup	z0.s, z0.s[0]
	.loc 13 473 0
..LDL1341:
/*    473 */	dup	z26.s, z26.s[0]
	.loc 13 480 0
..LDL1342:
/*    480 */	dup	z24.s, z24.s[0]
	.loc 13 487 0
..LDL1343:
/*    487 */	dup	z4.s, z4.s[0]
	.loc 13 461 0
..LDL1344:
/*    461 */	fmla	z25.s, p0/m, z2.s, z6.s
	.loc 13 468 0
..LDL1345:
/*    468 */	fmla	z7.s, p0/m, z0.s, z6.s
	.loc 13 475 0
..LDL1346:
/*    475 */	fmla	z5.s, p0/m, z26.s, z6.s
	.loc 13 482 0
..LDL1347:
/*    482 */	fmla	z3.s, p0/m, z24.s, z6.s
	.loc 13 489 0
..LDL1348:
/*    489 */	fmla	z1.s, p0/m, z4.s, z6.s
	.loc 13 545 0 is_stmt 0
..LDL1349:
/*    545 */	bne	.L11835
.L11829:
.L11230:
	.loc 13 550 0 is_stmt 1
..LDL1350:
/*    550 */	st1w	{z25.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL1351:
/*    556 */	st1w	{z7.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL1352:
/*    562 */	st1w	{z5.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL1353:
/*    568 */	st1w	{z3.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL1354:
/*    574 */	st1w	{z1.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL1355:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 7
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D11.pchi:
	.cfi_endproc
.LFE10:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL1356:
.LFB11:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -14
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xf0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 64
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x50,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x18,0xb,0x11,0x58,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x25, x26, [x29, -64]	//  (*)
	.cfi_escape 0x10,0x19,0xb,0x11,0x40,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1a,0xb,0x11,0x48,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z20, [x29, 13, mul vl]	//  (*)
	.cfi_escape 0x10,0x74,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL1357:
/*    379 */	ld1w	{z5.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL1358:
/*    391 */	add	w8, w4, w4
	.loc 13 403 0
..LDL1359:
/*    403 */	lsl	w7, w4, 2
	.loc 13 385 0
..LDL1360:
/*    385 */	sxtw	x13, w4
	.loc 13 397 0
..LDL1361:
/*    397 */	add	w4, w8, w4
	.loc 13 391 0
..LDL1362:
/*    391 */	sxtw	x11, w8
	.loc 13 397 0
..LDL1363:
/*    397 */	sxtw	x9, w4
	.loc 13 387 0
..LDL1364:
/*    387 */	add	x12, x13, 16
	.loc 13 403 0
..LDL1365:
/*    403 */	sxtw	x7, w7
	.loc 13 393 0
..LDL1366:
/*    393 */	add	x10, x11, 16
	.loc 13 399 0
..LDL1367:
/*    399 */	add	x8, x9, 16
	.loc 13 405 0
..LDL1368:
/*    405 */	add	x4, x7, 16
	.loc 13 385 0
..LDL1369:
/*    385 */	add	x13, x3, x13, lsl #2
	.loc 13 381 0
..LDL1370:
/*    381 */	add	x14, x3, 64
/*    381 */	ld1w	{z3.s}, p1/z, [x14, 0, mul vl]	//  (*)
	.loc 13 387 0
..LDL1371:
/*    387 */	add	x12, x3, x12, lsl #2
	.loc 13 385 0
..LDL1372:
/*    385 */	ld1w	{z25.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 387 0
..LDL1373:
/*    387 */	ld1w	{z7.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL1374:
/*    391 */	add	x11, x3, x11, lsl #2
/*    391 */	ld1w	{z28.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 393 0
..LDL1375:
/*    393 */	add	x10, x3, x10, lsl #2
/*    393 */	ld1w	{z30.s}, p1/z, [x10, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL1376:
/*    397 */	add	x9, x3, x9, lsl #2
/*    397 */	ld1w	{z29.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 399 0
..LDL1377:
/*    399 */	add	x8, x3, x8, lsl #2
/*    399 */	ld1w	{z14.s}, p1/z, [x8, 0, mul vl]	//  (*)
	.loc 13 403 0
..LDL1378:
/*    403 */	add	x7, x3, x7, lsl #2
/*    403 */	ld1w	{z1.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 405 0
..LDL1379:
/*    405 */	add	x15, x3, x4, lsl #2
/*    405 */	ld1w	{z27.s}, p1/z, [x15, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL1380:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11238
	.loc 13 473 0 is_stmt 0
..LDL1381:
/*    473 */	add	w16, w5, w5
	.loc 13 544 0
..LDL1382:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 480 0
..LDL1383:
/*    480 */	add	w18, w16, w5
	.loc 13 466 0
..LDL1384:
/*    466 */	sxtw	x6, w5
	.loc 13 487 0
..LDL1385:
/*    487 */	lsl	w17, w5, 2
	.loc 13 473 0
..LDL1386:
/*    473 */	sxtw	x16, w16
	.loc 13 480 0
..LDL1387:
/*    480 */	sxtw	x5, w18
	.loc 13 487 0
..LDL1388:
/*    487 */	sxtw	x17, w17
	.loc 13 459 0
..LDL1389:
/*    459 */	orr	x20, x1, 6917529027641081856
	.loc 13 451 0
..LDL1390:
/*    451 */	cmp	w0, 6
/*    451 */	blt	.L11843
	.loc 13 544 0
..LDL1391:
/*    544 */	add	x22, x2, x4
	.loc 13 466 0
..LDL1392:
/*    466 */	ldr	s24, [x1, x6, lsl #2]	//  (*)
	.loc 13 459 0
..LDL1393:
/*    459 */	ptrue	p3.s, ALL
	.loc 13 473 0
..LDL1394:
/*    473 */	ldr	s6, [x1, x16, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1395:
/*    454 */	orr	x23, x2, 6917529027641081856
/*    454 */	orr	x24, x22, 6917529027641081856
	.loc 13 456 0
..LDL1396:
/*    456 */	ld1w	{z13.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 459 0
..LDL1397:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 543 0
..LDL1398:
/*    543 */	add	x21, x1, 4
/*    543 */	add	x30, x20, 4
	.loc 13 456 0
..LDL1399:
/*    456 */	ld1w	{z8.s}, p1/z, [x22, 1, mul vl]	//  (*)
	.loc 13 454 0
..LDL1400:
/*    454 */	ld1w	{z11.s}, p0/z, [x23, 0, mul vl]	//  (*)
	.loc 13 544 0
..LDL1401:
/*    544 */	add	x18, x22, x4
	.loc 13 459 0
..LDL1402:
/*    459 */	ld1rw	{z10.s}, p3/z, [x20]	//  (*)
	.loc 13 454 0
..LDL1403:
/*    454 */	orr	x22, x18, 6917529027641081856
	.loc 13 544 0
..LDL1404:
/*    544 */	add	x2, x18, x4
	.loc 13 459 0
..LDL1405:
/*    459 */	ld1rw	{z2.s}, p2/z, [x30]	//  (*)
	.loc 13 454 0
..LDL1406:
/*    454 */	ld1w	{z0.s}, p0/z, [x24, 0, mul vl]	//  (*)
	.loc 13 480 0
..LDL1407:
/*    480 */	ldr	s9, [x1, x5, lsl #2]	//  (*)
	.loc 13 487 0
..LDL1408:
/*    487 */	ldr	s12, [x1, x17, lsl #2]	//  (*)
	.loc 13 466 0
..LDL1409:
/*    466 */	ldr	s4, [x21, x6, lsl #2]	//  (*)
	.loc 13 473 0
..LDL1410:
/*    473 */	ldr	s17, [x21, x16, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1411:
/*    454 */	prfm	2, [x23, 2560]	//  (*)
/*    454 */	prfm	0, [x23, 512]	//  (*)
/*    454 */	prfm	2, [x24, 2560]	//  (*)
/*    454 */	prfm	0, [x24, 512]	//  (*)
	.loc 13 466 0
..LDL1412:
/*    466 */	dup	z26.s, z24.s[0]
	.loc 13 473 0
..LDL1413:
/*    473 */	dup	z16.s, z6.s[0]
	.p2align 5
.L11236:					// :entr:term:swpl
	.loc 13 454 0
..LDL1414:
/*    454 */	prfm	2, [x22, 2560]	//  (*)
	.loc 13 480 0
..LDL1415:
/*    480 */	ldr	s15, [x21, x5, lsl #2]	//  (*)
/*    480 */	dup	z6.s, z9.s[0]
	.loc 13 454 0
..LDL1416:
/*    454 */	orr	x25, x2, 6917529027641081856
/*    454 */	prfm	0, [x22, 512]	//  (*)
	.loc 13 544 0
..LDL1417:
/*    544 */	add	x1, x4, x2
	.loc 13 487 0
..LDL1418:
/*    487 */	ldr	s20, [x21, x17, lsl #2]	//  (*)
/*    487 */	dup	z12.s, z12.s[0]
	.loc 13 461 0
..LDL1419:
/*    461 */	fmla	z5.s, p0/m, z10.s, z11.s
	.loc 13 463 0
..LDL1420:
/*    463 */	fmla	z3.s, p1/m, z10.s, z13.s
	.loc 13 543 0
..LDL1421:
/*    543 */	add	x20, x21, 4
	.loc 13 466 0
..LDL1422:
/*    466 */	ldr	s18, [x20, x6, lsl #2]	//  (*)
/*    466 */	dup	z24.s, z4.s[0]
	.loc 13 468 0
..LDL1423:
/*    468 */	fmla	z25.s, p0/m, z26.s, z11.s
	.loc 13 459 0
..LDL1424:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 456 0
..LDL1425:
/*    456 */	ld1w	{z31.s}, p1/z, [x18, 1, mul vl]	//  (*)
	.loc 13 470 0
..LDL1426:
/*    470 */	fmad	z26.s, p1/m, z13.s, z7.s
	.loc 13 473 0
..LDL1427:
/*    473 */	ldr	s10, [x20, x16, lsl #2]	//  (*)
/*    473 */	dup	z9.s, z17.s[0]
	.loc 13 543 0
..LDL1428:
/*    543 */	add	x23, x30, 4
	.loc 13 475 0
..LDL1429:
/*    475 */	fmla	z28.s, p0/m, z16.s, z11.s
	.loc 13 477 0
..LDL1430:
/*    477 */	fmla	z30.s, p1/m, z16.s, z13.s
	.loc 13 459 0
..LDL1431:
/*    459 */	ld1rw	{z4.s}, p2/z, [x23]	//  (*)
	.loc 13 482 0
..LDL1432:
/*    482 */	fmla	z29.s, p0/m, z6.s, z11.s
	.loc 13 484 0
..LDL1433:
/*    484 */	fmla	z14.s, p1/m, z6.s, z13.s
	.loc 13 489 0
..LDL1434:
/*    489 */	fmla	z1.s, p0/m, z12.s, z11.s
	.loc 13 491 0
..LDL1435:
/*    491 */	fmad	z12.s, p1/m, z13.s, z27.s
	.loc 13 454 0
..LDL1436:
/*    454 */	ld1w	{z6.s}, p0/z, [x22, 0, mul vl]	//  (*)
/*    454 */	prfm	2, [x25, 2560]	//  (*)
	.loc 13 480 0
..LDL1437:
/*    480 */	ldr	s16, [x20, x5, lsl #2]	//  (*)
/*    480 */	dup	z15.s, z15.s[0]
	.loc 13 454 0
..LDL1438:
/*    454 */	orr	x24, x1, 6917529027641081856
/*    454 */	prfm	0, [x25, 512]	//  (*)
	.loc 13 544 0
..LDL1439:
/*    544 */	add	x18, x1, x4
	.loc 13 487 0
..LDL1440:
/*    487 */	ldr	s19, [x20, x17, lsl #2]	//  (*)
/*    487 */	dup	z27.s, z20.s[0]
	.loc 13 461 0
..LDL1441:
/*    461 */	fmla	z5.s, p0/m, z2.s, z0.s
	.loc 13 463 0
..LDL1442:
/*    463 */	fmla	z3.s, p1/m, z2.s, z8.s
	.loc 13 543 0
..LDL1443:
/*    543 */	add	x26, x21, 8
	.loc 13 466 0
..LDL1444:
/*    466 */	ldr	s17, [x26, x6, lsl #2]	//  (*)
/*    466 */	dup	z7.s, z18.s[0]
	.loc 13 468 0
..LDL1445:
/*    468 */	fmla	z25.s, p0/m, z24.s, z0.s
	.loc 13 456 0
..LDL1446:
/*    456 */	ld1w	{z13.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 470 0
..LDL1447:
/*    470 */	fmad	z24.s, p1/m, z8.s, z26.s
	.loc 13 473 0
..LDL1448:
/*    473 */	ldr	s18, [x26, x16, lsl #2]	//  (*)
/*    473 */	dup	z2.s, z10.s[0]
	.loc 13 543 0
..LDL1449:
/*    543 */	add	x20, x30, 8
	.loc 13 475 0
..LDL1450:
/*    475 */	fmla	z28.s, p0/m, z9.s, z0.s
	.loc 13 477 0
..LDL1451:
/*    477 */	fmla	z30.s, p1/m, z9.s, z8.s
	.loc 13 459 0
..LDL1452:
/*    459 */	ld1rw	{z10.s}, p2/z, [x20]	//  (*)
	.loc 13 482 0
..LDL1453:
/*    482 */	fmla	z29.s, p0/m, z15.s, z0.s
	.loc 13 484 0
..LDL1454:
/*    484 */	fmad	z15.s, p1/m, z8.s, z14.s
	.loc 13 489 0
..LDL1455:
/*    489 */	fmla	z1.s, p0/m, z27.s, z0.s
	.loc 13 491 0
..LDL1456:
/*    491 */	fmad	z27.s, p1/m, z8.s, z12.s
	.loc 13 454 0
..LDL1457:
/*    454 */	ld1w	{z11.s}, p0/z, [x25, 0, mul vl]	//  (*)
/*    454 */	prfm	2, [x24, 2560]	//  (*)
	.loc 13 480 0
..LDL1458:
/*    480 */	ldr	s9, [x26, x5, lsl #2]	//  (*)
/*    480 */	dup	z14.s, z16.s[0]
	.loc 13 454 0
..LDL1459:
/*    454 */	orr	x22, x18, 6917529027641081856
/*    454 */	prfm	0, [x24, 512]	//  (*)
	.loc 13 544 0
..LDL1460:
/*    544 */	add	x2, x18, x4
	.loc 13 487 0
..LDL1461:
/*    487 */	ldr	s12, [x26, x17, lsl #2]	//  (*)
/*    487 */	dup	z0.s, z19.s[0]
	.loc 13 461 0
..LDL1462:
/*    461 */	fmla	z5.s, p0/m, z4.s, z6.s
	.loc 13 463 0
..LDL1463:
/*    463 */	fmla	z3.s, p1/m, z4.s, z31.s
	.loc 13 543 0
..LDL1464:
/*    543 */	add	x21, x21, 12
	.loc 13 466 0
..LDL1465:
/*    466 */	ldr	s4, [x21, x6, lsl #2]	//  (*)
/*    466 */	dup	z26.s, z17.s[0]
	.loc 13 468 0
..LDL1466:
/*    468 */	fmla	z25.s, p0/m, z7.s, z6.s
	.loc 13 456 0
..LDL1467:
/*    456 */	ld1w	{z8.s}, p1/z, [x1, 1, mul vl]	//  (*)
	.loc 13 470 0
..LDL1468:
/*    470 */	fmad	z7.s, p1/m, z31.s, z24.s
	.loc 13 473 0
..LDL1469:
/*    473 */	ldr	s17, [x21, x16, lsl #2]	//  (*)
/*    473 */	dup	z16.s, z18.s[0]
	.loc 13 459 0
..LDL1470:
/*    459 */	prfm	2, [x23, 2560]	//  (*)
	.loc 13 543 0
..LDL1471:
/*    543 */	add	x30, x30, 12
	.loc 13 475 0
..LDL1472:
/*    475 */	fmla	z28.s, p0/m, z2.s, z6.s
	.loc 13 477 0
..LDL1473:
/*    477 */	fmla	z30.s, p1/m, z2.s, z31.s
	.loc 13 459 0
..LDL1474:
/*    459 */	ld1rw	{z2.s}, p2/z, [x30]	//  (*)
	.loc 13 482 0
..LDL1475:
/*    482 */	fmla	z29.s, p0/m, z14.s, z6.s
	.loc 13 459 0
..LDL1476:
/*    459 */	prfm	0, [x30, 504]	//  (*)
	.loc 13 484 0
..LDL1477:
/*    484 */	fmad	z14.s, p1/m, z31.s, z15.s
	.loc 13 489 0
..LDL1478:
/*    489 */	fmla	z1.s, p0/m, z0.s, z6.s
	.loc 13 491 0
..LDL1479:
/*    491 */	fmla	z27.s, p1/m, z0.s, z31.s
	.loc 13 454 0
..LDL1480:
/*    454 */	ld1w	{z0.s}, p0/z, [x24, 0, mul vl]	//  (*)
	.loc 13 545 0
..LDL1481:
/*    545 */	sub	w0, w0, 3
	.loc 13 453 0
..LDL1482:
/*    453 */	cmp	w0, 6
/*    453 */	bge	.L11236
	.loc 13 480 0
..LDL1483:
/*    480 */	ldr	s6, [x21, x5, lsl #2]	//  (*)
/*    480 */	dup	z24.s, z9.s[0]
	.loc 13 461 0
..LDL1484:
/*    461 */	fmla	z5.s, p0/m, z10.s, z11.s
	.loc 13 543 0
..LDL1485:
/*    543 */	add	x23, x21, 4
	.loc 13 487 0
..LDL1486:
/*    487 */	ldr	s31, [x21, x17, lsl #2]	//  (*)
	.loc 13 459 0
..LDL1487:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 468 0
..LDL1488:
/*    468 */	fmla	z25.s, p0/m, z26.s, z11.s
	.loc 13 475 0
..LDL1489:
/*    475 */	fmla	z28.s, p0/m, z16.s, z11.s
	.loc 13 487 0
..LDL1490:
/*    487 */	dup	z9.s, z12.s[0]
	.loc 13 543 0
..LDL1491:
/*    543 */	add	x24, x30, 4
	.loc 13 473 0
..LDL1492:
/*    473 */	ldr	s12, [x23, x16, lsl #2]	//  (*)
	.loc 13 477 0
..LDL1493:
/*    477 */	fmla	z30.s, p1/m, z16.s, z13.s
	.loc 13 463 0
..LDL1494:
/*    463 */	fmla	z3.s, p1/m, z10.s, z13.s
	.loc 13 466 0
..LDL1495:
/*    466 */	ldr	s10, [x23, x6, lsl #2]	//  (*)
	.loc 13 470 0
..LDL1496:
/*    470 */	fmla	z7.s, p1/m, z26.s, z13.s
	.loc 13 543 0
..LDL1497:
/*    543 */	add	x1, x21, 8
	.loc 13 466 0
..LDL1498:
/*    466 */	dup	z16.s, z4.s[0]
	.loc 13 480 0
..LDL1499:
/*    480 */	ldr	s15, [x23, x5, lsl #2]	//  (*)
	.loc 13 545 0
..LDL1500:
/*    545 */	sub	w0, w0, 3
	.loc 13 473 0
..LDL1501:
/*    473 */	dup	z17.s, z17.s[0]
	.loc 13 459 0
..LDL1502:
/*    459 */	ld1rw	{z4.s}, p2/z, [x24]	//  (*)
	.loc 13 487 0
..LDL1503:
/*    487 */	ldr	s18, [x23, x17, lsl #2]	//  (*)
	.loc 13 482 0
..LDL1504:
/*    482 */	fmla	z29.s, p0/m, z24.s, z11.s
	.loc 13 484 0
..LDL1505:
/*    484 */	fmad	z24.s, p1/m, z13.s, z14.s
	.loc 13 456 0
..LDL1506:
/*    456 */	ld1w	{z26.s}, p1/z, [x18, 1, mul vl]	//  (*)
	.loc 13 459 0
..LDL1507:
/*    459 */	prfm	2, [x20, 2560]	//  (*)
	.loc 13 489 0
..LDL1508:
/*    489 */	fmad	z11.s, p0/m, z9.s, z1.s
	.loc 13 491 0
..LDL1509:
/*    491 */	fmad	z9.s, p1/m, z13.s, z27.s
	.loc 13 454 0
..LDL1510:
/*    454 */	ld1w	{z1.s}, p0/z, [x22, 0, mul vl]	//  (*)
	.loc 13 480 0
..LDL1511:
/*    480 */	dup	z6.s, z6.s[0]
	.loc 13 461 0
..LDL1512:
/*    461 */	fmla	z5.s, p0/m, z2.s, z0.s
	.loc 13 459 0
..LDL1513:
/*    459 */	prfm	0, [x20, 512]	//  (*)
	.loc 13 543 0
..LDL1514:
/*    543 */	add	x20, x30, 8
	.loc 13 487 0
..LDL1515:
/*    487 */	dup	z27.s, z31.s[0]
	.loc 13 454 0
..LDL1516:
/*    454 */	prfm	2, [x22, 2560]	//  (*)
	.loc 13 468 0
..LDL1517:
/*    468 */	fmla	z25.s, p0/m, z16.s, z0.s
	.loc 13 454 0
..LDL1518:
/*    454 */	prfm	0, [x22, 512]	//  (*)
	.loc 13 475 0
..LDL1519:
/*    475 */	fmla	z28.s, p0/m, z17.s, z0.s
	.loc 13 477 0
..LDL1520:
/*    477 */	fmla	z30.s, p1/m, z17.s, z8.s
	.loc 13 463 0
..LDL1521:
/*    463 */	fmla	z3.s, p1/m, z2.s, z8.s
	.loc 13 470 0
..LDL1522:
/*    470 */	fmla	z7.s, p1/m, z16.s, z8.s
	.loc 13 459 0
..LDL1523:
/*    459 */	prfm	2, [x30, 2560]	//  (*)
	.loc 13 466 0
..LDL1524:
/*    466 */	dup	z31.s, z10.s[0]
	.loc 13 459 0
..LDL1525:
/*    459 */	prfm	0, [x30, 512]	//  (*)
	.loc 13 473 0
..LDL1526:
/*    473 */	dup	z2.s, z12.s[0]
	.loc 13 459 0
..LDL1527:
/*    459 */	prfm	2, [x24, 2560]	//  (*)
	.loc 13 482 0
..LDL1528:
/*    482 */	fmla	z29.s, p0/m, z6.s, z0.s
	.loc 13 484 0
..LDL1529:
/*    484 */	fmla	z24.s, p1/m, z6.s, z8.s
	.loc 13 459 0
..LDL1530:
/*    459 */	prfm	0, [x24, 512]	//  (*)
	.loc 13 480 0
..LDL1531:
/*    480 */	dup	z14.s, z15.s[0]
	.loc 13 489 0
..LDL1532:
/*    489 */	fmla	z11.s, p0/m, z27.s, z0.s
	.loc 13 491 0
..LDL1533:
/*    491 */	fmad	z27.s, p1/m, z8.s, z9.s
	.loc 13 487 0
..LDL1534:
/*    487 */	dup	z0.s, z18.s[0]
	.loc 13 461 0
..LDL1535:
/*    461 */	fmla	z5.s, p0/m, z4.s, z1.s
	.loc 13 468 0
..LDL1536:
/*    468 */	fmla	z25.s, p0/m, z31.s, z1.s
	.loc 13 475 0
..LDL1537:
/*    475 */	fmla	z28.s, p0/m, z2.s, z1.s
	.loc 13 477 0
..LDL1538:
/*    477 */	fmla	z30.s, p1/m, z2.s, z26.s
	.loc 13 463 0
..LDL1539:
/*    463 */	fmla	z3.s, p1/m, z4.s, z26.s
	.loc 13 470 0
..LDL1540:
/*    470 */	fmla	z7.s, p1/m, z31.s, z26.s
	.loc 13 482 0
..LDL1541:
/*    482 */	fmla	z29.s, p0/m, z14.s, z1.s
	.loc 13 484 0
..LDL1542:
/*    484 */	fmad	z14.s, p1/m, z26.s, z24.s
	.loc 13 489 0
..LDL1543:
/*    489 */	fmad	z1.s, p0/m, z0.s, z11.s
	.loc 13 491 0
..LDL1544:
/*    491 */	fmla	z27.s, p1/m, z0.s, z26.s
	.loc 13 545 0
..LDL1545:
/*    545 */	cbz	w0, .L11840
.L11843:
	.p2align 5
.L11846:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL1546:
/*    454 */	orr	x18, x2, 6917529027641081856
	.loc 13 456 0
..LDL1547:
/*    456 */	add	x30, x2, 64
	.loc 13 459 0
..LDL1548:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 466 0
..LDL1549:
/*    466 */	ldr	s0, [x1, x6, lsl #2]	//  (*)
	.loc 13 473 0
..LDL1550:
/*    473 */	ldr	s4, [x1, x16, lsl #2]	//  (*)
	.loc 13 480 0
..LDL1551:
/*    480 */	ldr	s31, [x1, x5, lsl #2]	//  (*)
	.loc 13 544 0
..LDL1552:
/*    544 */	add	x2, x2, x4
	.loc 13 545 0
..LDL1553:
/*    545 */	subs	w0, w0, 1
	.loc 13 454 0
..LDL1554:
/*    454 */	ld1w	{z26.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 487 0
..LDL1555:
/*    487 */	ldr	s24, [x1, x17, lsl #2]	//  (*)
	.loc 13 543 0
..LDL1556:
/*    543 */	add	x1, x1, 4
	.loc 13 456 0
..LDL1557:
/*    456 */	ld1w	{z2.s}, p1/z, [x30, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL1558:
/*    459 */	ld1rw	{z6.s}, p2/z, [x20]	//  (*)
/*    459 */	prfm	2, [x20, 2560]	//  (*)
/*    459 */	prfm	0, [x20, 512]	//  (*)
	.loc 13 543 0
..LDL1559:
/*    543 */	add	x20, x20, 4
	.loc 13 454 0
..LDL1560:
/*    454 */	prfm	2, [x18, 2560]	//  (*)
/*    454 */	prfm	0, [x18, 512]	//  (*)
	.loc 13 466 0
..LDL1561:
/*    466 */	dup	z0.s, z0.s[0]
	.loc 13 473 0
..LDL1562:
/*    473 */	dup	z4.s, z4.s[0]
	.loc 13 480 0
..LDL1563:
/*    480 */	dup	z31.s, z31.s[0]
	.loc 13 487 0
..LDL1564:
/*    487 */	dup	z24.s, z24.s[0]
	.loc 13 461 0
..LDL1565:
/*    461 */	fmla	z5.s, p0/m, z6.s, z26.s
	.loc 13 463 0
..LDL1566:
/*    463 */	fmla	z3.s, p1/m, z6.s, z2.s
	.loc 13 468 0
..LDL1567:
/*    468 */	fmla	z25.s, p0/m, z0.s, z26.s
	.loc 13 470 0
..LDL1568:
/*    470 */	fmla	z7.s, p1/m, z0.s, z2.s
	.loc 13 475 0
..LDL1569:
/*    475 */	fmla	z28.s, p0/m, z4.s, z26.s
	.loc 13 477 0
..LDL1570:
/*    477 */	fmla	z30.s, p1/m, z4.s, z2.s
	.loc 13 482 0
..LDL1571:
/*    482 */	fmla	z29.s, p0/m, z31.s, z26.s
	.loc 13 484 0
..LDL1572:
/*    484 */	fmla	z14.s, p1/m, z31.s, z2.s
	.loc 13 489 0
..LDL1573:
/*    489 */	fmla	z1.s, p0/m, z24.s, z26.s
	.loc 13 491 0
..LDL1574:
/*    491 */	fmla	z27.s, p1/m, z24.s, z2.s
	.loc 13 545 0 is_stmt 0
..LDL1575:
/*    545 */	bne	.L11846
.L11840:
.L11238:
	.loc 13 550 0 is_stmt 1
..LDL1576:
/*    550 */	st1w	{z5.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 552 0
..LDL1577:
/*    552 */	st1w	{z3.s}, p1, [x14, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL1578:
/*    556 */	st1w	{z25.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 558 0
..LDL1579:
/*    558 */	st1w	{z7.s}, p1, [x12, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL1580:
/*    562 */	st1w	{z28.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 564 0
..LDL1581:
/*    564 */	st1w	{z30.s}, p1, [x10, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL1582:
/*    568 */	st1w	{z29.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 570 0
..LDL1583:
/*    570 */	st1w	{z14.s}, p1, [x8, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL1584:
/*    574 */	st1w	{z1.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 576 0
..LDL1585:
/*    576 */	st1w	{z27.s}, p1, [x15, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL1586:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	z20, [x29, 13, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [x29, -64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 14
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D12.pchi:
	.cfi_endproc
.LFE11:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL1587:
.LFB12:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -11
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xd8,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 16
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL1588:
/*    379 */	ld1w	{z25.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL1589:
/*    391 */	add	w9, w4, w4
	.loc 13 409 0
..LDL1590:
/*    409 */	add	w11, w4, w4, lsl #2
	.loc 13 397 0
..LDL1591:
/*    397 */	add	w8, w9, w4
	.loc 13 403 0
..LDL1592:
/*    403 */	lsl	w7, w4, 2
	.loc 13 385 0
..LDL1593:
/*    385 */	sxtw	x10, w4
	.loc 13 391 0
..LDL1594:
/*    391 */	sxtw	x9, w9
	.loc 13 397 0
..LDL1595:
/*    397 */	sxtw	x8, w8
	.loc 13 403 0
..LDL1596:
/*    403 */	sxtw	x7, w7
	.loc 13 409 0
..LDL1597:
/*    409 */	sxtw	x4, w11
	.loc 13 385 0
..LDL1598:
/*    385 */	add	x10, x3, x10, lsl #2
/*    385 */	ld1w	{z7.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL1599:
/*    391 */	add	x9, x3, x9, lsl #2
/*    391 */	ld1w	{z12.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL1600:
/*    397 */	add	x8, x3, x8, lsl #2
/*    397 */	ld1w	{z5.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 403 0
..LDL1601:
/*    403 */	add	x11, x3, x7, lsl #2
/*    403 */	ld1w	{z3.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 409 0
..LDL1602:
/*    409 */	add	x12, x3, x4, lsl #2
/*    409 */	ld1w	{z1.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL1603:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11246
	.loc 13 473 0 is_stmt 0
..LDL1604:
/*    473 */	add	w14, w5, w5
	.loc 13 544 0
..LDL1605:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 480 0
..LDL1606:
/*    480 */	add	w13, w14, w5
	.loc 13 494 0
..LDL1607:
/*    494 */	add	w6, w5, w5, lsl #2
	.loc 13 487 0
..LDL1608:
/*    487 */	lsl	w7, w5, 2
	.loc 13 480 0
..LDL1609:
/*    480 */	sxtw	x30, w13
	.loc 13 487 0
..LDL1610:
/*    487 */	sxtw	x13, w7
	.loc 13 466 0
..LDL1611:
/*    466 */	sxtw	x17, w5
	.loc 13 494 0
..LDL1612:
/*    494 */	sxtw	x7, w6
	.loc 13 473 0
..LDL1613:
/*    473 */	sxtw	x18, w14
	.loc 13 459 0
..LDL1614:
/*    459 */	orr	x6, x1, 6917529027641081856
	.loc 13 451 0
..LDL1615:
/*    451 */	cmp	w0, 6
/*    451 */	blt	.L11854
	.loc 13 544 0
..LDL1616:
/*    544 */	add	x5, x2, x4
	.loc 13 466 0
..LDL1617:
/*    466 */	ldr	s6, [x1, x17, lsl #2]	//  (*)
	.loc 13 459 0
..LDL1618:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 454 0
..LDL1619:
/*    454 */	orr	x20, x2, 6917529027641081856
	.loc 13 473 0
..LDL1620:
/*    473 */	ldr	s4, [x1, x18, lsl #2]	//  (*)
	.loc 13 480 0
..LDL1621:
/*    480 */	ldr	s2, [x1, x30, lsl #2]	//  (*)
	.loc 13 459 0
..LDL1622:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 454 0
..LDL1623:
/*    454 */	orr	x15, x5, 6917529027641081856
	.loc 13 487 0
..LDL1624:
/*    487 */	ldr	s0, [x1, x13, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1625:
/*    454 */	ld1w	{z31.s}, p0/z, [x20, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL1626:
/*    543 */	add	x16, x6, 4
	.loc 13 544 0
..LDL1627:
/*    544 */	add	x2, x5, x4
	.loc 13 459 0
..LDL1628:
/*    459 */	ld1rw	{z28.s}, p1/z, [x6]	//  (*)
	.loc 13 543 0
..LDL1629:
/*    543 */	add	x6, x1, 4
	.loc 13 454 0
..LDL1630:
/*    454 */	ld1w	{z9.s}, p0/z, [x15, 0, mul vl]	//  (*)
/*    454 */	orr	x14, x2, 6917529027641081856
	.loc 13 494 0
..LDL1631:
/*    494 */	ldr	s30, [x1, x7, lsl #2]	//  (*)
	.loc 13 459 0
..LDL1632:
/*    459 */	ld1rw	{z26.s}, p2/z, [x16]	//  (*)
	.loc 13 543 0
..LDL1633:
/*    543 */	add	x5, x1, 8
	.loc 13 544 0
..LDL1634:
/*    544 */	add	x2, x2, x4
	.loc 13 466 0
..LDL1635:
/*    466 */	ldr	s13, [x6, x17, lsl #2]	//  (*)
	.loc 13 473 0
..LDL1636:
/*    473 */	ldr	s15, [x6, x18, lsl #2]	//  (*)
	.loc 13 480 0
..LDL1637:
/*    480 */	ldr	s17, [x6, x30, lsl #2]	//  (*)
	.loc 13 487 0
..LDL1638:
/*    487 */	ldr	s11, [x6, x13, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1639:
/*    454 */	prfm	2, [x20, 2560]	//  (*)
	.loc 13 494 0
..LDL1640:
/*    494 */	ldr	s10, [x6, x7, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1641:
/*    454 */	prfm	0, [x20, 512]	//  (*)
	.loc 13 466 0
..LDL1642:
/*    466 */	dup	z27.s, z6.s[0]
	.loc 13 454 0
..LDL1643:
/*    454 */	prfm	2, [x15, 2560]	//  (*)
	.loc 13 473 0
..LDL1644:
/*    473 */	dup	z24.s, z4.s[0]
	.loc 13 454 0
..LDL1645:
/*    454 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 480 0
..LDL1646:
/*    480 */	dup	z6.s, z2.s[0]
	.loc 13 487 0
..LDL1647:
/*    487 */	dup	z4.s, z0.s[0]
	.p2align 5
.L11244:					// :entr:term:swpl
	.loc 13 454 0
..LDL1648:
/*    454 */	prfm	2, [x14, 2560]	//  (*)
	.loc 13 466 0
..LDL1649:
/*    466 */	ldr	s14, [x5, x17, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1650:
/*    454 */	orr	x6, x2, 6917529027641081856
	.loc 13 494 0
..LDL1651:
/*    494 */	dup	z0.s, z30.s[0]
	.loc 13 454 0
..LDL1652:
/*    454 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 459 0
..LDL1653:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 466 0
..LDL1654:
/*    466 */	dup	z30.s, z13.s[0]
	.loc 13 473 0
..LDL1655:
/*    473 */	ldr	s16, [x5, x18, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1656:
/*    454 */	ld1w	{z8.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 461 0
..LDL1657:
/*    461 */	fmla	z25.s, p0/m, z28.s, z31.s
	.loc 13 473 0
..LDL1658:
/*    473 */	dup	z29.s, z15.s[0]
	.loc 13 543 0
..LDL1659:
/*    543 */	add	x1, x16, 4
	.loc 13 468 0
..LDL1660:
/*    468 */	fmla	z7.s, p0/m, z27.s, z31.s
	.loc 13 480 0
..LDL1661:
/*    480 */	ldr	s15, [x5, x30, lsl #2]	//  (*)
	.loc 13 475 0
..LDL1662:
/*    475 */	movprfx	z28.s, p0/z, z12.s
/*    475 */	fmla	z28.s, p0/m, z24.s, z31.s
	.loc 13 459 0
..LDL1663:
/*    459 */	ld1rw	{z24.s}, p1/z, [x1]	//  (*)
	.loc 13 480 0
..LDL1664:
/*    480 */	dup	z2.s, z17.s[0]
	.loc 13 482 0
..LDL1665:
/*    482 */	fmla	z5.s, p0/m, z6.s, z31.s
	.loc 13 487 0
..LDL1666:
/*    487 */	ldr	s13, [x5, x13, lsl #2]	//  (*)
/*    487 */	dup	z27.s, z11.s[0]
	.loc 13 489 0
..LDL1667:
/*    489 */	fmla	z3.s, p0/m, z4.s, z31.s
	.loc 13 543 0
..LDL1668:
/*    543 */	add	x14, x5, 4
	.loc 13 494 0
..LDL1669:
/*    494 */	ldr	s12, [x5, x7, lsl #2]	//  (*)
	.loc 13 496 0
..LDL1670:
/*    496 */	fmla	z1.s, p0/m, z0.s, z31.s
	.loc 13 544 0
..LDL1671:
/*    544 */	add	x15, x4, x2
	.loc 13 454 0
..LDL1672:
/*    454 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 466 0
..LDL1673:
/*    466 */	ldr	s11, [x14, x17, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1674:
/*    454 */	orr	x2, x15, 6917529027641081856
	.loc 13 494 0
..LDL1675:
/*    494 */	dup	z0.s, z10.s[0]
	.loc 13 454 0
..LDL1676:
/*    454 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 466 0
..LDL1677:
/*    466 */	dup	z6.s, z14.s[0]
	.loc 13 473 0
..LDL1678:
/*    473 */	ldr	s10, [x14, x18, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1679:
/*    454 */	ld1w	{z31.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 461 0
..LDL1680:
/*    461 */	fmla	z25.s, p0/m, z26.s, z9.s
	.loc 13 473 0
..LDL1681:
/*    473 */	dup	z26.s, z16.s[0]
	.loc 13 543 0
..LDL1682:
/*    543 */	add	x6, x16, 8
	.loc 13 468 0
..LDL1683:
/*    468 */	fmla	z7.s, p0/m, z30.s, z9.s
	.loc 13 480 0
..LDL1684:
/*    480 */	ldr	s16, [x14, x30, lsl #2]	//  (*)
	.loc 13 475 0
..LDL1685:
/*    475 */	fmad	z29.s, p0/m, z9.s, z28.s
	.loc 13 459 0
..LDL1686:
/*    459 */	ld1rw	{z28.s}, p1/z, [x6]	//  (*)
	.loc 13 480 0
..LDL1687:
/*    480 */	dup	z4.s, z15.s[0]
	.loc 13 482 0
..LDL1688:
/*    482 */	fmla	z5.s, p0/m, z2.s, z9.s
	.loc 13 487 0
..LDL1689:
/*    487 */	ldr	s14, [x14, x13, lsl #2]	//  (*)
/*    487 */	dup	z2.s, z13.s[0]
	.loc 13 489 0
..LDL1690:
/*    489 */	fmla	z3.s, p0/m, z27.s, z9.s
	.loc 13 543 0
..LDL1691:
/*    543 */	add	x20, x5, 8
	.loc 13 494 0
..LDL1692:
/*    494 */	ldr	s30, [x14, x7, lsl #2]	//  (*)
	.loc 13 496 0
..LDL1693:
/*    496 */	fmla	z1.s, p0/m, z0.s, z9.s
	.loc 13 544 0
..LDL1694:
/*    544 */	add	x15, x15, x4
	.loc 13 454 0
..LDL1695:
/*    454 */	prfm	2, [x2, 2560]	//  (*)
	.loc 13 466 0
..LDL1696:
/*    466 */	ldr	s13, [x20, x17, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1697:
/*    454 */	orr	x14, x15, 6917529027641081856
	.loc 13 494 0
..LDL1698:
/*    494 */	dup	z0.s, z12.s[0]
	.loc 13 454 0
..LDL1699:
/*    454 */	prfm	0, [x2, 512]	//  (*)
	.loc 13 466 0
..LDL1700:
/*    466 */	dup	z27.s, z11.s[0]
	.loc 13 473 0
..LDL1701:
/*    473 */	ldr	s15, [x20, x18, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1702:
/*    454 */	ld1w	{z9.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 461 0
..LDL1703:
/*    461 */	fmla	z25.s, p0/m, z24.s, z8.s
	.loc 13 473 0
..LDL1704:
/*    473 */	dup	z24.s, z10.s[0]
	.loc 13 459 0
..LDL1705:
/*    459 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 543 0
..LDL1706:
/*    543 */	add	x16, x16, 12
	.loc 13 468 0
..LDL1707:
/*    468 */	fmla	z7.s, p0/m, z6.s, z8.s
	.loc 13 480 0
..LDL1708:
/*    480 */	ldr	s17, [x20, x30, lsl #2]	//  (*)
	.loc 13 475 0
..LDL1709:
/*    475 */	movprfx	z12.s, p0/z, z29.s
/*    475 */	fmla	z12.s, p0/m, z26.s, z8.s
	.loc 13 459 0
..LDL1710:
/*    459 */	ld1rw	{z26.s}, p1/z, [x16]	//  (*)
	.loc 13 480 0
..LDL1711:
/*    480 */	dup	z6.s, z16.s[0]
	.loc 13 482 0
..LDL1712:
/*    482 */	fmla	z5.s, p0/m, z4.s, z8.s
	.loc 13 487 0
..LDL1713:
/*    487 */	ldr	s11, [x20, x13, lsl #2]	//  (*)
/*    487 */	dup	z4.s, z14.s[0]
	.loc 13 489 0
..LDL1714:
/*    489 */	fmla	z3.s, p0/m, z2.s, z8.s
	.loc 13 459 0
..LDL1715:
/*    459 */	prfm	0, [x16, 504]	//  (*)
	.loc 13 543 0
..LDL1716:
/*    543 */	add	x5, x5, 12
	.loc 13 494 0
..LDL1717:
/*    494 */	ldr	s10, [x20, x7, lsl #2]	//  (*)
	.loc 13 496 0
..LDL1718:
/*    496 */	fmla	z1.s, p0/m, z0.s, z8.s
	.loc 13 544 0
..LDL1719:
/*    544 */	add	x2, x15, x4
	.loc 13 545 0
..LDL1720:
/*    545 */	sub	w0, w0, 3
	.loc 13 453 0
..LDL1721:
/*    453 */	cmp	w0, 6
/*    453 */	bge	.L11244
	.loc 13 466 0
..LDL1722:
/*    466 */	ldr	s8, [x5, x17, lsl #2]	//  (*)
	.loc 13 459 0
..LDL1723:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 475 0
..LDL1724:
/*    475 */	fmla	z12.s, p0/m, z24.s, z31.s
	.loc 13 482 0
..LDL1725:
/*    482 */	fmla	z5.s, p0/m, z6.s, z31.s
	.loc 13 494 0
..LDL1726:
/*    494 */	dup	z29.s, z30.s[0]
	.loc 13 543 0
..LDL1727:
/*    543 */	add	x15, x16, 4
	.loc 13 480 0
..LDL1728:
/*    480 */	ldr	s30, [x5, x30, lsl #2]	//  (*)
	.loc 13 489 0
..LDL1729:
/*    489 */	movprfx	z6.s, p0/z, z3.s
/*    489 */	fmla	z6.s, p0/m, z4.s, z31.s
	.loc 13 461 0
..LDL1730:
/*    461 */	fmla	z25.s, p0/m, z28.s, z31.s
	.loc 13 473 0
..LDL1731:
/*    473 */	ldr	s28, [x5, x18, lsl #2]	//  (*)
	.loc 13 468 0
..LDL1732:
/*    468 */	fmla	z7.s, p0/m, z27.s, z31.s
	.loc 13 543 0
..LDL1733:
/*    543 */	add	x1, x5, 4
	.loc 13 466 0
..LDL1734:
/*    466 */	dup	z24.s, z13.s[0]
	.loc 13 487 0
..LDL1735:
/*    487 */	ldr	s14, [x5, x13, lsl #2]	//  (*)
	.loc 13 545 0
..LDL1736:
/*    545 */	sub	w0, w0, 3
	.loc 13 473 0
..LDL1737:
/*    473 */	dup	z4.s, z15.s[0]
	.loc 13 494 0
..LDL1738:
/*    494 */	ldr	s13, [x5, x7, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1739:
/*    454 */	ld1w	{z27.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 480 0
..LDL1740:
/*    480 */	dup	z3.s, z17.s[0]
	.loc 13 459 0
..LDL1741:
/*    459 */	ld1rw	{z0.s}, p1/z, [x15]	//  (*)
	.loc 13 487 0
..LDL1742:
/*    487 */	dup	z2.s, z11.s[0]
	.loc 13 496 0
..LDL1743:
/*    496 */	fmad	z29.s, p0/m, z31.s, z1.s
	.loc 13 459 0
..LDL1744:
/*    459 */	prfm	2, [x6, 2560]	//  (*)
/*    459 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 494 0
..LDL1745:
/*    494 */	dup	z1.s, z10.s[0]
	.loc 13 543 0
..LDL1746:
/*    543 */	add	x6, x16, 8
	.loc 13 454 0
..LDL1747:
/*    454 */	prfm	2, [x14, 2560]	//  (*)
/*    454 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 475 0
..LDL1748:
/*    475 */	fmla	z12.s, p0/m, z4.s, z9.s
	.loc 13 459 0
..LDL1749:
/*    459 */	prfm	2, [x16, 2560]	//  (*)
	.loc 13 468 0
..LDL1750:
/*    468 */	fmla	z7.s, p0/m, z24.s, z9.s
	.loc 13 482 0
..LDL1751:
/*    482 */	fmla	z5.s, p0/m, z3.s, z9.s
	.loc 13 459 0
..LDL1752:
/*    459 */	prfm	0, [x16, 512]	//  (*)
	.loc 13 461 0
..LDL1753:
/*    461 */	fmla	z25.s, p0/m, z26.s, z9.s
	.loc 13 489 0
..LDL1754:
/*    489 */	fmla	z6.s, p0/m, z2.s, z9.s
	.loc 13 459 0
..LDL1755:
/*    459 */	prfm	2, [x15, 2560]	//  (*)
	.loc 13 466 0
..LDL1756:
/*    466 */	dup	z24.s, z8.s[0]
	.loc 13 459 0
..LDL1757:
/*    459 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 473 0
..LDL1758:
/*    473 */	dup	z4.s, z28.s[0]
	.loc 13 480 0
..LDL1759:
/*    480 */	dup	z2.s, z30.s[0]
	.loc 13 496 0
..LDL1760:
/*    496 */	fmla	z29.s, p0/m, z1.s, z9.s
	.loc 13 487 0
..LDL1761:
/*    487 */	dup	z3.s, z14.s[0]
	.loc 13 494 0
..LDL1762:
/*    494 */	dup	z1.s, z13.s[0]
	.loc 13 468 0
..LDL1763:
/*    468 */	fmla	z7.s, p0/m, z24.s, z27.s
	.loc 13 475 0
..LDL1764:
/*    475 */	fmla	z12.s, p0/m, z4.s, z27.s
	.loc 13 461 0
..LDL1765:
/*    461 */	fmla	z25.s, p0/m, z0.s, z27.s
	.loc 13 482 0
..LDL1766:
/*    482 */	fmla	z5.s, p0/m, z2.s, z27.s
	.loc 13 489 0
..LDL1767:
/*    489 */	fmad	z3.s, p0/m, z27.s, z6.s
	.loc 13 496 0
..LDL1768:
/*    496 */	fmad	z1.s, p0/m, z27.s, z29.s
	.loc 13 545 0
..LDL1769:
/*    545 */	cbz	w0, .L11851
.L11854:
	.p2align 5
.L11857:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL1770:
/*    454 */	orr	x5, x2, 6917529027641081856
	.loc 13 459 0
..LDL1771:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 466 0
..LDL1772:
/*    466 */	ldr	s26, [x1, x17, lsl #2]	//  (*)
	.loc 13 544 0
..LDL1773:
/*    544 */	add	x2, x2, x4
	.loc 13 473 0
..LDL1774:
/*    473 */	ldr	s24, [x1, x18, lsl #2]	//  (*)
	.loc 13 480 0
..LDL1775:
/*    480 */	ldr	s27, [x1, x30, lsl #2]	//  (*)
	.loc 13 545 0
..LDL1776:
/*    545 */	subs	w0, w0, 1
	.loc 13 487 0
..LDL1777:
/*    487 */	ldr	s2, [x1, x13, lsl #2]	//  (*)
	.loc 13 494 0
..LDL1778:
/*    494 */	ldr	s0, [x1, x7, lsl #2]	//  (*)
	.loc 13 543 0
..LDL1779:
/*    543 */	add	x1, x1, 4
	.loc 13 454 0
..LDL1780:
/*    454 */	ld1w	{z4.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL1781:
/*    459 */	ld1rw	{z6.s}, p1/z, [x6]	//  (*)
/*    459 */	prfm	2, [x6, 2560]	//  (*)
/*    459 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 543 0
..LDL1782:
/*    543 */	add	x6, x6, 4
	.loc 13 454 0
..LDL1783:
/*    454 */	prfm	2, [x5, 2560]	//  (*)
/*    454 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 466 0
..LDL1784:
/*    466 */	dup	z26.s, z26.s[0]
	.loc 13 473 0
..LDL1785:
/*    473 */	dup	z24.s, z24.s[0]
	.loc 13 480 0
..LDL1786:
/*    480 */	dup	z27.s, z27.s[0]
	.loc 13 487 0
..LDL1787:
/*    487 */	dup	z2.s, z2.s[0]
	.loc 13 494 0
..LDL1788:
/*    494 */	dup	z0.s, z0.s[0]
	.loc 13 461 0
..LDL1789:
/*    461 */	fmla	z25.s, p0/m, z6.s, z4.s
	.loc 13 468 0
..LDL1790:
/*    468 */	fmla	z7.s, p0/m, z26.s, z4.s
	.loc 13 475 0
..LDL1791:
/*    475 */	fmla	z12.s, p0/m, z24.s, z4.s
	.loc 13 482 0
..LDL1792:
/*    482 */	fmla	z5.s, p0/m, z27.s, z4.s
	.loc 13 489 0
..LDL1793:
/*    489 */	fmla	z3.s, p0/m, z2.s, z4.s
	.loc 13 496 0
..LDL1794:
/*    496 */	fmla	z1.s, p0/m, z0.s, z4.s
	.loc 13 545 0 is_stmt 0
..LDL1795:
/*    545 */	bne	.L11857
.L11851:
.L11246:
	.loc 13 550 0 is_stmt 1
..LDL1796:
/*    550 */	st1w	{z25.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL1797:
/*    556 */	st1w	{z7.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL1798:
/*    562 */	st1w	{z12.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL1799:
/*    568 */	st1w	{z5.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL1800:
/*    574 */	st1w	{z3.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 580 0
..LDL1801:
/*    580 */	st1w	{z1.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL1802:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 11
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D13.pchi:
	.cfi_endproc
.LFE12:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL1803:
.LFB13:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -13
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xe8,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 48
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    ??? */	str	x23, [x29, -40]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x58,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL1804:
/*    379 */	ld1w	{z29.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL1805:
/*    391 */	add	w10, w4, w4
	.loc 13 409 0
..LDL1806:
/*    409 */	add	w7, w4, w4, lsl #2
	.loc 13 397 0
..LDL1807:
/*    397 */	add	w9, w10, w4
	.loc 13 403 0
..LDL1808:
/*    403 */	lsl	w8, w4, 2
	.loc 13 385 0
..LDL1809:
/*    385 */	sxtw	x15, w4
	.loc 13 397 0
..LDL1810:
/*    397 */	sxtw	x11, w9
	.loc 13 391 0
..LDL1811:
/*    391 */	sxtw	x13, w10
	.loc 13 403 0
..LDL1812:
/*    403 */	sxtw	x9, w8
	.loc 13 387 0
..LDL1813:
/*    387 */	add	x14, x15, 16
	.loc 13 409 0
..LDL1814:
/*    409 */	sxtw	x7, w7
	.loc 13 393 0
..LDL1815:
/*    393 */	add	x12, x13, 16
	.loc 13 399 0
..LDL1816:
/*    399 */	add	x10, x11, 16
	.loc 13 405 0
..LDL1817:
/*    405 */	add	x8, x9, 16
	.loc 13 411 0
..LDL1818:
/*    411 */	add	x4, x7, 16
	.loc 13 381 0
..LDL1819:
/*    381 */	add	x16, x3, 64
	.loc 13 385 0
..LDL1820:
/*    385 */	add	x15, x3, x15, lsl #2
	.loc 13 381 0
..LDL1821:
/*    381 */	ld1w	{z28.s}, p1/z, [x16, 0, mul vl]	//  (*)
	.loc 13 385 0
..LDL1822:
/*    385 */	ld1w	{z27.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 387 0
..LDL1823:
/*    387 */	add	x14, x3, x14, lsl #2
/*    387 */	ld1w	{z12.s}, p1/z, [x14, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL1824:
/*    391 */	add	x13, x3, x13, lsl #2
/*    391 */	ld1w	{z25.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 393 0
..LDL1825:
/*    393 */	add	x12, x3, x12, lsl #2
/*    393 */	ld1w	{z11.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL1826:
/*    397 */	add	x11, x3, x11, lsl #2
/*    397 */	ld1w	{z7.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 399 0
..LDL1827:
/*    399 */	add	x10, x3, x10, lsl #2
/*    399 */	ld1w	{z8.s}, p1/z, [x10, 0, mul vl]	//  (*)
	.loc 13 403 0
..LDL1828:
/*    403 */	add	x9, x3, x9, lsl #2
/*    403 */	ld1w	{z5.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 405 0
..LDL1829:
/*    405 */	add	x8, x3, x8, lsl #2
/*    405 */	ld1w	{z3.s}, p1/z, [x8, 0, mul vl]	//  (*)
	.loc 13 409 0
..LDL1830:
/*    409 */	add	x7, x3, x7, lsl #2
/*    409 */	ld1w	{z2.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 411 0
..LDL1831:
/*    411 */	add	x17, x3, x4, lsl #2
/*    411 */	ld1w	{z0.s}, p1/z, [x17, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL1832:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11254
	.loc 13 473 0 is_stmt 0
..LDL1833:
/*    473 */	add	w18, w5, w5
	.loc 13 544 0
..LDL1834:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 494 0
..LDL1835:
/*    494 */	add	w20, w5, w5, lsl #2
	.loc 13 480 0
..LDL1836:
/*    480 */	add	w21, w18, w5
	.loc 13 487 0
..LDL1837:
/*    487 */	lsl	w6, w5, 2
	.loc 13 466 0
..LDL1838:
/*    466 */	sxtw	x30, w5
	.loc 13 473 0
..LDL1839:
/*    473 */	sxtw	x18, w18
	.loc 13 480 0
..LDL1840:
/*    480 */	sxtw	x5, w21
	.loc 13 487 0
..LDL1841:
/*    487 */	sxtw	x6, w6
	.loc 13 494 0
..LDL1842:
/*    494 */	sxtw	x20, w20
	.loc 13 459 0
..LDL1843:
/*    459 */	orr	x22, x1, 6917529027641081856
	.loc 13 451 0
..LDL1844:
/*    451 */	cmp	w0, 3
/*    451 */	blt	.L11865
	.loc 13 545 0
..LDL1845:
/*    545 */	mov	x21, x22
	.loc 13 459 0
..LDL1846:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 454 0
..LDL1847:
/*    454 */	orr	x22, x2, 6917529027641081856
	.loc 13 456 0
..LDL1848:
/*    456 */	ld1w	{z30.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 545 0
..LDL1849:
/*    545 */	mov	z1.d, z0.d
	.loc 13 454 0
..LDL1850:
/*    454 */	ld1w	{z14.s}, p0/z, [x22, 0, mul vl]	//  (*)
	.loc 13 545 0
..LDL1851:
/*    545 */	mov	z6.d, z8.d
	.loc 13 544 0
..LDL1852:
/*    544 */	add	x2, x2, x4
	.loc 13 545 0
..LDL1853:
/*    545 */	mov	z4.d, z3.d
	.loc 13 466 0
..LDL1854:
/*    466 */	ldr	s10, [x1, x30, lsl #2]	//  (*)
	.loc 13 473 0
..LDL1855:
/*    473 */	ldr	s9, [x1, x18, lsl #2]	//  (*)
	.loc 13 545 0
..LDL1856:
/*    545 */	mov	z24.d, z11.d
	.loc 13 459 0
..LDL1857:
/*    459 */	ld1rw	{z31.s}, p2/z, [x21]	//  (*)
	.loc 13 480 0
..LDL1858:
/*    480 */	ldr	s8, [x1, x5, lsl #2]	//  (*)
	.loc 13 545 0
..LDL1859:
/*    545 */	mov	z26.d, z12.d
	.loc 13 487 0
..LDL1860:
/*    487 */	ldr	s13, [x1, x6, lsl #2]	//  (*)
	.loc 13 494 0
..LDL1861:
/*    494 */	ldr	s16, [x1, x20, lsl #2]	//  (*)
	.loc 13 454 0
..LDL1862:
/*    454 */	prfm	2, [x22, 2560]	//  (*)
/*    454 */	prfm	0, [x22, 512]	//  (*)
	.p2align 5
.L11252:					// :entr:term:swpl
/*    454 */	orr	x23, x2, 6917529027641081856
	.loc 13 466 0
..LDL1863:
/*    466 */	dup	z17.s, z10.s[0]
	.loc 13 454 0
..LDL1864:
/*    454 */	prfm	2, [x23, 2560]	//  (*)
/*    454 */	prfm	0, [x23, 512]	//  (*)
	.loc 13 473 0
..LDL1865:
/*    473 */	dup	z15.s, z9.s[0]
	.loc 13 459 0
..LDL1866:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 543 0
..LDL1867:
/*    543 */	add	x22, x1, 4
	.loc 13 480 0
..LDL1868:
/*    480 */	dup	z9.s, z8.s[0]
	.loc 13 454 0
..LDL1869:
/*    454 */	ld1w	{z12.s}, p0/z, [x23, 0, mul vl]	//  (*)
	.loc 13 466 0
..LDL1870:
/*    466 */	ldr	s19, [x22, x30, lsl #2]	//  (*)
	.loc 13 487 0
..LDL1871:
/*    487 */	dup	z3.s, z13.s[0]
	.loc 13 456 0
..LDL1872:
/*    456 */	ld1w	{z11.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 473 0
..LDL1873:
/*    473 */	ldr	s18, [x22, x18, lsl #2]	//  (*)
	.loc 13 543 0
..LDL1874:
/*    543 */	add	x23, x21, 4
	.loc 13 494 0
..LDL1875:
/*    494 */	dup	z0.s, z16.s[0]
	.loc 13 459 0
..LDL1876:
/*    459 */	ld1rw	{z13.s}, p2/z, [x23]	//  (*)
	.loc 13 461 0
..LDL1877:
/*    461 */	fmla	z29.s, p0/m, z31.s, z14.s
	.loc 13 480 0
..LDL1878:
/*    480 */	ldr	s10, [x22, x5, lsl #2]	//  (*)
	.loc 13 463 0
..LDL1879:
/*    463 */	fmla	z28.s, p1/m, z31.s, z30.s
	.loc 13 468 0
..LDL1880:
/*    468 */	fmla	z27.s, p0/m, z17.s, z14.s
	.loc 13 487 0
..LDL1881:
/*    487 */	ldr	s31, [x22, x6, lsl #2]	//  (*)
	.loc 13 470 0
..LDL1882:
/*    470 */	fmla	z26.s, p1/m, z17.s, z30.s
	.loc 13 475 0
..LDL1883:
/*    475 */	fmla	z25.s, p0/m, z15.s, z14.s
	.loc 13 477 0
..LDL1884:
/*    477 */	fmla	z24.s, p1/m, z15.s, z30.s
	.loc 13 494 0
..LDL1885:
/*    494 */	ldr	s8, [x22, x20, lsl #2]	//  (*)
	.loc 13 482 0
..LDL1886:
/*    482 */	fmla	z7.s, p0/m, z9.s, z14.s
	.loc 13 484 0
..LDL1887:
/*    484 */	fmla	z6.s, p1/m, z9.s, z30.s
	.loc 13 489 0
..LDL1888:
/*    489 */	fmla	z5.s, p0/m, z3.s, z14.s
	.loc 13 491 0
..LDL1889:
/*    491 */	fmla	z4.s, p1/m, z3.s, z30.s
	.loc 13 496 0
..LDL1890:
/*    496 */	fmla	z2.s, p0/m, z0.s, z14.s
	.loc 13 498 0
..LDL1891:
/*    498 */	fmla	z1.s, p1/m, z0.s, z30.s
	.loc 13 544 0
..LDL1892:
/*    544 */	add	x22, x4, x2
	.loc 13 454 0
..LDL1893:
/*    454 */	orr	x2, x22, 6917529027641081856
	.loc 13 466 0
..LDL1894:
/*    466 */	dup	z17.s, z19.s[0]
	.loc 13 454 0
..LDL1895:
/*    454 */	prfm	2, [x2, 2560]	//  (*)
/*    454 */	prfm	0, [x2, 512]	//  (*)
	.loc 13 473 0
..LDL1896:
/*    473 */	dup	z16.s, z18.s[0]
	.loc 13 543 0
..LDL1897:
/*    543 */	add	x1, x1, 8
	.loc 13 480 0
..LDL1898:
/*    480 */	dup	z15.s, z10.s[0]
	.loc 13 454 0
..LDL1899:
/*    454 */	ld1w	{z14.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 466 0
..LDL1900:
/*    466 */	ldr	s10, [x1, x30, lsl #2]	//  (*)
	.loc 13 487 0
..LDL1901:
/*    487 */	dup	z3.s, z31.s[0]
	.loc 13 456 0
..LDL1902:
/*    456 */	ld1w	{z30.s}, p1/z, [x22, 1, mul vl]	//  (*)
	.loc 13 473 0
..LDL1903:
/*    473 */	ldr	s9, [x1, x18, lsl #2]	//  (*)
	.loc 13 543 0
..LDL1904:
/*    543 */	add	x21, x21, 8
	.loc 13 494 0
..LDL1905:
/*    494 */	dup	z0.s, z8.s[0]
	.loc 13 459 0
..LDL1906:
/*    459 */	ld1rw	{z31.s}, p2/z, [x21]	//  (*)
	.loc 13 461 0
..LDL1907:
/*    461 */	fmla	z29.s, p0/m, z13.s, z12.s
	.loc 13 480 0
..LDL1908:
/*    480 */	ldr	s8, [x1, x5, lsl #2]	//  (*)
	.loc 13 463 0
..LDL1909:
/*    463 */	fmla	z28.s, p1/m, z13.s, z11.s
	.loc 13 468 0
..LDL1910:
/*    468 */	fmla	z27.s, p0/m, z17.s, z12.s
	.loc 13 487 0
..LDL1911:
/*    487 */	ldr	s13, [x1, x6, lsl #2]	//  (*)
	.loc 13 470 0
..LDL1912:
/*    470 */	fmla	z26.s, p1/m, z17.s, z11.s
	.loc 13 475 0
..LDL1913:
/*    475 */	fmla	z25.s, p0/m, z16.s, z12.s
	.loc 13 477 0
..LDL1914:
/*    477 */	fmla	z24.s, p1/m, z16.s, z11.s
	.loc 13 494 0
..LDL1915:
/*    494 */	ldr	s16, [x1, x20, lsl #2]	//  (*)
	.loc 13 482 0
..LDL1916:
/*    482 */	fmla	z7.s, p0/m, z15.s, z12.s
	.loc 13 484 0
..LDL1917:
/*    484 */	fmla	z6.s, p1/m, z15.s, z11.s
	.loc 13 459 0
..LDL1918:
/*    459 */	prfm	2, [x23, 2560]	//  (*)
	.loc 13 489 0
..LDL1919:
/*    489 */	fmla	z5.s, p0/m, z3.s, z12.s
	.loc 13 459 0
..LDL1920:
/*    459 */	prfm	0, [x23, 512]	//  (*)
	.loc 13 491 0
..LDL1921:
/*    491 */	fmla	z4.s, p1/m, z3.s, z11.s
	.loc 13 496 0
..LDL1922:
/*    496 */	fmla	z2.s, p0/m, z0.s, z12.s
	.loc 13 498 0
..LDL1923:
/*    498 */	fmla	z1.s, p1/m, z0.s, z11.s
	.loc 13 544 0
..LDL1924:
/*    544 */	add	x2, x22, x4
	.loc 13 545 0
..LDL1925:
/*    545 */	sub	w0, w0, 2
	.loc 13 453 0
..LDL1926:
/*    453 */	cmp	w0, 3
/*    453 */	bge	.L11252
	.loc 13 466 0
..LDL1927:
/*    466 */	dup	z12.s, z10.s[0]
	.loc 13 543 0
..LDL1928:
/*    543 */	add	x1, x1, 4
	.loc 13 461 0
..LDL1929:
/*    461 */	fmla	z29.s, p0/m, z31.s, z14.s
	.loc 13 459 0
..LDL1930:
/*    459 */	prfm	2, [x21, 2560]	//  (*)
	.loc 13 473 0
..LDL1931:
/*    473 */	dup	z11.s, z9.s[0]
	.loc 13 543 0
..LDL1932:
/*    543 */	add	x22, x21, 4
	.loc 13 463 0
..LDL1933:
/*    463 */	fmla	z28.s, p1/m, z31.s, z30.s
	.loc 13 459 0
..LDL1934:
/*    459 */	prfm	0, [x21, 512]	//  (*)
	.loc 13 480 0
..LDL1935:
/*    480 */	dup	z8.s, z8.s[0]
	.loc 13 545 0
..LDL1936:
/*    545 */	sub	w0, w0, 1
	.loc 13 487 0
..LDL1937:
/*    487 */	dup	z3.s, z13.s[0]
	.loc 13 494 0
..LDL1938:
/*    494 */	dup	z0.s, z16.s[0]
	.loc 13 468 0
..LDL1939:
/*    468 */	fmla	z27.s, p0/m, z12.s, z14.s
	.loc 13 470 0
..LDL1940:
/*    470 */	fmad	z12.s, p1/m, z30.s, z26.s
	.loc 13 475 0
..LDL1941:
/*    475 */	fmla	z25.s, p0/m, z11.s, z14.s
	.loc 13 477 0
..LDL1942:
/*    477 */	fmad	z11.s, p1/m, z30.s, z24.s
	.loc 13 482 0
..LDL1943:
/*    482 */	fmla	z7.s, p0/m, z8.s, z14.s
	.loc 13 484 0
..LDL1944:
/*    484 */	fmad	z8.s, p1/m, z30.s, z6.s
	.loc 13 489 0
..LDL1945:
/*    489 */	fmla	z5.s, p0/m, z3.s, z14.s
	.loc 13 491 0
..LDL1946:
/*    491 */	fmad	z3.s, p1/m, z30.s, z4.s
	.loc 13 496 0
..LDL1947:
/*    496 */	fmla	z2.s, p0/m, z0.s, z14.s
	.loc 13 498 0
..LDL1948:
/*    498 */	fmad	z0.s, p1/m, z30.s, z1.s
	.loc 13 545 0
..LDL1949:
/*    545 */	cbz	w0, .L11862
.L11865:
	.p2align 5
.L11868:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL1950:
/*    454 */	orr	x21, x2, 6917529027641081856
	.loc 13 456 0
..LDL1951:
/*    456 */	add	x23, x2, 64
	.loc 13 459 0
..LDL1952:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 466 0
..LDL1953:
/*    466 */	ldr	s6, [x1, x30, lsl #2]	//  (*)
	.loc 13 473 0
..LDL1954:
/*    473 */	ldr	s31, [x1, x18, lsl #2]	//  (*)
	.loc 13 480 0
..LDL1955:
/*    480 */	ldr	s9, [x1, x5, lsl #2]	//  (*)
	.loc 13 544 0
..LDL1956:
/*    544 */	add	x2, x2, x4
	.loc 13 545 0
..LDL1957:
/*    545 */	subs	w0, w0, 1
	.loc 13 487 0
..LDL1958:
/*    487 */	ldr	s30, [x1, x6, lsl #2]	//  (*)
	.loc 13 494 0
..LDL1959:
/*    494 */	ldr	s24, [x1, x20, lsl #2]	//  (*)
	.loc 13 543 0
..LDL1960:
/*    543 */	add	x1, x1, 4
	.loc 13 454 0
..LDL1961:
/*    454 */	ld1w	{z1.s}, p0/z, [x21, 0, mul vl]	//  (*)
	.loc 13 456 0
..LDL1962:
/*    456 */	ld1w	{z4.s}, p1/z, [x23, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL1963:
/*    459 */	prfm	2, [x22, 2560]	//  (*)
/*    459 */	ld1rw	{z26.s}, p2/z, [x22]	//  (*)
	.loc 13 454 0
..LDL1964:
/*    454 */	prfm	2, [x21, 2560]	//  (*)
	.loc 13 459 0
..LDL1965:
/*    459 */	prfm	0, [x22, 512]	//  (*)
	.loc 13 543 0
..LDL1966:
/*    543 */	add	x22, x22, 4
	.loc 13 454 0
..LDL1967:
/*    454 */	prfm	0, [x21, 512]	//  (*)
	.loc 13 466 0
..LDL1968:
/*    466 */	dup	z6.s, z6.s[0]
	.loc 13 473 0
..LDL1969:
/*    473 */	dup	z31.s, z31.s[0]
	.loc 13 480 0
..LDL1970:
/*    480 */	dup	z9.s, z9.s[0]
	.loc 13 487 0
..LDL1971:
/*    487 */	dup	z30.s, z30.s[0]
	.loc 13 494 0
..LDL1972:
/*    494 */	dup	z24.s, z24.s[0]
	.loc 13 468 0
..LDL1973:
/*    468 */	fmla	z27.s, p0/m, z6.s, z1.s
	.loc 13 470 0
..LDL1974:
/*    470 */	fmla	z12.s, p1/m, z6.s, z4.s
	.loc 13 461 0
..LDL1975:
/*    461 */	fmla	z29.s, p0/m, z26.s, z1.s
	.loc 13 463 0
..LDL1976:
/*    463 */	fmla	z28.s, p1/m, z26.s, z4.s
	.loc 13 475 0
..LDL1977:
/*    475 */	fmla	z25.s, p0/m, z31.s, z1.s
	.loc 13 477 0
..LDL1978:
/*    477 */	fmla	z11.s, p1/m, z31.s, z4.s
	.loc 13 482 0
..LDL1979:
/*    482 */	fmla	z7.s, p0/m, z9.s, z1.s
	.loc 13 484 0
..LDL1980:
/*    484 */	fmla	z8.s, p1/m, z9.s, z4.s
	.loc 13 489 0
..LDL1981:
/*    489 */	fmla	z5.s, p0/m, z30.s, z1.s
	.loc 13 491 0
..LDL1982:
/*    491 */	fmla	z3.s, p1/m, z30.s, z4.s
	.loc 13 496 0
..LDL1983:
/*    496 */	fmla	z2.s, p0/m, z24.s, z1.s
	.loc 13 498 0
..LDL1984:
/*    498 */	fmla	z0.s, p1/m, z24.s, z4.s
	.loc 13 545 0 is_stmt 0
..LDL1985:
/*    545 */	bne	.L11868
.L11862:
.L11254:
	.loc 13 550 0 is_stmt 1
..LDL1986:
/*    550 */	st1w	{z29.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 552 0
..LDL1987:
/*    552 */	st1w	{z28.s}, p1, [x16, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL1988:
/*    556 */	st1w	{z27.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 558 0
..LDL1989:
/*    558 */	st1w	{z12.s}, p1, [x14, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL1990:
/*    562 */	st1w	{z25.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 564 0
..LDL1991:
/*    564 */	st1w	{z11.s}, p1, [x12, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL1992:
/*    568 */	st1w	{z7.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 570 0
..LDL1993:
/*    570 */	st1w	{z8.s}, p1, [x10, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL1994:
/*    574 */	st1w	{z5.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 576 0
..LDL1995:
/*    576 */	st1w	{z3.s}, p1, [x8, 0, mul vl]	//  (*)
	.loc 13 580 0
..LDL1996:
/*    580 */	st1w	{z2.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 582 0
..LDL1997:
/*    582 */	st1w	{z0.s}, p1, [x17, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL1998:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldr	x23, [x29, -40]	//  (*)
	.cfi_restore 23
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 13
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D14.pchi:
	.cfi_endproc
.LFE13:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL1999:
.LFB14:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -17
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0x88,0x1,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0xf8,0x7e,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0xf8,0x7e,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 32
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0xf8,0x7e,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0xf8,0x7e,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0xf8,0x7e,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0xf8,0x7e,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z20, [x29, 13, mul vl]	//  (*)
	.cfi_escape 0x10,0x74,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z21, [x29, 14, mul vl]	//  (*)
	.cfi_escape 0x10,0x75,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z22, [x29, 15, mul vl]	//  (*)
	.cfi_escape 0x10,0x76,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z23, [x29, 16, mul vl]	//  (*)
	.cfi_escape 0x10,0x77,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL2000:
/*    379 */	ld1w	{z24.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL2001:
/*    391 */	add	w10, w4, w4
	.loc 13 409 0
..LDL2002:
/*    409 */	add	w7, w4, w4, lsl #2
	.loc 13 397 0
..LDL2003:
/*    397 */	add	w9, w10, w4
	.loc 13 403 0
..LDL2004:
/*    403 */	lsl	w8, w4, 2
	.loc 13 385 0
..LDL2005:
/*    385 */	sxtw	x11, w4
	.loc 13 415 0
..LDL2006:
/*    415 */	add	w4, w9, w9
	.loc 13 391 0
..LDL2007:
/*    391 */	sxtw	x10, w10
	.loc 13 397 0
..LDL2008:
/*    397 */	sxtw	x9, w9
	.loc 13 403 0
..LDL2009:
/*    403 */	sxtw	x8, w8
	.loc 13 409 0
..LDL2010:
/*    409 */	sxtw	x7, w7
	.loc 13 415 0
..LDL2011:
/*    415 */	sxtw	x4, w4
	.loc 13 385 0
..LDL2012:
/*    385 */	add	x11, x3, x11, lsl #2
/*    385 */	ld1w	{z6.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL2013:
/*    391 */	add	x10, x3, x10, lsl #2
/*    391 */	ld1w	{z4.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL2014:
/*    397 */	add	x9, x3, x9, lsl #2
/*    397 */	ld1w	{z2.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 403 0
..LDL2015:
/*    403 */	add	x12, x3, x8, lsl #2
/*    403 */	ld1w	{z0.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 409 0
..LDL2016:
/*    409 */	add	x13, x3, x7, lsl #2
/*    409 */	ld1w	{z27.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 415 0
..LDL2017:
/*    415 */	add	x14, x3, x4, lsl #2
/*    415 */	ld1w	{z30.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL2018:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11262
	.loc 13 473 0 is_stmt 0
..LDL2019:
/*    473 */	add	w16, w5, w5
	.loc 13 544 0
..LDL2020:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 494 0
..LDL2021:
/*    494 */	add	w6, w5, w5, lsl #2
	.loc 13 480 0
..LDL2022:
/*    480 */	add	w8, w16, w5
	.loc 13 487 0
..LDL2023:
/*    487 */	lsl	w7, w5, 2
	.loc 13 466 0
..LDL2024:
/*    466 */	sxtw	x17, w5
	.loc 13 501 0
..LDL2025:
/*    501 */	add	w15, w8, w8
	.loc 13 480 0
..LDL2026:
/*    480 */	sxtw	x5, w8
	.loc 13 487 0
..LDL2027:
/*    487 */	sxtw	x8, w7
	.loc 13 473 0
..LDL2028:
/*    473 */	sxtw	x16, w16
	.loc 13 501 0
..LDL2029:
/*    501 */	sxtw	x18, w15
	.loc 13 494 0
..LDL2030:
/*    494 */	sxtw	x7, w6
	.loc 13 459 0
..LDL2031:
/*    459 */	orr	x15, x1, 6917529027641081856
	.loc 13 451 0
..LDL2032:
/*    451 */	cmp	w0, 6
/*    451 */	blt	.L11876
	.loc 13 544 0
..LDL2033:
/*    544 */	add	x30, x2, x4
	.loc 13 466 0
..LDL2034:
/*    466 */	ldr	s25, [x1, x17, lsl #2]	//  (*)
	.loc 13 459 0
..LDL2035:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 473 0
..LDL2036:
/*    473 */	ldr	s7, [x1, x16, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2037:
/*    454 */	orr	x21, x2, 6917529027641081856
	.loc 13 480 0
..LDL2038:
/*    480 */	ldr	s3, [x1, x5, lsl #2]	//  (*)
	.loc 13 487 0
..LDL2039:
/*    487 */	ldr	s1, [x1, x8, lsl #2]	//  (*)
	.loc 13 459 0
..LDL2040:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 454 0
..LDL2041:
/*    454 */	ld1w	{z9.s}, p0/z, [x21, 0, mul vl]	//  (*)
/*    454 */	orr	x22, x30, 6917529027641081856
	.loc 13 543 0
..LDL2042:
/*    543 */	add	x6, x15, 4
	.loc 13 459 0
..LDL2043:
/*    459 */	ld1rw	{z28.s}, p2/z, [x15]	//  (*)
	.loc 13 544 0
..LDL2044:
/*    544 */	add	x2, x30, x4
	.loc 13 454 0
..LDL2045:
/*    454 */	ld1w	{z8.s}, p0/z, [x22, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL2046:
/*    543 */	add	x30, x1, 4
	.loc 13 494 0
..LDL2047:
/*    494 */	ldr	s11, [x1, x7, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2048:
/*    454 */	orr	x20, x2, 6917529027641081856
	.loc 13 459 0
..LDL2049:
/*    459 */	ld1rw	{z5.s}, p1/z, [x6]	//  (*)
	.loc 13 501 0
..LDL2050:
/*    501 */	ldr	s10, [x1, x18, lsl #2]	//  (*)
	.loc 13 466 0
..LDL2051:
/*    466 */	ldr	s12, [x30, x17, lsl #2]	//  (*)
	.loc 13 473 0
..LDL2052:
/*    473 */	ldr	s13, [x30, x16, lsl #2]	//  (*)
	.loc 13 480 0
..LDL2053:
/*    480 */	ldr	s15, [x30, x5, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2054:
/*    454 */	prfm	0, [x21, 512]	//  (*)
	.loc 13 487 0
..LDL2055:
/*    487 */	ldr	s16, [x30, x8, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2056:
/*    454 */	prfm	2, [x21, 2560]	//  (*)
/*    454 */	prfm	0, [x22, 512]	//  (*)
	.loc 13 466 0
..LDL2057:
/*    466 */	dup	z25.s, z25.s[0]
	.loc 13 454 0
..LDL2058:
/*    454 */	prfm	2, [x22, 2560]	//  (*)
	.loc 13 473 0
..LDL2059:
/*    473 */	dup	z7.s, z7.s[0]
	.loc 13 454 0
..LDL2060:
/*    454 */	prfm	0, [x20, 512]	//  (*)
	.loc 13 480 0
..LDL2061:
/*    480 */	dup	z14.s, z3.s[0]
	.loc 13 487 0
..LDL2062:
/*    487 */	dup	z17.s, z1.s[0]
	.p2align 5
.L11260:					// :entr:term:swpl
	.loc 13 494 0
..LDL2063:
/*    494 */	ldr	s18, [x30, x7, lsl #2]	//  (*)
	.loc 13 544 0
..LDL2064:
/*    544 */	add	x2, x2, x4
	.loc 13 494 0
..LDL2065:
/*    494 */	dup	z11.s, z11.s[0]
	.loc 13 454 0
..LDL2066:
/*    454 */	prfm	2, [x20, 2560]	//  (*)
/*    454 */	ld1w	{z31.s}, p0/z, [x20, 0, mul vl]	//  (*)
/*    454 */	orr	x1, x2, 6917529027641081856
	.loc 13 501 0
..LDL2067:
/*    501 */	ldr	s22, [x30, x18, lsl #2]	//  (*)
/*    501 */	dup	z10.s, z10.s[0]
	.loc 13 461 0
..LDL2068:
/*    461 */	fmla	z24.s, p0/m, z28.s, z9.s
	.loc 13 543 0
..LDL2069:
/*    543 */	add	x15, x30, 4
	.loc 13 466 0
..LDL2070:
/*    466 */	ldr	s21, [x15, x17, lsl #2]	//  (*)
/*    466 */	dup	z28.s, z12.s[0]
	.loc 13 468 0
..LDL2071:
/*    468 */	fmla	z6.s, p0/m, z25.s, z9.s
	.loc 13 459 0
..LDL2072:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 473 0
..LDL2073:
/*    473 */	ldr	s20, [x15, x16, lsl #2]	//  (*)
/*    473 */	dup	z26.s, z13.s[0]
	.loc 13 475 0
..LDL2074:
/*    475 */	fmla	z4.s, p0/m, z7.s, z9.s
	.loc 13 543 0
..LDL2075:
/*    543 */	add	x22, x6, 4
	.loc 13 480 0
..LDL2076:
/*    480 */	ldr	s19, [x15, x5, lsl #2]	//  (*)
/*    480 */	dup	z3.s, z15.s[0]
	.loc 13 482 0
..LDL2077:
/*    482 */	movprfx	z29.s, p0/z, z2.s
/*    482 */	fmla	z29.s, p0/m, z14.s, z9.s
	.loc 13 487 0
..LDL2078:
/*    487 */	ldr	s23, [x15, x8, lsl #2]	//  (*)
/*    487 */	dup	z1.s, z16.s[0]
	.loc 13 489 0
..LDL2079:
/*    489 */	movprfx	z12.s, p0/z, z0.s
/*    489 */	fmla	z12.s, p0/m, z17.s, z9.s
	.loc 13 459 0
..LDL2080:
/*    459 */	ld1rw	{z25.s}, p1/z, [x22]	//  (*)
	.loc 13 496 0
..LDL2081:
/*    496 */	fmad	z11.s, p0/m, z9.s, z27.s
	.loc 13 503 0
..LDL2082:
/*    503 */	fmla	z30.s, p0/m, z10.s, z9.s
	.loc 13 454 0
..LDL2083:
/*    454 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 494 0
..LDL2084:
/*    494 */	ldr	s27, [x15, x7, lsl #2]	//  (*)
	.loc 13 544 0
..LDL2085:
/*    544 */	add	x2, x2, x4
	.loc 13 494 0
..LDL2086:
/*    494 */	dup	z13.s, z18.s[0]
	.loc 13 454 0
..LDL2087:
/*    454 */	prfm	2, [x1, 2560]	//  (*)
/*    454 */	ld1w	{z9.s}, p0/z, [x1, 0, mul vl]	//  (*)
/*    454 */	orr	x1, x2, 6917529027641081856
	.loc 13 501 0
..LDL2088:
/*    501 */	ldr	s18, [x15, x18, lsl #2]	//  (*)
/*    501 */	dup	z10.s, z22.s[0]
	.loc 13 461 0
..LDL2089:
/*    461 */	fmla	z24.s, p0/m, z5.s, z8.s
	.loc 13 543 0
..LDL2090:
/*    543 */	add	x21, x30, 8
	.loc 13 466 0
..LDL2091:
/*    466 */	ldr	s16, [x21, x17, lsl #2]	//  (*)
/*    466 */	dup	z7.s, z21.s[0]
	.loc 13 468 0
..LDL2092:
/*    468 */	fmla	z6.s, p0/m, z28.s, z8.s
	.loc 13 473 0
..LDL2093:
/*    473 */	ldr	s15, [x21, x16, lsl #2]	//  (*)
/*    473 */	dup	z5.s, z20.s[0]
	.loc 13 475 0
..LDL2094:
/*    475 */	fmla	z4.s, p0/m, z26.s, z8.s
	.loc 13 543 0
..LDL2095:
/*    543 */	add	x15, x6, 8
	.loc 13 480 0
..LDL2096:
/*    480 */	ldr	s14, [x21, x5, lsl #2]	//  (*)
/*    480 */	dup	z2.s, z19.s[0]
	.loc 13 482 0
..LDL2097:
/*    482 */	fmad	z3.s, p0/m, z8.s, z29.s
	.loc 13 487 0
..LDL2098:
/*    487 */	ldr	s17, [x21, x8, lsl #2]	//  (*)
/*    487 */	dup	z0.s, z23.s[0]
	.loc 13 489 0
..LDL2099:
/*    489 */	fmad	z1.s, p0/m, z8.s, z12.s
	.loc 13 459 0
..LDL2100:
/*    459 */	ld1rw	{z28.s}, p1/z, [x15]	//  (*)
	.loc 13 496 0
..LDL2101:
/*    496 */	movprfx	z26.s, p0/z, z11.s
/*    496 */	fmla	z26.s, p0/m, z13.s, z8.s
	.loc 13 503 0
..LDL2102:
/*    503 */	fmla	z30.s, p0/m, z10.s, z8.s
	.loc 13 454 0
..LDL2103:
/*    454 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 494 0
..LDL2104:
/*    494 */	ldr	s11, [x21, x7, lsl #2]	//  (*)
	.loc 13 544 0
..LDL2105:
/*    544 */	add	x2, x2, x4
	.loc 13 494 0
..LDL2106:
/*    494 */	dup	z27.s, z27.s[0]
	.loc 13 454 0
..LDL2107:
/*    454 */	prfm	2, [x1, 2560]	//  (*)
/*    454 */	ld1w	{z8.s}, p0/z, [x1, 0, mul vl]	//  (*)
/*    454 */	orr	x20, x2, 6917529027641081856
	.loc 13 501 0
..LDL2108:
/*    501 */	ldr	s10, [x21, x18, lsl #2]	//  (*)
/*    501 */	dup	z29.s, z18.s[0]
	.loc 13 459 0
..LDL2109:
/*    459 */	prfm	2, [x22, 2560]	//  (*)
/*    459 */	prfm	0, [x22, 512]	//  (*)
	.loc 13 461 0
..LDL2110:
/*    461 */	fmla	z24.s, p0/m, z25.s, z31.s
	.loc 13 543 0
..LDL2111:
/*    543 */	add	x30, x30, 12
	.loc 13 466 0
..LDL2112:
/*    466 */	ldr	s12, [x30, x17, lsl #2]	//  (*)
/*    466 */	dup	z25.s, z16.s[0]
	.loc 13 468 0
..LDL2113:
/*    468 */	fmla	z6.s, p0/m, z7.s, z31.s
	.loc 13 473 0
..LDL2114:
/*    473 */	ldr	s13, [x30, x16, lsl #2]	//  (*)
/*    473 */	dup	z7.s, z15.s[0]
	.loc 13 475 0
..LDL2115:
/*    475 */	fmla	z4.s, p0/m, z5.s, z31.s
	.loc 13 543 0
..LDL2116:
/*    543 */	add	x6, x6, 12
	.loc 13 480 0
..LDL2117:
/*    480 */	ldr	s15, [x30, x5, lsl #2]	//  (*)
/*    480 */	dup	z14.s, z14.s[0]
	.loc 13 482 0
..LDL2118:
/*    482 */	fmad	z2.s, p0/m, z31.s, z3.s
	.loc 13 487 0
..LDL2119:
/*    487 */	ldr	s16, [x30, x8, lsl #2]	//  (*)
/*    487 */	dup	z17.s, z17.s[0]
	.loc 13 489 0
..LDL2120:
/*    489 */	fmad	z0.s, p0/m, z31.s, z1.s
	.loc 13 545 0
..LDL2121:
/*    545 */	sub	w0, w0, 3
	.loc 13 459 0
..LDL2122:
/*    459 */	ld1rw	{z5.s}, p1/z, [x6]	//  (*)
	.loc 13 496 0
..LDL2123:
/*    496 */	fmad	z27.s, p0/m, z31.s, z26.s
	.loc 13 503 0
..LDL2124:
/*    503 */	fmla	z30.s, p0/m, z29.s, z31.s
	.loc 13 454 0
..LDL2125:
/*    454 */	prfm	0, [x20, 512]	//  (*)
	.loc 13 453 0
..LDL2126:
/*    453 */	cmp	w0, 6
/*    453 */	bge	.L11260
	.loc 13 494 0
..LDL2127:
/*    494 */	ldr	s1, [x30, x7, lsl #2]	//  (*)
/*    494 */	dup	z3.s, z11.s[0]
	.loc 13 461 0
..LDL2128:
/*    461 */	fmad	z28.s, p0/m, z9.s, z24.s
	.loc 13 543 0
..LDL2129:
/*    543 */	add	x1, x30, 4
	.loc 13 454 0
..LDL2130:
/*    454 */	ld1w	{z26.s}, p0/z, [x20, 0, mul vl]	//  (*)
	.loc 13 501 0
..LDL2131:
/*    501 */	dup	z29.s, z10.s[0]
	.loc 13 468 0
..LDL2132:
/*    468 */	fmla	z6.s, p0/m, z25.s, z9.s
	.loc 13 459 0
..LDL2133:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 544 0
..LDL2134:
/*    544 */	add	x2, x2, x4
	.loc 13 501 0
..LDL2135:
/*    501 */	ldr	s31, [x30, x18, lsl #2]	//  (*)
	.loc 13 466 0
..LDL2136:
/*    466 */	dup	z11.s, z12.s[0]
	.loc 13 475 0
..LDL2137:
/*    475 */	fmla	z4.s, p0/m, z7.s, z9.s
	.loc 13 454 0
..LDL2138:
/*    454 */	prfm	2, [x20, 2560]	//  (*)
	.loc 13 473 0
..LDL2139:
/*    473 */	dup	z12.s, z13.s[0]
	.loc 13 543 0
..LDL2140:
/*    543 */	add	x20, x6, 4
	.loc 13 482 0
..LDL2141:
/*    482 */	fmla	z2.s, p0/m, z14.s, z9.s
	.loc 13 466 0
..LDL2142:
/*    466 */	ldr	s10, [x1, x17, lsl #2]	//  (*)
	.loc 13 489 0
..LDL2143:
/*    489 */	fmla	z0.s, p0/m, z17.s, z9.s
	.loc 13 545 0
..LDL2144:
/*    545 */	sub	w0, w0, 3
	.loc 13 473 0
..LDL2145:
/*    473 */	ldr	s25, [x1, x16, lsl #2]	//  (*)
	.loc 13 480 0
..LDL2146:
/*    480 */	dup	z13.s, z15.s[0]
/*    480 */	ldr	s7, [x1, x5, lsl #2]	//  (*)
	.loc 13 496 0
..LDL2147:
/*    496 */	fmad	z3.s, p0/m, z9.s, z27.s
	.loc 13 503 0
..LDL2148:
/*    503 */	fmad	z29.s, p0/m, z9.s, z30.s
	.loc 13 494 0
..LDL2149:
/*    494 */	ldr	s30, [x1, x7, lsl #2]	//  (*)
	.loc 13 487 0
..LDL2150:
/*    487 */	ldr	s14, [x1, x8, lsl #2]	//  (*)
	.loc 13 494 0
..LDL2151:
/*    494 */	dup	z27.s, z1.s[0]
	.loc 13 487 0
..LDL2152:
/*    487 */	dup	z15.s, z16.s[0]
	.loc 13 501 0
..LDL2153:
/*    501 */	ldr	s9, [x1, x18, lsl #2]	//  (*)
	.loc 13 461 0
..LDL2154:
/*    461 */	fmla	z28.s, p0/m, z5.s, z8.s
	.loc 13 543 0
..LDL2155:
/*    543 */	add	x1, x30, 8
	.loc 13 459 0
..LDL2156:
/*    459 */	ld1rw	{z24.s}, p1/z, [x20]	//  (*)
	.loc 13 501 0
..LDL2157:
/*    501 */	dup	z31.s, z31.s[0]
	.loc 13 468 0
..LDL2158:
/*    468 */	fmla	z6.s, p0/m, z11.s, z8.s
	.loc 13 459 0
..LDL2159:
/*    459 */	prfm	2, [x15, 2560]	//  (*)
	.loc 13 475 0
..LDL2160:
/*    475 */	fmla	z4.s, p0/m, z12.s, z8.s
	.loc 13 459 0
..LDL2161:
/*    459 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 543 0
..LDL2162:
/*    543 */	add	x15, x6, 8
	.loc 13 482 0
..LDL2163:
/*    482 */	fmla	z2.s, p0/m, z13.s, z8.s
	.loc 13 459 0
..LDL2164:
/*    459 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 466 0
..LDL2165:
/*    466 */	dup	z1.s, z10.s[0]
	.loc 13 459 0
..LDL2166:
/*    459 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 473 0
..LDL2167:
/*    473 */	dup	z25.s, z25.s[0]
	.loc 13 489 0
..LDL2168:
/*    489 */	fmla	z0.s, p0/m, z15.s, z8.s
	.loc 13 496 0
..LDL2169:
/*    496 */	fmad	z27.s, p0/m, z8.s, z3.s
	.loc 13 459 0
..LDL2170:
/*    459 */	prfm	2, [x20, 2560]	//  (*)
	.loc 13 503 0
..LDL2171:
/*    503 */	fmla	z29.s, p0/m, z31.s, z8.s
	.loc 13 494 0
..LDL2172:
/*    494 */	dup	z3.s, z30.s[0]
	.loc 13 459 0
..LDL2173:
/*    459 */	prfm	0, [x20, 512]	//  (*)
	.loc 13 480 0
..LDL2174:
/*    480 */	dup	z7.s, z7.s[0]
	.loc 13 487 0
..LDL2175:
/*    487 */	dup	z5.s, z14.s[0]
	.loc 13 501 0
..LDL2176:
/*    501 */	dup	z30.s, z9.s[0]
	.loc 13 468 0
..LDL2177:
/*    468 */	fmla	z6.s, p0/m, z1.s, z26.s
	.loc 13 475 0
..LDL2178:
/*    475 */	fmla	z4.s, p0/m, z25.s, z26.s
	.loc 13 461 0
..LDL2179:
/*    461 */	fmad	z24.s, p0/m, z26.s, z28.s
	.loc 13 482 0
..LDL2180:
/*    482 */	fmla	z2.s, p0/m, z7.s, z26.s
	.loc 13 489 0
..LDL2181:
/*    489 */	fmla	z0.s, p0/m, z5.s, z26.s
	.loc 13 496 0
..LDL2182:
/*    496 */	fmla	z27.s, p0/m, z3.s, z26.s
	.loc 13 503 0
..LDL2183:
/*    503 */	fmad	z30.s, p0/m, z26.s, z29.s
	.loc 13 545 0
..LDL2184:
/*    545 */	cbz	w0, .L11873
.L11876:
	.p2align 5
.L11879:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL2185:
/*    454 */	orr	x6, x2, 6917529027641081856
	.loc 13 459 0
..LDL2186:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 466 0
..LDL2187:
/*    466 */	ldr	s29, [x1, x17, lsl #2]	//  (*)
	.loc 13 544 0
..LDL2188:
/*    544 */	add	x2, x2, x4
	.loc 13 473 0
..LDL2189:
/*    473 */	ldr	s3, [x1, x16, lsl #2]	//  (*)
	.loc 13 480 0
..LDL2190:
/*    480 */	ldr	s5, [x1, x5, lsl #2]	//  (*)
	.loc 13 545 0
..LDL2191:
/*    545 */	subs	w0, w0, 1
	.loc 13 487 0
..LDL2192:
/*    487 */	ldr	s25, [x1, x8, lsl #2]	//  (*)
	.loc 13 494 0
..LDL2193:
/*    494 */	ldr	s7, [x1, x7, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2194:
/*    454 */	ld1w	{z26.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 501 0
..LDL2195:
/*    501 */	ldr	s1, [x1, x18, lsl #2]	//  (*)
	.loc 13 543 0
..LDL2196:
/*    543 */	add	x1, x1, 4
	.loc 13 459 0
..LDL2197:
/*    459 */	prfm	2, [x15, 2560]	//  (*)
/*    459 */	ld1rw	{z28.s}, p1/z, [x15]	//  (*)
	.loc 13 454 0
..LDL2198:
/*    454 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 459 0
..LDL2199:
/*    459 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 543 0
..LDL2200:
/*    543 */	add	x15, x15, 4
	.loc 13 454 0
..LDL2201:
/*    454 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 466 0
..LDL2202:
/*    466 */	dup	z29.s, z29.s[0]
	.loc 13 473 0
..LDL2203:
/*    473 */	dup	z3.s, z3.s[0]
	.loc 13 480 0
..LDL2204:
/*    480 */	dup	z5.s, z5.s[0]
	.loc 13 487 0
..LDL2205:
/*    487 */	dup	z25.s, z25.s[0]
	.loc 13 494 0
..LDL2206:
/*    494 */	dup	z7.s, z7.s[0]
	.loc 13 501 0
..LDL2207:
/*    501 */	dup	z1.s, z1.s[0]
	.loc 13 468 0
..LDL2208:
/*    468 */	fmla	z6.s, p0/m, z29.s, z26.s
	.loc 13 461 0
..LDL2209:
/*    461 */	fmla	z24.s, p0/m, z28.s, z26.s
	.loc 13 475 0
..LDL2210:
/*    475 */	fmla	z4.s, p0/m, z3.s, z26.s
	.loc 13 482 0
..LDL2211:
/*    482 */	fmla	z2.s, p0/m, z5.s, z26.s
	.loc 13 489 0
..LDL2212:
/*    489 */	fmla	z0.s, p0/m, z25.s, z26.s
	.loc 13 496 0
..LDL2213:
/*    496 */	fmla	z27.s, p0/m, z7.s, z26.s
	.loc 13 503 0
..LDL2214:
/*    503 */	fmla	z30.s, p0/m, z1.s, z26.s
	.loc 13 545 0 is_stmt 0
..LDL2215:
/*    545 */	bne	.L11879
.L11873:
.L11262:
	.loc 13 550 0 is_stmt 1
..LDL2216:
/*    550 */	st1w	{z24.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL2217:
/*    556 */	st1w	{z6.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL2218:
/*    562 */	st1w	{z4.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL2219:
/*    568 */	st1w	{z2.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL2220:
/*    574 */	st1w	{z0.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 580 0
..LDL2221:
/*    580 */	st1w	{z27.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 586 0
..LDL2222:
/*    586 */	st1w	{z30.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL2223:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	z20, [x29, 13, mul vl]	//  (*)
/*    ??? */	ldr	z21, [x29, 14, mul vl]	//  (*)
/*    ??? */	ldr	z22, [x29, 15, mul vl]	//  (*)
/*    ??? */	ldr	z23, [x29, 16, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 17
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D15.pchi:
	.cfi_endproc
.LFE14:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL2224:
.LFB15:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -14
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xf0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 64
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x50,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x18,0xb,0x11,0x58,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x25, x26, [x29, -64]	//  (*)
	.cfi_escape 0x10,0x19,0xb,0x11,0x40,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1a,0xb,0x11,0x48,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z20, [x29, 13, mul vl]	//  (*)
	.cfi_escape 0x10,0x74,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL2225:
/*    379 */	ld1w	{z10.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL2226:
/*    391 */	add	w10, w4, w4
	.loc 13 409 0
..LDL2227:
/*    409 */	add	w7, w4, w4, lsl #2
	.loc 13 397 0
..LDL2228:
/*    397 */	add	w9, w10, w4
	.loc 13 403 0
..LDL2229:
/*    403 */	lsl	w8, w4, 2
	.loc 13 385 0
..LDL2230:
/*    385 */	sxtw	x17, w4
	.loc 13 415 0
..LDL2231:
/*    415 */	add	w4, w9, w9
	.loc 13 397 0
..LDL2232:
/*    397 */	sxtw	x13, w9
	.loc 13 409 0
..LDL2233:
/*    409 */	sxtw	x9, w7
	.loc 13 391 0
..LDL2234:
/*    391 */	sxtw	x15, w10
	.loc 13 403 0
..LDL2235:
/*    403 */	sxtw	x11, w8
	.loc 13 387 0
..LDL2236:
/*    387 */	add	x16, x17, 16
	.loc 13 415 0
..LDL2237:
/*    415 */	sxtw	x7, w4
	.loc 13 393 0
..LDL2238:
/*    393 */	add	x14, x15, 16
	.loc 13 399 0
..LDL2239:
/*    399 */	add	x12, x13, 16
	.loc 13 405 0
..LDL2240:
/*    405 */	add	x10, x11, 16
	.loc 13 411 0
..LDL2241:
/*    411 */	add	x8, x9, 16
	.loc 13 417 0
..LDL2242:
/*    417 */	add	x4, x7, 16
	.loc 13 385 0
..LDL2243:
/*    385 */	add	x17, x3, x17, lsl #2
	.loc 13 381 0
..LDL2244:
/*    381 */	add	x18, x3, 64
/*    381 */	ld1w	{z30.s}, p1/z, [x18, 0, mul vl]	//  (*)
	.loc 13 387 0
..LDL2245:
/*    387 */	add	x16, x3, x16, lsl #2
	.loc 13 385 0
..LDL2246:
/*    385 */	ld1w	{z29.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 387 0
..LDL2247:
/*    387 */	ld1w	{z3.s}, p1/z, [x16, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL2248:
/*    391 */	add	x15, x3, x15, lsl #2
/*    391 */	ld1w	{z28.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 393 0
..LDL2249:
/*    393 */	add	x14, x3, x14, lsl #2
/*    393 */	ld1w	{z4.s}, p1/z, [x14, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL2250:
/*    397 */	add	x13, x3, x13, lsl #2
/*    397 */	ld1w	{z26.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 399 0
..LDL2251:
/*    399 */	add	x12, x3, x12, lsl #2
/*    399 */	ld1w	{z8.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 403 0
..LDL2252:
/*    403 */	add	x11, x3, x11, lsl #2
/*    403 */	ld1w	{z24.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 405 0
..LDL2253:
/*    405 */	add	x10, x3, x10, lsl #2
/*    405 */	ld1w	{z13.s}, p1/z, [x10, 0, mul vl]	//  (*)
	.loc 13 409 0
..LDL2254:
/*    409 */	add	x9, x3, x9, lsl #2
/*    409 */	ld1w	{z6.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 411 0
..LDL2255:
/*    411 */	add	x8, x3, x8, lsl #2
/*    411 */	ld1w	{z9.s}, p1/z, [x8, 0, mul vl]	//  (*)
	.loc 13 415 0
..LDL2256:
/*    415 */	add	x7, x3, x7, lsl #2
/*    415 */	ld1w	{z1.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 417 0
..LDL2257:
/*    417 */	add	x30, x3, x4, lsl #2
/*    417 */	ld1w	{z31.s}, p1/z, [x30, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL2258:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11270
	.loc 13 473 0 is_stmt 0
..LDL2259:
/*    473 */	add	w20, w5, w5
	.loc 13 544 0
..LDL2260:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 480 0
..LDL2261:
/*    480 */	add	w25, w20, w5
	.loc 13 487 0
..LDL2262:
/*    487 */	lsl	w6, w5, 2
	.loc 13 494 0
..LDL2263:
/*    494 */	add	w23, w5, w5, lsl #2
	.loc 13 473 0
..LDL2264:
/*    473 */	sxtw	x21, w20
	.loc 13 487 0
..LDL2265:
/*    487 */	sxtw	x20, w6
	.loc 13 466 0
..LDL2266:
/*    466 */	sxtw	x24, w5
	.loc 13 501 0
..LDL2267:
/*    501 */	add	w22, w25, w25
	.loc 13 480 0
..LDL2268:
/*    480 */	sxtw	x5, w25
	.loc 13 494 0
..LDL2269:
/*    494 */	sxtw	x6, w23
	.loc 13 501 0
..LDL2270:
/*    501 */	sxtw	x22, w22
	.loc 13 459 0
..LDL2271:
/*    459 */	orr	x23, x1, 6917529027641081856
	.loc 13 451 0
..LDL2272:
/*    451 */	cmp	w0, 3
/*    451 */	blt	.L11887
	.loc 13 545 0
..LDL2273:
/*    545 */	mov	z0.d, z31.d
	.loc 13 459 0
..LDL2274:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 454 0
..LDL2275:
/*    454 */	orr	x25, x2, 6917529027641081856
	.loc 13 456 0
..LDL2276:
/*    456 */	ld1w	{z11.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 545 0
..LDL2277:
/*    545 */	mov	z2.d, z9.d
	.loc 13 454 0
..LDL2278:
/*    454 */	ld1w	{z12.s}, p0/z, [x25, 0, mul vl]	//  (*)
	.loc 13 466 0
..LDL2279:
/*    466 */	ldr	s19, [x1, x24, lsl #2]	//  (*)
	.loc 13 545 0
..LDL2280:
/*    545 */	mov	z5.d, z13.d
	.loc 13 473 0
..LDL2281:
/*    473 */	ldr	s15, [x1, x21, lsl #2]	//  (*)
	.loc 13 545 0
..LDL2282:
/*    545 */	mov	z7.d, z8.d
	.loc 13 480 0
..LDL2283:
/*    480 */	ldr	s20, [x1, x5, lsl #2]	//  (*)
	.loc 13 545 0
..LDL2284:
/*    545 */	mov	z25.d, z4.d
	.loc 13 459 0
..LDL2285:
/*    459 */	ld1rw	{z31.s}, p2/z, [x23]	//  (*)
	.loc 13 487 0
..LDL2286:
/*    487 */	ldr	s18, [x1, x20, lsl #2]	//  (*)
	.loc 13 545 0
..LDL2287:
/*    545 */	mov	z27.d, z3.d
	.loc 13 494 0
..LDL2288:
/*    494 */	ldr	s17, [x1, x6, lsl #2]	//  (*)
	.loc 13 501 0
..LDL2289:
/*    501 */	ldr	s16, [x1, x22, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2290:
/*    454 */	prfm	2, [x25, 2560]	//  (*)
/*    454 */	prfm	0, [x25, 512]	//  (*)
	.p2align 5
.L11268:					// :entr:term:swpl
	.loc 13 466 0
..LDL2291:
/*    466 */	dup	z19.s, z19.s[0]
	.loc 13 544 0
..LDL2292:
/*    544 */	add	x26, x2, x4
	.loc 13 473 0
..LDL2293:
/*    473 */	dup	z15.s, z15.s[0]
	.loc 13 454 0
..LDL2294:
/*    454 */	orr	x2, x26, 6917529027641081856
	.loc 13 480 0
..LDL2295:
/*    480 */	dup	z14.s, z20.s[0]
	.loc 13 454 0
..LDL2296:
/*    454 */	prfm	2, [x2, 2560]	//  (*)
/*    454 */	prfm	0, [x2, 512]	//  (*)
	.loc 13 487 0
..LDL2297:
/*    487 */	dup	z4.s, z18.s[0]
	.loc 13 454 0
..LDL2298:
/*    454 */	ld1w	{z8.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 494 0
..LDL2299:
/*    494 */	dup	z3.s, z17.s[0]
	.loc 13 461 0
..LDL2300:
/*    461 */	fmla	z10.s, p0/m, z31.s, z12.s
	.loc 13 459 0
..LDL2301:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 463 0
..LDL2302:
/*    463 */	fmla	z30.s, p1/m, z31.s, z11.s
	.loc 13 543 0
..LDL2303:
/*    543 */	add	x2, x1, 4
	.loc 13 466 0
..LDL2304:
/*    466 */	ldr	s18, [x2, x24, lsl #2]	//  (*)
	.loc 13 468 0
..LDL2305:
/*    468 */	fmla	z29.s, p0/m, z19.s, z12.s
	.loc 13 456 0
..LDL2306:
/*    456 */	ld1w	{z9.s}, p1/z, [x26, 1, mul vl]	//  (*)
	.loc 13 501 0
..LDL2307:
/*    501 */	dup	z13.s, z16.s[0]
	.loc 13 543 0
..LDL2308:
/*    543 */	add	x25, x23, 4
	.loc 13 473 0
..LDL2309:
/*    473 */	ldr	s16, [x2, x21, lsl #2]	//  (*)
	.loc 13 475 0
..LDL2310:
/*    475 */	fmla	z28.s, p0/m, z15.s, z12.s
	.loc 13 470 0
..LDL2311:
/*    470 */	fmla	z27.s, p1/m, z19.s, z11.s
	.loc 13 459 0
..LDL2312:
/*    459 */	ld1rw	{z31.s}, p2/z, [x25]	//  (*)
	.loc 13 480 0
..LDL2313:
/*    480 */	ldr	s19, [x2, x5, lsl #2]	//  (*)
	.loc 13 482 0
..LDL2314:
/*    482 */	fmla	z26.s, p0/m, z14.s, z12.s
	.loc 13 477 0
..LDL2315:
/*    477 */	fmla	z25.s, p1/m, z15.s, z11.s
	.loc 13 487 0
..LDL2316:
/*    487 */	ldr	s15, [x2, x20, lsl #2]	//  (*)
	.loc 13 489 0
..LDL2317:
/*    489 */	fmla	z24.s, p0/m, z4.s, z12.s
	.loc 13 484 0
..LDL2318:
/*    484 */	fmla	z7.s, p1/m, z14.s, z11.s
	.loc 13 494 0
..LDL2319:
/*    494 */	ldr	s17, [x2, x6, lsl #2]	//  (*)
	.loc 13 496 0
..LDL2320:
/*    496 */	fmla	z6.s, p0/m, z3.s, z12.s
	.loc 13 491 0
..LDL2321:
/*    491 */	fmad	z4.s, p1/m, z11.s, z5.s
	.loc 13 501 0
..LDL2322:
/*    501 */	ldr	s20, [x2, x22, lsl #2]	//  (*)
	.loc 13 498 0
..LDL2323:
/*    498 */	fmad	z3.s, p1/m, z11.s, z2.s
	.loc 13 503 0
..LDL2324:
/*    503 */	fmla	z1.s, p0/m, z13.s, z12.s
	.loc 13 505 0
..LDL2325:
/*    505 */	fmla	z0.s, p1/m, z13.s, z11.s
	.loc 13 466 0
..LDL2326:
/*    466 */	dup	z18.s, z18.s[0]
	.loc 13 544 0
..LDL2327:
/*    544 */	add	x2, x26, x4
	.loc 13 473 0
..LDL2328:
/*    473 */	dup	z16.s, z16.s[0]
	.loc 13 454 0
..LDL2329:
/*    454 */	orr	x26, x2, 6917529027641081856
	.loc 13 480 0
..LDL2330:
/*    480 */	dup	z14.s, z19.s[0]
	.loc 13 454 0
..LDL2331:
/*    454 */	prfm	2, [x26, 2560]	//  (*)
/*    454 */	prfm	0, [x26, 512]	//  (*)
	.loc 13 487 0
..LDL2332:
/*    487 */	dup	z5.s, z15.s[0]
	.loc 13 454 0
..LDL2333:
/*    454 */	ld1w	{z12.s}, p0/z, [x26, 0, mul vl]	//  (*)
	.loc 13 494 0
..LDL2334:
/*    494 */	dup	z2.s, z17.s[0]
	.loc 13 461 0
..LDL2335:
/*    461 */	fmla	z10.s, p0/m, z31.s, z8.s
	.loc 13 463 0
..LDL2336:
/*    463 */	fmla	z30.s, p1/m, z31.s, z9.s
	.loc 13 543 0
..LDL2337:
/*    543 */	add	x1, x1, 8
	.loc 13 466 0
..LDL2338:
/*    466 */	ldr	s19, [x1, x24, lsl #2]	//  (*)
	.loc 13 468 0
..LDL2339:
/*    468 */	fmla	z29.s, p0/m, z18.s, z8.s
	.loc 13 456 0
..LDL2340:
/*    456 */	ld1w	{z11.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 501 0
..LDL2341:
/*    501 */	dup	z13.s, z20.s[0]
	.loc 13 543 0
..LDL2342:
/*    543 */	add	x23, x23, 8
	.loc 13 473 0
..LDL2343:
/*    473 */	ldr	s15, [x1, x21, lsl #2]	//  (*)
	.loc 13 475 0
..LDL2344:
/*    475 */	fmla	z28.s, p0/m, z16.s, z8.s
	.loc 13 470 0
..LDL2345:
/*    470 */	fmla	z27.s, p1/m, z18.s, z9.s
	.loc 13 459 0
..LDL2346:
/*    459 */	ld1rw	{z31.s}, p2/z, [x23]	//  (*)
	.loc 13 480 0
..LDL2347:
/*    480 */	ldr	s20, [x1, x5, lsl #2]	//  (*)
	.loc 13 482 0
..LDL2348:
/*    482 */	fmla	z26.s, p0/m, z14.s, z8.s
	.loc 13 477 0
..LDL2349:
/*    477 */	fmla	z25.s, p1/m, z16.s, z9.s
	.loc 13 487 0
..LDL2350:
/*    487 */	ldr	s18, [x1, x20, lsl #2]	//  (*)
	.loc 13 489 0
..LDL2351:
/*    489 */	fmla	z24.s, p0/m, z5.s, z8.s
	.loc 13 484 0
..LDL2352:
/*    484 */	fmla	z7.s, p1/m, z14.s, z9.s
	.loc 13 459 0
..LDL2353:
/*    459 */	prfm	2, [x25, 2560]	//  (*)
	.loc 13 494 0
..LDL2354:
/*    494 */	ldr	s17, [x1, x6, lsl #2]	//  (*)
	.loc 13 496 0
..LDL2355:
/*    496 */	fmla	z6.s, p0/m, z2.s, z8.s
	.loc 13 491 0
..LDL2356:
/*    491 */	fmad	z5.s, p1/m, z9.s, z4.s
	.loc 13 459 0
..LDL2357:
/*    459 */	prfm	0, [x25, 512]	//  (*)
	.loc 13 501 0
..LDL2358:
/*    501 */	ldr	s16, [x1, x22, lsl #2]	//  (*)
	.loc 13 498 0
..LDL2359:
/*    498 */	fmad	z2.s, p1/m, z9.s, z3.s
	.loc 13 503 0
..LDL2360:
/*    503 */	fmla	z1.s, p0/m, z13.s, z8.s
	.loc 13 505 0
..LDL2361:
/*    505 */	fmla	z0.s, p1/m, z13.s, z9.s
	.loc 13 545 0
..LDL2362:
/*    545 */	sub	w0, w0, 2
	.loc 13 453 0
..LDL2363:
/*    453 */	cmp	w0, 3
/*    453 */	bge	.L11268
	.loc 13 544 0
..LDL2364:
/*    544 */	add	x2, x2, x4
	.loc 13 461 0
..LDL2365:
/*    461 */	fmla	z10.s, p0/m, z31.s, z12.s
	.loc 13 459 0
..LDL2366:
/*    459 */	prfm	2, [x23, 2560]	//  (*)
	.loc 13 463 0
..LDL2367:
/*    463 */	fmla	z30.s, p1/m, z31.s, z11.s
	.loc 13 466 0
..LDL2368:
/*    466 */	dup	z3.s, z19.s[0]
	.loc 13 543 0
..LDL2369:
/*    543 */	add	x1, x1, 4
	.loc 13 459 0
..LDL2370:
/*    459 */	prfm	0, [x23, 512]	//  (*)
	.loc 13 543 0
..LDL2371:
/*    543 */	add	x23, x23, 4
	.loc 13 473 0
..LDL2372:
/*    473 */	dup	z4.s, z15.s[0]
	.loc 13 545 0
..LDL2373:
/*    545 */	sub	w0, w0, 1
	.loc 13 480 0
..LDL2374:
/*    480 */	dup	z8.s, z20.s[0]
	.loc 13 487 0
..LDL2375:
/*    487 */	dup	z13.s, z18.s[0]
	.loc 13 494 0
..LDL2376:
/*    494 */	dup	z9.s, z17.s[0]
	.loc 13 501 0
..LDL2377:
/*    501 */	dup	z31.s, z16.s[0]
	.loc 13 468 0
..LDL2378:
/*    468 */	fmla	z29.s, p0/m, z3.s, z12.s
	.loc 13 470 0
..LDL2379:
/*    470 */	fmad	z3.s, p1/m, z11.s, z27.s
	.loc 13 475 0
..LDL2380:
/*    475 */	fmla	z28.s, p0/m, z4.s, z12.s
	.loc 13 477 0
..LDL2381:
/*    477 */	fmad	z4.s, p1/m, z11.s, z25.s
	.loc 13 482 0
..LDL2382:
/*    482 */	fmla	z26.s, p0/m, z8.s, z12.s
	.loc 13 484 0
..LDL2383:
/*    484 */	fmad	z8.s, p1/m, z11.s, z7.s
	.loc 13 489 0
..LDL2384:
/*    489 */	fmla	z24.s, p0/m, z13.s, z12.s
	.loc 13 491 0
..LDL2385:
/*    491 */	fmad	z13.s, p1/m, z11.s, z5.s
	.loc 13 496 0
..LDL2386:
/*    496 */	fmla	z6.s, p0/m, z9.s, z12.s
	.loc 13 498 0
..LDL2387:
/*    498 */	fmad	z9.s, p1/m, z11.s, z2.s
	.loc 13 503 0
..LDL2388:
/*    503 */	fmla	z1.s, p0/m, z31.s, z12.s
	.loc 13 505 0
..LDL2389:
/*    505 */	fmad	z31.s, p1/m, z11.s, z0.s
	.loc 13 545 0
..LDL2390:
/*    545 */	cbz	w0, .L11884
.L11887:
	.p2align 5
.L11890:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL2391:
/*    454 */	orr	x26, x2, 6917529027641081856
	.loc 13 456 0
..LDL2392:
/*    456 */	add	x25, x2, 64
	.loc 13 459 0
..LDL2393:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 466 0
..LDL2394:
/*    466 */	ldr	s27, [x1, x24, lsl #2]	//  (*)
	.loc 13 473 0
..LDL2395:
/*    473 */	ldr	s2, [x1, x21, lsl #2]	//  (*)
	.loc 13 480 0
..LDL2396:
/*    480 */	ldr	s14, [x1, x5, lsl #2]	//  (*)
	.loc 13 544 0
..LDL2397:
/*    544 */	add	x2, x2, x4
	.loc 13 545 0
..LDL2398:
/*    545 */	subs	w0, w0, 1
	.loc 13 487 0
..LDL2399:
/*    487 */	ldr	s12, [x1, x20, lsl #2]	//  (*)
	.loc 13 494 0
..LDL2400:
/*    494 */	ldr	s25, [x1, x6, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2401:
/*    454 */	ld1w	{z7.s}, p0/z, [x26, 0, mul vl]	//  (*)
	.loc 13 501 0
..LDL2402:
/*    501 */	ldr	s5, [x1, x22, lsl #2]	//  (*)
	.loc 13 543 0
..LDL2403:
/*    543 */	add	x1, x1, 4
	.loc 13 456 0
..LDL2404:
/*    456 */	ld1w	{z0.s}, p1/z, [x25, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL2405:
/*    459 */	ld1rw	{z11.s}, p2/z, [x23]	//  (*)
/*    459 */	prfm	2, [x23, 2560]	//  (*)
/*    459 */	prfm	0, [x23, 512]	//  (*)
	.loc 13 543 0
..LDL2406:
/*    543 */	add	x23, x23, 4
	.loc 13 454 0
..LDL2407:
/*    454 */	prfm	2, [x26, 2560]	//  (*)
/*    454 */	prfm	0, [x26, 512]	//  (*)
	.loc 13 466 0
..LDL2408:
/*    466 */	dup	z27.s, z27.s[0]
	.loc 13 473 0
..LDL2409:
/*    473 */	dup	z2.s, z2.s[0]
	.loc 13 480 0
..LDL2410:
/*    480 */	dup	z14.s, z14.s[0]
	.loc 13 487 0
..LDL2411:
/*    487 */	dup	z12.s, z12.s[0]
	.loc 13 494 0
..LDL2412:
/*    494 */	dup	z25.s, z25.s[0]
	.loc 13 501 0
..LDL2413:
/*    501 */	dup	z5.s, z5.s[0]
	.loc 13 468 0
..LDL2414:
/*    468 */	fmla	z29.s, p0/m, z27.s, z7.s
	.loc 13 461 0
..LDL2415:
/*    461 */	fmla	z10.s, p0/m, z11.s, z7.s
	.loc 13 463 0
..LDL2416:
/*    463 */	fmla	z30.s, p1/m, z11.s, z0.s
	.loc 13 470 0
..LDL2417:
/*    470 */	fmla	z3.s, p1/m, z27.s, z0.s
	.loc 13 475 0
..LDL2418:
/*    475 */	fmla	z28.s, p0/m, z2.s, z7.s
	.loc 13 477 0
..LDL2419:
/*    477 */	fmla	z4.s, p1/m, z2.s, z0.s
	.loc 13 482 0
..LDL2420:
/*    482 */	fmla	z26.s, p0/m, z14.s, z7.s
	.loc 13 484 0
..LDL2421:
/*    484 */	fmla	z8.s, p1/m, z14.s, z0.s
	.loc 13 489 0
..LDL2422:
/*    489 */	fmla	z24.s, p0/m, z12.s, z7.s
	.loc 13 491 0
..LDL2423:
/*    491 */	fmla	z13.s, p1/m, z12.s, z0.s
	.loc 13 496 0
..LDL2424:
/*    496 */	fmla	z6.s, p0/m, z25.s, z7.s
	.loc 13 498 0
..LDL2425:
/*    498 */	fmla	z9.s, p1/m, z25.s, z0.s
	.loc 13 503 0
..LDL2426:
/*    503 */	fmla	z1.s, p0/m, z5.s, z7.s
	.loc 13 505 0
..LDL2427:
/*    505 */	fmla	z31.s, p1/m, z5.s, z0.s
	.loc 13 545 0 is_stmt 0
..LDL2428:
/*    545 */	bne	.L11890
.L11884:
.L11270:
	.loc 13 550 0 is_stmt 1
..LDL2429:
/*    550 */	st1w	{z10.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 552 0
..LDL2430:
/*    552 */	st1w	{z30.s}, p1, [x18, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL2431:
/*    556 */	st1w	{z29.s}, p0, [x17, 0, mul vl]	//  (*)
	.loc 13 558 0
..LDL2432:
/*    558 */	st1w	{z3.s}, p1, [x16, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL2433:
/*    562 */	st1w	{z28.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 564 0
..LDL2434:
/*    564 */	st1w	{z4.s}, p1, [x14, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL2435:
/*    568 */	st1w	{z26.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 570 0
..LDL2436:
/*    570 */	st1w	{z8.s}, p1, [x12, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL2437:
/*    574 */	st1w	{z24.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 576 0
..LDL2438:
/*    576 */	st1w	{z13.s}, p1, [x10, 0, mul vl]	//  (*)
	.loc 13 580 0
..LDL2439:
/*    580 */	st1w	{z6.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 582 0
..LDL2440:
/*    582 */	st1w	{z9.s}, p1, [x8, 0, mul vl]	//  (*)
	.loc 13 586 0
..LDL2441:
/*    586 */	st1w	{z1.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 588 0
..LDL2442:
/*    588 */	st1w	{z31.s}, p1, [x30, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL2443:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	z20, [x29, 13, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [x29, -64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 14
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D16.pchi:
	.cfi_endproc
.LFE15:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL2444:
.LFB16:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -10
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xd0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 32
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL2445:
/*    379 */	ld1w	{z28.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL2446:
/*    391 */	add	w11, w4, w4
	.loc 13 409 0
..LDL2447:
/*    409 */	add	w8, w4, w4, lsl #2
	.loc 13 397 0
..LDL2448:
/*    397 */	add	w10, w11, w4
	.loc 13 421 0
..LDL2449:
/*    421 */	lsl	w13, w4, 3
	.loc 13 403 0
..LDL2450:
/*    403 */	lsl	w9, w4, 2
	.loc 13 385 0
..LDL2451:
/*    385 */	sxtw	x12, w4
	.loc 13 415 0
..LDL2452:
/*    415 */	add	w7, w10, w10
	.loc 13 421 0
..LDL2453:
/*    421 */	sub	w4, w13, w4
	.loc 13 391 0
..LDL2454:
/*    391 */	sxtw	x11, w11
	.loc 13 397 0
..LDL2455:
/*    397 */	sxtw	x10, w10
	.loc 13 403 0
..LDL2456:
/*    403 */	sxtw	x9, w9
	.loc 13 409 0
..LDL2457:
/*    409 */	sxtw	x8, w8
	.loc 13 415 0
..LDL2458:
/*    415 */	sxtw	x7, w7
	.loc 13 421 0
..LDL2459:
/*    421 */	sxtw	x4, w4
	.loc 13 385 0
..LDL2460:
/*    385 */	add	x12, x3, x12, lsl #2
/*    385 */	ld1w	{z27.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL2461:
/*    391 */	add	x11, x3, x11, lsl #2
/*    391 */	ld1w	{z26.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL2462:
/*    397 */	add	x10, x3, x10, lsl #2
/*    397 */	ld1w	{z25.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 403 0
..LDL2463:
/*    403 */	add	x9, x3, x9, lsl #2
/*    403 */	ld1w	{z7.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 409 0
..LDL2464:
/*    409 */	add	x8, x3, x8, lsl #2
/*    409 */	ld1w	{z5.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 415 0
..LDL2465:
/*    415 */	add	x7, x3, x7, lsl #2
/*    415 */	ld1w	{z2.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 421 0
..LDL2466:
/*    421 */	add	x14, x3, x4, lsl #2
/*    421 */	ld1w	{z0.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL2467:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11278
	.loc 13 473 0 is_stmt 0
..LDL2468:
/*    473 */	add	w16, w5, w5
	.loc 13 544 0
..LDL2469:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 494 0
..LDL2470:
/*    494 */	add	w13, w5, w5, lsl #2
	.loc 13 480 0
..LDL2471:
/*    480 */	add	w30, w16, w5
	.loc 13 508 0
..LDL2472:
/*    508 */	lsl	w18, w5, 3
	.loc 13 487 0
..LDL2473:
/*    487 */	lsl	w17, w5, 2
	.loc 13 466 0
..LDL2474:
/*    466 */	sxtw	x15, w5
	.loc 13 508 0
..LDL2475:
/*    508 */	sub	w20, w18, w5
	.loc 13 473 0
..LDL2476:
/*    473 */	sxtw	x18, w16
	.loc 13 501 0
..LDL2477:
/*    501 */	add	w6, w30, w30
	.loc 13 494 0
..LDL2478:
/*    494 */	sxtw	x5, w13
	.loc 13 480 0
..LDL2479:
/*    480 */	sxtw	x16, w30
	.loc 13 508 0
..LDL2480:
/*    508 */	sxtw	x13, w20
	.loc 13 487 0
..LDL2481:
/*    487 */	sxtw	x17, w17
	.loc 13 501 0
..LDL2482:
/*    501 */	sxtw	x30, w6
	.loc 13 459 0
..LDL2483:
/*    459 */	orr	x20, x1, 6917529027641081856
	.loc 13 451 0
..LDL2484:
/*    451 */	cmp	w0, 4
/*    451 */	blt	.L11898
	.loc 13 466 0
..LDL2485:
/*    466 */	ldr	s3, [x1, x15, lsl #2]	//  (*)
	.loc 13 473 0
..LDL2486:
/*    473 */	ldr	s1, [x1, x18, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2487:
/*    454 */	orr	x6, x2, 6917529027641081856
	.loc 13 459 0
..LDL2488:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 480 0
..LDL2489:
/*    480 */	ldr	s16, [x1, x16, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2490:
/*    454 */	ld1w	{z10.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 543 0
..LDL2491:
/*    543 */	add	x21, x1, 4
	.loc 13 487 0
..LDL2492:
/*    487 */	ldr	s15, [x1, x17, lsl #2]	//  (*)
	.loc 13 494 0
..LDL2493:
/*    494 */	ldr	s14, [x1, x5, lsl #2]	//  (*)
	.loc 13 459 0
..LDL2494:
/*    459 */	ld1rw	{z30.s}, p1/z, [x20]	//  (*)
	.loc 13 501 0
..LDL2495:
/*    501 */	ldr	s13, [x1, x30, lsl #2]	//  (*)
	.loc 13 508 0
..LDL2496:
/*    508 */	ldr	s8, [x1, x13, lsl #2]	//  (*)
	.loc 13 466 0
..LDL2497:
/*    466 */	ldr	s29, [x21, x15, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2498:
/*    454 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 473 0
..LDL2499:
/*    473 */	ldr	s9, [x21, x18, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2500:
/*    454 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 466 0
..LDL2501:
/*    466 */	dup	z12.s, z3.s[0]
	.loc 13 473 0
..LDL2502:
/*    473 */	dup	z11.s, z1.s[0]
	.p2align 5
.L11276:					// :entr:term:swpl
	.loc 13 480 0
..LDL2503:
/*    480 */	dup	z24.s, z16.s[0]
	.loc 13 544 0
..LDL2504:
/*    544 */	add	x1, x4, x2
	.loc 13 487 0
..LDL2505:
/*    487 */	dup	z6.s, z15.s[0]
	.loc 13 454 0
..LDL2506:
/*    454 */	orr	x2, x1, 6917529027641081856
	.loc 13 494 0
..LDL2507:
/*    494 */	dup	z4.s, z14.s[0]
	.loc 13 454 0
..LDL2508:
/*    454 */	prfm	2, [x2, 2560]	//  (*)
	.loc 13 480 0
..LDL2509:
/*    480 */	ldr	s14, [x21, x16, lsl #2]	//  (*)
	.loc 13 459 0
..LDL2510:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 501 0
..LDL2511:
/*    501 */	dup	z3.s, z13.s[0]
	.loc 13 454 0
..LDL2512:
/*    454 */	prfm	0, [x2, 512]	//  (*)
	.loc 13 487 0
..LDL2513:
/*    487 */	ldr	s13, [x21, x17, lsl #2]	//  (*)
	.loc 13 508 0
..LDL2514:
/*    508 */	dup	z1.s, z8.s[0]
	.loc 13 454 0
..LDL2515:
/*    454 */	ld1w	{z31.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 494 0
..LDL2516:
/*    494 */	ldr	s16, [x21, x5, lsl #2]	//  (*)
	.loc 13 543 0
..LDL2517:
/*    543 */	add	x22, x20, 4
	.loc 13 459 0
..LDL2518:
/*    459 */	ld1rw	{z8.s}, p1/z, [x22]	//  (*)
	.loc 13 461 0
..LDL2519:
/*    461 */	fmla	z28.s, p0/m, z30.s, z10.s
	.loc 13 501 0
..LDL2520:
/*    501 */	ldr	s15, [x21, x30, lsl #2]	//  (*)
	.loc 13 466 0
..LDL2521:
/*    466 */	dup	z29.s, z29.s[0]
	.loc 13 543 0
..LDL2522:
/*    543 */	add	x6, x21, 4
	.loc 13 468 0
..LDL2523:
/*    468 */	fmla	z27.s, p0/m, z12.s, z10.s
	.loc 13 473 0
..LDL2524:
/*    473 */	dup	z9.s, z9.s[0]
	.loc 13 508 0
..LDL2525:
/*    508 */	ldr	s30, [x21, x13, lsl #2]	//  (*)
	.loc 13 466 0
..LDL2526:
/*    466 */	ldr	s12, [x6, x15, lsl #2]	//  (*)
	.loc 13 475 0
..LDL2527:
/*    475 */	fmla	z26.s, p0/m, z11.s, z10.s
	.loc 13 482 0
..LDL2528:
/*    482 */	fmad	z24.s, p0/m, z10.s, z25.s
	.loc 13 473 0
..LDL2529:
/*    473 */	ldr	s11, [x6, x18, lsl #2]	//  (*)
	.loc 13 489 0
..LDL2530:
/*    489 */	fmad	z6.s, p0/m, z10.s, z7.s
	.loc 13 496 0
..LDL2531:
/*    496 */	fmad	z4.s, p0/m, z10.s, z5.s
	.loc 13 503 0
..LDL2532:
/*    503 */	fmad	z3.s, p0/m, z10.s, z2.s
	.loc 13 510 0
..LDL2533:
/*    510 */	fmad	z1.s, p0/m, z10.s, z0.s
	.loc 13 480 0
..LDL2534:
/*    480 */	dup	z25.s, z14.s[0]
	.loc 13 544 0
..LDL2535:
/*    544 */	add	x2, x1, x4
	.loc 13 487 0
..LDL2536:
/*    487 */	dup	z7.s, z13.s[0]
	.loc 13 454 0
..LDL2537:
/*    454 */	orr	x1, x2, 6917529027641081856
	.loc 13 494 0
..LDL2538:
/*    494 */	dup	z5.s, z16.s[0]
	.loc 13 454 0
..LDL2539:
/*    454 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 480 0
..LDL2540:
/*    480 */	ldr	s16, [x6, x16, lsl #2]	//  (*)
	.loc 13 501 0
..LDL2541:
/*    501 */	dup	z2.s, z15.s[0]
	.loc 13 454 0
..LDL2542:
/*    454 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 487 0
..LDL2543:
/*    487 */	ldr	s15, [x6, x17, lsl #2]	//  (*)
	.loc 13 508 0
..LDL2544:
/*    508 */	dup	z0.s, z30.s[0]
	.loc 13 454 0
..LDL2545:
/*    454 */	ld1w	{z10.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 494 0
..LDL2546:
/*    494 */	ldr	s14, [x6, x5, lsl #2]	//  (*)
	.loc 13 543 0
..LDL2547:
/*    543 */	add	x20, x20, 8
	.loc 13 459 0
..LDL2548:
/*    459 */	ld1rw	{z30.s}, p1/z, [x20]	//  (*)
	.loc 13 461 0
..LDL2549:
/*    461 */	fmla	z28.s, p0/m, z8.s, z31.s
	.loc 13 501 0
..LDL2550:
/*    501 */	ldr	s13, [x6, x30, lsl #2]	//  (*)
	.loc 13 466 0
..LDL2551:
/*    466 */	dup	z12.s, z12.s[0]
	.loc 13 543 0
..LDL2552:
/*    543 */	add	x21, x21, 8
	.loc 13 468 0
..LDL2553:
/*    468 */	fmla	z27.s, p0/m, z29.s, z31.s
	.loc 13 473 0
..LDL2554:
/*    473 */	dup	z11.s, z11.s[0]
	.loc 13 508 0
..LDL2555:
/*    508 */	ldr	s8, [x6, x13, lsl #2]	//  (*)
	.loc 13 466 0
..LDL2556:
/*    466 */	ldr	s29, [x21, x15, lsl #2]	//  (*)
	.loc 13 459 0
..LDL2557:
/*    459 */	prfm	2, [x22, 2560]	//  (*)
	.loc 13 475 0
..LDL2558:
/*    475 */	fmla	z26.s, p0/m, z9.s, z31.s
	.loc 13 482 0
..LDL2559:
/*    482 */	fmad	z25.s, p0/m, z31.s, z24.s
	.loc 13 473 0
..LDL2560:
/*    473 */	ldr	s9, [x21, x18, lsl #2]	//  (*)
	.loc 13 489 0
..LDL2561:
/*    489 */	fmad	z7.s, p0/m, z31.s, z6.s
	.loc 13 459 0
..LDL2562:
/*    459 */	prfm	0, [x22, 512]	//  (*)
	.loc 13 496 0
..LDL2563:
/*    496 */	fmad	z5.s, p0/m, z31.s, z4.s
	.loc 13 503 0
..LDL2564:
/*    503 */	fmad	z2.s, p0/m, z31.s, z3.s
	.loc 13 510 0
..LDL2565:
/*    510 */	fmad	z0.s, p0/m, z31.s, z1.s
	.loc 13 545 0
..LDL2566:
/*    545 */	sub	w0, w0, 2
	.loc 13 453 0
..LDL2567:
/*    453 */	cmp	w0, 4
/*    453 */	bge	.L11276
	.loc 13 487 0
..LDL2568:
/*    487 */	dup	z4.s, z15.s[0]
	.loc 13 459 0
..LDL2569:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 461 0
..LDL2570:
/*    461 */	fmla	z28.s, p0/m, z30.s, z10.s
	.loc 13 501 0
..LDL2571:
/*    501 */	ldr	s30, [x21, x30, lsl #2]	//  (*)
	.loc 13 544 0
..LDL2572:
/*    544 */	add	x2, x2, x4
	.loc 13 543 0
..LDL2573:
/*    543 */	add	x6, x20, 4
	.loc 13 468 0
..LDL2574:
/*    468 */	fmla	z27.s, p0/m, z12.s, z10.s
	.loc 13 508 0
..LDL2575:
/*    508 */	ldr	s12, [x21, x13, lsl #2]	//  (*)
	.loc 13 480 0
..LDL2576:
/*    480 */	dup	z1.s, z16.s[0]
	.loc 13 454 0
..LDL2577:
/*    454 */	orr	x1, x2, 6917529027641081856
	.loc 13 459 0
..LDL2578:
/*    459 */	prfm	2, [x20, 2560]	//  (*)
	.loc 13 475 0
..LDL2579:
/*    475 */	fmla	z26.s, p0/m, z11.s, z10.s
	.loc 13 494 0
..LDL2580:
/*    494 */	dup	z15.s, z14.s[0]
	.loc 13 480 0
..LDL2581:
/*    480 */	ldr	s14, [x21, x16, lsl #2]	//  (*)
	.loc 13 544 0
..LDL2582:
/*    544 */	add	x2, x2, x4
	.loc 13 545 0
..LDL2583:
/*    545 */	sub	w0, w0, 2
	.loc 13 501 0
..LDL2584:
/*    501 */	dup	z3.s, z13.s[0]
	.loc 13 487 0
..LDL2585:
/*    487 */	ldr	s13, [x21, x17, lsl #2]	//  (*)
	.loc 13 508 0
..LDL2586:
/*    508 */	dup	z6.s, z8.s[0]
	.loc 13 494 0
..LDL2587:
/*    494 */	ldr	s8, [x21, x5, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2588:
/*    454 */	ld1w	{z24.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 489 0
..LDL2589:
/*    489 */	fmad	z4.s, p0/m, z10.s, z7.s
	.loc 13 454 0
..LDL2590:
/*    454 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 459 0
..LDL2591:
/*    459 */	ld1rw	{z31.s}, p1/z, [x6]	//  (*)
	.loc 13 466 0
..LDL2592:
/*    466 */	dup	z29.s, z29.s[0]
	.loc 13 454 0
..LDL2593:
/*    454 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 543 0
..LDL2594:
/*    543 */	add	x1, x21, 4
	.loc 13 482 0
..LDL2595:
/*    482 */	fmad	z1.s, p0/m, z10.s, z25.s
	.loc 13 459 0
..LDL2596:
/*    459 */	prfm	0, [x20, 512]	//  (*)
	.loc 13 496 0
..LDL2597:
/*    496 */	fmad	z15.s, p0/m, z10.s, z5.s
	.loc 13 543 0
..LDL2598:
/*    543 */	add	x20, x20, 8
	.loc 13 503 0
..LDL2599:
/*    503 */	fmad	z3.s, p0/m, z10.s, z2.s
	.loc 13 459 0
..LDL2600:
/*    459 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 510 0
..LDL2601:
/*    510 */	fmad	z6.s, p0/m, z10.s, z0.s
	.loc 13 459 0
..LDL2602:
/*    459 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 473 0
..LDL2603:
/*    473 */	dup	z9.s, z9.s[0]
	.loc 13 480 0
..LDL2604:
/*    480 */	dup	z25.s, z14.s[0]
	.loc 13 487 0
..LDL2605:
/*    487 */	dup	z7.s, z13.s[0]
	.loc 13 494 0
..LDL2606:
/*    494 */	dup	z5.s, z8.s[0]
	.loc 13 501 0
..LDL2607:
/*    501 */	dup	z2.s, z30.s[0]
	.loc 13 508 0
..LDL2608:
/*    508 */	dup	z0.s, z12.s[0]
	.loc 13 468 0
..LDL2609:
/*    468 */	fmla	z27.s, p0/m, z29.s, z24.s
	.loc 13 461 0
..LDL2610:
/*    461 */	fmla	z28.s, p0/m, z31.s, z24.s
	.loc 13 475 0
..LDL2611:
/*    475 */	fmla	z26.s, p0/m, z9.s, z24.s
	.loc 13 482 0
..LDL2612:
/*    482 */	fmad	z25.s, p0/m, z24.s, z1.s
	.loc 13 489 0
..LDL2613:
/*    489 */	fmad	z7.s, p0/m, z24.s, z4.s
	.loc 13 496 0
..LDL2614:
/*    496 */	fmad	z5.s, p0/m, z24.s, z15.s
	.loc 13 503 0
..LDL2615:
/*    503 */	fmad	z2.s, p0/m, z24.s, z3.s
	.loc 13 510 0
..LDL2616:
/*    510 */	fmad	z0.s, p0/m, z24.s, z6.s
	.loc 13 545 0
..LDL2617:
/*    545 */	cbz	w0, .L11895
.L11898:
	.p2align 5
.L11901:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL2618:
/*    454 */	orr	x6, x2, 6917529027641081856
	.loc 13 459 0
..LDL2619:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 466 0
..LDL2620:
/*    466 */	ldr	s30, [x1, x15, lsl #2]	//  (*)
	.loc 13 544 0
..LDL2621:
/*    544 */	add	x2, x2, x4
	.loc 13 473 0
..LDL2622:
/*    473 */	ldr	s1, [x1, x18, lsl #2]	//  (*)
	.loc 13 480 0
..LDL2623:
/*    480 */	ldr	s3, [x1, x16, lsl #2]	//  (*)
	.loc 13 545 0
..LDL2624:
/*    545 */	subs	w0, w0, 1
	.loc 13 487 0
..LDL2625:
/*    487 */	ldr	s8, [x1, x17, lsl #2]	//  (*)
	.loc 13 494 0
..LDL2626:
/*    494 */	ldr	s24, [x1, x5, lsl #2]	//  (*)
	.loc 13 501 0
..LDL2627:
/*    501 */	ldr	s31, [x1, x30, lsl #2]	//  (*)
	.loc 13 508 0
..LDL2628:
/*    508 */	ldr	s29, [x1, x13, lsl #2]	//  (*)
	.loc 13 543 0
..LDL2629:
/*    543 */	add	x1, x1, 4
	.loc 13 454 0
..LDL2630:
/*    454 */	ld1w	{z6.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL2631:
/*    459 */	ld1rw	{z4.s}, p1/z, [x20]	//  (*)
/*    459 */	prfm	2, [x20, 2560]	//  (*)
/*    459 */	prfm	0, [x20, 512]	//  (*)
	.loc 13 543 0
..LDL2632:
/*    543 */	add	x20, x20, 4
	.loc 13 454 0
..LDL2633:
/*    454 */	prfm	2, [x6, 2560]	//  (*)
/*    454 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 466 0
..LDL2634:
/*    466 */	dup	z30.s, z30.s[0]
	.loc 13 473 0
..LDL2635:
/*    473 */	dup	z1.s, z1.s[0]
	.loc 13 480 0
..LDL2636:
/*    480 */	dup	z3.s, z3.s[0]
	.loc 13 487 0
..LDL2637:
/*    487 */	dup	z8.s, z8.s[0]
	.loc 13 494 0
..LDL2638:
/*    494 */	dup	z24.s, z24.s[0]
	.loc 13 501 0
..LDL2639:
/*    501 */	dup	z31.s, z31.s[0]
	.loc 13 508 0
..LDL2640:
/*    508 */	dup	z29.s, z29.s[0]
	.loc 13 461 0
..LDL2641:
/*    461 */	fmla	z28.s, p0/m, z4.s, z6.s
	.loc 13 468 0
..LDL2642:
/*    468 */	fmla	z27.s, p0/m, z30.s, z6.s
	.loc 13 475 0
..LDL2643:
/*    475 */	fmla	z26.s, p0/m, z1.s, z6.s
	.loc 13 482 0
..LDL2644:
/*    482 */	fmla	z25.s, p0/m, z3.s, z6.s
	.loc 13 489 0
..LDL2645:
/*    489 */	fmla	z7.s, p0/m, z8.s, z6.s
	.loc 13 496 0
..LDL2646:
/*    496 */	fmla	z5.s, p0/m, z24.s, z6.s
	.loc 13 503 0
..LDL2647:
/*    503 */	fmla	z2.s, p0/m, z31.s, z6.s
	.loc 13 510 0
..LDL2648:
/*    510 */	fmla	z0.s, p0/m, z29.s, z6.s
	.loc 13 545 0 is_stmt 0
..LDL2649:
/*    545 */	bne	.L11901
.L11895:
.L11278:
	.loc 13 550 0 is_stmt 1
..LDL2650:
/*    550 */	st1w	{z28.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL2651:
/*    556 */	st1w	{z27.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL2652:
/*    562 */	st1w	{z26.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL2653:
/*    568 */	st1w	{z25.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL2654:
/*    574 */	st1w	{z7.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 580 0
..LDL2655:
/*    580 */	st1w	{z5.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 586 0
..LDL2656:
/*    586 */	st1w	{z2.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 592 0
..LDL2657:
/*    592 */	st1w	{z0.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL2658:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 10
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D17.pchi:
	.cfi_endproc
.LFE16:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL2659:
.LFB17:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -14
/*    620 */	mov	x9, x1
/*    620 */	mov	w18, w0
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xf0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 96
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    620 */	mov	x20, x2
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x50,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x18,0xb,0x11,0x58,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x25, x26, [x29, -64]	//  (*)
	.cfi_escape 0x10,0x19,0xb,0x11,0x40,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1a,0xb,0x11,0x48,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z20, [x29, 13, mul vl]	//  (*)
	.cfi_escape 0x10,0x74,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL2660:
/*    379 */	ld1w	{z28.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 403 0
..LDL2661:
/*    403 */	lsl	w7, w4, 2
	.loc 13 381 0
..LDL2662:
/*    381 */	add	x30, x3, 64
	.loc 13 391 0
..LDL2663:
/*    391 */	add	w11, w4, w4
	.loc 13 403 0
..LDL2664:
/*    403 */	sxtw	x14, w7
	.loc 13 381 0
..LDL2665:
/*    381 */	ld1w	{z27.s}, p1/z, [x30, 0, mul vl]	//  (*)
	.loc 13 405 0
..LDL2666:
/*    405 */	add	x13, x14, 16
	.loc 13 397 0
..LDL2667:
/*    397 */	add	w8, w11, w4
	.loc 13 403 0
..LDL2668:
/*    403 */	add	x14, x3, x14, lsl #2
	.loc 13 421 0
..LDL2669:
/*    421 */	lsl	w0, w4, 3
	.loc 13 415 0
..LDL2670:
/*    415 */	add	w1, w8, w8
	.loc 13 381 0
..LDL2671:
/*    ??? */	str	x30, [x19, 24]	//  (*)
	.loc 13 409 0
..LDL2672:
/*    409 */	add	w2, w4, w4, lsl #2
	.loc 13 385 0
..LDL2673:
/*    385 */	sxtw	x10, w4
	.loc 13 403 0
..LDL2674:
/*    403 */	ld1w	{z29.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 421 0
..LDL2675:
/*    421 */	sub	w0, w0, w4
	.loc 13 391 0
..LDL2676:
/*    391 */	sxtw	x16, w11
	.loc 13 403 0
..LDL2677:
/*    ??? */	str	x14, [x19, 8]	//  (*)
	.loc 13 397 0
..LDL2678:
/*    397 */	sxtw	x11, w8
	.loc 13 415 0
..LDL2679:
/*    415 */	sxtw	x4, w1
	.loc 13 409 0
..LDL2680:
/*    409 */	sxtw	x8, w2
	.loc 13 393 0
..LDL2681:
/*    393 */	add	x15, x16, 16
	.loc 13 421 0
..LDL2682:
/*    421 */	sxtw	x1, w0
	.loc 13 387 0
..LDL2683:
/*    387 */	add	x17, x10, 16
	.loc 13 399 0
..LDL2684:
/*    399 */	add	x12, x11, 16
	.loc 13 411 0
..LDL2685:
/*    411 */	add	x7, x8, 16
	.loc 13 417 0
..LDL2686:
/*    417 */	add	x2, x4, 16
	.loc 13 423 0
..LDL2687:
/*    423 */	add	x0, x1, 16
	.loc 13 393 0
..LDL2688:
/*    393 */	add	x26, x3, x15, lsl #2
/*    393 */	ld1w	{z31.s}, p1/z, [x26, 0, mul vl]	//  (*)
	.loc 13 405 0
..LDL2689:
/*    405 */	add	x25, x3, x13, lsl #2
/*    405 */	ld1w	{z14.s}, p1/z, [x25, 0, mul vl]	//  (*)
	.loc 13 385 0
..LDL2690:
/*    385 */	add	x10, x3, x10, lsl #2
	.loc 13 387 0
..LDL2691:
/*    387 */	add	x21, x3, x17, lsl #2
	.loc 13 385 0
..LDL2692:
/*    385 */	ld1w	{z26.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 387 0
..LDL2693:
/*    387 */	ld1w	{z25.s}, p1/z, [x21, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL2694:
/*    391 */	add	x16, x3, x16, lsl #2
/*    391 */	ld1w	{z24.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL2695:
/*    397 */	add	x11, x3, x11, lsl #2
	.loc 13 391 0
..LDL2696:
/*    ??? */	str	x16, [x19, 16]	//  (*)
	.loc 13 397 0
..LDL2697:
/*    397 */	ld1w	{z7.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 399 0
..LDL2698:
/*    399 */	add	x12, x3, x12, lsl #2
/*    399 */	ld1w	{z6.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 409 0
..LDL2699:
/*    409 */	add	x24, x3, x8, lsl #2
/*    409 */	ld1w	{z5.s}, p0/z, [x24, 0, mul vl]	//  (*)
	.loc 13 411 0
..LDL2700:
/*    411 */	add	x23, x3, x7, lsl #2
/*    411 */	ld1w	{z13.s}, p1/z, [x23, 0, mul vl]	//  (*)
	.loc 13 415 0
..LDL2701:
/*    415 */	add	x22, x3, x4, lsl #2
/*    415 */	ld1w	{z3.s}, p0/z, [x22, 0, mul vl]	//  (*)
	.loc 13 417 0
..LDL2702:
/*    417 */	add	x13, x3, x2, lsl #2
/*    417 */	ld1w	{z16.s}, p1/z, [x13, 0, mul vl]	//  (*)
	.loc 13 421 0
..LDL2703:
/*    421 */	add	x14, x3, x1, lsl #2
/*    421 */	ld1w	{z1.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 423 0
..LDL2704:
/*    423 */	add	x15, x3, x0, lsl #2
/*    423 */	ld1w	{z12.s}, p1/z, [x15, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL2705:
/*    451 */	cmp	w18, 0
/*    451 */	ble	.L11286
	.loc 13 473 0 is_stmt 0
..LDL2706:
/*    473 */	add	w8, w5, w5
	.loc 13 544 0
..LDL2707:
/*    544 */	sbfiz	x16, x6, 2, 32
	.loc 13 480 0
..LDL2708:
/*    480 */	add	w7, w8, w5
	.loc 13 494 0
..LDL2709:
/*    494 */	add	w1, w5, w5, lsl #2
	.loc 13 473 0
..LDL2710:
/*    473 */	sxtw	x6, w8
	.loc 13 508 0
..LDL2711:
/*    508 */	lsl	w4, w5, 3
	.loc 13 487 0
..LDL2712:
/*    487 */	lsl	w17, w5, 2
	.loc 13 501 0
..LDL2713:
/*    501 */	add	w2, w7, w7
	.loc 13 480 0
..LDL2714:
/*    480 */	sxtw	x8, w7
	.loc 13 466 0
..LDL2715:
/*    466 */	sxtw	x0, w5
	.loc 13 508 0
..LDL2716:
/*    508 */	sub	w4, w4, w5
	.loc 13 487 0
..LDL2717:
/*    487 */	sxtw	x7, w17
	.loc 13 494 0
..LDL2718:
/*    494 */	sxtw	x1, w1
	.loc 13 501 0
..LDL2719:
/*    501 */	sxtw	x2, w2
	.loc 13 508 0
..LDL2720:
/*    508 */	sxtw	x4, w4
	.loc 13 459 0
..LDL2721:
/*    459 */	orr	x17, x9, 6917529027641081856
	.loc 13 544 0
..LDL2722:
/*    544 */	mov	x5, x16
	.loc 13 451 0
..LDL2723:
/*    451 */	cmp	w18, 3
/*    451 */	blt	.L11909
	.loc 13 545 0
..LDL2724:
/*    545 */	mov	x16, x17
	.loc 13 459 0
..LDL2725:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 454 0
..LDL2726:
/*    454 */	orr	x17, x20, 6917529027641081856
	.loc 13 545 0
..LDL2727:
/*    545 */	mov	z4.d, z13.d
	.loc 13 456 0
..LDL2728:
/*    456 */	ld1w	{z11.s}, p1/z, [x20, 1, mul vl]	//  (*)
	.loc 13 545 0
..LDL2729:
/*    545 */	mov	z2.d, z16.d
/*    545 */	mov	z8.d, z14.d
/*    545 */	mov	z0.d, z12.d
	.loc 13 454 0
..LDL2730:
/*    454 */	ld1w	{z30.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 466 0
..LDL2731:
/*    466 */	ldr	s17, [x9, x0, lsl #2]	//  (*)
	.loc 13 459 0
..LDL2732:
/*    459 */	ld1rw	{z13.s}, p2/z, [x16]	//  (*)
	.loc 13 473 0
..LDL2733:
/*    473 */	ldr	s16, [x9, x6, lsl #2]	//  (*)
	.loc 13 487 0
..LDL2734:
/*    487 */	ldr	s18, [x9, x7, lsl #2]	//  (*)
	.loc 13 480 0
..LDL2735:
/*    480 */	ldr	s14, [x9, x8, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2736:
/*    454 */	prfm	2, [x17, 2560]	//  (*)
/*    454 */	prfm	0, [x17, 512]	//  (*)
	.p2align 5
.L11284:					// :entr:term:swpl
	.loc 13 494 0
..LDL2737:
/*    494 */	ldr	s10, [x9, x1, lsl #2]	//  (*)
	.loc 13 501 0
..LDL2738:
/*    501 */	ldr	s9, [x9, x2, lsl #2]	//  (*)
	.loc 13 508 0
..LDL2739:
/*    508 */	ldr	s19, [x9, x4, lsl #2]	//  (*)
	.loc 13 466 0
..LDL2740:
/*    466 */	dup	z12.s, z17.s[0]
	.loc 13 544 0
..LDL2741:
/*    544 */	add	x30, x20, x5
	.loc 13 473 0
..LDL2742:
/*    473 */	dup	z17.s, z16.s[0]
	.loc 13 454 0
..LDL2743:
/*    454 */	orr	x17, x30, 6917529027641081856
	.loc 13 480 0
..LDL2744:
/*    480 */	dup	z16.s, z14.s[0]
	.loc 13 454 0
..LDL2745:
/*    454 */	prfm	2, [x17, 2560]	//  (*)
	.loc 13 461 0
..LDL2746:
/*    461 */	fmla	z28.s, p0/m, z13.s, z30.s
	.loc 13 487 0
..LDL2747:
/*    487 */	dup	z14.s, z18.s[0]
	.loc 13 454 0
..LDL2748:
/*    454 */	prfm	0, [x17, 512]	//  (*)
	.loc 13 463 0
..LDL2749:
/*    463 */	fmla	z27.s, p1/m, z13.s, z11.s
	.loc 13 494 0
..LDL2750:
/*    494 */	dup	z15.s, z10.s[0]
	.loc 13 454 0
..LDL2751:
/*    454 */	ld1w	{z10.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 468 0
..LDL2752:
/*    468 */	fmla	z26.s, p0/m, z12.s, z30.s
	.loc 13 501 0
..LDL2753:
/*    501 */	dup	z13.s, z9.s[0]
	.loc 13 456 0
..LDL2754:
/*    456 */	ld1w	{z9.s}, p1/z, [x30, 1, mul vl]	//  (*)
	.loc 13 459 0
..LDL2755:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 470 0
..LDL2756:
/*    470 */	fmla	z25.s, p1/m, z12.s, z11.s
	.loc 13 508 0
..LDL2757:
/*    508 */	dup	z12.s, z19.s[0]
	.loc 13 543 0
..LDL2758:
/*    543 */	add	x20, x9, 4
	.loc 13 475 0
..LDL2759:
/*    475 */	fmla	z24.s, p0/m, z17.s, z30.s
	.loc 13 477 0
..LDL2760:
/*    477 */	fmad	z17.s, p1/m, z11.s, z31.s
	.loc 13 543 0
..LDL2761:
/*    543 */	add	x17, x16, 4
	.loc 13 466 0
..LDL2762:
/*    466 */	ldr	s18, [x20, x0, lsl #2]	//  (*)
	.loc 13 482 0
..LDL2763:
/*    482 */	fmla	z7.s, p0/m, z16.s, z30.s
	.loc 13 484 0
..LDL2764:
/*    484 */	fmla	z6.s, p1/m, z16.s, z11.s
	.loc 13 459 0
..LDL2765:
/*    459 */	ld1rw	{z31.s}, p2/z, [x17]	//  (*)
	.loc 13 489 0
..LDL2766:
/*    489 */	fmla	z29.s, p0/m, z14.s, z30.s
	.loc 13 491 0
..LDL2767:
/*    491 */	fmla	z8.s, p1/m, z14.s, z11.s
	.loc 13 473 0
..LDL2768:
/*    473 */	ldr	s14, [x20, x6, lsl #2]	//  (*)
	.loc 13 487 0
..LDL2769:
/*    487 */	ldr	s16, [x20, x7, lsl #2]	//  (*)
	.loc 13 496 0
..LDL2770:
/*    496 */	fmla	z5.s, p0/m, z15.s, z30.s
	.loc 13 498 0
..LDL2771:
/*    498 */	fmla	z4.s, p1/m, z15.s, z11.s
	.loc 13 503 0
..LDL2772:
/*    503 */	fmla	z3.s, p0/m, z13.s, z30.s
	.loc 13 505 0
..LDL2773:
/*    505 */	fmla	z2.s, p1/m, z13.s, z11.s
	.loc 13 480 0
..LDL2774:
/*    480 */	ldr	s13, [x20, x8, lsl #2]	//  (*)
	.loc 13 510 0
..LDL2775:
/*    510 */	fmla	z1.s, p0/m, z12.s, z30.s
	.loc 13 512 0
..LDL2776:
/*    512 */	fmla	z0.s, p1/m, z12.s, z11.s
	.loc 13 494 0
..LDL2777:
/*    494 */	ldr	s30, [x20, x1, lsl #2]	//  (*)
	.loc 13 501 0
..LDL2778:
/*    501 */	ldr	s11, [x20, x2, lsl #2]	//  (*)
	.loc 13 508 0
..LDL2779:
/*    508 */	ldr	s12, [x20, x4, lsl #2]	//  (*)
	.loc 13 466 0
..LDL2780:
/*    466 */	dup	z19.s, z18.s[0]
	.loc 13 544 0
..LDL2781:
/*    544 */	add	x20, x30, x5
	.loc 13 473 0
..LDL2782:
/*    473 */	dup	z18.s, z14.s[0]
	.loc 13 454 0
..LDL2783:
/*    454 */	orr	x30, x20, 6917529027641081856
	.loc 13 480 0
..LDL2784:
/*    480 */	dup	z13.s, z13.s[0]
	.loc 13 454 0
..LDL2785:
/*    454 */	prfm	2, [x30, 2560]	//  (*)
	.loc 13 461 0
..LDL2786:
/*    461 */	fmla	z28.s, p0/m, z31.s, z10.s
	.loc 13 487 0
..LDL2787:
/*    487 */	dup	z16.s, z16.s[0]
	.loc 13 454 0
..LDL2788:
/*    454 */	prfm	0, [x30, 512]	//  (*)
	.loc 13 463 0
..LDL2789:
/*    463 */	fmla	z27.s, p1/m, z31.s, z9.s
	.loc 13 494 0
..LDL2790:
/*    494 */	dup	z15.s, z30.s[0]
	.loc 13 454 0
..LDL2791:
/*    454 */	ld1w	{z30.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 468 0
..LDL2792:
/*    468 */	fmla	z26.s, p0/m, z19.s, z10.s
	.loc 13 501 0
..LDL2793:
/*    501 */	dup	z14.s, z11.s[0]
	.loc 13 456 0
..LDL2794:
/*    456 */	ld1w	{z11.s}, p1/z, [x20, 1, mul vl]	//  (*)
	.loc 13 470 0
..LDL2795:
/*    470 */	fmla	z25.s, p1/m, z19.s, z9.s
	.loc 13 508 0
..LDL2796:
/*    508 */	dup	z12.s, z12.s[0]
	.loc 13 459 0
..LDL2797:
/*    459 */	prfm	2, [x17, 2560]	//  (*)
	.loc 13 543 0
..LDL2798:
/*    543 */	add	x9, x9, 8
	.loc 13 475 0
..LDL2799:
/*    475 */	fmla	z24.s, p0/m, z18.s, z10.s
	.loc 13 477 0
..LDL2800:
/*    477 */	movprfx	z31.s, p1/z, z17.s
/*    477 */	fmla	z31.s, p1/m, z18.s, z9.s
	.loc 13 543 0
..LDL2801:
/*    543 */	add	x16, x16, 8
	.loc 13 466 0
..LDL2802:
/*    466 */	ldr	s17, [x9, x0, lsl #2]	//  (*)
	.loc 13 482 0
..LDL2803:
/*    482 */	fmla	z7.s, p0/m, z13.s, z10.s
	.loc 13 484 0
..LDL2804:
/*    484 */	fmla	z6.s, p1/m, z13.s, z9.s
	.loc 13 459 0
..LDL2805:
/*    459 */	prfm	0, [x17, 512]	//  (*)
/*    459 */	ld1rw	{z13.s}, p2/z, [x16]	//  (*)
	.loc 13 489 0
..LDL2806:
/*    489 */	fmla	z29.s, p0/m, z16.s, z10.s
	.loc 13 491 0
..LDL2807:
/*    491 */	fmla	z8.s, p1/m, z16.s, z9.s
	.loc 13 473 0
..LDL2808:
/*    473 */	ldr	s16, [x9, x6, lsl #2]	//  (*)
	.loc 13 487 0
..LDL2809:
/*    487 */	ldr	s18, [x9, x7, lsl #2]	//  (*)
	.loc 13 496 0
..LDL2810:
/*    496 */	fmla	z5.s, p0/m, z15.s, z10.s
	.loc 13 498 0
..LDL2811:
/*    498 */	fmla	z4.s, p1/m, z15.s, z9.s
	.loc 13 503 0
..LDL2812:
/*    503 */	fmla	z3.s, p0/m, z14.s, z10.s
	.loc 13 505 0
..LDL2813:
/*    505 */	fmla	z2.s, p1/m, z14.s, z9.s
	.loc 13 480 0
..LDL2814:
/*    480 */	ldr	s14, [x9, x8, lsl #2]	//  (*)
	.loc 13 510 0
..LDL2815:
/*    510 */	fmla	z1.s, p0/m, z12.s, z10.s
	.loc 13 512 0
..LDL2816:
/*    512 */	fmla	z0.s, p1/m, z12.s, z9.s
	.loc 13 545 0
..LDL2817:
/*    545 */	sub	w18, w18, 2
	.loc 13 453 0
..LDL2818:
/*    453 */	cmp	w18, 3
/*    453 */	bge	.L11284
	.loc 13 494 0
..LDL2819:
/*    494 */	ldr	s20, [x9, x1, lsl #2]	//  (*)
	.loc 13 466 0
..LDL2820:
/*    466 */	dup	z12.s, z17.s[0]
	.loc 13 544 0
..LDL2821:
/*    544 */	add	x20, x20, x5
	.loc 13 461 0
..LDL2822:
/*    461 */	fmla	z28.s, p0/m, z13.s, z30.s
	.loc 13 501 0
..LDL2823:
/*    501 */	ldr	s19, [x9, x2, lsl #2]	//  (*)
	.loc 13 463 0
..LDL2824:
/*    463 */	fmla	z27.s, p1/m, z13.s, z11.s
	.loc 13 543 0
..LDL2825:
/*    543 */	add	x17, x16, 4
	.loc 13 545 0
..LDL2826:
/*    545 */	sub	w18, w18, 1
	.loc 13 508 0
..LDL2827:
/*    508 */	ldr	s15, [x9, x4, lsl #2]	//  (*)
	.loc 13 473 0
..LDL2828:
/*    473 */	dup	z10.s, z16.s[0]
	.loc 13 459 0
..LDL2829:
/*    459 */	prfm	2, [x16, 2560]	//  (*)
	.loc 13 543 0
..LDL2830:
/*    543 */	add	x9, x9, 4
	.loc 13 480 0
..LDL2831:
/*    480 */	dup	z9.s, z14.s[0]
	.loc 13 459 0
..LDL2832:
/*    459 */	prfm	0, [x16, 512]	//  (*)
	.loc 13 487 0
..LDL2833:
/*    487 */	dup	z14.s, z18.s[0]
	.loc 13 468 0
..LDL2834:
/*    468 */	fmla	z26.s, p0/m, z12.s, z30.s
	.loc 13 470 0
..LDL2835:
/*    470 */	fmla	z25.s, p1/m, z12.s, z11.s
	.loc 13 494 0
..LDL2836:
/*    494 */	dup	z13.s, z20.s[0]
	.loc 13 475 0
..LDL2837:
/*    475 */	fmla	z24.s, p0/m, z10.s, z30.s
	.loc 13 501 0
..LDL2838:
/*    501 */	dup	z16.s, z19.s[0]
	.loc 13 477 0
..LDL2839:
/*    477 */	fmla	z31.s, p1/m, z10.s, z11.s
	.loc 13 508 0
..LDL2840:
/*    508 */	dup	z12.s, z15.s[0]
	.loc 13 489 0
..LDL2841:
/*    489 */	fmla	z29.s, p0/m, z14.s, z30.s
	.loc 13 482 0
..LDL2842:
/*    482 */	fmla	z7.s, p0/m, z9.s, z30.s
	.loc 13 484 0
..LDL2843:
/*    484 */	fmla	z6.s, p1/m, z9.s, z11.s
	.loc 13 491 0
..LDL2844:
/*    491 */	fmad	z14.s, p1/m, z11.s, z8.s
	.loc 13 496 0
..LDL2845:
/*    496 */	fmla	z5.s, p0/m, z13.s, z30.s
	.loc 13 498 0
..LDL2846:
/*    498 */	fmad	z13.s, p1/m, z11.s, z4.s
	.loc 13 503 0
..LDL2847:
/*    503 */	fmla	z3.s, p0/m, z16.s, z30.s
	.loc 13 505 0
..LDL2848:
/*    505 */	fmad	z16.s, p1/m, z11.s, z2.s
	.loc 13 510 0
..LDL2849:
/*    510 */	fmla	z1.s, p0/m, z12.s, z30.s
	.loc 13 512 0
..LDL2850:
/*    512 */	fmad	z12.s, p1/m, z11.s, z0.s
	.loc 13 545 0
..LDL2851:
/*    545 */	cbz	w18, .L11906
.L11909:
	.p2align 5
.L11912:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL2852:
/*    454 */	orr	x16, x20, 6917529027641081856
	.loc 13 459 0
..LDL2853:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 494 0
..LDL2854:
/*    494 */	ldr	s9, [x9, x1, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2855:
/*    454 */	prfm	2, [x16, 2560]	//  (*)
/*    454 */	ld1w	{z0.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 545 0
..LDL2856:
/*    545 */	subs	w18, w18, 1
	.loc 13 454 0
..LDL2857:
/*    454 */	prfm	0, [x16, 512]	//  (*)
	.loc 13 456 0
..LDL2858:
/*    456 */	add	x16, x20, 64
	.loc 13 501 0
..LDL2859:
/*    501 */	ldr	s30, [x9, x2, lsl #2]	//  (*)
	.loc 13 544 0
..LDL2860:
/*    544 */	add	x20, x20, x5
	.loc 13 456 0
..LDL2861:
/*    456 */	ld1w	{z2.s}, p1/z, [x16, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL2862:
/*    459 */	ld1rw	{z4.s}, p2/z, [x17]	//  (*)
/*    459 */	prfm	2, [x17, 2560]	//  (*)
/*    459 */	prfm	0, [x17, 512]	//  (*)
	.loc 13 543 0
..LDL2863:
/*    543 */	add	x17, x17, 4
	.loc 13 501 0
..LDL2864:
/*    501 */	dup	z30.s, z30.s[0]
	.loc 13 461 0
..LDL2865:
/*    461 */	fmla	z28.s, p0/m, z4.s, z0.s
	.loc 13 463 0
..LDL2866:
/*    463 */	fmla	z27.s, p1/m, z4.s, z2.s
	.loc 13 466 0
..LDL2867:
/*    466 */	ldr	s4, [x9, x0, lsl #2]	//  (*)
	.loc 13 503 0
..LDL2868:
/*    503 */	fmla	z3.s, p0/m, z30.s, z0.s
	.loc 13 505 0
..LDL2869:
/*    505 */	fmla	z16.s, p1/m, z30.s, z2.s
	.loc 13 466 0
..LDL2870:
/*    466 */	dup	z4.s, z4.s[0]
	.loc 13 468 0
..LDL2871:
/*    468 */	fmla	z26.s, p0/m, z4.s, z0.s
	.loc 13 470 0
..LDL2872:
/*    470 */	fmla	z25.s, p1/m, z4.s, z2.s
	.loc 13 473 0
..LDL2873:
/*    473 */	ldr	s4, [x9, x6, lsl #2]	//  (*)
/*    473 */	dup	z4.s, z4.s[0]
	.loc 13 475 0
..LDL2874:
/*    475 */	fmla	z24.s, p0/m, z4.s, z0.s
	.loc 13 477 0
..LDL2875:
/*    477 */	fmla	z31.s, p1/m, z4.s, z2.s
	.loc 13 480 0
..LDL2876:
/*    480 */	ldr	s4, [x9, x8, lsl #2]	//  (*)
/*    480 */	dup	z4.s, z4.s[0]
	.loc 13 482 0
..LDL2877:
/*    482 */	fmla	z7.s, p0/m, z4.s, z0.s
	.loc 13 484 0
..LDL2878:
/*    484 */	fmla	z6.s, p1/m, z4.s, z2.s
	.loc 13 487 0
..LDL2879:
/*    487 */	ldr	s4, [x9, x7, lsl #2]	//  (*)
/*    487 */	dup	z8.s, z4.s[0]
	.loc 13 508 0
..LDL2880:
/*    508 */	ldr	s4, [x9, x4, lsl #2]	//  (*)
	.loc 13 543 0
..LDL2881:
/*    543 */	add	x9, x9, 4
	.loc 13 489 0
..LDL2882:
/*    489 */	fmla	z29.s, p0/m, z8.s, z0.s
	.loc 13 491 0
..LDL2883:
/*    491 */	fmla	z14.s, p1/m, z8.s, z2.s
	.loc 13 494 0
..LDL2884:
/*    494 */	dup	z8.s, z9.s[0]
	.loc 13 508 0
..LDL2885:
/*    508 */	dup	z4.s, z4.s[0]
	.loc 13 496 0
..LDL2886:
/*    496 */	fmla	z5.s, p0/m, z8.s, z0.s
	.loc 13 498 0
..LDL2887:
/*    498 */	fmla	z13.s, p1/m, z8.s, z2.s
	.loc 13 510 0
..LDL2888:
/*    510 */	fmla	z1.s, p0/m, z4.s, z0.s
	.loc 13 512 0
..LDL2889:
/*    512 */	fmla	z12.s, p1/m, z4.s, z2.s
	.loc 13 545 0
..LDL2890:
/*    545 */	bne	.L11912
.L11906:
.L11286:
	.loc 13 550 0
..LDL2891:
/*    550 */	st1w	{z28.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 552 0
..LDL2892:
/*    ??? */	ldr	x0, [x19, 24]	//  (*)
/*    552 */	st1w	{z27.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL2893:
/*    556 */	st1w	{z26.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 558 0
..LDL2894:
/*    558 */	st1w	{z25.s}, p1, [x21, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL2895:
/*    ??? */	ldr	x0, [x19, 16]	//  (*)
/*    562 */	st1w	{z24.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 564 0
..LDL2896:
/*    564 */	st1w	{z31.s}, p1, [x26, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL2897:
/*    568 */	st1w	{z7.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 570 0
..LDL2898:
/*    570 */	st1w	{z6.s}, p1, [x12, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL2899:
/*    ??? */	ldr	x0, [x19, 8]	//  (*)
/*    574 */	st1w	{z29.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 576 0
..LDL2900:
/*    576 */	st1w	{z14.s}, p1, [x25, 0, mul vl]	//  (*)
	.loc 13 580 0
..LDL2901:
/*    580 */	st1w	{z5.s}, p0, [x24, 0, mul vl]	//  (*)
	.loc 13 582 0
..LDL2902:
/*    582 */	st1w	{z13.s}, p1, [x23, 0, mul vl]	//  (*)
	.loc 13 586 0
..LDL2903:
/*    586 */	st1w	{z3.s}, p0, [x22, 0, mul vl]	//  (*)
	.loc 13 588 0
..LDL2904:
/*    588 */	st1w	{z16.s}, p1, [x13, 0, mul vl]	//  (*)
	.loc 13 592 0
..LDL2905:
/*    592 */	st1w	{z1.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 594 0
..LDL2906:
/*    594 */	st1w	{z12.s}, p1, [x15, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL2907:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	z20, [x29, 13, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [x29, -64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 14
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D18.pchi:
	.cfi_endproc
.LFE17:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi9ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi9ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi9ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi9ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi9ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi9ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL2908:
.LFB18:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -14
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xf0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 48
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x50,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x18,0xb,0x11,0x58,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z20, [x29, 13, mul vl]	//  (*)
	.cfi_escape 0x10,0x74,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL2909:
/*    379 */	ld1w	{z31.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL2910:
/*    391 */	add	w11, w4, w4
	.loc 13 409 0
..LDL2911:
/*    409 */	add	w8, w4, w4, lsl #2
	.loc 13 397 0
..LDL2912:
/*    397 */	add	w10, w11, w4
	.loc 13 391 0
..LDL2913:
/*    391 */	sxtw	x12, w11
	.loc 13 403 0
..LDL2914:
/*    403 */	lsl	w9, w4, 2
	.loc 13 415 0
..LDL2915:
/*    415 */	add	w7, w10, w10
	.loc 13 397 0
..LDL2916:
/*    397 */	sxtw	x11, w10
	.loc 13 403 0
..LDL2917:
/*    403 */	sxtw	x10, w9
	.loc 13 421 0
..LDL2918:
/*    421 */	lsl	w14, w4, 3
	.loc 13 385 0
..LDL2919:
/*    385 */	sxtw	x13, w4
	.loc 13 421 0
..LDL2920:
/*    421 */	sub	w4, w14, w4
	.loc 13 409 0
..LDL2921:
/*    409 */	sxtw	x9, w8
	.loc 13 415 0
..LDL2922:
/*    415 */	sxtw	x8, w7
	.loc 13 421 0
..LDL2923:
/*    421 */	sxtw	x7, w4
	.loc 13 427 0
..LDL2924:
/*    427 */	sxtw	x4, w14
	.loc 13 385 0
..LDL2925:
/*    385 */	add	x13, x3, x13, lsl #2
/*    385 */	ld1w	{z30.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL2926:
/*    391 */	add	x12, x3, x12, lsl #2
/*    391 */	ld1w	{z28.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL2927:
/*    397 */	add	x11, x3, x11, lsl #2
/*    397 */	ld1w	{z26.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 403 0
..LDL2928:
/*    403 */	add	x10, x3, x10, lsl #2
/*    403 */	ld1w	{z24.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 409 0
..LDL2929:
/*    409 */	add	x9, x3, x9, lsl #2
/*    409 */	ld1w	{z6.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 415 0
..LDL2930:
/*    415 */	add	x8, x3, x8, lsl #2
/*    415 */	ld1w	{z4.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 421 0
..LDL2931:
/*    421 */	add	x7, x3, x7, lsl #2
/*    421 */	ld1w	{z2.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 427 0
..LDL2932:
/*    427 */	add	x14, x3, x4, lsl #2
/*    427 */	ld1w	{z0.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL2933:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11294
	.loc 13 473 0 is_stmt 0
..LDL2934:
/*    473 */	add	w30, w5, w5
	.loc 13 544 0
..LDL2935:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 494 0
..LDL2936:
/*    494 */	add	w16, w5, w5, lsl #2
	.loc 13 480 0
..LDL2937:
/*    480 */	add	w20, w30, w5
	.loc 13 508 0
..LDL2938:
/*    508 */	lsl	w17, w5, 3
	.loc 13 487 0
..LDL2939:
/*    487 */	lsl	w18, w5, 2
	.loc 13 466 0
..LDL2940:
/*    466 */	sxtw	x6, w5
	.loc 13 501 0
..LDL2941:
/*    501 */	add	w15, w20, w20
	.loc 13 508 0
..LDL2942:
/*    508 */	sub	w5, w17, w5
	.loc 13 473 0
..LDL2943:
/*    473 */	sxtw	x21, w30
	.loc 13 480 0
..LDL2944:
/*    480 */	sxtw	x20, w20
	.loc 13 487 0
..LDL2945:
/*    487 */	sxtw	x18, w18
	.loc 13 494 0
..LDL2946:
/*    494 */	sxtw	x16, w16
	.loc 13 501 0
..LDL2947:
/*    501 */	sxtw	x15, w15
	.loc 13 508 0
..LDL2948:
/*    508 */	sxtw	x5, w5
	.loc 13 515 0
..LDL2949:
/*    515 */	sxtw	x17, w17
	.loc 13 459 0
..LDL2950:
/*    459 */	orr	x30, x1, 6917529027641081856
	.loc 13 451 0
..LDL2951:
/*    451 */	cmp	w0, 4
/*    451 */	blt	.L11920
	.loc 13 466 0
..LDL2952:
/*    466 */	ldr	s1, [x1, x6, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2953:
/*    454 */	orr	x23, x2, 6917529027641081856
	.loc 13 459 0
..LDL2954:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 543 0
..LDL2955:
/*    543 */	add	x22, x1, 4
	.loc 13 454 0
..LDL2956:
/*    454 */	ld1w	{z9.s}, p0/z, [x23, 0, mul vl]	//  (*)
	.loc 13 473 0
..LDL2957:
/*    473 */	ldr	s19, [x1, x21, lsl #2]	//  (*)
	.loc 13 480 0
..LDL2958:
/*    480 */	ldr	s11, [x1, x20, lsl #2]	//  (*)
	.loc 13 487 0
..LDL2959:
/*    487 */	ldr	s10, [x1, x18, lsl #2]	//  (*)
	.loc 13 494 0
..LDL2960:
/*    494 */	ldr	s15, [x1, x16, lsl #2]	//  (*)
	.loc 13 459 0
..LDL2961:
/*    459 */	ld1rw	{z8.s}, p1/z, [x30]	//  (*)
	.loc 13 501 0
..LDL2962:
/*    501 */	ldr	s13, [x1, x15, lsl #2]	//  (*)
	.loc 13 508 0
..LDL2963:
/*    508 */	ldr	s17, [x1, x5, lsl #2]	//  (*)
	.loc 13 466 0
..LDL2964:
/*    466 */	ldr	s16, [x22, x6, lsl #2]	//  (*)
	.loc 13 515 0
..LDL2965:
/*    515 */	ldr	s18, [x1, x17, lsl #2]	//  (*)
	.loc 13 454 0
..LDL2966:
/*    454 */	prfm	2, [x23, 2560]	//  (*)
/*    454 */	prfm	0, [x23, 512]	//  (*)
	.loc 13 466 0
..LDL2967:
/*    466 */	dup	z14.s, z1.s[0]
	.p2align 5
.L11292:					// :entr:term:swpl
	.loc 13 473 0
..LDL2968:
/*    473 */	dup	z29.s, z19.s[0]
	.loc 13 480 0
..LDL2969:
/*    480 */	dup	z27.s, z11.s[0]
	.loc 13 544 0
..LDL2970:
/*    544 */	add	x2, x4, x2
	.loc 13 487 0
..LDL2971:
/*    487 */	dup	z25.s, z10.s[0]
	.loc 13 454 0
..LDL2972:
/*    454 */	orr	x1, x2, 6917529027641081856
	.loc 13 494 0
..LDL2973:
/*    494 */	dup	z7.s, z15.s[0]
	.loc 13 454 0
..LDL2974:
/*    454 */	prfm	2, [x1, 2560]	//  (*)
/*    454 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 501 0
..LDL2975:
/*    501 */	dup	z5.s, z13.s[0]
	.loc 13 454 0
..LDL2976:
/*    454 */	ld1w	{z12.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 473 0
..LDL2977:
/*    473 */	ldr	s19, [x22, x21, lsl #2]	//  (*)
	.loc 13 508 0
..LDL2978:
/*    508 */	dup	z3.s, z17.s[0]
	.loc 13 480 0
..LDL2979:
/*    480 */	ldr	s20, [x22, x20, lsl #2]	//  (*)
	.loc 13 459 0
..LDL2980:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 515 0
..LDL2981:
/*    515 */	dup	z1.s, z18.s[0]
	.loc 13 487 0
..LDL2982:
/*    487 */	ldr	s10, [x22, x18, lsl #2]	//  (*)
	.loc 13 466 0
..LDL2983:
/*    466 */	dup	z13.s, z16.s[0]
	.loc 13 543 0
..LDL2984:
/*    543 */	add	x1, x30, 4
	.loc 13 461 0
..LDL2985:
/*    461 */	fmad	z8.s, p0/m, z9.s, z31.s
	.loc 13 494 0
..LDL2986:
/*    494 */	ldr	s11, [x22, x16, lsl #2]	//  (*)
	.loc 13 468 0
..LDL2987:
/*    468 */	fmla	z30.s, p0/m, z14.s, z9.s
	.loc 13 459 0
..LDL2988:
/*    459 */	ld1rw	{z31.s}, p1/z, [x1]	//  (*)
	.loc 13 475 0
..LDL2989:
/*    475 */	fmad	z29.s, p0/m, z9.s, z28.s
	.loc 13 501 0
..LDL2990:
/*    501 */	ldr	s14, [x22, x15, lsl #2]	//  (*)
	.loc 13 482 0
..LDL2991:
/*    482 */	fmad	z27.s, p0/m, z9.s, z26.s
	.loc 13 543 0
..LDL2992:
/*    543 */	add	x23, x22, 4
	.loc 13 489 0
..LDL2993:
/*    489 */	fmad	z25.s, p0/m, z9.s, z24.s
	.loc 13 508 0
..LDL2994:
/*    508 */	ldr	s17, [x22, x5, lsl #2]	//  (*)
	.loc 13 496 0
..LDL2995:
/*    496 */	fmad	z7.s, p0/m, z9.s, z6.s
	.loc 13 466 0
..LDL2996:
/*    466 */	ldr	s15, [x23, x6, lsl #2]	//  (*)
	.loc 13 515 0
..LDL2997:
/*    515 */	ldr	s16, [x22, x17, lsl #2]	//  (*)
	.loc 13 503 0
..LDL2998:
/*    503 */	fmad	z5.s, p0/m, z9.s, z4.s
	.loc 13 510 0
..LDL2999:
/*    510 */	fmad	z3.s, p0/m, z9.s, z2.s
	.loc 13 517 0
..LDL3000:
/*    517 */	fmad	z1.s, p0/m, z9.s, z0.s
	.loc 13 473 0
..LDL3001:
/*    473 */	dup	z28.s, z19.s[0]
	.loc 13 480 0
..LDL3002:
/*    480 */	dup	z26.s, z20.s[0]
	.loc 13 544 0
..LDL3003:
/*    544 */	add	x2, x2, x4
	.loc 13 487 0
..LDL3004:
/*    487 */	dup	z24.s, z10.s[0]
	.loc 13 454 0
..LDL3005:
/*    454 */	orr	x24, x2, 6917529027641081856
	.loc 13 494 0
..LDL3006:
/*    494 */	dup	z6.s, z11.s[0]
	.loc 13 454 0
..LDL3007:
/*    454 */	prfm	2, [x24, 2560]	//  (*)
/*    454 */	prfm	0, [x24, 512]	//  (*)
	.loc 13 501 0
..LDL3008:
/*    501 */	dup	z4.s, z14.s[0]
	.loc 13 454 0
..LDL3009:
/*    454 */	ld1w	{z9.s}, p0/z, [x24, 0, mul vl]	//  (*)
	.loc 13 473 0
..LDL3010:
/*    473 */	ldr	s19, [x23, x21, lsl #2]	//  (*)
	.loc 13 508 0
..LDL3011:
/*    508 */	dup	z2.s, z17.s[0]
	.loc 13 459 0
..LDL3012:
/*    459 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 480 0
..LDL3013:
/*    480 */	ldr	s11, [x23, x20, lsl #2]	//  (*)
	.loc 13 515 0
..LDL3014:
/*    515 */	dup	z0.s, z16.s[0]
	.loc 13 459 0
..LDL3015:
/*    459 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 487 0
..LDL3016:
/*    487 */	ldr	s10, [x23, x18, lsl #2]	//  (*)
	.loc 13 466 0
..LDL3017:
/*    466 */	dup	z14.s, z15.s[0]
	.loc 13 543 0
..LDL3018:
/*    543 */	add	x30, x30, 8
	.loc 13 461 0
..LDL3019:
/*    461 */	fmad	z31.s, p0/m, z12.s, z8.s
	.loc 13 494 0
..LDL3020:
/*    494 */	ldr	s15, [x23, x16, lsl #2]	//  (*)
	.loc 13 468 0
..LDL3021:
/*    468 */	fmla	z30.s, p0/m, z13.s, z12.s
	.loc 13 459 0
..LDL3022:
/*    459 */	ld1rw	{z8.s}, p1/z, [x30]	//  (*)
	.loc 13 475 0
..LDL3023:
/*    475 */	fmad	z28.s, p0/m, z12.s, z29.s
	.loc 13 501 0
..LDL3024:
/*    501 */	ldr	s13, [x23, x15, lsl #2]	//  (*)
	.loc 13 482 0
..LDL3025:
/*    482 */	fmad	z26.s, p0/m, z12.s, z27.s
	.loc 13 543 0
..LDL3026:
/*    543 */	add	x22, x22, 8
	.loc 13 489 0
..LDL3027:
/*    489 */	fmad	z24.s, p0/m, z12.s, z25.s
	.loc 13 508 0
..LDL3028:
/*    508 */	ldr	s17, [x23, x5, lsl #2]	//  (*)
	.loc 13 496 0
..LDL3029:
/*    496 */	fmad	z6.s, p0/m, z12.s, z7.s
	.loc 13 466 0
..LDL3030:
/*    466 */	ldr	s16, [x22, x6, lsl #2]	//  (*)
	.loc 13 515 0
..LDL3031:
/*    515 */	ldr	s18, [x23, x17, lsl #2]	//  (*)
	.loc 13 503 0
..LDL3032:
/*    503 */	fmad	z4.s, p0/m, z12.s, z5.s
	.loc 13 510 0
..LDL3033:
/*    510 */	fmad	z2.s, p0/m, z12.s, z3.s
	.loc 13 517 0
..LDL3034:
/*    517 */	fmad	z0.s, p0/m, z12.s, z1.s
	.loc 13 545 0
..LDL3035:
/*    545 */	sub	w0, w0, 2
	.loc 13 453 0
..LDL3036:
/*    453 */	cmp	w0, 4
/*    453 */	bge	.L11292
	.loc 13 473 0
..LDL3037:
/*    473 */	dup	z7.s, z19.s[0]
	.loc 13 459 0
..LDL3038:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 461 0
..LDL3039:
/*    461 */	fmla	z31.s, p0/m, z8.s, z9.s
	.loc 13 494 0
..LDL3040:
/*    494 */	ldr	s8, [x22, x16, lsl #2]	//  (*)
	.loc 13 480 0
..LDL3041:
/*    480 */	dup	z5.s, z11.s[0]
	.loc 13 544 0
..LDL3042:
/*    544 */	add	x2, x2, x4
	.loc 13 468 0
..LDL3043:
/*    468 */	fmla	z30.s, p0/m, z14.s, z9.s
	.loc 13 508 0
..LDL3044:
/*    508 */	ldr	s14, [x22, x5, lsl #2]	//  (*)
	.loc 13 487 0
..LDL3045:
/*    487 */	dup	z3.s, z10.s[0]
	.loc 13 454 0
..LDL3046:
/*    454 */	orr	x1, x2, 6917529027641081856
	.loc 13 459 0
..LDL3047:
/*    459 */	prfm	2, [x30, 2560]	//  (*)
	.loc 13 543 0
..LDL3048:
/*    543 */	add	x23, x30, 4
	.loc 13 494 0
..LDL3049:
/*    494 */	dup	z29.s, z15.s[0]
	.loc 13 480 0
..LDL3050:
/*    480 */	ldr	s15, [x22, x20, lsl #2]	//  (*)
	.loc 13 544 0
..LDL3051:
/*    544 */	add	x2, x2, x4
	.loc 13 545 0
..LDL3052:
/*    545 */	sub	w0, w0, 2
	.loc 13 501 0
..LDL3053:
/*    501 */	dup	z27.s, z13.s[0]
	.loc 13 473 0
..LDL3054:
/*    473 */	ldr	s13, [x22, x21, lsl #2]	//  (*)
	.loc 13 508 0
..LDL3055:
/*    508 */	dup	z25.s, z17.s[0]
	.loc 13 487 0
..LDL3056:
/*    487 */	ldr	s17, [x22, x18, lsl #2]	//  (*)
	.loc 13 475 0
..LDL3057:
/*    475 */	fmad	z7.s, p0/m, z9.s, z28.s
	.loc 13 501 0
..LDL3058:
/*    501 */	ldr	s28, [x22, x15, lsl #2]	//  (*)
	.loc 13 454 0
..LDL3059:
/*    454 */	ld1w	{z10.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 515 0
..LDL3060:
/*    515 */	dup	z11.s, z18.s[0]
	.loc 13 482 0
..LDL3061:
/*    482 */	fmad	z5.s, p0/m, z9.s, z26.s
	.loc 13 466 0
..LDL3062:
/*    466 */	dup	z12.s, z16.s[0]
	.loc 13 489 0
..LDL3063:
/*    489 */	fmad	z3.s, p0/m, z9.s, z24.s
	.loc 13 515 0
..LDL3064:
/*    515 */	ldr	s16, [x22, x17, lsl #2]	//  (*)
	.loc 13 459 0
..LDL3065:
/*    459 */	ld1rw	{z1.s}, p1/z, [x23]	//  (*)
	.loc 13 496 0
..LDL3066:
/*    496 */	fmad	z29.s, p0/m, z9.s, z6.s
	.loc 13 454 0
..LDL3067:
/*    454 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 503 0
..LDL3068:
/*    503 */	fmad	z27.s, p0/m, z9.s, z4.s
	.loc 13 454 0
..LDL3069:
/*    454 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 543 0
..LDL3070:
/*    543 */	add	x1, x22, 4
	.loc 13 510 0
..LDL3071:
/*    510 */	fmad	z25.s, p0/m, z9.s, z2.s
	.loc 13 459 0
..LDL3072:
/*    459 */	prfm	0, [x30, 512]	//  (*)
	.loc 13 480 0
..LDL3073:
/*    480 */	dup	z26.s, z15.s[0]
	.loc 13 543 0
..LDL3074:
/*    543 */	add	x30, x30, 8
	.loc 13 517 0
..LDL3075:
/*    517 */	fmad	z11.s, p0/m, z9.s, z0.s
	.loc 13 459 0
..LDL3076:
/*    459 */	prfm	2, [x23, 2560]	//  (*)
	.loc 13 473 0
..LDL3077:
/*    473 */	dup	z9.s, z13.s[0]
	.loc 13 459 0
..LDL3078:
/*    459 */	prfm	0, [x23, 512]	//  (*)
	.loc 13 487 0
..LDL3079:
/*    487 */	dup	z24.s, z17.s[0]
	.loc 13 494 0
..LDL3080:
/*    494 */	dup	z6.s, z8.s[0]
	.loc 13 501 0
..LDL3081:
/*    501 */	dup	z4.s, z28.s[0]
	.loc 13 508 0
..LDL3082:
/*    508 */	dup	z2.s, z14.s[0]
	.loc 13 468 0
..LDL3083:
/*    468 */	fmla	z30.s, p0/m, z12.s, z10.s
	.loc 13 515 0
..LDL3084:
/*    515 */	dup	z0.s, z16.s[0]
	.loc 13 482 0
..LDL3085:
/*    482 */	fmad	z26.s, p0/m, z10.s, z5.s
	.loc 13 461 0
..LDL3086:
/*    461 */	fmla	z31.s, p0/m, z1.s, z10.s
	.loc 13 475 0
..LDL3087:
/*    475 */	movprfx	z28.s, p0/z, z7.s
/*    475 */	fmla	z28.s, p0/m, z9.s, z10.s
	.loc 13 489 0
..LDL3088:
/*    489 */	fmad	z24.s, p0/m, z10.s, z3.s
	.loc 13 496 0
..LDL3089:
/*    496 */	fmad	z6.s, p0/m, z10.s, z29.s
	.loc 13 503 0
..LDL3090:
/*    503 */	fmad	z4.s, p0/m, z10.s, z27.s
	.loc 13 510 0
..LDL3091:
/*    510 */	fmad	z2.s, p0/m, z10.s, z25.s
	.loc 13 517 0
..LDL3092:
/*    517 */	fmad	z0.s, p0/m, z10.s, z11.s
	.loc 13 545 0
..LDL3093:
/*    545 */	cbz	w0, .L11917
.L11920:
	.p2align 5
.L11923:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL3094:
/*    454 */	orr	x22, x2, 6917529027641081856
	.loc 13 459 0
..LDL3095:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 466 0
..LDL3096:
/*    466 */	ldr	s1, [x1, x6, lsl #2]	//  (*)
	.loc 13 473 0
..LDL3097:
/*    473 */	ldr	s27, [x1, x21, lsl #2]	//  (*)
	.loc 13 544 0
..LDL3098:
/*    544 */	add	x2, x2, x4
	.loc 13 480 0
..LDL3099:
/*    480 */	ldr	s10, [x1, x20, lsl #2]	//  (*)
	.loc 13 545 0
..LDL3100:
/*    545 */	subs	w0, w0, 1
	.loc 13 454 0
..LDL3101:
/*    454 */	ld1w	{z8.s}, p0/z, [x22, 0, mul vl]	//  (*)
	.loc 13 487 0
..LDL3102:
/*    487 */	ldr	s9, [x1, x18, lsl #2]	//  (*)
	.loc 13 494 0
..LDL3103:
/*    494 */	ldr	s7, [x1, x16, lsl #2]	//  (*)
	.loc 13 501 0
..LDL3104:
/*    501 */	ldr	s5, [x1, x15, lsl #2]	//  (*)
	.loc 13 508 0
..LDL3105:
/*    508 */	ldr	s3, [x1, x5, lsl #2]	//  (*)
	.loc 13 515 0
..LDL3106:
/*    515 */	ldr	s25, [x1, x17, lsl #2]	//  (*)
	.loc 13 543 0
..LDL3107:
/*    543 */	add	x1, x1, 4
	.loc 13 459 0
..LDL3108:
/*    459 */	ld1rw	{z29.s}, p1/z, [x30]	//  (*)
/*    459 */	prfm	2, [x30, 2560]	//  (*)
/*    459 */	prfm	0, [x30, 512]	//  (*)
	.loc 13 543 0
..LDL3109:
/*    543 */	add	x30, x30, 4
	.loc 13 454 0
..LDL3110:
/*    454 */	prfm	2, [x22, 2560]	//  (*)
/*    454 */	prfm	0, [x22, 512]	//  (*)
	.loc 13 466 0
..LDL3111:
/*    466 */	dup	z1.s, z1.s[0]
	.loc 13 473 0
..LDL3112:
/*    473 */	dup	z27.s, z27.s[0]
	.loc 13 480 0
..LDL3113:
/*    480 */	dup	z10.s, z10.s[0]
	.loc 13 487 0
..LDL3114:
/*    487 */	dup	z9.s, z9.s[0]
	.loc 13 494 0
..LDL3115:
/*    494 */	dup	z7.s, z7.s[0]
	.loc 13 501 0
..LDL3116:
/*    501 */	dup	z5.s, z5.s[0]
	.loc 13 468 0
..LDL3117:
/*    468 */	fmla	z30.s, p0/m, z1.s, z8.s
	.loc 13 508 0
..LDL3118:
/*    508 */	dup	z3.s, z3.s[0]
	.loc 13 461 0
..LDL3119:
/*    461 */	fmla	z31.s, p0/m, z29.s, z8.s
	.loc 13 515 0
..LDL3120:
/*    515 */	dup	z1.s, z25.s[0]
	.loc 13 475 0
..LDL3121:
/*    475 */	fmla	z28.s, p0/m, z27.s, z8.s
	.loc 13 482 0
..LDL3122:
/*    482 */	fmla	z26.s, p0/m, z10.s, z8.s
	.loc 13 489 0
..LDL3123:
/*    489 */	fmla	z24.s, p0/m, z9.s, z8.s
	.loc 13 496 0
..LDL3124:
/*    496 */	fmla	z6.s, p0/m, z7.s, z8.s
	.loc 13 503 0
..LDL3125:
/*    503 */	fmla	z4.s, p0/m, z5.s, z8.s
	.loc 13 510 0
..LDL3126:
/*    510 */	fmla	z2.s, p0/m, z3.s, z8.s
	.loc 13 517 0
..LDL3127:
/*    517 */	fmla	z0.s, p0/m, z1.s, z8.s
	.loc 13 545 0 is_stmt 0
..LDL3128:
/*    545 */	bne	.L11923
.L11917:
.L11294:
	.loc 13 550 0 is_stmt 1
..LDL3129:
/*    550 */	st1w	{z31.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL3130:
/*    556 */	st1w	{z30.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL3131:
/*    562 */	st1w	{z28.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL3132:
/*    568 */	st1w	{z26.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL3133:
/*    574 */	st1w	{z24.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 580 0
..LDL3134:
/*    580 */	st1w	{z6.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 586 0
..LDL3135:
/*    586 */	st1w	{z4.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 592 0
..LDL3136:
/*    592 */	st1w	{z2.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 598 0
..LDL3137:
/*    598 */	st1w	{z0.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL3138:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	z20, [x29, 13, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 14
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D19.pchi:
	.cfi_endproc
.LFE18:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi9ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi9ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi9ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi9ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi9ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi9ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi9ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi9ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL3139:
.LFB19:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -16
/*    620 */	mov	x16, x1
/*    620 */	mov	w10, w0
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	mov	x30, x2
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0x80,0x1,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 128
/*    ??? */	stp	x25, x26, [x29, -64]	//  (*)
	.cfi_escape 0x10,0x19,0xb,0x11,0x40,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1a,0xb,0x11,0x48,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x50,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x18,0xb,0x11,0x58,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	x27, [x29, -72]	//  (*)
	.cfi_escape 0x10,0x1b,0xc,0x11,0xb8,0x7f,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z20, [x29, 13, mul vl]	//  (*)
	.cfi_escape 0x10,0x74,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z21, [x29, 14, mul vl]	//  (*)
	.cfi_escape 0x10,0x75,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z22, [x29, 15, mul vl]	//  (*)
	.cfi_escape 0x10,0x76,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL3140:
/*    379 */	ld1w	{z10.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 403 0
..LDL3141:
/*    403 */	lsl	w8, w4, 2
	.loc 13 381 0
..LDL3142:
/*    381 */	add	x22, x3, 64
	.loc 13 391 0
..LDL3143:
/*    391 */	add	w12, w4, w4
	.loc 13 403 0
..LDL3144:
/*    403 */	sxtw	x15, w8
	.loc 13 381 0
..LDL3145:
/*    381 */	ld1w	{z8.s}, p1/z, [x22, 0, mul vl]	//  (*)
	.loc 13 409 0
..LDL3146:
/*    409 */	add	w7, w4, w4, lsl #2
	.loc 13 405 0
..LDL3147:
/*    405 */	add	x13, x15, 16
	.loc 13 397 0
..LDL3148:
/*    397 */	add	w9, w12, w4
	.loc 13 421 0
..LDL3149:
/*    421 */	lsl	w0, w4, 3
	.loc 13 405 0
..LDL3150:
/*    405 */	add	x13, x3, x13, lsl #2
	.loc 13 415 0
..LDL3151:
/*    415 */	add	w2, w9, w9
	.loc 13 385 0
..LDL3152:
/*    385 */	sxtw	x11, w4
	.loc 13 381 0
..LDL3153:
/*    ??? */	str	x22, [x19, 40]	//  (*)
	.loc 13 421 0
..LDL3154:
/*    421 */	sub	w1, w0, w4
	.loc 13 391 0
..LDL3155:
/*    391 */	sxtw	x20, w12
	.loc 13 405 0
..LDL3156:
/*    405 */	ld1w	{z28.s}, p1/z, [x13, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL3157:
/*    397 */	sxtw	x17, w9
	.loc 13 409 0
..LDL3158:
/*    409 */	sxtw	x14, w7
	.loc 13 405 0
..LDL3159:
/*    ??? */	str	x13, [x19, 24]	//  (*)
	.loc 13 421 0
..LDL3160:
/*    421 */	sxtw	x4, w1
	.loc 13 387 0
..LDL3161:
/*    387 */	add	x21, x11, 16
	.loc 13 393 0
..LDL3162:
/*    393 */	add	x18, x20, 16
	.loc 13 411 0
..LDL3163:
/*    411 */	add	x9, x14, 16
	.loc 13 415 0
..LDL3164:
/*    415 */	sxtw	x8, w2
	.loc 13 427 0
..LDL3165:
/*    427 */	sxtw	x1, w0
	.loc 13 399 0
..LDL3166:
/*    399 */	add	x12, x17, 16
	.loc 13 417 0
..LDL3167:
/*    417 */	add	x7, x8, 16
	.loc 13 423 0
..LDL3168:
/*    423 */	add	x2, x4, 16
	.loc 13 429 0
..LDL3169:
/*    429 */	add	x0, x1, 16
	.loc 13 387 0
..LDL3170:
/*    387 */	add	x22, x3, x21, lsl #2
/*    387 */	ld1w	{z11.s}, p1/z, [x22, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL3171:
/*    391 */	add	x26, x3, x20, lsl #2
/*    391 */	ld1w	{z25.s}, p0/z, [x26, 0, mul vl]	//  (*)
	.loc 13 409 0
..LDL3172:
/*    409 */	add	x27, x3, x14, lsl #2
/*    409 */	ld1w	{z5.s}, p0/z, [x27, 0, mul vl]	//  (*)
	.loc 13 403 0
..LDL3173:
/*    403 */	add	x15, x3, x15, lsl #2
	.loc 13 385 0
..LDL3174:
/*    385 */	add	x11, x3, x11, lsl #2
	.loc 13 403 0
..LDL3175:
/*    403 */	ld1w	{z6.s}, p0/z, [x15, 0, mul vl]	//  (*)
/*    ??? */	str	x15, [x19, 32]	//  (*)
	.loc 13 385 0
..LDL3176:
/*    385 */	ld1w	{z30.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 393 0
..LDL3177:
/*    393 */	add	x25, x3, x18, lsl #2
/*    393 */	ld1w	{z24.s}, p1/z, [x25, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL3178:
/*    397 */	add	x21, x3, x17, lsl #2
/*    397 */	ld1w	{z7.s}, p0/z, [x21, 0, mul vl]	//  (*)
	.loc 13 399 0
..LDL3179:
/*    399 */	add	x12, x3, x12, lsl #2
/*    399 */	ld1w	{z29.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 411 0
..LDL3180:
/*    411 */	add	x24, x3, x9, lsl #2
/*    411 */	ld1w	{z4.s}, p1/z, [x24, 0, mul vl]	//  (*)
	.loc 13 415 0
..LDL3181:
/*    415 */	add	x23, x3, x8, lsl #2
/*    415 */	ld1w	{z27.s}, p0/z, [x23, 0, mul vl]	//  (*)
	.loc 13 417 0
..LDL3182:
/*    417 */	add	x20, x3, x7, lsl #2
/*    417 */	ld1w	{z13.s}, p1/z, [x20, 0, mul vl]	//  (*)
	.loc 13 421 0
..LDL3183:
/*    421 */	add	x13, x3, x4, lsl #2
/*    421 */	ld1w	{z3.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 423 0
..LDL3184:
/*    423 */	add	x14, x3, x2, lsl #2
/*    423 */	ld1w	{z2.s}, p1/z, [x14, 0, mul vl]	//  (*)
	.loc 13 427 0
..LDL3185:
/*    427 */	add	x1, x3, x1, lsl #2
/*    427 */	ld1w	{z1.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 429 0
..LDL3186:
/*    429 */	add	x0, x3, x0, lsl #2
	.loc 13 427 0
..LDL3187:
/*    ??? */	str	x1, [x19, 16]	//  (*)
	.loc 13 429 0
..LDL3188:
/*    429 */	ld1w	{z12.s}, p1/z, [x0, 0, mul vl]	//  (*)
/*    ??? */	str	x0, [x19, 8]	//  (*)
	.loc 13 451 0
..LDL3189:
/*    451 */	cmp	w10, 0
/*    451 */	ble	.L11302
	.loc 13 473 0 is_stmt 0
..LDL3190:
/*    473 */	add	w9, w5, w5
	.loc 13 544 0
..LDL3191:
/*    544 */	sbfiz	x8, x6, 2, 32
	.loc 13 480 0
..LDL3192:
/*    480 */	add	w1, w9, w5
	.loc 13 494 0
..LDL3193:
/*    494 */	add	w4, w5, w5, lsl #2
	.loc 13 508 0
..LDL3194:
/*    508 */	lsl	w7, w5, 3
	.loc 13 487 0
..LDL3195:
/*    487 */	lsl	w2, w5, 2
	.loc 13 501 0
..LDL3196:
/*    501 */	add	w15, w1, w1
	.loc 13 466 0
..LDL3197:
/*    466 */	sxtw	x0, w5
	.loc 13 508 0
..LDL3198:
/*    508 */	sub	w6, w7, w5
	.loc 13 473 0
..LDL3199:
/*    473 */	sxtw	x9, w9
	.loc 13 501 0
..LDL3200:
/*    501 */	sxtw	x5, w15
	.loc 13 480 0
..LDL3201:
/*    480 */	sxtw	x1, w1
	.loc 13 487 0
..LDL3202:
/*    487 */	sxtw	x2, w2
	.loc 13 494 0
..LDL3203:
/*    494 */	sxtw	x4, w4
	.loc 13 508 0
..LDL3204:
/*    508 */	sxtw	x6, w6
	.loc 13 515 0
..LDL3205:
/*    515 */	sxtw	x7, w7
	.loc 13 459 0
..LDL3206:
/*    459 */	orr	x15, x16, 6917529027641081856
	.loc 13 451 0
..LDL3207:
/*    451 */	cmp	w10, 3
/*    451 */	blt	.L11931
	.loc 13 545 0
..LDL3208:
/*    545 */	mov	z0.d, z12.d
	.loc 13 459 0
..LDL3209:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 454 0
..LDL3210:
/*    454 */	orr	x17, x30, 6917529027641081856
	.loc 13 456 0
..LDL3211:
/*    456 */	ld1w	{z31.s}, p1/z, [x30, 1, mul vl]	//  (*)
	.loc 13 454 0
..LDL3212:
/*    454 */	ld1w	{z9.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 466 0
..LDL3213:
/*    466 */	ldr	s19, [x16, x0, lsl #2]	//  (*)
	.loc 13 545 0
..LDL3214:
/*    545 */	mov	z26.d, z11.d
	.loc 13 473 0
..LDL3215:
/*    473 */	ldr	s17, [x16, x9, lsl #2]	//  (*)
	.loc 13 454 0
..LDL3216:
/*    454 */	prfm	2, [x17, 2560]	//  (*)
	.loc 13 459 0
..LDL3217:
/*    459 */	ld1rw	{z18.s}, p2/z, [x15]	//  (*)
	.loc 13 454 0
..LDL3218:
/*    454 */	prfm	0, [x17, 512]	//  (*)
	.p2align 5
.L11300:					// :entr:term:swpl
	.loc 13 480 0
..LDL3219:
/*    480 */	ldr	s16, [x16, x1, lsl #2]	//  (*)
	.loc 13 487 0
..LDL3220:
/*    487 */	ldr	s21, [x16, x2, lsl #2]	//  (*)
	.loc 13 494 0
..LDL3221:
/*    494 */	ldr	s14, [x16, x4, lsl #2]	//  (*)
	.loc 13 501 0
..LDL3222:
/*    501 */	ldr	s12, [x16, x5, lsl #2]	//  (*)
	.loc 13 466 0
..LDL3223:
/*    466 */	dup	z15.s, z19.s[0]
	.loc 13 508 0
..LDL3224:
/*    508 */	ldr	s20, [x16, x6, lsl #2]	//  (*)
	.loc 13 515 0
..LDL3225:
/*    515 */	ldr	s22, [x16, x7, lsl #2]	//  (*)
	.loc 13 473 0
..LDL3226:
/*    473 */	dup	z11.s, z17.s[0]
	.loc 13 461 0
..LDL3227:
/*    461 */	movprfx	z19.s, p0/z, z10.s
/*    461 */	fmla	z19.s, p0/m, z18.s, z9.s
	.loc 13 480 0
..LDL3228:
/*    480 */	dup	z16.s, z16.s[0]
	.loc 13 544 0
..LDL3229:
/*    544 */	add	x18, x30, x8
	.loc 13 463 0
..LDL3230:
/*    463 */	fmad	z18.s, p1/m, z31.s, z8.s
	.loc 13 487 0
..LDL3231:
/*    487 */	dup	z17.s, z21.s[0]
	.loc 13 454 0
..LDL3232:
/*    454 */	orr	x17, x18, 6917529027641081856
	.loc 13 468 0
..LDL3233:
/*    468 */	fmla	z30.s, p0/m, z15.s, z9.s
	.loc 13 494 0
..LDL3234:
/*    494 */	dup	z14.s, z14.s[0]
	.loc 13 454 0
..LDL3235:
/*    454 */	prfm	2, [x17, 2560]	//  (*)
	.loc 13 470 0
..LDL3236:
/*    470 */	fmla	z26.s, p1/m, z15.s, z31.s
	.loc 13 501 0
..LDL3237:
/*    501 */	dup	z15.s, z12.s[0]
	.loc 13 454 0
..LDL3238:
/*    454 */	prfm	0, [x17, 512]	//  (*)
	.loc 13 475 0
..LDL3239:
/*    475 */	fmla	z25.s, p0/m, z11.s, z9.s
	.loc 13 508 0
..LDL3240:
/*    508 */	dup	z10.s, z20.s[0]
	.loc 13 454 0
..LDL3241:
/*    454 */	ld1w	{z12.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 477 0
..LDL3242:
/*    477 */	fmla	z24.s, p1/m, z11.s, z31.s
	.loc 13 515 0
..LDL3243:
/*    515 */	dup	z8.s, z22.s[0]
	.loc 13 456 0
..LDL3244:
/*    456 */	ld1w	{z11.s}, p1/z, [x18, 1, mul vl]	//  (*)
	.loc 13 459 0
..LDL3245:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 482 0
..LDL3246:
/*    482 */	fmla	z7.s, p0/m, z16.s, z9.s
	.loc 13 484 0
..LDL3247:
/*    484 */	movprfx	z21.s, p1/z, z29.s
/*    484 */	fmla	z21.s, p1/m, z16.s, z31.s
	.loc 13 543 0
..LDL3248:
/*    543 */	add	x30, x16, 4
	.loc 13 489 0
..LDL3249:
/*    489 */	fmla	z6.s, p0/m, z17.s, z9.s
	.loc 13 491 0
..LDL3250:
/*    491 */	fmla	z28.s, p1/m, z17.s, z31.s
	.loc 13 466 0
..LDL3251:
/*    466 */	ldr	s16, [x30, x0, lsl #2]	//  (*)
	.loc 13 543 0
..LDL3252:
/*    543 */	add	x17, x15, 4
	.loc 13 496 0
..LDL3253:
/*    496 */	fmla	z5.s, p0/m, z14.s, z9.s
	.loc 13 498 0
..LDL3254:
/*    498 */	fmla	z4.s, p1/m, z14.s, z31.s
	.loc 13 459 0
..LDL3255:
/*    459 */	ld1rw	{z14.s}, p2/z, [x17]	//  (*)
	.loc 13 473 0
..LDL3256:
/*    473 */	ldr	s29, [x30, x9, lsl #2]	//  (*)
	.loc 13 503 0
..LDL3257:
/*    503 */	movprfx	z20.s, p0/z, z27.s
/*    503 */	fmla	z20.s, p0/m, z15.s, z9.s
	.loc 13 505 0
..LDL3258:
/*    505 */	fmla	z13.s, p1/m, z15.s, z31.s
	.loc 13 510 0
..LDL3259:
/*    510 */	fmla	z3.s, p0/m, z10.s, z9.s
	.loc 13 512 0
..LDL3260:
/*    512 */	fmla	z2.s, p1/m, z10.s, z31.s
	.loc 13 517 0
..LDL3261:
/*    517 */	fmla	z1.s, p0/m, z8.s, z9.s
	.loc 13 519 0
..LDL3262:
/*    519 */	fmla	z0.s, p1/m, z8.s, z31.s
	.loc 13 480 0
..LDL3263:
/*    480 */	ldr	s8, [x30, x1, lsl #2]	//  (*)
	.loc 13 487 0
..LDL3264:
/*    487 */	ldr	s17, [x30, x2, lsl #2]	//  (*)
	.loc 13 494 0
..LDL3265:
/*    494 */	ldr	s27, [x30, x4, lsl #2]	//  (*)
	.loc 13 501 0
..LDL3266:
/*    501 */	ldr	s15, [x30, x5, lsl #2]	//  (*)
	.loc 13 466 0
..LDL3267:
/*    466 */	dup	z16.s, z16.s[0]
	.loc 13 508 0
..LDL3268:
/*    508 */	ldr	s9, [x30, x6, lsl #2]	//  (*)
	.loc 13 515 0
..LDL3269:
/*    515 */	ldr	s22, [x30, x7, lsl #2]	//  (*)
	.loc 13 473 0
..LDL3270:
/*    473 */	dup	z31.s, z29.s[0]
	.loc 13 461 0
..LDL3271:
/*    461 */	movprfx	z10.s, p0/z, z19.s
/*    461 */	fmla	z10.s, p0/m, z14.s, z12.s
	.loc 13 480 0
..LDL3272:
/*    480 */	dup	z29.s, z8.s[0]
	.loc 13 544 0
..LDL3273:
/*    544 */	add	x30, x18, x8
	.loc 13 463 0
..LDL3274:
/*    463 */	movprfx	z8.s, p1/z, z18.s
/*    463 */	fmla	z8.s, p1/m, z14.s, z11.s
	.loc 13 487 0
..LDL3275:
/*    487 */	dup	z17.s, z17.s[0]
	.loc 13 454 0
..LDL3276:
/*    454 */	orr	x18, x30, 6917529027641081856
	.loc 13 468 0
..LDL3277:
/*    468 */	fmla	z30.s, p0/m, z16.s, z12.s
	.loc 13 494 0
..LDL3278:
/*    494 */	dup	z27.s, z27.s[0]
	.loc 13 454 0
..LDL3279:
/*    454 */	prfm	2, [x18, 2560]	//  (*)
	.loc 13 470 0
..LDL3280:
/*    470 */	fmla	z26.s, p1/m, z16.s, z11.s
	.loc 13 501 0
..LDL3281:
/*    501 */	dup	z16.s, z15.s[0]
	.loc 13 454 0
..LDL3282:
/*    454 */	prfm	0, [x18, 512]	//  (*)
	.loc 13 475 0
..LDL3283:
/*    475 */	fmla	z25.s, p0/m, z31.s, z12.s
	.loc 13 508 0
..LDL3284:
/*    508 */	dup	z15.s, z9.s[0]
	.loc 13 454 0
..LDL3285:
/*    454 */	ld1w	{z9.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 477 0
..LDL3286:
/*    477 */	fmla	z24.s, p1/m, z31.s, z11.s
	.loc 13 515 0
..LDL3287:
/*    515 */	dup	z14.s, z22.s[0]
	.loc 13 456 0
..LDL3288:
/*    456 */	ld1w	{z31.s}, p1/z, [x30, 1, mul vl]	//  (*)
	.loc 13 482 0
..LDL3289:
/*    482 */	fmla	z7.s, p0/m, z29.s, z12.s
	.loc 13 484 0
..LDL3290:
/*    484 */	fmad	z29.s, p1/m, z11.s, z21.s
	.loc 13 459 0
..LDL3291:
/*    459 */	prfm	2, [x17, 2560]	//  (*)
	.loc 13 543 0
..LDL3292:
/*    543 */	add	x16, x16, 8
	.loc 13 489 0
..LDL3293:
/*    489 */	fmla	z6.s, p0/m, z17.s, z12.s
	.loc 13 491 0
..LDL3294:
/*    491 */	fmla	z28.s, p1/m, z17.s, z11.s
	.loc 13 466 0
..LDL3295:
/*    466 */	ldr	s19, [x16, x0, lsl #2]	//  (*)
	.loc 13 543 0
..LDL3296:
/*    543 */	add	x15, x15, 8
	.loc 13 496 0
..LDL3297:
/*    496 */	fmla	z5.s, p0/m, z27.s, z12.s
	.loc 13 498 0
..LDL3298:
/*    498 */	fmla	z4.s, p1/m, z27.s, z11.s
	.loc 13 459 0
..LDL3299:
/*    459 */	ld1rw	{z18.s}, p2/z, [x15]	//  (*)
	.loc 13 473 0
..LDL3300:
/*    473 */	ldr	s17, [x16, x9, lsl #2]	//  (*)
	.loc 13 503 0
..LDL3301:
/*    503 */	movprfx	z27.s, p0/z, z20.s
/*    503 */	fmla	z27.s, p0/m, z16.s, z12.s
	.loc 13 505 0
..LDL3302:
/*    505 */	fmla	z13.s, p1/m, z16.s, z11.s
	.loc 13 510 0
..LDL3303:
/*    510 */	fmla	z3.s, p0/m, z15.s, z12.s
	.loc 13 512 0
..LDL3304:
/*    512 */	fmla	z2.s, p1/m, z15.s, z11.s
	.loc 13 459 0
..LDL3305:
/*    459 */	prfm	0, [x17, 512]	//  (*)
	.loc 13 517 0
..LDL3306:
/*    517 */	fmla	z1.s, p0/m, z14.s, z12.s
	.loc 13 519 0
..LDL3307:
/*    519 */	fmla	z0.s, p1/m, z14.s, z11.s
	.loc 13 545 0
..LDL3308:
/*    545 */	sub	w10, w10, 2
	.loc 13 453 0
..LDL3309:
/*    453 */	cmp	w10, 3
/*    453 */	bge	.L11300
	.loc 13 501 0
..LDL3310:
/*    501 */	ldr	s14, [x16, x5, lsl #2]	//  (*)
	.loc 13 466 0
..LDL3311:
/*    466 */	dup	z11.s, z19.s[0]
	.loc 13 461 0
..LDL3312:
/*    461 */	fmla	z10.s, p0/m, z18.s, z9.s
	.loc 13 544 0
..LDL3313:
/*    544 */	add	x30, x30, x8
	.loc 13 473 0
..LDL3314:
/*    473 */	dup	z12.s, z17.s[0]
	.loc 13 463 0
..LDL3315:
/*    463 */	fmla	z8.s, p1/m, z18.s, z31.s
	.loc 13 515 0
..LDL3316:
/*    515 */	ldr	s17, [x16, x7, lsl #2]	//  (*)
	.loc 13 545 0
..LDL3317:
/*    545 */	sub	w10, w10, 1
	.loc 13 480 0
..LDL3318:
/*    480 */	ldr	s20, [x16, x1, lsl #2]	//  (*)
	.loc 13 487 0
..LDL3319:
/*    487 */	ldr	s21, [x16, x2, lsl #2]	//  (*)
	.loc 13 494 0
..LDL3320:
/*    494 */	ldr	s16, [x16, x4, lsl #2]	//  (*)
	.loc 13 508 0
..LDL3321:
/*    508 */	ldr	s15, [x16, x6, lsl #2]	//  (*)
	.loc 13 543 0
..LDL3322:
/*    543 */	add	x16, x16, 4
	.loc 13 459 0
..LDL3323:
/*    459 */	prfm	2, [x15, 2560]	//  (*)
/*    459 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 543 0
..LDL3324:
/*    543 */	add	x15, x15, 4
	.loc 13 468 0
..LDL3325:
/*    468 */	fmla	z30.s, p0/m, z11.s, z9.s
	.loc 13 470 0
..LDL3326:
/*    470 */	fmad	z11.s, p1/m, z31.s, z26.s
	.loc 13 475 0
..LDL3327:
/*    475 */	fmla	z25.s, p0/m, z12.s, z9.s
	.loc 13 477 0
..LDL3328:
/*    477 */	fmla	z24.s, p1/m, z12.s, z31.s
	.loc 13 501 0
..LDL3329:
/*    501 */	dup	z26.s, z14.s[0]
	.loc 13 515 0
..LDL3330:
/*    515 */	dup	z12.s, z17.s[0]
	.loc 13 480 0
..LDL3331:
/*    480 */	dup	z18.s, z20.s[0]
	.loc 13 487 0
..LDL3332:
/*    487 */	dup	z19.s, z21.s[0]
	.loc 13 494 0
..LDL3333:
/*    494 */	dup	z16.s, z16.s[0]
	.loc 13 508 0
..LDL3334:
/*    508 */	dup	z14.s, z15.s[0]
	.loc 13 503 0
..LDL3335:
/*    503 */	fmla	z27.s, p0/m, z26.s, z9.s
	.loc 13 505 0
..LDL3336:
/*    505 */	fmla	z13.s, p1/m, z26.s, z31.s
	.loc 13 517 0
..LDL3337:
/*    517 */	fmla	z1.s, p0/m, z12.s, z9.s
	.loc 13 519 0
..LDL3338:
/*    519 */	fmad	z12.s, p1/m, z31.s, z0.s
	.loc 13 482 0
..LDL3339:
/*    482 */	fmla	z7.s, p0/m, z18.s, z9.s
	.loc 13 484 0
..LDL3340:
/*    484 */	fmla	z29.s, p1/m, z18.s, z31.s
	.loc 13 489 0
..LDL3341:
/*    489 */	fmla	z6.s, p0/m, z19.s, z9.s
	.loc 13 491 0
..LDL3342:
/*    491 */	fmla	z28.s, p1/m, z19.s, z31.s
	.loc 13 496 0
..LDL3343:
/*    496 */	fmla	z5.s, p0/m, z16.s, z9.s
	.loc 13 498 0
..LDL3344:
/*    498 */	fmla	z4.s, p1/m, z16.s, z31.s
	.loc 13 510 0
..LDL3345:
/*    510 */	fmla	z3.s, p0/m, z14.s, z9.s
	.loc 13 512 0
..LDL3346:
/*    512 */	fmla	z2.s, p1/m, z14.s, z31.s
	.loc 13 545 0
..LDL3347:
/*    545 */	cbz	w10, .L11928
.L11931:
	.p2align 5
.L11934:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL3348:
/*    454 */	orr	x17, x30, 6917529027641081856
	.loc 13 459 0
..LDL3349:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 501 0
..LDL3350:
/*    501 */	ldr	s15, [x16, x5, lsl #2]	//  (*)
	.loc 13 454 0
..LDL3351:
/*    454 */	prfm	2, [x17, 2560]	//  (*)
/*    454 */	ld1w	{z26.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 545 0
..LDL3352:
/*    545 */	subs	w10, w10, 1
	.loc 13 454 0
..LDL3353:
/*    454 */	prfm	0, [x17, 512]	//  (*)
	.loc 13 456 0
..LDL3354:
/*    456 */	add	x17, x30, 64
	.loc 13 508 0
..LDL3355:
/*    508 */	ldr	s14, [x16, x6, lsl #2]	//  (*)
	.loc 13 544 0
..LDL3356:
/*    544 */	add	x30, x30, x8
	.loc 13 456 0
..LDL3357:
/*    456 */	ld1w	{z0.s}, p1/z, [x17, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL3358:
/*    459 */	ld1rw	{z31.s}, p2/z, [x15]	//  (*)
/*    459 */	prfm	2, [x15, 2560]	//  (*)
/*    459 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 543 0
..LDL3359:
/*    543 */	add	x15, x15, 4
	.loc 13 508 0
..LDL3360:
/*    508 */	dup	z14.s, z14.s[0]
	.loc 13 461 0
..LDL3361:
/*    461 */	fmla	z10.s, p0/m, z31.s, z26.s
	.loc 13 463 0
..LDL3362:
/*    463 */	fmla	z8.s, p1/m, z31.s, z0.s
	.loc 13 466 0
..LDL3363:
/*    466 */	ldr	s31, [x16, x0, lsl #2]	//  (*)
	.loc 13 510 0
..LDL3364:
/*    510 */	fmla	z3.s, p0/m, z14.s, z26.s
	.loc 13 512 0
..LDL3365:
/*    512 */	fmla	z2.s, p1/m, z14.s, z0.s
	.loc 13 466 0
..LDL3366:
/*    466 */	dup	z31.s, z31.s[0]
	.loc 13 468 0
..LDL3367:
/*    468 */	fmla	z30.s, p0/m, z31.s, z26.s
	.loc 13 470 0
..LDL3368:
/*    470 */	fmla	z11.s, p1/m, z31.s, z0.s
	.loc 13 473 0
..LDL3369:
/*    473 */	ldr	s31, [x16, x9, lsl #2]	//  (*)
/*    473 */	dup	z31.s, z31.s[0]
	.loc 13 475 0
..LDL3370:
/*    475 */	fmla	z25.s, p0/m, z31.s, z26.s
	.loc 13 477 0
..LDL3371:
/*    477 */	fmla	z24.s, p1/m, z31.s, z0.s
	.loc 13 480 0
..LDL3372:
/*    480 */	ldr	s31, [x16, x1, lsl #2]	//  (*)
/*    480 */	dup	z31.s, z31.s[0]
	.loc 13 482 0
..LDL3373:
/*    482 */	fmla	z7.s, p0/m, z31.s, z26.s
	.loc 13 484 0
..LDL3374:
/*    484 */	fmla	z29.s, p1/m, z31.s, z0.s
	.loc 13 487 0
..LDL3375:
/*    487 */	ldr	s31, [x16, x2, lsl #2]	//  (*)
/*    487 */	dup	z31.s, z31.s[0]
	.loc 13 489 0
..LDL3376:
/*    489 */	fmla	z6.s, p0/m, z31.s, z26.s
	.loc 13 491 0
..LDL3377:
/*    491 */	fmla	z28.s, p1/m, z31.s, z0.s
	.loc 13 494 0
..LDL3378:
/*    494 */	ldr	s31, [x16, x4, lsl #2]	//  (*)
/*    494 */	dup	z9.s, z31.s[0]
	.loc 13 515 0
..LDL3379:
/*    515 */	ldr	s31, [x16, x7, lsl #2]	//  (*)
	.loc 13 543 0
..LDL3380:
/*    543 */	add	x16, x16, 4
	.loc 13 496 0
..LDL3381:
/*    496 */	fmla	z5.s, p0/m, z9.s, z26.s
	.loc 13 498 0
..LDL3382:
/*    498 */	fmla	z4.s, p1/m, z9.s, z0.s
	.loc 13 501 0
..LDL3383:
/*    501 */	dup	z9.s, z15.s[0]
	.loc 13 515 0
..LDL3384:
/*    515 */	dup	z31.s, z31.s[0]
	.loc 13 503 0
..LDL3385:
/*    503 */	fmla	z27.s, p0/m, z9.s, z26.s
	.loc 13 505 0
..LDL3386:
/*    505 */	fmla	z13.s, p1/m, z9.s, z0.s
	.loc 13 517 0
..LDL3387:
/*    517 */	fmla	z1.s, p0/m, z31.s, z26.s
	.loc 13 519 0
..LDL3388:
/*    519 */	fmla	z12.s, p1/m, z31.s, z0.s
	.loc 13 545 0
..LDL3389:
/*    545 */	bne	.L11934
.L11928:
.L11302:
	.loc 13 550 0
..LDL3390:
/*    550 */	st1w	{z10.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 552 0
..LDL3391:
/*    ??? */	ldr	x0, [x19, 40]	//  (*)
/*    552 */	st1w	{z8.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL3392:
/*    556 */	st1w	{z30.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 558 0
..LDL3393:
/*    558 */	st1w	{z11.s}, p1, [x22, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL3394:
/*    562 */	st1w	{z25.s}, p0, [x26, 0, mul vl]	//  (*)
	.loc 13 564 0
..LDL3395:
/*    564 */	st1w	{z24.s}, p1, [x25, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL3396:
/*    568 */	st1w	{z7.s}, p0, [x21, 0, mul vl]	//  (*)
	.loc 13 570 0
..LDL3397:
/*    570 */	st1w	{z29.s}, p1, [x12, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL3398:
/*    ??? */	ldr	x0, [x19, 32]	//  (*)
/*    574 */	st1w	{z6.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 576 0
..LDL3399:
/*    ??? */	ldr	x0, [x19, 24]	//  (*)
/*    576 */	st1w	{z28.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 580 0
..LDL3400:
/*    580 */	st1w	{z5.s}, p0, [x27, 0, mul vl]	//  (*)
	.loc 13 582 0
..LDL3401:
/*    582 */	st1w	{z4.s}, p1, [x24, 0, mul vl]	//  (*)
	.loc 13 586 0
..LDL3402:
/*    586 */	st1w	{z27.s}, p0, [x23, 0, mul vl]	//  (*)
	.loc 13 588 0
..LDL3403:
/*    588 */	st1w	{z13.s}, p1, [x20, 0, mul vl]	//  (*)
	.loc 13 592 0
..LDL3404:
/*    592 */	st1w	{z3.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 594 0
..LDL3405:
/*    594 */	st1w	{z2.s}, p1, [x14, 0, mul vl]	//  (*)
	.loc 13 598 0
..LDL3406:
/*    ??? */	ldr	x0, [x19, 16]	//  (*)
/*    598 */	st1w	{z1.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 600 0
..LDL3407:
/*    ??? */	ldr	x0, [x19, 8]	//  (*)
/*    600 */	st1w	{z12.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL3408:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	z20, [x29, 13, mul vl]	//  (*)
/*    ??? */	ldr	z21, [x29, 14, mul vl]	//  (*)
/*    ??? */	ldr	z22, [x29, 15, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [x29, -64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	ldr	x27, [x29, -72]	//  (*)
	.cfi_restore 27
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 16
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D20.pchi:
	.cfi_endproc
.LFE19:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi9ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi9ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi10ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi10ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi10ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi10ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi10ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi10ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL3409:
.LFB20:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -15
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xf8,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 64
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x50,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x18,0xb,0x11,0x58,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	x25, [x29, -56]	//  (*)
	.cfi_escape 0x10,0x19,0xb,0x11,0x48,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z20, [x29, 13, mul vl]	//  (*)
	.cfi_escape 0x10,0x74,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z21, [x29, 14, mul vl]	//  (*)
	.cfi_escape 0x10,0x75,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL3410:
/*    379 */	ld1w	{z9.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL3411:
/*    391 */	add	w12, w4, w4
	.loc 13 409 0
..LDL3412:
/*    409 */	add	w9, w4, w4, lsl #2
	.loc 13 397 0
..LDL3413:
/*    397 */	add	w11, w12, w4
	.loc 13 391 0
..LDL3414:
/*    391 */	sxtw	x13, w12
	.loc 13 403 0
..LDL3415:
/*    403 */	lsl	w10, w4, 2
	.loc 13 415 0
..LDL3416:
/*    415 */	add	w8, w11, w11
	.loc 13 397 0
..LDL3417:
/*    397 */	sxtw	x12, w11
	.loc 13 403 0
..LDL3418:
/*    403 */	sxtw	x11, w10
	.loc 13 421 0
..LDL3419:
/*    421 */	lsl	w16, w4, 3
	.loc 13 409 0
..LDL3420:
/*    409 */	sxtw	x10, w9
	.loc 13 433 0
..LDL3421:
/*    433 */	add	w15, w4, w4, lsl #3
	.loc 13 421 0
..LDL3422:
/*    421 */	sub	w7, w16, w4
	.loc 13 385 0
..LDL3423:
/*    385 */	sxtw	x14, w4
	.loc 13 415 0
..LDL3424:
/*    415 */	sxtw	x9, w8
	.loc 13 421 0
..LDL3425:
/*    421 */	sxtw	x8, w7
	.loc 13 427 0
..LDL3426:
/*    427 */	sxtw	x7, w16
	.loc 13 433 0
..LDL3427:
/*    433 */	sxtw	x4, w15
	.loc 13 385 0
..LDL3428:
/*    385 */	add	x14, x3, x14, lsl #2
/*    385 */	ld1w	{z17.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL3429:
/*    391 */	add	x13, x3, x13, lsl #2
/*    391 */	ld1w	{z14.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL3430:
/*    397 */	add	x12, x3, x12, lsl #2
/*    397 */	ld1w	{z11.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 403 0
..LDL3431:
/*    403 */	add	x11, x3, x11, lsl #2
/*    403 */	ld1w	{z27.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 409 0
..LDL3432:
/*    409 */	add	x10, x3, x10, lsl #2
/*    409 */	ld1w	{z7.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 415 0
..LDL3433:
/*    415 */	add	x9, x3, x9, lsl #2
/*    415 */	ld1w	{z25.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 421 0
..LDL3434:
/*    421 */	add	x8, x3, x8, lsl #2
/*    421 */	ld1w	{z5.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 427 0
..LDL3435:
/*    427 */	add	x7, x3, x7, lsl #2
/*    427 */	ld1w	{z1.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 433 0
..LDL3436:
/*    433 */	add	x15, x3, x4, lsl #2
/*    433 */	ld1w	{z3.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL3437:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11310
	.loc 13 473 0 is_stmt 0
..LDL3438:
/*    473 */	add	w18, w5, w5
	.loc 13 544 0
..LDL3439:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 480 0
..LDL3440:
/*    480 */	add	w23, w18, w5
	.loc 13 494 0
..LDL3441:
/*    494 */	add	w6, w5, w5, lsl #2
	.loc 13 473 0
..LDL3442:
/*    473 */	sxtw	x30, w18
	.loc 13 508 0
..LDL3443:
/*    508 */	lsl	w20, w5, 3
	.loc 13 501 0
..LDL3444:
/*    501 */	add	w21, w23, w23
	.loc 13 522 0
..LDL3445:
/*    522 */	add	w24, w5, w5, lsl #3
	.loc 13 480 0
..LDL3446:
/*    480 */	sxtw	x18, w23
	.loc 13 487 0
..LDL3447:
/*    487 */	lsl	w16, w5, 2
	.loc 13 508 0
..LDL3448:
/*    508 */	sub	w22, w20, w5
	.loc 13 466 0
..LDL3449:
/*    466 */	sxtw	x17, w5
	.loc 13 515 0
..LDL3450:
/*    515 */	sxtw	x23, w20
	.loc 13 487 0
..LDL3451:
/*    487 */	sxtw	x16, w16
	.loc 13 494 0
..LDL3452:
/*    494 */	sxtw	x6, w6
	.loc 13 501 0
..LDL3453:
/*    501 */	sxtw	x21, w21
	.loc 13 508 0
..LDL3454:
/*    508 */	sxtw	x22, w22
	.loc 13 522 0
..LDL3455:
/*    522 */	sxtw	x20, w24
	.loc 13 459 0
..LDL3456:
/*    459 */	orr	x5, x1, 6917529027641081856
	.loc 13 451 0
..LDL3457:
/*    451 */	cmp	w0, 3
/*    451 */	blt	.L11942
	.loc 13 459 0
..LDL3458:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 454 0
..LDL3459:
/*    454 */	orr	x24, x2, 6917529027641081856
	.loc 13 466 0
..LDL3460:
/*    466 */	ldr	s13, [x1, x17, lsl #2]	//  (*)
	.loc 13 545 0
..LDL3461:
/*    545 */	mov	z28.d, z11.d
/*    545 */	mov	z0.d, z3.d
/*    545 */	mov	z2.d, z1.d
	.loc 13 454 0
..LDL3462:
/*    454 */	ld1w	{z15.s}, p0/z, [x24, 0, mul vl]	//  (*)
	.loc 13 473 0
..LDL3463:
/*    473 */	ldr	s12, [x1, x30, lsl #2]	//  (*)
	.loc 13 545 0
..LDL3464:
/*    545 */	mov	z4.d, z5.d
/*    545 */	mov	z24.d, z25.d
	.loc 13 480 0
..LDL3465:
/*    480 */	ldr	s11, [x1, x18, lsl #2]	//  (*)
	.loc 13 487 0
..LDL3466:
/*    487 */	ldr	s10, [x1, x16, lsl #2]	//  (*)
	.loc 13 545 0
..LDL3467:
/*    545 */	mov	z6.d, z7.d
/*    545 */	mov	z26.d, z27.d
	.loc 13 459 0
..LDL3468:
/*    459 */	ld1rw	{z29.s}, p1/z, [x5]	//  (*)
	.loc 13 494 0
..LDL3469:
/*    494 */	ldr	s31, [x1, x6, lsl #2]	//  (*)
	.loc 13 545 0
..LDL3470:
/*    545 */	mov	z30.d, z14.d
/*    545 */	mov	z8.d, z17.d
	.loc 13 501 0
..LDL3471:
/*    501 */	ldr	s16, [x1, x21, lsl #2]	//  (*)
	.loc 13 508 0
..LDL3472:
/*    508 */	ldr	s19, [x1, x22, lsl #2]	//  (*)
	.loc 13 515 0
..LDL3473:
/*    515 */	ldr	s18, [x1, x23, lsl #2]	//  (*)
	.loc 13 454 0
..LDL3474:
/*    454 */	prfm	2, [x24, 2560]	//  (*)
/*    454 */	prfm	0, [x24, 512]	//  (*)
	.p2align 5
.L11308:					// :entr:term:swpl
	.loc 13 466 0
..LDL3475:
/*    466 */	dup	z20.s, z13.s[0]
	.loc 13 522 0
..LDL3476:
/*    522 */	ldr	s1, [x1, x20, lsl #2]	//  (*)
	.loc 13 473 0
..LDL3477:
/*    473 */	dup	z17.s, z12.s[0]
	.loc 13 480 0
..LDL3478:
/*    480 */	dup	z13.s, z11.s[0]
	.loc 13 487 0
..LDL3479:
/*    487 */	dup	z27.s, z10.s[0]
	.loc 13 544 0
..LDL3480:
/*    544 */	add	x25, x2, x4
	.loc 13 494 0
..LDL3481:
/*    494 */	dup	z7.s, z31.s[0]
	.loc 13 454 0
..LDL3482:
/*    454 */	orr	x24, x25, 6917529027641081856
	.loc 13 501 0
..LDL3483:
/*    501 */	dup	z25.s, z16.s[0]
	.loc 13 454 0
..LDL3484:
/*    454 */	prfm	2, [x24, 2560]	//  (*)
	.loc 13 543 0
..LDL3485:
/*    543 */	add	x2, x1, 4
	.loc 13 508 0
..LDL3486:
/*    508 */	dup	z5.s, z19.s[0]
	.loc 13 454 0
..LDL3487:
/*    454 */	prfm	0, [x24, 512]	//  (*)
	.loc 13 466 0
..LDL3488:
/*    466 */	ldr	s21, [x2, x17, lsl #2]	//  (*)
	.loc 13 515 0
..LDL3489:
/*    515 */	dup	z3.s, z18.s[0]
	.loc 13 454 0
..LDL3490:
/*    454 */	ld1w	{z14.s}, p0/z, [x24, 0, mul vl]	//  (*)
	.loc 13 473 0
..LDL3491:
/*    473 */	ldr	s31, [x2, x30, lsl #2]	//  (*)
	.loc 13 522 0
..LDL3492:
/*    522 */	dup	z1.s, z1.s[0]
	.loc 13 459 0
..LDL3493:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 480 0
..LDL3494:
/*    480 */	ldr	s11, [x2, x18, lsl #2]	//  (*)
	.loc 13 461 0
..LDL3495:
/*    461 */	fmla	z9.s, p0/m, z29.s, z15.s
	.loc 13 468 0
..LDL3496:
/*    468 */	fmla	z8.s, p0/m, z20.s, z15.s
	.loc 13 487 0
..LDL3497:
/*    487 */	ldr	s12, [x2, x16, lsl #2]	//  (*)
	.loc 13 475 0
..LDL3498:
/*    475 */	fmla	z30.s, p0/m, z17.s, z15.s
	.loc 13 543 0
..LDL3499:
/*    543 */	add	x24, x5, 4
	.loc 13 482 0
..LDL3500:
/*    482 */	fmla	z28.s, p0/m, z13.s, z15.s
	.loc 13 494 0
..LDL3501:
/*    494 */	ldr	s13, [x2, x6, lsl #2]	//  (*)
	.loc 13 489 0
..LDL3502:
/*    489 */	fmad	z27.s, p0/m, z15.s, z26.s
	.loc 13 459 0
..LDL3503:
/*    459 */	ld1rw	{z10.s}, p1/z, [x24]	//  (*)
	.loc 13 501 0
..LDL3504:
/*    501 */	ldr	s16, [x2, x21, lsl #2]	//  (*)
	.loc 13 503 0
..LDL3505:
/*    503 */	fmad	z25.s, p0/m, z15.s, z24.s
	.loc 13 496 0
..LDL3506:
/*    496 */	fmad	z7.s, p0/m, z15.s, z6.s
	.loc 13 508 0
..LDL3507:
/*    508 */	ldr	s19, [x2, x22, lsl #2]	//  (*)
	.loc 13 515 0
..LDL3508:
/*    515 */	ldr	s17, [x2, x23, lsl #2]	//  (*)
	.loc 13 510 0
..LDL3509:
/*    510 */	fmad	z5.s, p0/m, z15.s, z4.s
	.loc 13 517 0
..LDL3510:
/*    517 */	fmad	z3.s, p0/m, z15.s, z2.s
	.loc 13 524 0
..LDL3511:
/*    524 */	fmad	z1.s, p0/m, z15.s, z0.s
	.loc 13 466 0
..LDL3512:
/*    466 */	dup	z18.s, z21.s[0]
	.loc 13 522 0
..LDL3513:
/*    522 */	ldr	s0, [x2, x20, lsl #2]	//  (*)
	.loc 13 473 0
..LDL3514:
/*    473 */	dup	z31.s, z31.s[0]
	.loc 13 480 0
..LDL3515:
/*    480 */	dup	z29.s, z11.s[0]
	.loc 13 487 0
..LDL3516:
/*    487 */	dup	z26.s, z12.s[0]
	.loc 13 544 0
..LDL3517:
/*    544 */	add	x2, x25, x4
	.loc 13 494 0
..LDL3518:
/*    494 */	dup	z6.s, z13.s[0]
	.loc 13 454 0
..LDL3519:
/*    454 */	orr	x25, x2, 6917529027641081856
	.loc 13 501 0
..LDL3520:
/*    501 */	dup	z24.s, z16.s[0]
	.loc 13 454 0
..LDL3521:
/*    454 */	prfm	2, [x25, 2560]	//  (*)
	.loc 13 543 0
..LDL3522:
/*    543 */	add	x1, x1, 8
	.loc 13 508 0
..LDL3523:
/*    508 */	dup	z4.s, z19.s[0]
	.loc 13 454 0
..LDL3524:
/*    454 */	prfm	0, [x25, 512]	//  (*)
	.loc 13 466 0
..LDL3525:
/*    466 */	ldr	s13, [x1, x17, lsl #2]	//  (*)
	.loc 13 515 0
..LDL3526:
/*    515 */	dup	z2.s, z17.s[0]
	.loc 13 454 0
..LDL3527:
/*    454 */	ld1w	{z15.s}, p0/z, [x25, 0, mul vl]	//  (*)
	.loc 13 473 0
..LDL3528:
/*    473 */	ldr	s12, [x1, x30, lsl #2]	//  (*)
	.loc 13 522 0
..LDL3529:
/*    522 */	dup	z0.s, z0.s[0]
	.loc 13 459 0
..LDL3530:
/*    459 */	prfm	2, [x24, 2560]	//  (*)
	.loc 13 480 0
..LDL3531:
/*    480 */	ldr	s11, [x1, x18, lsl #2]	//  (*)
	.loc 13 461 0
..LDL3532:
/*    461 */	fmla	z9.s, p0/m, z10.s, z14.s
	.loc 13 459 0
..LDL3533:
/*    459 */	prfm	0, [x24, 512]	//  (*)
	.loc 13 468 0
..LDL3534:
/*    468 */	fmla	z8.s, p0/m, z18.s, z14.s
	.loc 13 487 0
..LDL3535:
/*    487 */	ldr	s10, [x1, x16, lsl #2]	//  (*)
	.loc 13 475 0
..LDL3536:
/*    475 */	fmla	z30.s, p0/m, z31.s, z14.s
	.loc 13 543 0
..LDL3537:
/*    543 */	add	x5, x5, 8
	.loc 13 482 0
..LDL3538:
/*    482 */	fmla	z28.s, p0/m, z29.s, z14.s
	.loc 13 494 0
..LDL3539:
/*    494 */	ldr	s31, [x1, x6, lsl #2]	//  (*)
	.loc 13 489 0
..LDL3540:
/*    489 */	fmad	z26.s, p0/m, z14.s, z27.s
	.loc 13 459 0
..LDL3541:
/*    459 */	ld1rw	{z29.s}, p1/z, [x5]	//  (*)
	.loc 13 501 0
..LDL3542:
/*    501 */	ldr	s16, [x1, x21, lsl #2]	//  (*)
	.loc 13 503 0
..LDL3543:
/*    503 */	fmad	z24.s, p0/m, z14.s, z25.s
	.loc 13 496 0
..LDL3544:
/*    496 */	fmad	z6.s, p0/m, z14.s, z7.s
	.loc 13 508 0
..LDL3545:
/*    508 */	ldr	s19, [x1, x22, lsl #2]	//  (*)
	.loc 13 515 0
..LDL3546:
/*    515 */	ldr	s18, [x1, x23, lsl #2]	//  (*)
	.loc 13 510 0
..LDL3547:
/*    510 */	fmad	z4.s, p0/m, z14.s, z5.s
	.loc 13 517 0
..LDL3548:
/*    517 */	fmad	z2.s, p0/m, z14.s, z3.s
	.loc 13 524 0
..LDL3549:
/*    524 */	fmad	z0.s, p0/m, z14.s, z1.s
	.loc 13 545 0
..LDL3550:
/*    545 */	sub	w0, w0, 2
	.loc 13 453 0
..LDL3551:
/*    453 */	cmp	w0, 3
/*    453 */	bge	.L11308
	.loc 13 466 0
..LDL3552:
/*    466 */	dup	z17.s, z13.s[0]
	.loc 13 522 0
..LDL3553:
/*    522 */	ldr	s3, [x1, x20, lsl #2]	//  (*)
	.loc 13 459 0
..LDL3554:
/*    459 */	prfm	2, [x5, 2560]	//  (*)
	.loc 13 461 0
..LDL3555:
/*    461 */	fmla	z9.s, p0/m, z29.s, z15.s
	.loc 13 473 0
..LDL3556:
/*    473 */	dup	z14.s, z12.s[0]
	.loc 13 544 0
..LDL3557:
/*    544 */	add	x2, x2, x4
	.loc 13 543 0
..LDL3558:
/*    543 */	add	x1, x1, 4
	.loc 13 459 0
..LDL3559:
/*    459 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 480 0
..LDL3560:
/*    480 */	dup	z11.s, z11.s[0]
	.loc 13 543 0
..LDL3561:
/*    543 */	add	x5, x5, 4
	.loc 13 545 0
..LDL3562:
/*    545 */	sub	w0, w0, 1
	.loc 13 487 0
..LDL3563:
/*    487 */	dup	z27.s, z10.s[0]
	.loc 13 494 0
..LDL3564:
/*    494 */	dup	z7.s, z31.s[0]
	.loc 13 501 0
..LDL3565:
/*    501 */	dup	z25.s, z16.s[0]
	.loc 13 508 0
..LDL3566:
/*    508 */	dup	z5.s, z19.s[0]
	.loc 13 468 0
..LDL3567:
/*    468 */	fmad	z17.s, p0/m, z15.s, z8.s
	.loc 13 515 0
..LDL3568:
/*    515 */	dup	z1.s, z18.s[0]
	.loc 13 475 0
..LDL3569:
/*    475 */	fmad	z14.s, p0/m, z15.s, z30.s
	.loc 13 522 0
..LDL3570:
/*    522 */	dup	z3.s, z3.s[0]
	.loc 13 482 0
..LDL3571:
/*    482 */	fmad	z11.s, p0/m, z15.s, z28.s
	.loc 13 489 0
..LDL3572:
/*    489 */	fmad	z27.s, p0/m, z15.s, z26.s
	.loc 13 496 0
..LDL3573:
/*    496 */	fmad	z7.s, p0/m, z15.s, z6.s
	.loc 13 503 0
..LDL3574:
/*    503 */	fmad	z25.s, p0/m, z15.s, z24.s
	.loc 13 510 0
..LDL3575:
/*    510 */	fmad	z5.s, p0/m, z15.s, z4.s
	.loc 13 517 0
..LDL3576:
/*    517 */	fmad	z1.s, p0/m, z15.s, z2.s
	.loc 13 524 0
..LDL3577:
/*    524 */	fmad	z3.s, p0/m, z15.s, z0.s
	.loc 13 545 0
..LDL3578:
/*    545 */	cbz	w0, .L11939
.L11942:
	.p2align 5
.L11945:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL3579:
/*    454 */	orr	x24, x2, 6917529027641081856
	.loc 13 459 0
..LDL3580:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 466 0
..LDL3581:
/*    466 */	ldr	s29, [x1, x17, lsl #2]	//  (*)
	.loc 13 544 0
..LDL3582:
/*    544 */	add	x2, x2, x4
	.loc 13 473 0
..LDL3583:
/*    473 */	ldr	s30, [x1, x30, lsl #2]	//  (*)
	.loc 13 480 0
..LDL3584:
/*    480 */	ldr	s0, [x1, x18, lsl #2]	//  (*)
	.loc 13 545 0
..LDL3585:
/*    545 */	subs	w0, w0, 1
	.loc 13 487 0
..LDL3586:
/*    487 */	ldr	s6, [x1, x16, lsl #2]	//  (*)
	.loc 13 494 0
..LDL3587:
/*    494 */	ldr	s8, [x1, x6, lsl #2]	//  (*)
	.loc 13 501 0
..LDL3588:
/*    501 */	ldr	s31, [x1, x21, lsl #2]	//  (*)
	.loc 13 508 0
..LDL3589:
/*    508 */	ldr	s26, [x1, x22, lsl #2]	//  (*)
	.loc 13 515 0
..LDL3590:
/*    515 */	ldr	s4, [x1, x23, lsl #2]	//  (*)
	.loc 13 522 0
..LDL3591:
/*    522 */	ldr	s2, [x1, x20, lsl #2]	//  (*)
	.loc 13 543 0
..LDL3592:
/*    543 */	add	x1, x1, 4
	.loc 13 454 0
..LDL3593:
/*    454 */	ld1w	{z28.s}, p0/z, [x24, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL3594:
/*    459 */	ld1rw	{z24.s}, p1/z, [x5]	//  (*)
/*    459 */	prfm	2, [x5, 2560]	//  (*)
/*    459 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 543 0
..LDL3595:
/*    543 */	add	x5, x5, 4
	.loc 13 454 0
..LDL3596:
/*    454 */	prfm	2, [x24, 2560]	//  (*)
/*    454 */	prfm	0, [x24, 512]	//  (*)
	.loc 13 466 0
..LDL3597:
/*    466 */	dup	z29.s, z29.s[0]
	.loc 13 473 0
..LDL3598:
/*    473 */	dup	z30.s, z30.s[0]
	.loc 13 480 0
..LDL3599:
/*    480 */	dup	z0.s, z0.s[0]
	.loc 13 487 0
..LDL3600:
/*    487 */	dup	z6.s, z6.s[0]
	.loc 13 494 0
..LDL3601:
/*    494 */	dup	z8.s, z8.s[0]
	.loc 13 501 0
..LDL3602:
/*    501 */	dup	z31.s, z31.s[0]
	.loc 13 508 0
..LDL3603:
/*    508 */	dup	z26.s, z26.s[0]
	.loc 13 515 0
..LDL3604:
/*    515 */	dup	z4.s, z4.s[0]
	.loc 13 461 0
..LDL3605:
/*    461 */	fmla	z9.s, p0/m, z24.s, z28.s
	.loc 13 522 0
..LDL3606:
/*    522 */	dup	z2.s, z2.s[0]
	.loc 13 468 0
..LDL3607:
/*    468 */	fmla	z17.s, p0/m, z29.s, z28.s
	.loc 13 475 0
..LDL3608:
/*    475 */	fmla	z14.s, p0/m, z30.s, z28.s
	.loc 13 482 0
..LDL3609:
/*    482 */	fmla	z11.s, p0/m, z0.s, z28.s
	.loc 13 489 0
..LDL3610:
/*    489 */	fmla	z27.s, p0/m, z6.s, z28.s
	.loc 13 496 0
..LDL3611:
/*    496 */	fmla	z7.s, p0/m, z8.s, z28.s
	.loc 13 503 0
..LDL3612:
/*    503 */	fmla	z25.s, p0/m, z31.s, z28.s
	.loc 13 510 0
..LDL3613:
/*    510 */	fmla	z5.s, p0/m, z26.s, z28.s
	.loc 13 517 0
..LDL3614:
/*    517 */	fmla	z1.s, p0/m, z4.s, z28.s
	.loc 13 524 0
..LDL3615:
/*    524 */	fmla	z3.s, p0/m, z2.s, z28.s
	.loc 13 545 0 is_stmt 0
..LDL3616:
/*    545 */	bne	.L11945
.L11939:
.L11310:
	.loc 13 550 0 is_stmt 1
..LDL3617:
/*    550 */	st1w	{z9.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL3618:
/*    556 */	st1w	{z17.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL3619:
/*    562 */	st1w	{z14.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL3620:
/*    568 */	st1w	{z11.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL3621:
/*    574 */	st1w	{z27.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 580 0
..LDL3622:
/*    580 */	st1w	{z7.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 586 0
..LDL3623:
/*    586 */	st1w	{z25.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 592 0
..LDL3624:
/*    592 */	st1w	{z5.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 598 0
..LDL3625:
/*    598 */	st1w	{z1.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 604 0
..LDL3626:
/*    604 */	st1w	{z3.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL3627:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	z20, [x29, 13, mul vl]	//  (*)
/*    ??? */	ldr	z21, [x29, 14, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldr	x25, [x29, -56]	//  (*)
	.cfi_restore 25
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 15
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D21.pchi:
	.cfi_endproc
.LFE20:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi10ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi10ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi10ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi10ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi10ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi10ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi10ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi10ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL3628:
.LFB21:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -11
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xd8,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 160
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x50,0x22,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x18,0xb,0x11,0x58,0x22,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x25, x26, [x29, -64]	//  (*)
	.cfi_escape 0x10,0x19,0xb,0x11,0x40,0x22,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1a,0xb,0x11,0x48,0x22,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x27, x28, [x29, -80]	//  (*)
	.cfi_escape 0x10,0x1b,0xc,0x11,0xb0,0x7f,0x22,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1c,0xc,0x11,0xb8,0x7f,0x22,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	w6, [x19, 28]	//  (*)
	.loc 13 379 0
..LDL3629:
/*    379 */	ld1w	{z0.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 403 0
..LDL3630:
/*    403 */	lsl	w11, w4, 2
	.loc 13 385 0
..LDL3631:
/*    385 */	sxtw	x22, w4
	.loc 13 403 0
..LDL3632:
/*    403 */	sxtw	x16, w11
	.loc 13 387 0
..LDL3633:
/*    387 */	add	x11, x22, 16
	.loc 13 391 0
..LDL3634:
/*    391 */	add	w12, w4, w4
	.loc 13 397 0
..LDL3635:
/*    397 */	add	w13, w12, w4
	.loc 13 387 0
..LDL3636:
/*    387 */	add	x11, x3, x11, lsl #2
	.loc 13 415 0
..LDL3637:
/*    415 */	add	w9, w13, w13
	.loc 13 391 0
..LDL3638:
/*    391 */	sxtw	x12, w12
	.loc 13 397 0
..LDL3639:
/*    397 */	sxtw	x14, w13
	.loc 13 393 0
..LDL3640:
/*    393 */	add	x13, x12, 16
	.loc 13 387 0
..LDL3641:
/*    387 */	ld1w	{z3.s}, p1/z, [x11, 0, mul vl]	//  (*)
/*    ??? */	str	x11, [x19, 72]	//  (*)
	.loc 13 399 0
..LDL3642:
/*    399 */	add	x15, x14, 16
	.loc 13 391 0
..LDL3643:
/*    391 */	add	x11, x3, x12, lsl #2
	.loc 13 421 0
..LDL3644:
/*    421 */	lsl	w7, w4, 3
	.loc 13 391 0
..LDL3645:
/*    391 */	ld1w	{z4.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 393 0
..LDL3646:
/*    393 */	add	x12, x3, x13, lsl #2
	.loc 13 421 0
..LDL3647:
/*    421 */	sub	w8, w7, w4
	.loc 13 405 0
..LDL3648:
/*    405 */	add	x17, x16, 16
	.loc 13 393 0
..LDL3649:
/*    393 */	ld1w	{z5.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL3650:
/*    397 */	add	x13, x3, x14, lsl #2
	.loc 13 415 0
..LDL3651:
/*    415 */	sxtw	x20, w9
	.loc 13 409 0
..LDL3652:
/*    409 */	add	w10, w4, w4, lsl #2
	.loc 13 417 0
..LDL3653:
/*    417 */	add	x21, x20, 16
	.loc 13 397 0
..LDL3654:
/*    397 */	ld1w	{z6.s}, p0/z, [x13, 0, mul vl]	//  (*)
/*    ??? */	str	x13, [x19, 64]	//  (*)
	.loc 13 409 0
..LDL3655:
/*    409 */	sxtw	x18, w10
	.loc 13 399 0
..LDL3656:
/*    399 */	add	x13, x3, x15, lsl #2
	.loc 13 421 0
..LDL3657:
/*    421 */	sxtw	x10, w8
	.loc 13 411 0
..LDL3658:
/*    411 */	add	x30, x18, 16
	.loc 13 433 0
..LDL3659:
/*    433 */	add	w6, w4, w4, lsl #3
	.loc 13 427 0
..LDL3660:
/*    427 */	sxtw	x8, w7
	.loc 13 399 0
..LDL3661:
/*    399 */	ld1w	{z7.s}, p1/z, [x13, 0, mul vl]	//  (*)
	.loc 13 433 0
..LDL3662:
/*    433 */	sxtw	x6, w6
	.loc 13 403 0
..LDL3663:
/*    403 */	add	x14, x3, x16, lsl #2
	.loc 13 423 0
..LDL3664:
/*    423 */	add	x9, x10, 16
	.loc 13 429 0
..LDL3665:
/*    429 */	add	x7, x8, 16
	.loc 13 435 0
..LDL3666:
/*    435 */	add	x4, x6, 16
	.loc 13 403 0
..LDL3667:
/*    403 */	ld1w	{z24.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 405 0
..LDL3668:
/*    405 */	add	x15, x3, x17, lsl #2
/*    405 */	ld1w	{z25.s}, p1/z, [x15, 0, mul vl]	//  (*)
	.loc 13 409 0
..LDL3669:
/*    409 */	add	x16, x3, x18, lsl #2
/*    409 */	ld1w	{z26.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 411 0
..LDL3670:
/*    411 */	add	x17, x3, x30, lsl #2
	.loc 13 381 0
..LDL3671:
/*    381 */	add	x23, x3, 64
	.loc 13 385 0
..LDL3672:
/*    385 */	add	x22, x3, x22, lsl #2
	.loc 13 381 0
..LDL3673:
/*    381 */	ld1w	{z1.s}, p1/z, [x23, 0, mul vl]	//  (*)
	.loc 13 411 0
..LDL3674:
/*    411 */	ld1w	{z27.s}, p1/z, [x17, 0, mul vl]	//  (*)
	.loc 13 385 0
..LDL3675:
/*    385 */	ld1w	{z2.s}, p0/z, [x22, 0, mul vl]	//  (*)
	.loc 13 415 0
..LDL3676:
/*    415 */	add	x18, x3, x20, lsl #2
/*    415 */	ld1w	{z28.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 417 0
..LDL3677:
/*    417 */	add	x30, x3, x21, lsl #2
/*    417 */	ld1w	{z29.s}, p1/z, [x30, 0, mul vl]	//  (*)
	.loc 13 421 0
..LDL3678:
/*    421 */	add	x10, x3, x10, lsl #2
/*    421 */	ld1w	{z30.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 423 0
..LDL3679:
/*    423 */	add	x9, x3, x9, lsl #2
/*    423 */	ld1w	{z31.s}, p1/z, [x9, 0, mul vl]	//  (*)
	.loc 13 427 0
..LDL3680:
/*    427 */	add	x8, x3, x8, lsl #2
/*    427 */	ld1w	{z8.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 429 0
..LDL3681:
/*    429 */	add	x7, x3, x7, lsl #2
	.loc 13 427 0
..LDL3682:
/*    ??? */	str	x8, [x19, 56]	//  (*)
	.loc 13 429 0
..LDL3683:
/*    429 */	ld1w	{z9.s}, p1/z, [x7, 0, mul vl]	//  (*)
	.loc 13 433 0
..LDL3684:
/*    433 */	add	x6, x3, x6, lsl #2
	.loc 13 429 0
..LDL3685:
/*    ??? */	str	x7, [x19, 48]	//  (*)
	.loc 13 433 0
..LDL3686:
/*    433 */	ld1w	{z10.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 435 0
..LDL3687:
/*    435 */	add	x4, x3, x4, lsl #2
	.loc 13 433 0
..LDL3688:
/*    ??? */	str	x6, [x19, 40]	//  (*)
	.loc 13 435 0
..LDL3689:
/*    435 */	ld1w	{z11.s}, p1/z, [x4, 0, mul vl]	//  (*)
/*    ??? */	str	x4, [x19, 32]	//  (*)
	.loc 13 451 0
..LDL3690:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11318
	.loc 13 473 0 is_stmt 0
..LDL3691:
/*    473 */	add	w4, w5, w5
	.loc 13 544 0
..LDL3692:
/*    ??? */	ldr	w6, [x19, 28]	//  (*)
	.loc 13 494 0
..LDL3693:
/*    494 */	add	w7, w5, w5, lsl #2
	.loc 13 480 0
..LDL3694:
/*    480 */	add	w24, w4, w5
	.loc 13 473 0
..LDL3695:
/*    473 */	sxtw	x4, w4
	.loc 13 508 0
..LDL3696:
/*    508 */	lsl	w20, w5, 3
	.loc 13 522 0
..LDL3697:
/*    522 */	add	w8, w5, w5, lsl #3
	.loc 13 473 0
..LDL3698:
/*    ??? */	str	x4, [x19, 8]	//  (*)
	.loc 13 487 0
..LDL3699:
/*    487 */	lsl	w25, w5, 2
	.loc 13 480 0
..LDL3700:
/*    480 */	sxtw	x4, w24
	.loc 13 501 0
..LDL3701:
/*    501 */	add	w21, w24, w24
	.loc 13 480 0
..LDL3702:
/*    ??? */	str	x4, [x19]	//  (*)
	.loc 13 515 0
..LDL3703:
/*    515 */	sxtw	x26, w20
	.loc 13 544 0
..LDL3704:
/*    544 */	sbfiz	x27, x6, 2, 32
	.loc 13 508 0
..LDL3705:
/*    508 */	sub	w6, w20, w5
	.loc 13 466 0
..LDL3706:
/*    466 */	sxtw	x5, w5
/*    ??? */	str	x5, [x19, 16]	//  (*)
	.loc 13 487 0
..LDL3707:
/*    487 */	sxtw	x4, w25
	.loc 13 501 0
..LDL3708:
/*    501 */	sxtw	x5, w21
	.loc 13 494 0
..LDL3709:
/*    494 */	sxtw	x7, w7
	.loc 13 522 0
..LDL3710:
/*    522 */	sxtw	x25, w8
	.loc 13 508 0
..LDL3711:
/*    508 */	sxtw	x6, w6
	.loc 13 459 0
..LDL3712:
/*    459 */	orr	x8, x1, 6917529027641081856
/*    ??? */	ldp	x21, x24, [x19]	//  (*)
	.loc 13 544 0
..LDL3713:
/*    ??? */	ldr	x20, [x19, 16]	//  (*)
	.p2align 5
.L11316:					// :entr:term
	.loc 13 454 0 is_stmt 1
..LDL3714:
/*    454 */	orr	x28, x2, 6917529027641081856
	.loc 13 459 0
..LDL3715:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 508 0
..LDL3716:
/*    508 */	ldr	s16, [x1, x6, lsl #2]	//  (*)
	.loc 13 454 0
..LDL3717:
/*    454 */	prfm	2, [x28, 2560]	//  (*)
/*    454 */	ld1w	{z14.s}, p0/z, [x28, 0, mul vl]	//  (*)
	.loc 13 545 0
..LDL3718:
/*    545 */	subs	w0, w0, 1
	.loc 13 454 0
..LDL3719:
/*    454 */	prfm	0, [x28, 512]	//  (*)
	.loc 13 456 0
..LDL3720:
/*    456 */	add	x28, x2, 64
	.loc 13 515 0
..LDL3721:
/*    515 */	ldr	s13, [x1, x26, lsl #2]	//  (*)
	.loc 13 544 0
..LDL3722:
/*    544 */	add	x2, x2, x27
	.loc 13 456 0
..LDL3723:
/*    456 */	ld1w	{z15.s}, p1/z, [x28, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL3724:
/*    459 */	ld1rw	{z12.s}, p2/z, [x8]	//  (*)
/*    459 */	prfm	2, [x8, 2560]	//  (*)
/*    459 */	prfm	0, [x8, 512]	//  (*)
	.loc 13 543 0
..LDL3725:
/*    543 */	add	x8, x8, 4
	.loc 13 508 0
..LDL3726:
/*    508 */	dup	z16.s, z16.s[0]
	.loc 13 515 0
..LDL3727:
/*    515 */	dup	z13.s, z13.s[0]
	.loc 13 461 0
..LDL3728:
/*    461 */	fmla	z0.s, p0/m, z12.s, z14.s
	.loc 13 463 0
..LDL3729:
/*    463 */	fmla	z1.s, p1/m, z12.s, z15.s
	.loc 13 466 0
..LDL3730:
/*    466 */	ldr	s12, [x1, x20, lsl #2]	//  (*)
	.loc 13 510 0
..LDL3731:
/*    510 */	fmla	z30.s, p0/m, z16.s, z14.s
	.loc 13 512 0
..LDL3732:
/*    512 */	fmla	z31.s, p1/m, z16.s, z15.s
	.loc 13 517 0
..LDL3733:
/*    517 */	fmla	z8.s, p0/m, z13.s, z14.s
	.loc 13 519 0
..LDL3734:
/*    519 */	fmla	z9.s, p1/m, z13.s, z15.s
	.loc 13 466 0
..LDL3735:
/*    466 */	dup	z12.s, z12.s[0]
	.loc 13 468 0
..LDL3736:
/*    468 */	fmla	z2.s, p0/m, z12.s, z14.s
	.loc 13 470 0
..LDL3737:
/*    470 */	fmla	z3.s, p1/m, z12.s, z15.s
	.loc 13 473 0
..LDL3738:
/*    473 */	ldr	s12, [x1, x24, lsl #2]	//  (*)
/*    473 */	dup	z12.s, z12.s[0]
	.loc 13 475 0
..LDL3739:
/*    475 */	fmla	z4.s, p0/m, z12.s, z14.s
	.loc 13 477 0
..LDL3740:
/*    477 */	fmla	z5.s, p1/m, z12.s, z15.s
	.loc 13 480 0
..LDL3741:
/*    480 */	ldr	s12, [x1, x21, lsl #2]	//  (*)
/*    480 */	dup	z12.s, z12.s[0]
	.loc 13 482 0
..LDL3742:
/*    482 */	fmla	z6.s, p0/m, z12.s, z14.s
	.loc 13 484 0
..LDL3743:
/*    484 */	fmla	z7.s, p1/m, z12.s, z15.s
	.loc 13 487 0
..LDL3744:
/*    487 */	ldr	s12, [x1, x4, lsl #2]	//  (*)
/*    487 */	dup	z12.s, z12.s[0]
	.loc 13 489 0
..LDL3745:
/*    489 */	fmla	z24.s, p0/m, z12.s, z14.s
	.loc 13 491 0
..LDL3746:
/*    491 */	fmla	z25.s, p1/m, z12.s, z15.s
	.loc 13 494 0
..LDL3747:
/*    494 */	ldr	s12, [x1, x7, lsl #2]	//  (*)
/*    494 */	dup	z12.s, z12.s[0]
	.loc 13 496 0
..LDL3748:
/*    496 */	fmla	z26.s, p0/m, z12.s, z14.s
	.loc 13 498 0
..LDL3749:
/*    498 */	fmla	z27.s, p1/m, z12.s, z15.s
	.loc 13 501 0
..LDL3750:
/*    501 */	ldr	s12, [x1, x5, lsl #2]	//  (*)
/*    501 */	dup	z17.s, z12.s[0]
	.loc 13 522 0
..LDL3751:
/*    522 */	ldr	s12, [x1, x25, lsl #2]	//  (*)
	.loc 13 543 0
..LDL3752:
/*    543 */	add	x1, x1, 4
	.loc 13 503 0
..LDL3753:
/*    503 */	fmla	z28.s, p0/m, z17.s, z14.s
	.loc 13 505 0
..LDL3754:
/*    505 */	fmla	z29.s, p1/m, z17.s, z15.s
	.loc 13 522 0
..LDL3755:
/*    522 */	dup	z12.s, z12.s[0]
	.loc 13 524 0
..LDL3756:
/*    524 */	fmla	z10.s, p0/m, z12.s, z14.s
	.loc 13 526 0
..LDL3757:
/*    526 */	fmla	z11.s, p1/m, z12.s, z15.s
	.loc 13 545 0
..LDL3758:
/*    545 */	bne	.L11316
.L11318:
	.loc 13 550 0
..LDL3759:
/*    550 */	st1w	{z0.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 552 0
..LDL3760:
/*    552 */	st1w	{z1.s}, p1, [x23, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL3761:
/*    556 */	st1w	{z2.s}, p0, [x22, 0, mul vl]	//  (*)
	.loc 13 558 0
..LDL3762:
/*    ??? */	ldr	x0, [x19, 72]	//  (*)
/*    558 */	st1w	{z3.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL3763:
/*    562 */	st1w	{z4.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 564 0
..LDL3764:
/*    564 */	st1w	{z5.s}, p1, [x12, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL3765:
/*    ??? */	ldr	x0, [x19, 64]	//  (*)
/*    568 */	st1w	{z6.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 570 0
..LDL3766:
/*    570 */	st1w	{z7.s}, p1, [x13, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL3767:
/*    574 */	st1w	{z24.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 576 0
..LDL3768:
/*    576 */	st1w	{z25.s}, p1, [x15, 0, mul vl]	//  (*)
	.loc 13 580 0
..LDL3769:
/*    580 */	st1w	{z26.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 582 0
..LDL3770:
/*    582 */	st1w	{z27.s}, p1, [x17, 0, mul vl]	//  (*)
	.loc 13 586 0
..LDL3771:
/*    586 */	st1w	{z28.s}, p0, [x18, 0, mul vl]	//  (*)
	.loc 13 588 0
..LDL3772:
/*    588 */	st1w	{z29.s}, p1, [x30, 0, mul vl]	//  (*)
	.loc 13 592 0
..LDL3773:
/*    592 */	st1w	{z30.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 594 0
..LDL3774:
/*    594 */	st1w	{z31.s}, p1, [x9, 0, mul vl]	//  (*)
	.loc 13 598 0
..LDL3775:
/*    ??? */	ldr	x0, [x19, 56]	//  (*)
/*    598 */	st1w	{z8.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 600 0
..LDL3776:
/*    ??? */	ldr	x0, [x19, 48]	//  (*)
/*    600 */	st1w	{z9.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 604 0
..LDL3777:
/*    ??? */	ldr	x0, [x19, 40]	//  (*)
/*    604 */	st1w	{z10.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 606 0
..LDL3778:
/*    ??? */	ldr	x0, [x19, 32]	//  (*)
/*    606 */	st1w	{z11.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL3779:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [x29, -64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	ldp	x27, x28, [x29, -80]	//  (*)
	.cfi_restore 27
	.cfi_restore 28
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 11
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D22.pchi:
	.cfi_endproc
.LFE21:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi10ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi10ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi11ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi11ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi11ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi11ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi11ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi11ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL3780:
.LFB22:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -12
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xe0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 80
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x50,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x18,0xb,0x11,0x58,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x25, x26, [x29, -64]	//  (*)
	.cfi_escape 0x10,0x19,0xb,0x11,0x40,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1a,0xb,0x11,0x48,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x27, x28, [x29, -80]	//  (*)
	.cfi_escape 0x10,0x1b,0xc,0x11,0xb0,0x7f,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1c,0xc,0x11,0xb8,0x7f,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL3781:
/*    379 */	ld1w	{z9.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL3782:
/*    391 */	add	w14, w4, w4
	.loc 13 409 0
..LDL3783:
/*    409 */	add	w11, w4, w4, lsl #2
	.loc 13 397 0
..LDL3784:
/*    397 */	add	w13, w14, w4
	.loc 13 421 0
..LDL3785:
/*    421 */	lsl	w8, w4, 3
	.loc 13 403 0
..LDL3786:
/*    403 */	lsl	w12, w4, 2
	.loc 13 433 0
..LDL3787:
/*    433 */	add	w7, w4, w4, lsl #3
	.loc 13 421 0
..LDL3788:
/*    421 */	sub	w9, w8, w4
	.loc 13 385 0
..LDL3789:
/*    385 */	sxtw	x15, w4
	.loc 13 415 0
..LDL3790:
/*    415 */	add	w10, w13, w13
	.loc 13 439 0
..LDL3791:
/*    439 */	add	w4, w11, w11
	.loc 13 391 0
..LDL3792:
/*    391 */	sxtw	x14, w14
	.loc 13 397 0
..LDL3793:
/*    397 */	sxtw	x13, w13
	.loc 13 403 0
..LDL3794:
/*    403 */	sxtw	x12, w12
	.loc 13 409 0
..LDL3795:
/*    409 */	sxtw	x11, w11
	.loc 13 415 0
..LDL3796:
/*    415 */	sxtw	x10, w10
	.loc 13 421 0
..LDL3797:
/*    421 */	sxtw	x9, w9
	.loc 13 427 0
..LDL3798:
/*    427 */	sxtw	x8, w8
	.loc 13 433 0
..LDL3799:
/*    433 */	sxtw	x7, w7
	.loc 13 439 0
..LDL3800:
/*    439 */	sxtw	x4, w4
	.loc 13 385 0
..LDL3801:
/*    385 */	add	x15, x3, x15, lsl #2
/*    385 */	ld1w	{z27.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL3802:
/*    391 */	add	x14, x3, x14, lsl #2
/*    391 */	ld1w	{z25.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL3803:
/*    397 */	add	x13, x3, x13, lsl #2
/*    397 */	ld1w	{z7.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 403 0
..LDL3804:
/*    403 */	add	x12, x3, x12, lsl #2
/*    403 */	ld1w	{z5.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 409 0
..LDL3805:
/*    409 */	add	x11, x3, x11, lsl #2
/*    409 */	ld1w	{z3.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 415 0
..LDL3806:
/*    415 */	add	x10, x3, x10, lsl #2
/*    415 */	ld1w	{z2.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 421 0
..LDL3807:
/*    421 */	add	x9, x3, x9, lsl #2
/*    421 */	ld1w	{z0.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 427 0
..LDL3808:
/*    427 */	add	x8, x3, x8, lsl #2
/*    427 */	ld1w	{z6.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 433 0
..LDL3809:
/*    433 */	add	x7, x3, x7, lsl #2
/*    433 */	ld1w	{z4.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 439 0
..LDL3810:
/*    439 */	add	x16, x3, x4, lsl #2
/*    439 */	ld1w	{z1.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL3811:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11326
	.loc 13 473 0 is_stmt 0
..LDL3812:
/*    473 */	add	w20, w5, w5
	.loc 13 544 0
..LDL3813:
/*    544 */	sbfiz	x4, x6, 2, 32
	.loc 13 494 0
..LDL3814:
/*    494 */	add	w17, w5, w5, lsl #2
	.loc 13 480 0
..LDL3815:
/*    480 */	add	w25, w20, w5
	.loc 13 508 0
..LDL3816:
/*    508 */	lsl	w18, w5, 3
	.loc 13 487 0
..LDL3817:
/*    487 */	lsl	w6, w5, 2
	.loc 13 522 0
..LDL3818:
/*    522 */	add	w22, w5, w5, lsl #3
	.loc 13 508 0
..LDL3819:
/*    508 */	sub	w21, w18, w5
	.loc 13 466 0
..LDL3820:
/*    466 */	sxtw	x24, w5
	.loc 13 501 0
..LDL3821:
/*    501 */	add	w30, w25, w25
	.loc 13 473 0
..LDL3822:
/*    473 */	sxtw	x23, w20
	.loc 13 529 0
..LDL3823:
/*    529 */	add	w5, w17, w17
	.loc 13 480 0
..LDL3824:
/*    480 */	sxtw	x20, w25
	.loc 13 487 0
..LDL3825:
/*    487 */	sxtw	x6, w6
	.loc 13 529 0
..LDL3826:
/*    529 */	sxtw	x25, w5
	.loc 13 494 0
..LDL3827:
/*    494 */	sxtw	x17, w17
	.loc 13 501 0
..LDL3828:
/*    501 */	sxtw	x30, w30
	.loc 13 508 0
..LDL3829:
/*    508 */	sxtw	x21, w21
	.loc 13 515 0
..LDL3830:
/*    515 */	sxtw	x18, w18
	.loc 13 522 0
..LDL3831:
/*    522 */	sxtw	x22, w22
	.loc 13 459 0
..LDL3832:
/*    459 */	orr	x5, x1, 6917529027641081856
	.loc 13 451 0
..LDL3833:
/*    451 */	cmp	w0, 3
/*    451 */	blt	.L11953
	.loc 13 454 0
..LDL3834:
/*    454 */	orr	x26, x2, 6917529027641081856
	.loc 13 466 0
..LDL3835:
/*    466 */	ldr	s13, [x1, x24, lsl #2]	//  (*)
	.loc 13 545 0
..LDL3836:
/*    545 */	mov	z30.d, z5.d
	.loc 13 459 0
..LDL3837:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 473 0
..LDL3838:
/*    473 */	ldr	s31, [x1, x23, lsl #2]	//  (*)
	.loc 13 545 0
..LDL3839:
/*    545 */	mov	z24.d, z0.d
/*    545 */	mov	z26.d, z2.d
	.loc 13 480 0
..LDL3840:
/*    480 */	ldr	s29, [x1, x20, lsl #2]	//  (*)
	.loc 13 494 0
..LDL3841:
/*    494 */	ldr	s15, [x1, x17, lsl #2]	//  (*)
	.loc 13 545 0
..LDL3842:
/*    545 */	mov	z28.d, z3.d
	.loc 13 487 0
..LDL3843:
/*    487 */	ldr	s5, [x1, x6, lsl #2]	//  (*)
	.loc 13 545 0
..LDL3844:
/*    545 */	mov	z8.d, z7.d
	.loc 13 454 0
..LDL3845:
/*    454 */	prfm	2, [x26, 2560]	//  (*)
	.loc 13 545 0
..LDL3846:
/*    545 */	mov	z10.d, z25.d
/*    545 */	mov	z12.d, z27.d
/*    545 */	mov	z14.d, z9.d
	.p2align 5
.L11324:					// :entr:term:swpl
	.loc 13 454 0
..LDL3847:
/*    454 */	prfm	0, [x26, 512]	//  (*)
	.loc 13 501 0
..LDL3848:
/*    501 */	ldr	s25, [x1, x30, lsl #2]	//  (*)
	.loc 13 454 0
..LDL3849:
/*    454 */	ld1w	{z0.s}, p0/z, [x26, 0, mul vl]	//  (*)
	.loc 13 508 0
..LDL3850:
/*    508 */	ldr	s7, [x1, x21, lsl #2]	//  (*)
	.loc 13 459 0
..LDL3851:
/*    459 */	ld1rw	{z11.s}, p1/z, [x5]	//  (*)
	.loc 13 515 0
..LDL3852:
/*    515 */	ldr	s16, [x1, x18, lsl #2]	//  (*)
	.loc 13 466 0
..LDL3853:
/*    466 */	dup	z13.s, z13.s[0]
	.loc 13 522 0
..LDL3854:
/*    522 */	ldr	s3, [x1, x22, lsl #2]	//  (*)
	.loc 13 473 0
..LDL3855:
/*    473 */	dup	z9.s, z31.s[0]
	.loc 13 529 0
..LDL3856:
/*    529 */	ldr	s2, [x1, x25, lsl #2]	//  (*)
	.loc 13 480 0
..LDL3857:
/*    480 */	dup	z31.s, z29.s[0]
	.loc 13 487 0
..LDL3858:
/*    487 */	dup	z29.s, z5.s[0]
	.loc 13 494 0
..LDL3859:
/*    494 */	dup	z27.s, z15.s[0]
	.loc 13 501 0
..LDL3860:
/*    501 */	dup	z25.s, z25.s[0]
	.loc 13 508 0
..LDL3861:
/*    508 */	dup	z7.s, z7.s[0]
	.loc 13 515 0
..LDL3862:
/*    515 */	dup	z5.s, z16.s[0]
	.loc 13 544 0
..LDL3863:
/*    544 */	add	x28, x2, x4
	.loc 13 522 0
..LDL3864:
/*    522 */	dup	z3.s, z3.s[0]
	.loc 13 454 0
..LDL3865:
/*    454 */	orr	x26, x28, 6917529027641081856
	.loc 13 529 0
..LDL3866:
/*    529 */	dup	z2.s, z2.s[0]
	.loc 13 454 0
..LDL3867:
/*    454 */	prfm	2, [x26, 2560]	//  (*)
	.loc 13 461 0
..LDL3868:
/*    461 */	fmla	z14.s, p0/m, z11.s, z0.s
	.loc 13 543 0
..LDL3869:
/*    543 */	add	x2, x1, 4
	.loc 13 466 0
..LDL3870:
/*    466 */	ldr	s11, [x2, x24, lsl #2]	//  (*)
	.loc 13 468 0
..LDL3871:
/*    468 */	fmla	z12.s, p0/m, z13.s, z0.s
	.loc 13 475 0
..LDL3872:
/*    475 */	fmla	z10.s, p0/m, z9.s, z0.s
	.loc 13 482 0
..LDL3873:
/*    482 */	fmla	z8.s, p0/m, z31.s, z0.s
	.loc 13 473 0
..LDL3874:
/*    473 */	ldr	s31, [x2, x23, lsl #2]	//  (*)
	.loc 13 489 0
..LDL3875:
/*    489 */	fmla	z30.s, p0/m, z29.s, z0.s
	.loc 13 459 0
..LDL3876:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 480 0
..LDL3877:
/*    480 */	ldr	s29, [x2, x20, lsl #2]	//  (*)
	.loc 13 494 0
..LDL3878:
/*    494 */	ldr	s15, [x2, x17, lsl #2]	//  (*)
	.loc 13 496 0
..LDL3879:
/*    496 */	fmla	z28.s, p0/m, z27.s, z0.s
	.loc 13 503 0
..LDL3880:
/*    503 */	fmla	z26.s, p0/m, z25.s, z0.s
	.loc 13 510 0
..LDL3881:
/*    510 */	fmla	z24.s, p0/m, z7.s, z0.s
	.loc 13 517 0
..LDL3882:
/*    517 */	fmla	z6.s, p0/m, z5.s, z0.s
	.loc 13 543 0
..LDL3883:
/*    543 */	add	x27, x5, 4
	.loc 13 487 0
..LDL3884:
/*    487 */	ldr	s5, [x2, x6, lsl #2]	//  (*)
	.loc 13 524 0
..LDL3885:
/*    524 */	fmla	z4.s, p0/m, z3.s, z0.s
	.loc 13 531 0
..LDL3886:
/*    531 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 454 0
..LDL3887:
/*    454 */	prfm	0, [x26, 512]	//  (*)
	.loc 13 501 0
..LDL3888:
/*    501 */	ldr	s25, [x2, x30, lsl #2]	//  (*)
	.loc 13 454 0
..LDL3889:
/*    454 */	ld1w	{z0.s}, p0/z, [x26, 0, mul vl]	//  (*)
	.loc 13 508 0
..LDL3890:
/*    508 */	ldr	s7, [x2, x21, lsl #2]	//  (*)
	.loc 13 459 0
..LDL3891:
/*    459 */	ld1rw	{z13.s}, p1/z, [x27]	//  (*)
	.loc 13 515 0
..LDL3892:
/*    515 */	ldr	s2, [x2, x18, lsl #2]	//  (*)
	.loc 13 466 0
..LDL3893:
/*    466 */	dup	z11.s, z11.s[0]
	.loc 13 522 0
..LDL3894:
/*    522 */	ldr	s3, [x2, x22, lsl #2]	//  (*)
	.loc 13 473 0
..LDL3895:
/*    473 */	dup	z9.s, z31.s[0]
	.loc 13 529 0
..LDL3896:
/*    529 */	ldr	s16, [x2, x25, lsl #2]	//  (*)
	.loc 13 480 0
..LDL3897:
/*    480 */	dup	z31.s, z29.s[0]
	.loc 13 487 0
..LDL3898:
/*    487 */	dup	z29.s, z5.s[0]
	.loc 13 494 0
..LDL3899:
/*    494 */	dup	z27.s, z15.s[0]
	.loc 13 501 0
..LDL3900:
/*    501 */	dup	z25.s, z25.s[0]
	.loc 13 508 0
..LDL3901:
/*    508 */	dup	z7.s, z7.s[0]
	.loc 13 515 0
..LDL3902:
/*    515 */	dup	z5.s, z2.s[0]
	.loc 13 544 0
..LDL3903:
/*    544 */	add	x2, x28, x4
	.loc 13 522 0
..LDL3904:
/*    522 */	dup	z3.s, z3.s[0]
	.loc 13 454 0
..LDL3905:
/*    454 */	orr	x26, x2, 6917529027641081856
	.loc 13 529 0
..LDL3906:
/*    529 */	dup	z2.s, z16.s[0]
	.loc 13 454 0
..LDL3907:
/*    454 */	prfm	2, [x26, 2560]	//  (*)
	.loc 13 459 0
..LDL3908:
/*    459 */	prfm	2, [x27, 2560]	//  (*)
	.loc 13 461 0
..LDL3909:
/*    461 */	fmla	z14.s, p0/m, z13.s, z0.s
	.loc 13 543 0
..LDL3910:
/*    543 */	add	x1, x1, 8
	.loc 13 466 0
..LDL3911:
/*    466 */	ldr	s13, [x1, x24, lsl #2]	//  (*)
	.loc 13 468 0
..LDL3912:
/*    468 */	fmla	z12.s, p0/m, z11.s, z0.s
	.loc 13 459 0
..LDL3913:
/*    459 */	prfm	0, [x27, 512]	//  (*)
	.loc 13 475 0
..LDL3914:
/*    475 */	fmla	z10.s, p0/m, z9.s, z0.s
	.loc 13 482 0
..LDL3915:
/*    482 */	fmla	z8.s, p0/m, z31.s, z0.s
	.loc 13 473 0
..LDL3916:
/*    473 */	ldr	s31, [x1, x23, lsl #2]	//  (*)
	.loc 13 489 0
..LDL3917:
/*    489 */	fmla	z30.s, p0/m, z29.s, z0.s
	.loc 13 480 0
..LDL3918:
/*    480 */	ldr	s29, [x1, x20, lsl #2]	//  (*)
	.loc 13 494 0
..LDL3919:
/*    494 */	ldr	s15, [x1, x17, lsl #2]	//  (*)
	.loc 13 496 0
..LDL3920:
/*    496 */	fmla	z28.s, p0/m, z27.s, z0.s
	.loc 13 503 0
..LDL3921:
/*    503 */	fmla	z26.s, p0/m, z25.s, z0.s
	.loc 13 510 0
..LDL3922:
/*    510 */	fmla	z24.s, p0/m, z7.s, z0.s
	.loc 13 517 0
..LDL3923:
/*    517 */	fmla	z6.s, p0/m, z5.s, z0.s
	.loc 13 543 0
..LDL3924:
/*    543 */	add	x5, x5, 8
	.loc 13 487 0
..LDL3925:
/*    487 */	ldr	s5, [x1, x6, lsl #2]	//  (*)
	.loc 13 524 0
..LDL3926:
/*    524 */	fmla	z4.s, p0/m, z3.s, z0.s
	.loc 13 531 0
..LDL3927:
/*    531 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 545 0
..LDL3928:
/*    545 */	sub	w0, w0, 2
	.loc 13 453 0
..LDL3929:
/*    453 */	cmp	w0, 3
/*    453 */	bge	.L11324
	.loc 13 501 0
..LDL3930:
/*    501 */	ldr	s2, [x1, x30, lsl #2]	//  (*)
	.loc 13 508 0
..LDL3931:
/*    508 */	ldr	s0, [x1, x21, lsl #2]	//  (*)
	.loc 13 466 0
..LDL3932:
/*    466 */	dup	z27.s, z13.s[0]
	.loc 13 544 0
..LDL3933:
/*    544 */	add	x2, x2, x4
	.loc 13 515 0
..LDL3934:
/*    515 */	ldr	s17, [x1, x18, lsl #2]	//  (*)
	.loc 13 522 0
..LDL3935:
/*    522 */	ldr	s18, [x1, x22, lsl #2]	//  (*)
	.loc 13 473 0
..LDL3936:
/*    473 */	dup	z25.s, z31.s[0]
	.loc 13 545 0
..LDL3937:
/*    545 */	sub	w0, w0, 1
	.loc 13 454 0
..LDL3938:
/*    454 */	ld1w	{z11.s}, p0/z, [x26, 0, mul vl]	//  (*)
	.loc 13 529 0
..LDL3939:
/*    529 */	ldr	s16, [x1, x25, lsl #2]	//  (*)
	.loc 13 480 0
..LDL3940:
/*    480 */	dup	z7.s, z29.s[0]
	.loc 13 543 0
..LDL3941:
/*    543 */	add	x1, x1, 4
	.loc 13 459 0
..LDL3942:
/*    459 */	ld1rw	{z9.s}, p1/z, [x5]	//  (*)
	.loc 13 487 0
..LDL3943:
/*    487 */	dup	z5.s, z5.s[0]
	.loc 13 459 0
..LDL3944:
/*    459 */	prfm	2, [x5, 2560]	//  (*)
	.loc 13 494 0
..LDL3945:
/*    494 */	dup	z3.s, z15.s[0]
	.loc 13 459 0
..LDL3946:
/*    459 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 543 0
..LDL3947:
/*    543 */	add	x5, x5, 4
	.loc 13 454 0
..LDL3948:
/*    454 */	prfm	0, [x26, 512]	//  (*)
	.loc 13 501 0
..LDL3949:
/*    501 */	dup	z2.s, z2.s[0]
	.loc 13 508 0
..LDL3950:
/*    508 */	dup	z0.s, z0.s[0]
	.loc 13 515 0
..LDL3951:
/*    515 */	dup	z13.s, z17.s[0]
	.loc 13 522 0
..LDL3952:
/*    522 */	dup	z31.s, z18.s[0]
	.loc 13 529 0
..LDL3953:
/*    529 */	dup	z29.s, z16.s[0]
	.loc 13 468 0
..LDL3954:
/*    468 */	fmad	z27.s, p0/m, z11.s, z12.s
	.loc 13 475 0
..LDL3955:
/*    475 */	fmad	z25.s, p0/m, z11.s, z10.s
	.loc 13 461 0
..LDL3956:
/*    461 */	fmad	z9.s, p0/m, z11.s, z14.s
	.loc 13 482 0
..LDL3957:
/*    482 */	fmad	z7.s, p0/m, z11.s, z8.s
	.loc 13 489 0
..LDL3958:
/*    489 */	fmad	z5.s, p0/m, z11.s, z30.s
	.loc 13 496 0
..LDL3959:
/*    496 */	fmad	z3.s, p0/m, z11.s, z28.s
	.loc 13 503 0
..LDL3960:
/*    503 */	fmad	z2.s, p0/m, z11.s, z26.s
	.loc 13 510 0
..LDL3961:
/*    510 */	fmad	z0.s, p0/m, z11.s, z24.s
	.loc 13 517 0
..LDL3962:
/*    517 */	fmla	z6.s, p0/m, z13.s, z11.s
	.loc 13 524 0
..LDL3963:
/*    524 */	fmla	z4.s, p0/m, z31.s, z11.s
	.loc 13 531 0
..LDL3964:
/*    531 */	fmla	z1.s, p0/m, z29.s, z11.s
	.loc 13 545 0
..LDL3965:
/*    545 */	cbz	w0, .L11950
.L11953:
	.p2align 5
.L11956:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL3966:
/*    454 */	orr	x26, x2, 6917529027641081856
	.loc 13 459 0
..LDL3967:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 466 0
..LDL3968:
/*    466 */	ldr	s31, [x1, x24, lsl #2]	//  (*)
	.loc 13 473 0
..LDL3969:
/*    473 */	ldr	s26, [x1, x23, lsl #2]	//  (*)
	.loc 13 544 0
..LDL3970:
/*    544 */	add	x2, x2, x4
	.loc 13 480 0
..LDL3971:
/*    480 */	ldr	s14, [x1, x20, lsl #2]	//  (*)
	.loc 13 545 0
..LDL3972:
/*    545 */	subs	w0, w0, 1
	.loc 13 454 0
..LDL3973:
/*    454 */	ld1w	{z29.s}, p0/z, [x26, 0, mul vl]	//  (*)
	.loc 13 487 0
..LDL3974:
/*    487 */	ldr	s28, [x1, x6, lsl #2]	//  (*)
	.loc 13 494 0
..LDL3975:
/*    494 */	ldr	s10, [x1, x17, lsl #2]	//  (*)
	.loc 13 501 0
..LDL3976:
/*    501 */	ldr	s13, [x1, x30, lsl #2]	//  (*)
	.loc 13 508 0
..LDL3977:
/*    508 */	ldr	s12, [x1, x21, lsl #2]	//  (*)
	.loc 13 515 0
..LDL3978:
/*    515 */	ldr	s11, [x1, x18, lsl #2]	//  (*)
	.loc 13 522 0
..LDL3979:
/*    522 */	ldr	s8, [x1, x22, lsl #2]	//  (*)
	.loc 13 529 0
..LDL3980:
/*    529 */	ldr	s24, [x1, x25, lsl #2]	//  (*)
	.loc 13 543 0
..LDL3981:
/*    543 */	add	x1, x1, 4
	.loc 13 459 0
..LDL3982:
/*    459 */	ld1rw	{z30.s}, p1/z, [x5]	//  (*)
/*    459 */	prfm	2, [x5, 2560]	//  (*)
/*    459 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 543 0
..LDL3983:
/*    543 */	add	x5, x5, 4
	.loc 13 454 0
..LDL3984:
/*    454 */	prfm	2, [x26, 2560]	//  (*)
/*    454 */	prfm	0, [x26, 512]	//  (*)
	.loc 13 466 0
..LDL3985:
/*    466 */	dup	z31.s, z31.s[0]
	.loc 13 473 0
..LDL3986:
/*    473 */	dup	z26.s, z26.s[0]
	.loc 13 480 0
..LDL3987:
/*    480 */	dup	z14.s, z14.s[0]
	.loc 13 487 0
..LDL3988:
/*    487 */	dup	z28.s, z28.s[0]
	.loc 13 494 0
..LDL3989:
/*    494 */	dup	z10.s, z10.s[0]
	.loc 13 501 0
..LDL3990:
/*    501 */	dup	z13.s, z13.s[0]
	.loc 13 468 0
..LDL3991:
/*    468 */	fmla	z27.s, p0/m, z31.s, z29.s
	.loc 13 508 0
..LDL3992:
/*    508 */	dup	z12.s, z12.s[0]
	.loc 13 475 0
..LDL3993:
/*    475 */	fmla	z25.s, p0/m, z26.s, z29.s
	.loc 13 515 0
..LDL3994:
/*    515 */	dup	z11.s, z11.s[0]
	.loc 13 461 0
..LDL3995:
/*    461 */	fmla	z9.s, p0/m, z30.s, z29.s
	.loc 13 522 0
..LDL3996:
/*    522 */	dup	z31.s, z8.s[0]
	.loc 13 482 0
..LDL3997:
/*    482 */	fmla	z7.s, p0/m, z14.s, z29.s
	.loc 13 529 0
..LDL3998:
/*    529 */	dup	z24.s, z24.s[0]
	.loc 13 489 0
..LDL3999:
/*    489 */	fmla	z5.s, p0/m, z28.s, z29.s
	.loc 13 496 0
..LDL4000:
/*    496 */	fmla	z3.s, p0/m, z10.s, z29.s
	.loc 13 503 0
..LDL4001:
/*    503 */	fmla	z2.s, p0/m, z13.s, z29.s
	.loc 13 510 0
..LDL4002:
/*    510 */	fmla	z0.s, p0/m, z12.s, z29.s
	.loc 13 517 0
..LDL4003:
/*    517 */	fmla	z6.s, p0/m, z11.s, z29.s
	.loc 13 524 0
..LDL4004:
/*    524 */	fmla	z4.s, p0/m, z31.s, z29.s
	.loc 13 531 0
..LDL4005:
/*    531 */	fmla	z1.s, p0/m, z24.s, z29.s
	.loc 13 545 0 is_stmt 0
..LDL4006:
/*    545 */	bne	.L11956
.L11950:
.L11326:
	.loc 13 550 0 is_stmt 1
..LDL4007:
/*    550 */	st1w	{z9.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL4008:
/*    556 */	st1w	{z27.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL4009:
/*    562 */	st1w	{z25.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL4010:
/*    568 */	st1w	{z7.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL4011:
/*    574 */	st1w	{z5.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 580 0
..LDL4012:
/*    580 */	st1w	{z3.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 586 0
..LDL4013:
/*    586 */	st1w	{z2.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 592 0
..LDL4014:
/*    592 */	st1w	{z0.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 598 0
..LDL4015:
/*    598 */	st1w	{z6.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 604 0
..LDL4016:
/*    604 */	st1w	{z4.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 610 0
..LDL4017:
/*    610 */	st1w	{z1.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL4018:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [x29, -64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	ldp	x27, x28, [x29, -80]	//  (*)
	.cfi_restore 27
	.cfi_restore 28
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 12
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D23.pchi:
	.cfi_endproc
.LFE22:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi11ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi11ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi11ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi11ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi11ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi11ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi11ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi11ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL4019:
.LFB23:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -13
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xe8,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 192
/*    ??? */	stp	x25, x26, [x29, -64]	//  (*)
	.cfi_escape 0x10,0x19,0xb,0x11,0x40,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1a,0xb,0x11,0x48,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x50,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x18,0xb,0x11,0x58,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	x27, [x29, -72]	//  (*)
	.cfi_escape 0x10,0x1b,0xc,0x11,0xb8,0x7f,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL4020:
/*    379 */	ld1w	{z0.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL4021:
/*    391 */	add	w10, w4, w4
	.loc 13 385 0
..LDL4022:
/*    385 */	sxtw	x22, w4
	.loc 13 387 0
..LDL4023:
/*    387 */	add	x24, x22, 16
	.loc 13 397 0
..LDL4024:
/*    397 */	add	w12, w10, w4
	.loc 13 421 0
..LDL4025:
/*    421 */	lsl	w11, w4, 3
	.loc 13 385 0
..LDL4026:
/*    ??? */	str	x22, [x19, 8]	//  (*)
	.loc 13 403 0
..LDL4027:
/*    403 */	lsl	w9, w4, 2
	.loc 13 433 0
..LDL4028:
/*    433 */	add	w8, w4, w4, lsl #3
	.loc 13 421 0
..LDL4029:
/*    421 */	sub	w14, w11, w4
	.loc 13 391 0
..LDL4030:
/*    391 */	sxtw	x10, w10
	.loc 13 403 0
..LDL4031:
/*    403 */	sxtw	x9, w9
	.loc 13 427 0
..LDL4032:
/*    427 */	sxtw	x17, w11
	.loc 13 433 0
..LDL4033:
/*    433 */	sxtw	x30, w8
	.loc 13 393 0
..LDL4034:
/*    393 */	add	x11, x10, 16
	.loc 13 405 0
..LDL4035:
/*    405 */	add	x8, x9, 16
	.loc 13 385 0
..LDL4036:
/*    ??? */	ldr	x25, [x19, 8]	//  (*)
	.loc 13 381 0
..LDL4037:
/*    381 */	add	x26, x3, 64
	.loc 13 387 0
..LDL4038:
/*    387 */	add	x24, x3, x24, lsl #2
	.loc 13 415 0
..LDL4039:
/*    415 */	add	w13, w12, w12
	.loc 13 397 0
..LDL4040:
/*    397 */	sxtw	x12, w12
	.loc 13 381 0
..LDL4041:
/*    ??? */	str	x26, [x19, 104]	//  (*)
/*    381 */	ld1w	{z1.s}, p1/z, [x26, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL4042:
/*    391 */	add	x10, x3, x10, lsl #2
	.loc 13 415 0
..LDL4043:
/*    415 */	sxtw	x13, w13
	.loc 13 421 0
..LDL4044:
/*    421 */	sxtw	x15, w14
	.loc 13 387 0
..LDL4045:
/*    ??? */	str	x24, [x19, 96]	//  (*)
	.loc 13 399 0
..LDL4046:
/*    399 */	add	x23, x12, 16
	.loc 13 391 0
..LDL4047:
/*    391 */	ld1w	{z4.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 405 0
..LDL4048:
/*    405 */	add	x8, x3, x8, lsl #2
	.loc 13 417 0
..LDL4049:
/*    417 */	add	x14, x13, 16
	.loc 13 391 0
..LDL4050:
/*    ??? */	str	x10, [x19, 88]	//  (*)
	.loc 13 409 0
..LDL4051:
/*    409 */	add	w7, w4, w4, lsl #2
	.loc 13 387 0
..LDL4052:
/*    387 */	ld1w	{z3.s}, p1/z, [x24, 0, mul vl]	//  (*)
	.loc 13 405 0
..LDL4053:
/*    405 */	ld1w	{z25.s}, p1/z, [x8, 0, mul vl]	//  (*)
/*    ??? */	str	x8, [x19, 64]	//  (*)
	.loc 13 439 0
..LDL4054:
/*    439 */	add	w4, w7, w7
	.loc 13 409 0
..LDL4055:
/*    409 */	sxtw	x7, w7
	.loc 13 439 0
..LDL4056:
/*    439 */	sxtw	x21, w4
	.loc 13 411 0
..LDL4057:
/*    411 */	add	x4, x7, 16
	.loc 13 393 0
..LDL4058:
/*    393 */	add	x10, x3, x11, lsl #2
	.loc 13 441 0
..LDL4059:
/*    441 */	add	x22, x21, 16
	.loc 13 423 0
..LDL4060:
/*    423 */	add	x16, x15, 16
	.loc 13 393 0
..LDL4061:
/*    393 */	ld1w	{z5.s}, p1/z, [x10, 0, mul vl]	//  (*)
	.loc 13 411 0
..LDL4062:
/*    411 */	add	x8, x3, x4, lsl #2
	.loc 13 429 0
..LDL4063:
/*    429 */	add	x18, x17, 16
	.loc 13 397 0
..LDL4064:
/*    397 */	add	x11, x3, x12, lsl #2
	.loc 13 411 0
..LDL4065:
/*    411 */	ld1w	{z27.s}, p1/z, [x8, 0, mul vl]	//  (*)
	.loc 13 435 0
..LDL4066:
/*    435 */	add	x20, x30, 16
	.loc 13 397 0
..LDL4067:
/*    397 */	ld1w	{z6.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 415 0
..LDL4068:
/*    415 */	add	x4, x3, x13, lsl #2
	.loc 13 397 0
..LDL4069:
/*    ??? */	str	x11, [x19, 80]	//  (*)
	.loc 13 403 0
..LDL4070:
/*    403 */	add	x9, x3, x9, lsl #2
	.loc 13 415 0
..LDL4071:
/*    415 */	ld1w	{z28.s}, p0/z, [x4, 0, mul vl]	//  (*)
/*    ??? */	str	x4, [x19, 56]	//  (*)
	.loc 13 403 0
..LDL4072:
/*    403 */	ld1w	{z24.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 417 0
..LDL4073:
/*    417 */	add	x4, x3, x14, lsl #2
	.loc 13 403 0
..LDL4074:
/*    ??? */	str	x9, [x19, 72]	//  (*)
	.loc 13 417 0
..LDL4075:
/*    417 */	ld1w	{z29.s}, p1/z, [x4, 0, mul vl]	//  (*)
/*    ??? */	str	x4, [x19, 48]	//  (*)
	.loc 13 439 0
..LDL4076:
/*    439 */	add	x4, x3, x21, lsl #2
	.loc 13 421 0
..LDL4077:
/*    421 */	add	x9, x3, x15, lsl #2
	.loc 13 439 0
..LDL4078:
/*    439 */	ld1w	{z12.s}, p0/z, [x4, 0, mul vl]	//  (*)
/*    ??? */	str	x4, [x19, 40]	//  (*)
	.loc 13 421 0
..LDL4079:
/*    421 */	ld1w	{z30.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 423 0
..LDL4080:
/*    423 */	add	x12, x3, x16, lsl #2
	.loc 13 385 0
..LDL4081:
/*    385 */	add	x25, x3, x25, lsl #2
	.loc 13 423 0
..LDL4082:
/*    423 */	ld1w	{z31.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 385 0
..LDL4083:
/*    385 */	ld1w	{z2.s}, p0/z, [x25, 0, mul vl]	//  (*)
	.loc 13 399 0
..LDL4084:
/*    399 */	add	x11, x3, x23, lsl #2
/*    399 */	ld1w	{z7.s}, p1/z, [x11, 0, mul vl]	//  (*)
	.loc 13 409 0
..LDL4085:
/*    409 */	add	x7, x3, x7, lsl #2
/*    409 */	ld1w	{z26.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 427 0
..LDL4086:
/*    427 */	add	x13, x3, x17, lsl #2
/*    427 */	ld1w	{z8.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 429 0
..LDL4087:
/*    429 */	add	x14, x3, x18, lsl #2
/*    429 */	ld1w	{z9.s}, p1/z, [x14, 0, mul vl]	//  (*)
	.loc 13 433 0
..LDL4088:
/*    433 */	add	x15, x3, x30, lsl #2
/*    433 */	ld1w	{z10.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 435 0
..LDL4089:
/*    435 */	add	x16, x3, x20, lsl #2
/*    435 */	ld1w	{z11.s}, p1/z, [x16, 0, mul vl]	//  (*)
	.loc 13 441 0
..LDL4090:
/*    441 */	add	x4, x3, x22, lsl #2
/*    441 */	ld1w	{z13.s}, p1/z, [x4, 0, mul vl]	//  (*)
/*    ??? */	str	x4, [x19, 32]	//  (*)
	.loc 13 451 0
..LDL4091:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11334
	.loc 13 473 0 is_stmt 0
..LDL4092:
/*    473 */	add	w22, w5, w5
	.loc 13 494 0
..LDL4093:
/*    494 */	add	w18, w5, w5, lsl #2
	.loc 13 480 0
..LDL4094:
/*    480 */	add	w24, w22, w5
	.loc 13 508 0
..LDL4095:
/*    508 */	lsl	w21, w5, 3
	.loc 13 487 0
..LDL4096:
/*    487 */	lsl	w23, w5, 2
	.loc 13 522 0
..LDL4097:
/*    522 */	add	w17, w5, w5, lsl #3
	.loc 13 508 0
..LDL4098:
/*    508 */	sub	w20, w21, w5
	.loc 13 466 0
..LDL4099:
/*    466 */	sxtw	x4, w5
	.loc 13 501 0
..LDL4100:
/*    501 */	add	w30, w24, w24
	.loc 13 473 0
..LDL4101:
/*    473 */	sxtw	x5, w22
	.loc 13 544 0
..LDL4102:
/*    544 */	sbfiz	x6, x6, 2, 32
	.loc 13 473 0
..LDL4103:
/*    ??? */	str	x5, [x19, 16]	//  (*)
	.loc 13 480 0
..LDL4104:
/*    480 */	sxtw	x5, w24
	.loc 13 466 0
..LDL4105:
/*    ??? */	str	x4, [x19, 24]	//  (*)
	.loc 13 487 0
..LDL4106:
/*    487 */	sxtw	x22, w23
	.loc 13 529 0
..LDL4107:
/*    529 */	add	w4, w18, w18
	.loc 13 522 0
..LDL4108:
/*    522 */	sxtw	x23, w17
	.loc 13 494 0
..LDL4109:
/*    494 */	sxtw	x18, w18
	.loc 13 529 0
..LDL4110:
/*    529 */	sxtw	x17, w4
	.loc 13 501 0
..LDL4111:
/*    501 */	sxtw	x30, w30
	.loc 13 508 0
..LDL4112:
/*    508 */	sxtw	x20, w20
	.loc 13 515 0
..LDL4113:
/*    515 */	sxtw	x21, w21
	.loc 13 459 0
..LDL4114:
/*    459 */	orr	x4, x1, 6917529027641081856
/*    ??? */	ldp	x24, x26, [x19, 16]	//  (*)
	.p2align 5
.L11332:					// :entr:term
	.loc 13 454 0 is_stmt 1
..LDL4115:
/*    454 */	orr	x27, x2, 6917529027641081856
	.loc 13 459 0
..LDL4116:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 515 0
..LDL4117:
/*    515 */	ldr	s19, [x1, x21, lsl #2]	//  (*)
	.loc 13 454 0
..LDL4118:
/*    454 */	prfm	2, [x27, 2560]	//  (*)
/*    454 */	ld1w	{z16.s}, p0/z, [x27, 0, mul vl]	//  (*)
	.loc 13 545 0
..LDL4119:
/*    545 */	subs	w0, w0, 1
	.loc 13 454 0
..LDL4120:
/*    454 */	prfm	0, [x27, 512]	//  (*)
	.loc 13 456 0
..LDL4121:
/*    456 */	add	x27, x2, 64
	.loc 13 522 0
..LDL4122:
/*    522 */	ldr	s17, [x1, x23, lsl #2]	//  (*)
	.loc 13 544 0
..LDL4123:
/*    544 */	add	x2, x2, x6
	.loc 13 456 0
..LDL4124:
/*    456 */	ld1w	{z14.s}, p1/z, [x27, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL4125:
/*    459 */	ld1rw	{z15.s}, p2/z, [x4]	//  (*)
/*    459 */	prfm	2, [x4, 2560]	//  (*)
/*    459 */	prfm	0, [x4, 512]	//  (*)
	.loc 13 543 0
..LDL4126:
/*    543 */	add	x4, x4, 4
	.loc 13 522 0
..LDL4127:
/*    522 */	dup	z17.s, z17.s[0]
	.loc 13 461 0
..LDL4128:
/*    461 */	fmla	z0.s, p0/m, z15.s, z16.s
	.loc 13 463 0
..LDL4129:
/*    463 */	fmla	z1.s, p1/m, z15.s, z14.s
	.loc 13 466 0
..LDL4130:
/*    466 */	ldr	s15, [x1, x26, lsl #2]	//  (*)
	.loc 13 524 0
..LDL4131:
/*    524 */	fmla	z10.s, p0/m, z17.s, z16.s
	.loc 13 526 0
..LDL4132:
/*    526 */	fmla	z11.s, p1/m, z17.s, z14.s
	.loc 13 466 0
..LDL4133:
/*    466 */	dup	z15.s, z15.s[0]
	.loc 13 468 0
..LDL4134:
/*    468 */	fmla	z2.s, p0/m, z15.s, z16.s
	.loc 13 470 0
..LDL4135:
/*    470 */	fmla	z3.s, p1/m, z15.s, z14.s
	.loc 13 473 0
..LDL4136:
/*    473 */	ldr	s15, [x1, x24, lsl #2]	//  (*)
/*    473 */	dup	z15.s, z15.s[0]
	.loc 13 475 0
..LDL4137:
/*    475 */	fmla	z4.s, p0/m, z15.s, z16.s
	.loc 13 477 0
..LDL4138:
/*    477 */	fmla	z5.s, p1/m, z15.s, z14.s
	.loc 13 480 0
..LDL4139:
/*    480 */	ldr	s15, [x1, x5, lsl #2]	//  (*)
/*    480 */	dup	z15.s, z15.s[0]
	.loc 13 482 0
..LDL4140:
/*    482 */	fmla	z6.s, p0/m, z15.s, z16.s
	.loc 13 484 0
..LDL4141:
/*    484 */	fmla	z7.s, p1/m, z15.s, z14.s
	.loc 13 487 0
..LDL4142:
/*    487 */	ldr	s15, [x1, x22, lsl #2]	//  (*)
/*    487 */	dup	z15.s, z15.s[0]
	.loc 13 489 0
..LDL4143:
/*    489 */	fmla	z24.s, p0/m, z15.s, z16.s
	.loc 13 491 0
..LDL4144:
/*    491 */	fmla	z25.s, p1/m, z15.s, z14.s
	.loc 13 494 0
..LDL4145:
/*    494 */	ldr	s15, [x1, x18, lsl #2]	//  (*)
/*    494 */	dup	z15.s, z15.s[0]
	.loc 13 496 0
..LDL4146:
/*    496 */	fmla	z26.s, p0/m, z15.s, z16.s
	.loc 13 498 0
..LDL4147:
/*    498 */	fmla	z27.s, p1/m, z15.s, z14.s
	.loc 13 501 0
..LDL4148:
/*    501 */	ldr	s15, [x1, x30, lsl #2]	//  (*)
/*    501 */	dup	z15.s, z15.s[0]
	.loc 13 503 0
..LDL4149:
/*    503 */	fmla	z28.s, p0/m, z15.s, z16.s
	.loc 13 505 0
..LDL4150:
/*    505 */	fmla	z29.s, p1/m, z15.s, z14.s
	.loc 13 508 0
..LDL4151:
/*    508 */	ldr	s15, [x1, x20, lsl #2]	//  (*)
/*    508 */	dup	z18.s, z15.s[0]
	.loc 13 529 0
..LDL4152:
/*    529 */	ldr	s15, [x1, x17, lsl #2]	//  (*)
	.loc 13 543 0
..LDL4153:
/*    543 */	add	x1, x1, 4
	.loc 13 510 0
..LDL4154:
/*    510 */	fmla	z30.s, p0/m, z18.s, z16.s
	.loc 13 512 0
..LDL4155:
/*    512 */	fmla	z31.s, p1/m, z18.s, z14.s
	.loc 13 515 0
..LDL4156:
/*    515 */	dup	z18.s, z19.s[0]
	.loc 13 529 0
..LDL4157:
/*    529 */	dup	z15.s, z15.s[0]
	.loc 13 517 0
..LDL4158:
/*    517 */	fmla	z8.s, p0/m, z18.s, z16.s
	.loc 13 519 0
..LDL4159:
/*    519 */	fmla	z9.s, p1/m, z18.s, z14.s
	.loc 13 531 0
..LDL4160:
/*    531 */	fmla	z12.s, p0/m, z15.s, z16.s
	.loc 13 533 0
..LDL4161:
/*    533 */	fmla	z13.s, p1/m, z15.s, z14.s
	.loc 13 545 0
..LDL4162:
/*    545 */	bne	.L11332
.L11334:
	.loc 13 550 0
..LDL4163:
/*    550 */	st1w	{z0.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 552 0
..LDL4164:
/*    ??? */	ldr	x0, [x19, 104]	//  (*)
/*    552 */	st1w	{z1.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL4165:
/*    556 */	st1w	{z2.s}, p0, [x25, 0, mul vl]	//  (*)
	.loc 13 558 0
..LDL4166:
/*    ??? */	ldr	x0, [x19, 96]	//  (*)
/*    558 */	st1w	{z3.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL4167:
/*    ??? */	ldr	x0, [x19, 88]	//  (*)
/*    562 */	st1w	{z4.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 564 0
..LDL4168:
/*    564 */	st1w	{z5.s}, p1, [x10, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL4169:
/*    ??? */	ldr	x0, [x19, 80]	//  (*)
/*    568 */	st1w	{z6.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 570 0
..LDL4170:
/*    570 */	st1w	{z7.s}, p1, [x11, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL4171:
/*    ??? */	ldr	x0, [x19, 72]	//  (*)
/*    574 */	st1w	{z24.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 576 0
..LDL4172:
/*    ??? */	ldr	x0, [x19, 64]	//  (*)
/*    576 */	st1w	{z25.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 580 0
..LDL4173:
/*    580 */	st1w	{z26.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 582 0
..LDL4174:
/*    582 */	st1w	{z27.s}, p1, [x8, 0, mul vl]	//  (*)
	.loc 13 586 0
..LDL4175:
/*    ??? */	ldr	x0, [x19, 56]	//  (*)
/*    586 */	st1w	{z28.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 588 0
..LDL4176:
/*    ??? */	ldr	x0, [x19, 48]	//  (*)
/*    588 */	st1w	{z29.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 592 0
..LDL4177:
/*    592 */	st1w	{z30.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 594 0
..LDL4178:
/*    594 */	st1w	{z31.s}, p1, [x12, 0, mul vl]	//  (*)
	.loc 13 598 0
..LDL4179:
/*    598 */	st1w	{z8.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 600 0
..LDL4180:
/*    600 */	st1w	{z9.s}, p1, [x14, 0, mul vl]	//  (*)
	.loc 13 604 0
..LDL4181:
/*    604 */	st1w	{z10.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 606 0
..LDL4182:
/*    606 */	st1w	{z11.s}, p1, [x16, 0, mul vl]	//  (*)
	.loc 13 610 0
..LDL4183:
/*    ??? */	ldr	x0, [x19, 40]	//  (*)
/*    610 */	st1w	{z12.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 612 0
..LDL4184:
/*    ??? */	ldr	x0, [x19, 32]	//  (*)
/*    612 */	st1w	{z13.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL4185:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [x29, -64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	ldr	x27, [x29, -72]	//  (*)
	.cfi_restore 27
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 13
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D24.pchi:
	.cfi_endproc
.LFE23:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi11ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi11ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi12ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi12ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi12ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi12ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi12ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi12ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL4186:
.LFB24:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -14
/*    620 */	mov	x15, x2
/*    620 */	mov	x11, x1
/*    620 */	mov	w18, w0
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	mov	x30, x3
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xf0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 112
/*    ??? */	stp	x25, x26, [x29, -64]	//  (*)
	.cfi_escape 0x10,0x19,0xb,0x11,0x40,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1a,0xb,0x11,0x48,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x50,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x18,0xb,0x11,0x58,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	x27, [x29, -72]	//  (*)
	.cfi_escape 0x10,0x1b,0xc,0x11,0xb8,0x7f,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z20, [x29, 13, mul vl]	//  (*)
	.cfi_escape 0x10,0x74,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL4187:
/*    379 */	ld1w	{z10.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL4188:
/*    391 */	add	w12, w4, w4
	.loc 13 409 0
..LDL4189:
/*    409 */	add	w8, w4, w4, lsl #2
	.loc 13 397 0
..LDL4190:
/*    397 */	add	w10, w12, w4
	.loc 13 421 0
..LDL4191:
/*    421 */	lsl	w0, w4, 3
	.loc 13 433 0
..LDL4192:
/*    433 */	add	w2, w4, w4, lsl #3
	.loc 13 445 0
..LDL4193:
/*    445 */	lsl	w14, w10, 2
	.loc 13 403 0
..LDL4194:
/*    403 */	lsl	w9, w4, 2
	.loc 13 421 0
..LDL4195:
/*    421 */	sub	w3, w0, w4
	.loc 13 385 0
..LDL4196:
/*    385 */	sxtw	x13, w4
	.loc 13 445 0
..LDL4197:
/*    445 */	sub	w14, w14, w4
	.loc 13 415 0
..LDL4198:
/*    415 */	add	w7, w10, w10
	.loc 13 421 0
..LDL4199:
/*    421 */	sxtw	x4, w3
	.loc 13 439 0
..LDL4200:
/*    439 */	add	w1, w8, w8
	.loc 13 391 0
..LDL4201:
/*    391 */	sxtw	x12, w12
	.loc 13 397 0
..LDL4202:
/*    397 */	sxtw	x10, w10
	.loc 13 427 0
..LDL4203:
/*    427 */	sxtw	x3, w0
	.loc 13 403 0
..LDL4204:
/*    403 */	sxtw	x9, w9
	.loc 13 409 0
..LDL4205:
/*    409 */	sxtw	x8, w8
	.loc 13 415 0
..LDL4206:
/*    415 */	sxtw	x7, w7
	.loc 13 433 0
..LDL4207:
/*    433 */	sxtw	x2, w2
	.loc 13 439 0
..LDL4208:
/*    439 */	sxtw	x1, w1
	.loc 13 445 0
..LDL4209:
/*    445 */	sxtw	x0, w14
	.loc 13 391 0
..LDL4210:
/*    391 */	add	x12, x30, x12, lsl #2
	.loc 13 385 0
..LDL4211:
/*    385 */	add	x20, x30, x13, lsl #2
	.loc 13 391 0
..LDL4212:
/*    391 */	ld1w	{z9.s}, p0/z, [x12, 0, mul vl]	//  (*)
/*    ??? */	str	x12, [x19, 24]	//  (*)
	.loc 13 385 0
..LDL4213:
/*    385 */	ld1w	{z11.s}, p0/z, [x20, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL4214:
/*    397 */	add	x23, x30, x10, lsl #2
/*    397 */	ld1w	{z8.s}, p0/z, [x23, 0, mul vl]	//  (*)
	.loc 13 403 0
..LDL4215:
/*    403 */	add	x27, x30, x9, lsl #2
/*    403 */	ld1w	{z31.s}, p0/z, [x27, 0, mul vl]	//  (*)
	.loc 13 409 0
..LDL4216:
/*    409 */	add	x25, x30, x8, lsl #2
/*    409 */	ld1w	{z30.s}, p0/z, [x25, 0, mul vl]	//  (*)
	.loc 13 415 0
..LDL4217:
/*    415 */	add	x22, x30, x7, lsl #2
/*    415 */	ld1w	{z27.s}, p0/z, [x22, 0, mul vl]	//  (*)
	.loc 13 421 0
..LDL4218:
/*    421 */	add	x21, x30, x4, lsl #2
/*    421 */	ld1w	{z25.s}, p0/z, [x21, 0, mul vl]	//  (*)
	.loc 13 427 0
..LDL4219:
/*    427 */	add	x3, x30, x3, lsl #2
/*    427 */	ld1w	{z7.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 433 0
..LDL4220:
/*    433 */	add	x2, x30, x2, lsl #2
	.loc 13 427 0
..LDL4221:
/*    ??? */	str	x3, [x19, 16]	//  (*)
	.loc 13 433 0
..LDL4222:
/*    433 */	ld1w	{z5.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 439 0
..LDL4223:
/*    439 */	add	x26, x30, x1, lsl #2
	.loc 13 433 0
..LDL4224:
/*    ??? */	str	x2, [x19, 8]	//  (*)
	.loc 13 439 0
..LDL4225:
/*    439 */	ld1w	{z3.s}, p0/z, [x26, 0, mul vl]	//  (*)
	.loc 13 445 0
..LDL4226:
/*    445 */	add	x24, x30, x0, lsl #2
/*    445 */	ld1w	{z1.s}, p0/z, [x24, 0, mul vl]	//  (*)
	.loc 13 451 0
..LDL4227:
/*    451 */	cmp	w18, 0
/*    451 */	ble	.L11342
	.loc 13 473 0 is_stmt 0
..LDL4228:
/*    473 */	add	w7, w5, w5
	.loc 13 544 0
..LDL4229:
/*    544 */	sbfiz	x13, x6, 2, 32
	.loc 13 480 0
..LDL4230:
/*    480 */	add	w8, w7, w5
	.loc 13 494 0
..LDL4231:
/*    494 */	add	w10, w5, w5, lsl #2
	.loc 13 508 0
..LDL4232:
/*    508 */	lsl	w1, w5, 3
	.loc 13 536 0
..LDL4233:
/*    536 */	lsl	w4, w8, 2
	.loc 13 501 0
..LDL4234:
/*    501 */	add	w0, w8, w8
	.loc 13 487 0
..LDL4235:
/*    487 */	lsl	w9, w5, 2
	.loc 13 522 0
..LDL4236:
/*    522 */	add	w2, w5, w5, lsl #3
	.loc 13 508 0
..LDL4237:
/*    508 */	sub	w14, w1, w5
	.loc 13 529 0
..LDL4238:
/*    529 */	add	w3, w10, w10
	.loc 13 466 0
..LDL4239:
/*    466 */	sxtw	x6, w5
	.loc 13 536 0
..LDL4240:
/*    536 */	sub	w4, w4, w5
	.loc 13 494 0
..LDL4241:
/*    494 */	sxtw	x17, w10
	.loc 13 501 0
..LDL4242:
/*    501 */	sxtw	x12, w0
	.loc 13 473 0
..LDL4243:
/*    473 */	sxtw	x7, w7
	.loc 13 480 0
..LDL4244:
/*    480 */	sxtw	x8, w8
	.loc 13 487 0
..LDL4245:
/*    487 */	sxtw	x9, w9
	.loc 13 508 0
..LDL4246:
/*    508 */	sxtw	x0, w14
	.loc 13 515 0
..LDL4247:
/*    515 */	sxtw	x1, w1
	.loc 13 522 0
..LDL4248:
/*    522 */	sxtw	x2, w2
	.loc 13 529 0
..LDL4249:
/*    529 */	sxtw	x3, w3
	.loc 13 536 0
..LDL4250:
/*    536 */	sxtw	x4, w4
	.loc 13 459 0
..LDL4251:
/*    459 */	orr	x10, x11, 6917529027641081856
	.loc 13 544 0
..LDL4252:
/*    544 */	mov	x5, x13
	.loc 13 451 0
..LDL4253:
/*    451 */	cmp	w18, 3
/*    451 */	blt	.L11964
	.loc 13 454 0
..LDL4254:
/*    454 */	orr	x14, x15, 6917529027641081856
	.loc 13 466 0
..LDL4255:
/*    466 */	ldr	s12, [x11, x6, lsl #2]	//  (*)
	.loc 13 473 0
..LDL4256:
/*    473 */	ldr	s13, [x11, x7, lsl #2]	//  (*)
	.loc 13 459 0
..LDL4257:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 480 0
..LDL4258:
/*    480 */	ldr	s15, [x11, x8, lsl #2]	//  (*)
	.loc 13 487 0
..LDL4259:
/*    487 */	ldr	s29, [x11, x9, lsl #2]	//  (*)
	.loc 13 501 0
..LDL4260:
/*    501 */	ldr	s14, [x11, x12, lsl #2]	//  (*)
	.loc 13 494 0
..LDL4261:
/*    494 */	ldr	s6, [x11, x17, lsl #2]	//  (*)
	.loc 13 454 0
..LDL4262:
/*    454 */	prfm	2, [x14, 2560]	//  (*)
	.p2align 5
.L11340:					// :entr:term:swpl
/*    454 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 508 0
..LDL4263:
/*    508 */	ldr	s24, [x11, x0, lsl #2]	//  (*)
	.loc 13 454 0
..LDL4264:
/*    454 */	ld1w	{z0.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 515 0
..LDL4265:
/*    515 */	ldr	s4, [x11, x1, lsl #2]	//  (*)
	.loc 13 459 0
..LDL4266:
/*    459 */	ld1rw	{z16.s}, p1/z, [x10]	//  (*)
	.loc 13 466 0
..LDL4267:
/*    466 */	dup	z19.s, z12.s[0]
	.loc 13 522 0
..LDL4268:
/*    522 */	ldr	s20, [x11, x2, lsl #2]	//  (*)
	.loc 13 473 0
..LDL4269:
/*    473 */	dup	z17.s, z13.s[0]
	.loc 13 529 0
..LDL4270:
/*    529 */	ldr	s2, [x11, x3, lsl #2]	//  (*)
	.loc 13 480 0
..LDL4271:
/*    480 */	dup	z15.s, z15.s[0]
	.loc 13 536 0
..LDL4272:
/*    536 */	ldr	s12, [x11, x4, lsl #2]	//  (*)
	.loc 13 487 0
..LDL4273:
/*    487 */	dup	z18.s, z29.s[0]
	.loc 13 494 0
..LDL4274:
/*    494 */	dup	z29.s, z6.s[0]
	.loc 13 501 0
..LDL4275:
/*    501 */	dup	z28.s, z14.s[0]
	.loc 13 508 0
..LDL4276:
/*    508 */	dup	z26.s, z24.s[0]
	.loc 13 515 0
..LDL4277:
/*    515 */	dup	z24.s, z4.s[0]
	.loc 13 544 0
..LDL4278:
/*    544 */	add	x14, x15, x5
	.loc 13 522 0
..LDL4279:
/*    522 */	dup	z6.s, z20.s[0]
	.loc 13 454 0
..LDL4280:
/*    454 */	orr	x16, x14, 6917529027641081856
	.loc 13 529 0
..LDL4281:
/*    529 */	dup	z4.s, z2.s[0]
	.loc 13 454 0
..LDL4282:
/*    454 */	prfm	2, [x16, 2560]	//  (*)
	.loc 13 543 0
..LDL4283:
/*    543 */	add	x15, x11, 4
	.loc 13 536 0
..LDL4284:
/*    536 */	dup	z2.s, z12.s[0]
	.loc 13 466 0
..LDL4285:
/*    466 */	ldr	s12, [x15, x6, lsl #2]	//  (*)
	.loc 13 468 0
..LDL4286:
/*    468 */	fmla	z11.s, p0/m, z19.s, z0.s
	.loc 13 461 0
..LDL4287:
/*    461 */	fmla	z10.s, p0/m, z16.s, z0.s
	.loc 13 473 0
..LDL4288:
/*    473 */	ldr	s13, [x15, x7, lsl #2]	//  (*)
	.loc 13 475 0
..LDL4289:
/*    475 */	fmla	z9.s, p0/m, z17.s, z0.s
	.loc 13 482 0
..LDL4290:
/*    482 */	fmla	z8.s, p0/m, z15.s, z0.s
	.loc 13 489 0
..LDL4291:
/*    489 */	fmla	z31.s, p0/m, z18.s, z0.s
	.loc 13 480 0
..LDL4292:
/*    480 */	ldr	s14, [x15, x8, lsl #2]	//  (*)
	.loc 13 496 0
..LDL4293:
/*    496 */	fmad	z29.s, p0/m, z0.s, z30.s
	.loc 13 459 0
..LDL4294:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 487 0
..LDL4295:
/*    487 */	ldr	s30, [x15, x9, lsl #2]	//  (*)
	.loc 13 501 0
..LDL4296:
/*    501 */	ldr	s16, [x15, x12, lsl #2]	//  (*)
	.loc 13 503 0
..LDL4297:
/*    503 */	fmad	z28.s, p0/m, z0.s, z27.s
	.loc 13 510 0
..LDL4298:
/*    510 */	fmad	z26.s, p0/m, z0.s, z25.s
	.loc 13 517 0
..LDL4299:
/*    517 */	fmad	z24.s, p0/m, z0.s, z7.s
	.loc 13 524 0
..LDL4300:
/*    524 */	fmad	z6.s, p0/m, z0.s, z5.s
	.loc 13 543 0
..LDL4301:
/*    543 */	add	x13, x10, 4
	.loc 13 494 0
..LDL4302:
/*    494 */	ldr	s5, [x15, x17, lsl #2]	//  (*)
	.loc 13 531 0
..LDL4303:
/*    531 */	fmad	z4.s, p0/m, z0.s, z3.s
	.loc 13 538 0
..LDL4304:
/*    538 */	fmad	z2.s, p0/m, z0.s, z1.s
	.loc 13 454 0
..LDL4305:
/*    454 */	prfm	0, [x16, 512]	//  (*)
	.loc 13 508 0
..LDL4306:
/*    508 */	ldr	s7, [x15, x0, lsl #2]	//  (*)
	.loc 13 454 0
..LDL4307:
/*    454 */	ld1w	{z0.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 515 0
..LDL4308:
/*    515 */	ldr	s3, [x15, x1, lsl #2]	//  (*)
	.loc 13 459 0
..LDL4309:
/*    459 */	ld1rw	{z17.s}, p1/z, [x13]	//  (*)
	.loc 13 466 0
..LDL4310:
/*    466 */	dup	z19.s, z12.s[0]
	.loc 13 522 0
..LDL4311:
/*    522 */	ldr	s20, [x15, x2, lsl #2]	//  (*)
	.loc 13 473 0
..LDL4312:
/*    473 */	dup	z18.s, z13.s[0]
	.loc 13 529 0
..LDL4313:
/*    529 */	ldr	s12, [x15, x3, lsl #2]	//  (*)
	.loc 13 480 0
..LDL4314:
/*    480 */	dup	z14.s, z14.s[0]
	.loc 13 536 0
..LDL4315:
/*    536 */	ldr	s1, [x15, x4, lsl #2]	//  (*)
	.loc 13 487 0
..LDL4316:
/*    487 */	dup	z15.s, z30.s[0]
	.loc 13 494 0
..LDL4317:
/*    494 */	dup	z30.s, z5.s[0]
	.loc 13 501 0
..LDL4318:
/*    501 */	dup	z27.s, z16.s[0]
	.loc 13 508 0
..LDL4319:
/*    508 */	dup	z25.s, z7.s[0]
	.loc 13 515 0
..LDL4320:
/*    515 */	dup	z7.s, z3.s[0]
	.loc 13 544 0
..LDL4321:
/*    544 */	add	x15, x14, x5
	.loc 13 522 0
..LDL4322:
/*    522 */	dup	z5.s, z20.s[0]
	.loc 13 454 0
..LDL4323:
/*    454 */	orr	x14, x15, 6917529027641081856
	.loc 13 529 0
..LDL4324:
/*    529 */	dup	z3.s, z12.s[0]
	.loc 13 454 0
..LDL4325:
/*    454 */	prfm	2, [x14, 2560]	//  (*)
	.loc 13 543 0
..LDL4326:
/*    543 */	add	x11, x11, 8
	.loc 13 536 0
..LDL4327:
/*    536 */	dup	z1.s, z1.s[0]
	.loc 13 459 0
..LDL4328:
/*    459 */	prfm	2, [x13, 2560]	//  (*)
	.loc 13 466 0
..LDL4329:
/*    466 */	ldr	s12, [x11, x6, lsl #2]	//  (*)
	.loc 13 468 0
..LDL4330:
/*    468 */	fmla	z11.s, p0/m, z19.s, z0.s
	.loc 13 461 0
..LDL4331:
/*    461 */	fmla	z10.s, p0/m, z17.s, z0.s
	.loc 13 473 0
..LDL4332:
/*    473 */	ldr	s13, [x11, x7, lsl #2]	//  (*)
	.loc 13 475 0
..LDL4333:
/*    475 */	fmla	z9.s, p0/m, z18.s, z0.s
	.loc 13 459 0
..LDL4334:
/*    459 */	prfm	0, [x13, 512]	//  (*)
	.loc 13 482 0
..LDL4335:
/*    482 */	fmla	z8.s, p0/m, z14.s, z0.s
	.loc 13 489 0
..LDL4336:
/*    489 */	fmla	z31.s, p0/m, z15.s, z0.s
	.loc 13 480 0
..LDL4337:
/*    480 */	ldr	s15, [x11, x8, lsl #2]	//  (*)
	.loc 13 496 0
..LDL4338:
/*    496 */	fmad	z30.s, p0/m, z0.s, z29.s
	.loc 13 487 0
..LDL4339:
/*    487 */	ldr	s29, [x11, x9, lsl #2]	//  (*)
	.loc 13 501 0
..LDL4340:
/*    501 */	ldr	s14, [x11, x12, lsl #2]	//  (*)
	.loc 13 503 0
..LDL4341:
/*    503 */	fmad	z27.s, p0/m, z0.s, z28.s
	.loc 13 510 0
..LDL4342:
/*    510 */	fmad	z25.s, p0/m, z0.s, z26.s
	.loc 13 517 0
..LDL4343:
/*    517 */	fmad	z7.s, p0/m, z0.s, z24.s
	.loc 13 524 0
..LDL4344:
/*    524 */	fmad	z5.s, p0/m, z0.s, z6.s
	.loc 13 543 0
..LDL4345:
/*    543 */	add	x10, x10, 8
	.loc 13 494 0
..LDL4346:
/*    494 */	ldr	s6, [x11, x17, lsl #2]	//  (*)
	.loc 13 531 0
..LDL4347:
/*    531 */	fmad	z3.s, p0/m, z0.s, z4.s
	.loc 13 538 0
..LDL4348:
/*    538 */	fmad	z1.s, p0/m, z0.s, z2.s
	.loc 13 545 0
..LDL4349:
/*    545 */	sub	w18, w18, 2
	.loc 13 453 0
..LDL4350:
/*    453 */	cmp	w18, 3
/*    453 */	bge	.L11340
	.loc 13 466 0
..LDL4351:
/*    466 */	dup	z18.s, z12.s[0]
	.loc 13 522 0
..LDL4352:
/*    522 */	ldr	s2, [x11, x2, lsl #2]	//  (*)
	.loc 13 544 0
..LDL4353:
/*    544 */	add	x15, x15, x5
	.loc 13 545 0
..LDL4354:
/*    545 */	sub	w18, w18, 1
	.loc 13 508 0
..LDL4355:
/*    508 */	ldr	s26, [x11, x0, lsl #2]	//  (*)
	.loc 13 473 0
..LDL4356:
/*    473 */	dup	z16.s, z13.s[0]
	.loc 13 515 0
..LDL4357:
/*    515 */	ldr	s24, [x11, x1, lsl #2]	//  (*)
	.loc 13 487 0
..LDL4358:
/*    487 */	dup	z12.s, z29.s[0]
	.loc 13 529 0
..LDL4359:
/*    529 */	ldr	s4, [x11, x3, lsl #2]	//  (*)
	.loc 13 480 0
..LDL4360:
/*    480 */	dup	z13.s, z15.s[0]
	.loc 13 536 0
..LDL4361:
/*    536 */	ldr	s15, [x11, x4, lsl #2]	//  (*)
	.loc 13 494 0
..LDL4362:
/*    494 */	dup	z29.s, z6.s[0]
	.loc 13 543 0
..LDL4363:
/*    543 */	add	x11, x11, 4
	.loc 13 454 0
..LDL4364:
/*    454 */	ld1w	{z0.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL4365:
/*    459 */	ld1rw	{z17.s}, p1/z, [x10]	//  (*)
	.loc 13 501 0
..LDL4366:
/*    501 */	dup	z28.s, z14.s[0]
	.loc 13 459 0
..LDL4367:
/*    459 */	prfm	2, [x10, 2560]	//  (*)
/*    459 */	prfm	0, [x10, 512]	//  (*)
	.loc 13 543 0
..LDL4368:
/*    543 */	add	x10, x10, 4
	.loc 13 454 0
..LDL4369:
/*    454 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 522 0
..LDL4370:
/*    522 */	dup	z6.s, z2.s[0]
	.loc 13 508 0
..LDL4371:
/*    508 */	dup	z26.s, z26.s[0]
	.loc 13 515 0
..LDL4372:
/*    515 */	dup	z24.s, z24.s[0]
	.loc 13 529 0
..LDL4373:
/*    529 */	dup	z4.s, z4.s[0]
	.loc 13 536 0
..LDL4374:
/*    536 */	dup	z2.s, z15.s[0]
	.loc 13 468 0
..LDL4375:
/*    468 */	fmla	z11.s, p0/m, z18.s, z0.s
	.loc 13 461 0
..LDL4376:
/*    461 */	fmla	z10.s, p0/m, z17.s, z0.s
	.loc 13 475 0
..LDL4377:
/*    475 */	fmla	z9.s, p0/m, z16.s, z0.s
	.loc 13 482 0
..LDL4378:
/*    482 */	fmla	z8.s, p0/m, z13.s, z0.s
	.loc 13 489 0
..LDL4379:
/*    489 */	fmla	z31.s, p0/m, z12.s, z0.s
	.loc 13 496 0
..LDL4380:
/*    496 */	fmla	z30.s, p0/m, z29.s, z0.s
	.loc 13 503 0
..LDL4381:
/*    503 */	fmla	z27.s, p0/m, z28.s, z0.s
	.loc 13 510 0
..LDL4382:
/*    510 */	fmla	z25.s, p0/m, z26.s, z0.s
	.loc 13 517 0
..LDL4383:
/*    517 */	fmla	z7.s, p0/m, z24.s, z0.s
	.loc 13 524 0
..LDL4384:
/*    524 */	fmla	z5.s, p0/m, z6.s, z0.s
	.loc 13 531 0
..LDL4385:
/*    531 */	fmla	z3.s, p0/m, z4.s, z0.s
	.loc 13 538 0
..LDL4386:
/*    538 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 545 0
..LDL4387:
/*    545 */	cbz	w18, .L11961
.L11964:
	.p2align 5
.L11967:					// :entr:term:mod:swpl
	.loc 13 454 0 is_stmt 1
..LDL4388:
/*    454 */	orr	x13, x15, 6917529027641081856
	.loc 13 459 0
..LDL4389:
/*    459 */	ptrue	p1.s, ALL
	.loc 13 466 0
..LDL4390:
/*    466 */	ldr	s24, [x11, x6, lsl #2]	//  (*)
	.loc 13 544 0
..LDL4391:
/*    544 */	add	x15, x15, x5
	.loc 13 473 0
..LDL4392:
/*    473 */	ldr	s4, [x11, x7, lsl #2]	//  (*)
	.loc 13 545 0
..LDL4393:
/*    545 */	subs	w18, w18, 1
	.loc 13 454 0
..LDL4394:
/*    454 */	ld1w	{z13.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 480 0
..LDL4395:
/*    480 */	ldr	s0, [x11, x8, lsl #2]	//  (*)
	.loc 13 487 0
..LDL4396:
/*    487 */	ldr	s2, [x11, x9, lsl #2]	//  (*)
	.loc 13 494 0
..LDL4397:
/*    494 */	ldr	s29, [x11, x17, lsl #2]	//  (*)
	.loc 13 459 0
..LDL4398:
/*    459 */	ld1rw	{z12.s}, p1/z, [x10]	//  (*)
	.loc 13 501 0
..LDL4399:
/*    501 */	ldr	s26, [x11, x12, lsl #2]	//  (*)
	.loc 13 508 0
..LDL4400:
/*    508 */	ldr	s6, [x11, x0, lsl #2]	//  (*)
	.loc 13 515 0
..LDL4401:
/*    515 */	ldr	s28, [x11, x1, lsl #2]	//  (*)
	.loc 13 522 0
..LDL4402:
/*    522 */	ldr	s16, [x11, x2, lsl #2]	//  (*)
	.loc 13 529 0
..LDL4403:
/*    529 */	ldr	s15, [x11, x3, lsl #2]	//  (*)
	.loc 13 536 0
..LDL4404:
/*    536 */	ldr	s14, [x11, x4, lsl #2]	//  (*)
	.loc 13 543 0
..LDL4405:
/*    543 */	add	x11, x11, 4
	.loc 13 459 0
..LDL4406:
/*    459 */	prfm	2, [x10, 2560]	//  (*)
/*    459 */	prfm	0, [x10, 512]	//  (*)
	.loc 13 543 0
..LDL4407:
/*    543 */	add	x10, x10, 4
	.loc 13 454 0
..LDL4408:
/*    454 */	prfm	2, [x13, 2560]	//  (*)
	.loc 13 466 0
..LDL4409:
/*    466 */	dup	z24.s, z24.s[0]
	.loc 13 454 0
..LDL4410:
/*    454 */	prfm	0, [x13, 512]	//  (*)
	.loc 13 473 0
..LDL4411:
/*    473 */	dup	z4.s, z4.s[0]
	.loc 13 480 0
..LDL4412:
/*    480 */	dup	z0.s, z0.s[0]
	.loc 13 487 0
..LDL4413:
/*    487 */	dup	z2.s, z2.s[0]
	.loc 13 494 0
..LDL4414:
/*    494 */	dup	z29.s, z29.s[0]
	.loc 13 501 0
..LDL4415:
/*    501 */	dup	z26.s, z26.s[0]
	.loc 13 461 0
..LDL4416:
/*    461 */	fmla	z10.s, p0/m, z12.s, z13.s
	.loc 13 468 0
..LDL4417:
/*    468 */	fmla	z11.s, p0/m, z24.s, z13.s
	.loc 13 508 0
..LDL4418:
/*    508 */	dup	z6.s, z6.s[0]
	.loc 13 475 0
..LDL4419:
/*    475 */	fmla	z9.s, p0/m, z4.s, z13.s
	.loc 13 515 0
..LDL4420:
/*    515 */	dup	z28.s, z28.s[0]
	.loc 13 482 0
..LDL4421:
/*    482 */	fmla	z8.s, p0/m, z0.s, z13.s
	.loc 13 522 0
..LDL4422:
/*    522 */	dup	z16.s, z16.s[0]
	.loc 13 489 0
..LDL4423:
/*    489 */	fmla	z31.s, p0/m, z2.s, z13.s
	.loc 13 529 0
..LDL4424:
/*    529 */	dup	z12.s, z15.s[0]
	.loc 13 496 0
..LDL4425:
/*    496 */	fmla	z30.s, p0/m, z29.s, z13.s
	.loc 13 536 0
..LDL4426:
/*    536 */	dup	z24.s, z14.s[0]
	.loc 13 503 0
..LDL4427:
/*    503 */	fmla	z27.s, p0/m, z26.s, z13.s
	.loc 13 510 0
..LDL4428:
/*    510 */	fmla	z25.s, p0/m, z6.s, z13.s
	.loc 13 517 0
..LDL4429:
/*    517 */	fmla	z7.s, p0/m, z28.s, z13.s
	.loc 13 524 0
..LDL4430:
/*    524 */	fmla	z5.s, p0/m, z16.s, z13.s
	.loc 13 531 0
..LDL4431:
/*    531 */	fmla	z3.s, p0/m, z12.s, z13.s
	.loc 13 538 0
..LDL4432:
/*    538 */	fmla	z1.s, p0/m, z24.s, z13.s
	.loc 13 545 0 is_stmt 0
..LDL4433:
/*    545 */	bne	.L11967
.L11961:
.L11342:
	.loc 13 550 0 is_stmt 1
..LDL4434:
/*    550 */	st1w	{z10.s}, p0, [x30, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL4435:
/*    556 */	st1w	{z11.s}, p0, [x20, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL4436:
/*    ??? */	ldr	x0, [x19, 24]	//  (*)
/*    562 */	st1w	{z9.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL4437:
/*    568 */	st1w	{z8.s}, p0, [x23, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL4438:
/*    574 */	st1w	{z31.s}, p0, [x27, 0, mul vl]	//  (*)
	.loc 13 580 0
..LDL4439:
/*    580 */	st1w	{z30.s}, p0, [x25, 0, mul vl]	//  (*)
	.loc 13 586 0
..LDL4440:
/*    586 */	st1w	{z27.s}, p0, [x22, 0, mul vl]	//  (*)
	.loc 13 592 0
..LDL4441:
/*    592 */	st1w	{z25.s}, p0, [x21, 0, mul vl]	//  (*)
	.loc 13 598 0
..LDL4442:
/*    ??? */	ldr	x0, [x19, 16]	//  (*)
/*    598 */	st1w	{z7.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 604 0
..LDL4443:
/*    ??? */	ldr	x0, [x19, 8]	//  (*)
/*    604 */	st1w	{z5.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 610 0
..LDL4444:
/*    610 */	st1w	{z3.s}, p0, [x26, 0, mul vl]	//  (*)
	.loc 13 616 0
..LDL4445:
/*    616 */	st1w	{z1.s}, p0, [x24, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL4446:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	z20, [x29, 13, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [x29, -64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	ldr	x27, [x29, -72]	//  (*)
	.cfi_restore 27
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 14
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D25.pchi:
	.cfi_endproc
.LFE24:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi12ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi12ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z29kernel_MxN_for_12x32_no_packaILi12ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z29kernel_MxN_for_12x32_no_packaILi12ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z29kernel_MxN_for_12x32_no_packaILi12ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z29kernel_MxN_for_12x32_no_packaILi12ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z29kernel_MxN_for_12x32_no_packaILi12ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z29kernel_MxN_for_12x32_no_packaILi12ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 353 0
..LDL4447:
.LFB25:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -15
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*    620 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xf8,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	sub	sp, sp, 240
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x50,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x18,0xb,0x11,0x58,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x25, x26, [x29, -64]	//  (*)
	.cfi_escape 0x10,0x19,0xb,0x11,0x40,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1a,0xb,0x11,0x48,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x27, x28, [x29, -80]	//  (*)
	.cfi_escape 0x10,0x1b,0xc,0x11,0xb0,0x7f,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1c,0xc,0x11,0xb8,0x7f,0x22,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    620 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z20, [x29, 13, mul vl]	//  (*)
	.cfi_escape 0x10,0x74,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z21, [x29, 14, mul vl]	//  (*)
	.cfi_escape 0x10,0x75,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 379 0
..LDL4448:
/*    379 */	ld1w	{z0.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 391 0
..LDL4449:
/*    391 */	add	w16, w4, w4
	.loc 13 409 0
..LDL4450:
/*    409 */	add	w13, w4, w4, lsl #2
	.loc 13 397 0
..LDL4451:
/*    397 */	add	w15, w16, w4
	.loc 13 391 0
..LDL4452:
/*    391 */	sxtw	x24, w16
	.loc 13 393 0
..LDL4453:
/*    393 */	add	x23, x24, 16
	.loc 13 439 0
..LDL4454:
/*    439 */	add	w10, w13, w13
	.loc 13 445 0
..LDL4455:
/*    445 */	lsl	w8, w15, 2
	.loc 13 391 0
..LDL4456:
/*    ??? */	str	x24, [x19, 16]	//  (*)
	.loc 13 385 0
..LDL4457:
/*    385 */	sxtw	x21, w4
	.loc 13 397 0
..LDL4458:
/*    397 */	sxtw	x22, w15
	.loc 13 409 0
..LDL4459:
/*    409 */	sxtw	x16, w13
	.loc 13 387 0
..LDL4460:
/*    387 */	add	x25, x21, 16
	.loc 13 445 0
..LDL4461:
/*    445 */	sub	w26, w8, w4
	.loc 13 399 0
..LDL4462:
/*    399 */	add	x13, x22, 16
	.loc 13 445 0
..LDL4463:
/*    445 */	sxtw	x26, w26
	.loc 13 403 0
..LDL4464:
/*    403 */	lsl	w14, w4, 2
	.loc 13 391 0
..LDL4465:
/*    391 */	add	x24, x3, x24, lsl #2
	.loc 13 415 0
..LDL4466:
/*    415 */	add	w12, w15, w15
	.loc 13 403 0
..LDL4467:
/*    403 */	sxtw	x14, w14
	.loc 13 445 0
..LDL4468:
/*    ??? */	str	x26, [x19, 32]	//  (*)
	.loc 13 405 0
..LDL4469:
/*    405 */	add	x15, x14, 16
	.loc 13 387 0
..LDL4470:
/*    ??? */	str	x25, [x19, 24]	//  (*)
	.loc 13 421 0
..LDL4471:
/*    421 */	lsl	w9, w4, 3
	.loc 13 393 0
..LDL4472:
/*    ??? */	str	x23, [x19, 8]	//  (*)
	.loc 13 421 0
..LDL4473:
/*    421 */	sub	w11, w9, w4
	.loc 13 397 0
..LDL4474:
/*    ??? */	str	x22, [x19]	//  (*)
	.loc 13 385 0
..LDL4475:
/*    385 */	add	x22, x3, x21, lsl #2
	.loc 13 421 0
..LDL4476:
/*    421 */	sxtw	x20, w11
	.loc 13 391 0
..LDL4477:
/*    391 */	ld1w	{z4.s}, p0/z, [x24, 0, mul vl]	//  (*)
	.loc 13 427 0
..LDL4478:
/*    427 */	sxtw	x11, w9
	.loc 13 391 0
..LDL4479:
/*    ??? */	str	x24, [x19, 152]	//  (*)
	.loc 13 403 0
..LDL4480:
/*    403 */	add	x14, x3, x14, lsl #2
	.loc 13 411 0
..LDL4481:
/*    411 */	add	x17, x16, 16
	.loc 13 385 0
..LDL4482:
/*    385 */	ld1w	{z2.s}, p0/z, [x22, 0, mul vl]	//  (*)
	.loc 13 433 0
..LDL4483:
/*    433 */	add	w7, w4, w4, lsl #3
	.loc 13 415 0
..LDL4484:
/*    415 */	sxtw	x18, w12
	.loc 13 403 0
..LDL4485:
/*    403 */	ld1w	{z24.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 417 0
..LDL4486:
/*    417 */	add	x30, x18, 16
	.loc 13 433 0
..LDL4487:
/*    433 */	sxtw	x9, w7
	.loc 13 439 0
..LDL4488:
/*    439 */	sxtw	x7, w10
	.loc 13 387 0
..LDL4489:
/*    ??? */	ldr	x21, [x19, 24]	//  (*)
	.loc 13 393 0
..LDL4490:
/*    ??? */	ldr	x24, [x19, 8]	//  (*)
	.loc 13 429 0
..LDL4491:
/*    429 */	add	x10, x11, 16
	.loc 13 403 0
..LDL4492:
/*    ??? */	str	x14, [x19, 136]	//  (*)
	.loc 13 405 0
..LDL4493:
/*    405 */	add	x14, x3, x15, lsl #2
	.loc 13 441 0
..LDL4494:
/*    441 */	add	x4, x7, 16
	.loc 13 405 0
..LDL4495:
/*    405 */	ld1w	{z25.s}, p1/z, [x14, 0, mul vl]	//  (*)
	.loc 13 435 0
..LDL4496:
/*    435 */	add	x8, x9, 16
	.loc 13 393 0
..LDL4497:
/*    393 */	add	x24, x3, x24, lsl #2
	.loc 13 423 0
..LDL4498:
/*    423 */	add	x12, x20, 16
	.loc 13 393 0
..LDL4499:
/*    393 */	ld1w	{z5.s}, p1/z, [x24, 0, mul vl]	//  (*)
	.loc 13 427 0
..LDL4500:
/*    427 */	add	x11, x3, x11, lsl #2
	.loc 13 447 0
..LDL4501:
/*    447 */	add	x25, x26, 16
	.loc 13 393 0
..LDL4502:
/*    ??? */	str	x24, [x19, 144]	//  (*)
	.loc 13 405 0
..LDL4503:
/*    ??? */	str	x14, [x19, 128]	//  (*)
	.loc 13 429 0
..LDL4504:
/*    429 */	add	x10, x3, x10, lsl #2
	.loc 13 397 0
..LDL4505:
/*    ??? */	ldr	x24, [x19]	//  (*)
	.loc 13 427 0
..LDL4506:
/*    427 */	ld1w	{z8.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 429 0
..LDL4507:
/*    429 */	ld1w	{z9.s}, p1/z, [x10, 0, mul vl]	//  (*)
	.loc 13 441 0
..LDL4508:
/*    441 */	add	x4, x3, x4, lsl #2
	.loc 13 381 0
..LDL4509:
/*    381 */	add	x23, x3, 64
	.loc 13 427 0
..LDL4510:
/*    ??? */	stp	x10, x11, [x19, 112]	//  (*)
	.loc 13 433 0
..LDL4511:
/*    433 */	add	x9, x3, x9, lsl #2
	.loc 13 381 0
..LDL4512:
/*    381 */	ld1w	{z1.s}, p1/z, [x23, 0, mul vl]	//  (*)
	.loc 13 441 0
..LDL4513:
/*    441 */	ld1w	{z13.s}, p1/z, [x4, 0, mul vl]	//  (*)
/*    ??? */	str	x4, [x19, 80]	//  (*)
	.loc 13 445 0
..LDL4514:
/*    445 */	add	x4, x3, x26, lsl #2
	.loc 13 433 0
..LDL4515:
/*    ??? */	str	x9, [x19, 104]	//  (*)
	.loc 13 409 0
..LDL4516:
/*    409 */	add	x14, x3, x16, lsl #2
	.loc 13 433 0
..LDL4517:
/*    433 */	ld1w	{z10.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 445 0
..LDL4518:
/*    445 */	ld1w	{z14.s}, p0/z, [x4, 0, mul vl]	//  (*)
/*    ??? */	str	x4, [x19, 72]	//  (*)
	.loc 13 409 0
..LDL4519:
/*    409 */	ld1w	{z26.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 411 0
..LDL4520:
/*    411 */	add	x15, x3, x17, lsl #2
/*    411 */	ld1w	{z27.s}, p1/z, [x15, 0, mul vl]	//  (*)
	.loc 13 415 0
..LDL4521:
/*    415 */	add	x16, x3, x18, lsl #2
/*    415 */	ld1w	{z28.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 435 0
..LDL4522:
/*    435 */	add	x8, x3, x8, lsl #2
	.loc 13 387 0
..LDL4523:
/*    387 */	add	x21, x3, x21, lsl #2
	.loc 13 435 0
..LDL4524:
/*    435 */	ld1w	{z11.s}, p1/z, [x8, 0, mul vl]	//  (*)
/*    ??? */	str	x8, [x19, 96]	//  (*)
	.loc 13 387 0
..LDL4525:
/*    387 */	ld1w	{z3.s}, p1/z, [x21, 0, mul vl]	//  (*)
	.loc 13 397 0
..LDL4526:
/*    397 */	add	x24, x3, x24, lsl #2
/*    397 */	ld1w	{z6.s}, p0/z, [x24, 0, mul vl]	//  (*)
	.loc 13 399 0
..LDL4527:
/*    399 */	add	x13, x3, x13, lsl #2
/*    399 */	ld1w	{z7.s}, p1/z, [x13, 0, mul vl]	//  (*)
	.loc 13 417 0
..LDL4528:
/*    417 */	add	x17, x3, x30, lsl #2
/*    417 */	ld1w	{z29.s}, p1/z, [x17, 0, mul vl]	//  (*)
	.loc 13 421 0
..LDL4529:
/*    421 */	add	x18, x3, x20, lsl #2
/*    421 */	ld1w	{z30.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 423 0
..LDL4530:
/*    423 */	add	x12, x3, x12, lsl #2
/*    423 */	ld1w	{z31.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 439 0
..LDL4531:
/*    439 */	add	x7, x3, x7, lsl #2
/*    439 */	ld1w	{z12.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 447 0
..LDL4532:
/*    447 */	add	x4, x3, x25, lsl #2
	.loc 13 439 0
..LDL4533:
/*    ??? */	str	x7, [x19, 88]	//  (*)
	.loc 13 447 0
..LDL4534:
/*    447 */	ld1w	{z15.s}, p1/z, [x4, 0, mul vl]	//  (*)
/*    ??? */	str	x4, [x19, 64]	//  (*)
	.loc 13 451 0
..LDL4535:
/*    451 */	cmp	w0, 0
/*    451 */	ble	.L11350
	.loc 13 544 0 is_stmt 0
..LDL4536:
/*    544 */	sbfiz	x11, x6, 2, 32
	.loc 13 466 0
..LDL4537:
/*    466 */	sxtw	x7, w5
	.loc 13 473 0
..LDL4538:
/*    473 */	add	w25, w5, w5
	.loc 13 466 0
..LDL4539:
/*    ??? */	str	x7, [x19, 56]	//  (*)
	.loc 13 480 0
..LDL4540:
/*    480 */	add	w4, w25, w5
	.loc 13 494 0
..LDL4541:
/*    494 */	add	w26, w5, w5, lsl #2
	.loc 13 508 0
..LDL4542:
/*    508 */	lsl	w9, w5, 3
	.loc 13 536 0
..LDL4543:
/*    536 */	lsl	w27, w4, 2
	.loc 13 487 0
..LDL4544:
/*    487 */	lsl	w6, w5, 2
	.loc 13 522 0
..LDL4545:
/*    522 */	add	w10, w5, w5, lsl #3
	.loc 13 508 0
..LDL4546:
/*    508 */	sub	w8, w9, w5
	.loc 13 536 0
..LDL4547:
/*    536 */	sub	w7, w27, w5
	.loc 13 501 0
..LDL4548:
/*    501 */	add	w20, w4, w4
	.loc 13 473 0
..LDL4549:
/*    473 */	sxtw	x5, w25
	.loc 13 529 0
..LDL4550:
/*    529 */	add	w30, w26, w26
	.loc 13 473 0
..LDL4551:
/*    ??? */	str	x5, [x19, 48]	//  (*)
	.loc 13 480 0
..LDL4552:
/*    480 */	sxtw	x4, w4
/*    ??? */	str	x4, [x19, 40]	//  (*)
	.loc 13 487 0
..LDL4553:
/*    487 */	sxtw	x4, w6
	.loc 13 494 0
..LDL4554:
/*    494 */	sxtw	x5, w26
	.loc 13 501 0
..LDL4555:
/*    501 */	sxtw	x6, w20
	.loc 13 529 0
..LDL4556:
/*    529 */	sxtw	x20, w30
	.loc 13 508 0
..LDL4557:
/*    508 */	sxtw	x8, w8
	.loc 13 536 0
..LDL4558:
/*    536 */	sxtw	x30, w7
	.loc 13 515 0
..LDL4559:
/*    515 */	sxtw	x9, w9
	.loc 13 522 0
..LDL4560:
/*    522 */	sxtw	x10, w10
	.loc 13 459 0
..LDL4561:
/*    459 */	orr	x7, x1, 6917529027641081856
/*    ??? */	ldp	x26, x25, [x19, 40]	//  (*)
	.loc 13 544 0
..LDL4562:
/*    ??? */	ldr	x27, [x19, 56]	//  (*)
	.p2align 5
.L11348:					// :entr:term
	.loc 13 454 0 is_stmt 1
..LDL4563:
/*    454 */	orr	x28, x2, 6917529027641081856
	.loc 13 459 0
..LDL4564:
/*    459 */	ptrue	p2.s, ALL
	.loc 13 522 0
..LDL4565:
/*    522 */	ldr	s21, [x1, x10, lsl #2]	//  (*)
	.loc 13 454 0
..LDL4566:
/*    454 */	prfm	2, [x28, 2560]	//  (*)
/*    454 */	ld1w	{z18.s}, p0/z, [x28, 0, mul vl]	//  (*)
	.loc 13 545 0
..LDL4567:
/*    545 */	subs	w0, w0, 1
	.loc 13 454 0
..LDL4568:
/*    454 */	prfm	0, [x28, 512]	//  (*)
	.loc 13 456 0
..LDL4569:
/*    456 */	add	x28, x2, 64
	.loc 13 529 0
..LDL4570:
/*    529 */	ldr	s19, [x1, x20, lsl #2]	//  (*)
	.loc 13 544 0
..LDL4571:
/*    544 */	add	x2, x2, x11
	.loc 13 456 0
..LDL4572:
/*    456 */	ld1w	{z16.s}, p1/z, [x28, 0, mul vl]	//  (*)
	.loc 13 459 0
..LDL4573:
/*    459 */	ld1rw	{z17.s}, p2/z, [x7]	//  (*)
/*    459 */	prfm	2, [x7, 2560]	//  (*)
/*    459 */	prfm	0, [x7, 512]	//  (*)
	.loc 13 543 0
..LDL4574:
/*    543 */	add	x7, x7, 4
	.loc 13 529 0
..LDL4575:
/*    529 */	dup	z19.s, z19.s[0]
	.loc 13 461 0
..LDL4576:
/*    461 */	fmla	z0.s, p0/m, z17.s, z18.s
	.loc 13 463 0
..LDL4577:
/*    463 */	fmla	z1.s, p1/m, z17.s, z16.s
	.loc 13 466 0
..LDL4578:
/*    466 */	ldr	s17, [x1, x27, lsl #2]	//  (*)
	.loc 13 531 0
..LDL4579:
/*    531 */	fmla	z12.s, p0/m, z19.s, z18.s
	.loc 13 533 0
..LDL4580:
/*    533 */	fmla	z13.s, p1/m, z19.s, z16.s
	.loc 13 466 0
..LDL4581:
/*    466 */	dup	z17.s, z17.s[0]
	.loc 13 468 0
..LDL4582:
/*    468 */	fmla	z2.s, p0/m, z17.s, z18.s
	.loc 13 470 0
..LDL4583:
/*    470 */	fmla	z3.s, p1/m, z17.s, z16.s
	.loc 13 473 0
..LDL4584:
/*    473 */	ldr	s17, [x1, x25, lsl #2]	//  (*)
/*    473 */	dup	z17.s, z17.s[0]
	.loc 13 475 0
..LDL4585:
/*    475 */	fmla	z4.s, p0/m, z17.s, z18.s
	.loc 13 477 0
..LDL4586:
/*    477 */	fmla	z5.s, p1/m, z17.s, z16.s
	.loc 13 480 0
..LDL4587:
/*    480 */	ldr	s17, [x1, x26, lsl #2]	//  (*)
/*    480 */	dup	z17.s, z17.s[0]
	.loc 13 482 0
..LDL4588:
/*    482 */	fmla	z6.s, p0/m, z17.s, z18.s
	.loc 13 484 0
..LDL4589:
/*    484 */	fmla	z7.s, p1/m, z17.s, z16.s
	.loc 13 487 0
..LDL4590:
/*    487 */	ldr	s17, [x1, x4, lsl #2]	//  (*)
/*    487 */	dup	z17.s, z17.s[0]
	.loc 13 489 0
..LDL4591:
/*    489 */	fmla	z24.s, p0/m, z17.s, z18.s
	.loc 13 491 0
..LDL4592:
/*    491 */	fmla	z25.s, p1/m, z17.s, z16.s
	.loc 13 494 0
..LDL4593:
/*    494 */	ldr	s17, [x1, x5, lsl #2]	//  (*)
/*    494 */	dup	z17.s, z17.s[0]
	.loc 13 496 0
..LDL4594:
/*    496 */	fmla	z26.s, p0/m, z17.s, z18.s
	.loc 13 498 0
..LDL4595:
/*    498 */	fmla	z27.s, p1/m, z17.s, z16.s
	.loc 13 501 0
..LDL4596:
/*    501 */	ldr	s17, [x1, x6, lsl #2]	//  (*)
/*    501 */	dup	z17.s, z17.s[0]
	.loc 13 503 0
..LDL4597:
/*    503 */	fmla	z28.s, p0/m, z17.s, z18.s
	.loc 13 505 0
..LDL4598:
/*    505 */	fmla	z29.s, p1/m, z17.s, z16.s
	.loc 13 508 0
..LDL4599:
/*    508 */	ldr	s17, [x1, x8, lsl #2]	//  (*)
/*    508 */	dup	z17.s, z17.s[0]
	.loc 13 510 0
..LDL4600:
/*    510 */	fmla	z30.s, p0/m, z17.s, z18.s
	.loc 13 512 0
..LDL4601:
/*    512 */	fmla	z31.s, p1/m, z17.s, z16.s
	.loc 13 515 0
..LDL4602:
/*    515 */	ldr	s17, [x1, x9, lsl #2]	//  (*)
/*    515 */	dup	z20.s, z17.s[0]
	.loc 13 536 0
..LDL4603:
/*    536 */	ldr	s17, [x1, x30, lsl #2]	//  (*)
	.loc 13 543 0
..LDL4604:
/*    543 */	add	x1, x1, 4
	.loc 13 517 0
..LDL4605:
/*    517 */	fmla	z8.s, p0/m, z20.s, z18.s
	.loc 13 519 0
..LDL4606:
/*    519 */	fmla	z9.s, p1/m, z20.s, z16.s
	.loc 13 522 0
..LDL4607:
/*    522 */	dup	z20.s, z21.s[0]
	.loc 13 536 0
..LDL4608:
/*    536 */	dup	z17.s, z17.s[0]
	.loc 13 524 0
..LDL4609:
/*    524 */	fmla	z10.s, p0/m, z20.s, z18.s
	.loc 13 526 0
..LDL4610:
/*    526 */	fmla	z11.s, p1/m, z20.s, z16.s
	.loc 13 538 0
..LDL4611:
/*    538 */	fmla	z14.s, p0/m, z17.s, z18.s
	.loc 13 540 0
..LDL4612:
/*    540 */	fmla	z15.s, p1/m, z17.s, z16.s
	.loc 13 545 0
..LDL4613:
/*    545 */	bne	.L11348
.L11350:
	.loc 13 550 0
..LDL4614:
/*    550 */	st1w	{z0.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 552 0
..LDL4615:
/*    552 */	st1w	{z1.s}, p1, [x23, 0, mul vl]	//  (*)
	.loc 13 556 0
..LDL4616:
/*    556 */	st1w	{z2.s}, p0, [x22, 0, mul vl]	//  (*)
	.loc 13 558 0
..LDL4617:
/*    558 */	st1w	{z3.s}, p1, [x21, 0, mul vl]	//  (*)
	.loc 13 562 0
..LDL4618:
/*    ??? */	ldr	x0, [x19, 152]	//  (*)
/*    562 */	st1w	{z4.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 564 0
..LDL4619:
/*    ??? */	ldr	x0, [x19, 144]	//  (*)
/*    564 */	st1w	{z5.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 568 0
..LDL4620:
/*    568 */	st1w	{z6.s}, p0, [x24, 0, mul vl]	//  (*)
	.loc 13 570 0
..LDL4621:
/*    570 */	st1w	{z7.s}, p1, [x13, 0, mul vl]	//  (*)
	.loc 13 574 0
..LDL4622:
/*    ??? */	ldr	x0, [x19, 136]	//  (*)
/*    574 */	st1w	{z24.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 576 0
..LDL4623:
/*    ??? */	ldr	x0, [x19, 128]	//  (*)
/*    576 */	st1w	{z25.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 580 0
..LDL4624:
/*    580 */	st1w	{z26.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 582 0
..LDL4625:
/*    582 */	st1w	{z27.s}, p1, [x15, 0, mul vl]	//  (*)
	.loc 13 586 0
..LDL4626:
/*    586 */	st1w	{z28.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 588 0
..LDL4627:
/*    588 */	st1w	{z29.s}, p1, [x17, 0, mul vl]	//  (*)
	.loc 13 592 0
..LDL4628:
/*    592 */	st1w	{z30.s}, p0, [x18, 0, mul vl]	//  (*)
	.loc 13 594 0
..LDL4629:
/*    594 */	st1w	{z31.s}, p1, [x12, 0, mul vl]	//  (*)
	.loc 13 598 0
..LDL4630:
/*    ??? */	ldr	x0, [x19, 120]	//  (*)
/*    598 */	st1w	{z8.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 600 0
..LDL4631:
/*    ??? */	ldr	x0, [x19, 112]	//  (*)
/*    600 */	st1w	{z9.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 604 0
..LDL4632:
/*    ??? */	ldr	x0, [x19, 104]	//  (*)
/*    604 */	st1w	{z10.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 606 0
..LDL4633:
/*    ??? */	ldr	x0, [x19, 96]	//  (*)
/*    606 */	st1w	{z11.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 610 0
..LDL4634:
/*    ??? */	ldr	x0, [x19, 88]	//  (*)
/*    610 */	st1w	{z12.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 612 0
..LDL4635:
/*    ??? */	ldr	x0, [x19, 80]	//  (*)
/*    612 */	st1w	{z13.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 616 0
..LDL4636:
/*    ??? */	ldr	x0, [x19, 72]	//  (*)
/*    616 */	st1w	{z14.s}, p0, [x0, 0, mul vl]	//  (*)
	.loc 13 618 0
..LDL4637:
/*    ??? */	ldr	x0, [x19, 64]	//  (*)
/*    618 */	st1w	{z15.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 620 0
..LDL4638:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	z20, [x29, 13, mul vl]	//  (*)
/*    ??? */	ldr	z21, [x29, 14, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [x29, -64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	ldp	x27, x28, [x29, -80]	//  (*)
	.cfi_restore 27
	.cfi_restore 28
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 15
	.cfi_def_cfa_offset 0
/*    620 */	ret	
..D26.pchi:
	.cfi_endproc
.LFE25:
	.size	_Z29kernel_MxN_for_12x32_no_packaILi12ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z29kernel_MxN_for_12x32_no_packaILi12ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z20kernel_8x48_no_packaiPfS_S_iiii $"
	.text
	.align	2
	.global	_Z20kernel_8x48_no_packaiPfS_S_iiii
	.type	_Z20kernel_8x48_no_packaiPfS_S_iiii, %function
_Z20kernel_8x48_no_packaiPfS_S_iiii:
	.loc 13 673 0
..LDL4639:
.LFB26:
	.cfi_startproc
/*    620 */	sub	sp, sp, 128
	.cfi_def_cfa_offset 128
/*    620 */	mov	w10, w4
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
	.loc 13 682 0
..LDL4640:
/*    682 */	sxtw	x4, w10
	.loc 13 683 0
..LDL4641:
/*    683 */	add	w5, w10, w10
	.loc 13 682 0
..LDL4642:
/*    682 */	add	x11, x3, x4, lsl #2
	.loc 13 683 0
..LDL4643:
/*    683 */	sxtw	x4, w5
	.loc 13 684 0
..LDL4644:
/*    684 */	add	w5, w5, w10
	.loc 13 683 0
..LDL4645:
/*    683 */	add	x12, x3, x4, lsl #2
	.loc 13 684 0
..LDL4646:
/*    684 */	sxtw	x4, w5
	.loc 13 687 0
..LDL4647:
/*    687 */	add	w5, w5, w5
	.loc 13 684 0
..LDL4648:
/*    684 */	add	x13, x3, x4, lsl #2
	.loc 13 685 0
..LDL4649:
/*    685 */	lsl	w4, w10, 2
/*    685 */	sxtw	x9, w4
	.loc 13 688 0
..LDL4650:
/*    688 */	lsl	w4, w10, 3
	.loc 13 686 0
..LDL4651:
/*    686 */	add	w8, w10, w10, lsl #2
	.loc 13 688 0
..LDL4652:
/*    688 */	sub	w4, w4, w10
	.loc 13 687 0
..LDL4653:
/*    687 */	sxtw	x5, w5
	.loc 13 688 0
..LDL4654:
/*    688 */	sxtw	x4, w4
	.loc 13 686 0
..LDL4655:
/*    686 */	sxtw	x8, w8
	.loc 13 685 0
..LDL4656:
/*    685 */	add	x9, x3, x9, lsl #2
	.loc 13 686 0
..LDL4657:
/*    686 */	add	x8, x3, x8, lsl #2
	.loc 13 687 0
..LDL4658:
/*    687 */	add	x5, x3, x5, lsl #2
	.loc 13 688 0
..LDL4659:
/*    688 */	add	x14, x3, x4, lsl #2
	.loc 13 690 0 is_stmt 0
..LDL4660:
	ptrue  p0.s  
mov    x4, #16 
mov    x5, x0    
cmp x5, #0x2
ld1w	{ z8.s },  p0/z, [x3]      
ld1w	{ z9.s },  p0/z, [x3, #1, MUL VL]    
ld1w	{ z10.s }, p0/z, [x3, #2, MUL VL]    
ld1w	{ z11.s }, p0/z, [x11]      
ld1w	{ z12.s }, p0/z, [x11, #1, MUL VL]    
ld1w	{ z13.s }, p0/z, [x11, #2, MUL VL]    
ld1w	{ z14.s }, p0/z, [x12]      
ld1w	{ z15.s }, p0/z, [x12, #1, MUL VL]    
ld1w	{ z16.s }, p0/z, [x12, #2, MUL VL]    
ld1w	{ z17.s }, p0/z, [x13]      
ld1w	{ z18.s }, p0/z, [x13, #1, MUL VL]    
ld1w	{ z19.s }, p0/z, [x13, #2, MUL VL]    
ld1w	{ z20.s }, p0/z, [x9]      
ld1w	{ z21.s }, p0/z, [x9, #1, MUL VL]    
ld1w	{ z22.s }, p0/z, [x9, #2, MUL VL]    
ld1w	{ z23.s }, p0/z, [x8]      
ld1w	{ z24.s }, p0/z, [x8, #1, MUL VL]    
ld1w	{ z25.s }, p0/z, [x8, #2, MUL VL]    
ld1w	{ z26.s }, p0/z, [x5]     
ld1w	{ z27.s }, p0/z, [x5, #1, MUL VL]    
ld1w	{ z28.s }, p0/z, [x5, #2, MUL VL]    
ld1w	{ z29.s }, p0/z, [x14]     
ld1w	{ z30.s }, p0/z, [x14, #1, MUL VL]    
ld1w	{ z31.s }, p0/z, [x14, #2, MUL VL]    
ld1w	{ z0.s }, p0/z, [x2]                 
ld1w	{ z1.s }, p0/z, [x2, #1, MUL VL]     
ld1w	{ z2.s }, p0/z, [x2, #2, MUL VL]     
ld1rw	{ z3.s }, p0/z, [x1]                 
ld1rw	{ z4.s }, p0/z, [x1, #4]             
ld1rw	{ z5.s }, p0/z, [x1, #8]             
ld1rw	{ z6.s }, p0/z, [x1, #12]            
blt 4f
3:fmla z8.s, p0/M, z0.s, z3.s
fmla z9.s, p0/M, z1.s, z3.s
sub  x5, x5, #0x2
fmla z10.s, p0/M, z2.s, z3.s
ld1rw { z3.s }, p0/Z, [x1, #16]
prfm	pldl1keep, [x1, #256]                
fmla z11.s, p0/M, z0.s, z4.s
fmla z12.s, p0/M, z1.s, z4.s
fmla z13.s, p0/M, z2.s, z4.s
ld1rw { z4.s }, p0/Z, [x1, #20]
fmla z14.s, p0/M, z0.s, z5.s
fmla z15.s, p0/M, z1.s, z5.s
fmla z16.s, p0/M, z2.s, z5.s
cmp x5, #0x2
ld1rw { z5.s }, p0/Z, [x1, #24]
fmla z17.s, p0/M, z0.s, z6.s
fmla z18.s, p0/M, z1.s, z6.s
fmla z19.s, p0/M, z2.s, z6.s
ld1rw { z6.s }, p0/Z, [x1, #28]
fmla z20.s, p0/M, z0.s, z3.s
fmla z21.s, p0/M, z1.s, z3.s
fmla z22.s, p0/M, z2.s, z3.s
ld1rw { z3.s }, p0/Z, [x1, #32]
fmla z23.s, p0/M, z0.s, z4.s
fmla z24.s, p0/M, z1.s, z4.s
fmla z25.s, p0/M, z2.s, z4.s
ld1rw { z4.s }, p0/Z, [x1, #36]
prfm	pldl1keep, [x1, #512]                
fmla z26.s, p0/M, z0.s, z5.s
fmla z27.s, p0/M, z1.s, z5.s
fmla z28.s, p0/M, z2.s, z5.s
ld1rw { z5.s }, p0/Z, [x1, #40]
fmla z29.s, p0/M, z0.s, z6.s
ld1w { z0.s }, p0/Z, [x2, #3, MUL VL]
fmla z30.s, p0/M, z1.s, z6.s
fmla z31.s, p0/M, z2.s, z6.s
ld1w { z1.s }, p0/Z, [x2, #4, MUL VL]
ld1w { z2.s }, p0/Z, [x2, #5, MUL VL]
fmla z8.s, p0/M, z0.s, z3.s
ld1rw { z6.s }, p0/Z, [x1, #44]
fmla z9.s, p0/M, z1.s, z3.s
fmla z10.s, p0/M, z2.s, z3.s
fmla z11.s, p0/M, z0.s, z4.s
ld1rw { z3.s }, p0/Z, [x1, #48]
fmla z12.s, p0/M, z1.s, z4.s
fmla z13.s, p0/M, z2.s, z4.s
ld1rw { z4.s }, p0/Z, [x1, #52]
fmla z14.s, p0/M, z0.s, z5.s
fmla z15.s, p0/M, z1.s, z5.s
add x2, x2, #384
fmla z16.s, p0/M, z2.s, z5.s
ld1rw { z5.s }, p0/Z, [x1, #56]
fmla z17.s, p0/M, z0.s, z6.s
fmla z18.s, p0/M, z1.s, z6.s
fmla z19.s, p0/M, z2.s, z6.s
ld1rw { z6.s }, p0/Z, [x1, #60]
add x1, x1, #0x40
fmla z20.s, p0/M, z0.s, z3.s
fmla z21.s, p0/M, z1.s, z3.s
fmla z22.s, p0/M, z2.s, z3.s
fmla z23.s, p0/M, z0.s, z4.s
ld1rw { z3.s }, p0/Z, [x1]
fmla z24.s, p0/M, z1.s, z4.s
fmla z25.s, p0/M, z2.s, z4.s
ld1rw { z4.s }, p0/Z, [x1, #4]
fmla z26.s, p0/M, z0.s, z5.s
fmla z27.s, p0/M, z1.s, z5.s
fmla z28.s, p0/M, z2.s, z5.s
fmla z29.s, p0/M, z0.s, z6.s
ld1w { z0.s }, p0/Z, [x2]
fmla z30.s, p0/M, z1.s, z6.s
fmla z31.s, p0/M, z2.s, z6.s
ld1w { z1.s }, p0/Z, [x2, #1, MUL VL]
ld1w { z2.s }, p0/Z, [x2, #2, MUL VL]
ld1rw { z5.s }, p0/Z, [x1, #8]
ld1rw { z6.s }, p0/Z, [x1, #12]
bge 3b
cbz x5, 5f
4:fmla z8.s, p0/M, z0.s, z3.s
fmla z9.s, p0/M, z1.s, z3.s
add x2, x2, #192
fmla z10.s, p0/M, z2.s, z3.s
ld1rw { z3.s }, p0/Z, [x1, #16]
fmla z11.s, p0/M, z0.s, z4.s
fmla z12.s, p0/M, z1.s, z4.s
fmla z13.s, p0/M, z2.s, z4.s
ld1rw { z4.s }, p0/Z, [x1, #20]
fmla z14.s, p0/M, z0.s, z5.s
fmla z15.s, p0/M, z1.s, z5.s
fmla z16.s, p0/M, z2.s, z5.s
ld1rw { z5.s }, p0/Z, [x1, #24]
fmla z17.s, p0/M, z0.s, z6.s
fmla z18.s, p0/M, z1.s, z6.s
fmla z19.s, p0/M, z2.s, z6.s
ld1rw { z6.s }, p0/Z, [x1, #28]
fmla z20.s, p0/M, z0.s, z3.s
fmla z21.s, p0/M, z1.s, z3.s
add x1, x1, #0x20
fmla z22.s, p0/M, z2.s, z3.s
fmla z23.s, p0/M, z0.s, z4.s
fmla z24.s, p0/M, z1.s, z4.s
fmla z25.s, p0/M, z2.s, z4.s
fmla z26.s, p0/M, z0.s, z5.s
fmla z27.s, p0/M, z1.s, z5.s
fmla z28.s, p0/M, z2.s, z5.s
fmla z29.s, p0/M, z0.s, z6.s
fmla z30.s, p0/M, z1.s, z6.s
fmla z31.s, p0/M, z2.s, z6.s
5:st1w	{ z8.s },  p0, [x3]      
st1w	{ z9.s },  p0, [x3, #1, MUL VL]    
st1w	{ z10.s }, p0, [x3, #2, MUL VL]    
st1w	{ z11.s }, p0, [x11]      
st1w	{ z12.s }, p0, [x11, #1, MUL VL]    
st1w	{ z13.s }, p0, [x11, #2, MUL VL]    
st1w	{ z14.s }, p0, [x12]      
st1w	{ z15.s }, p0, [x12, #1, MUL VL]    
st1w	{ z16.s }, p0, [x12, #2, MUL VL]    
st1w	{ z17.s }, p0, [x13]      
st1w	{ z18.s }, p0, [x13, #1, MUL VL]    
st1w	{ z19.s }, p0, [x13, #2, MUL VL]    
st1w	{ z20.s }, p0, [x9]      
st1w	{ z21.s }, p0, [x9, #1, MUL VL]    
st1w	{ z22.s }, p0, [x9, #2, MUL VL]    
st1w	{ z23.s }, p0, [x8]      
st1w	{ z24.s }, p0, [x8, #1, MUL VL]    
st1w	{ z25.s }, p0, [x8, #2, MUL VL]    
st1w	{ z26.s }, p0, [x5]     
st1w	{ z27.s }, p0, [x5, #1, MUL VL]    
st1w	{ z28.s }, p0, [x5, #2, MUL VL]    
st1w	{ z29.s }, p0, [x14]     
st1w	{ z30.s }, p0, [x14, #1, MUL VL]    
st1w	{ z31.s }, p0, [x14, #2, MUL VL]    

	.loc 13 948 0 is_stmt 1
..LDL4661:
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
/*    948 */	add	sp, sp, 128
	.cfi_def_cfa_offset 0
/*    948 */	ret	
..D27.pchi:
	.cfi_endproc
.LFE26:
	.size	_Z20kernel_8x48_no_packaiPfS_S_iiii, .-_Z20kernel_8x48_no_packaiPfS_S_iiii
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL4662:
.LFB27:
	.cfi_startproc
/*    ??? */	stp	x29, x30, [sp, -16]!	//  (*)
/*    948 */	add	x29, sp, 0
	.cfi_def_cfa 29, 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    948 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_offset 19, -24
/*    948 */	add	x19, sp, 0
/*    948 */	and	sp, x19, -64
	.loc 13 971 0
..LDL4663:
/*    971 */	ld1w	{z1.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL4664:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11358
/*   1034 */	mov	x5, 0
	.loc 13 1117 0 is_stmt 0
..LDL4665:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1034 0
..LDL4666:
/*   1034 */	subs	w0, w0, 2
/*   1034 */	bmi	.L11361
	.loc 13 1044 0
..LDL4667:
/*   1044 */	orr	x6, x1, 6917529027641081856
/*   1044 */	add	x9, x6, 4
/*   1044 */	mov	x6, 2564
/*   1044 */	mov	x7, 516
	.loc 13 1034 0
..LDL4668:
/*   1034 */	cmp	w0, 4
/*   1034 */	blt	.L11975
	.loc 13 1118 0
..LDL4669:
/*   1118 */	mov	x8, x9
	.loc 13 1037 0
..LDL4670:
/*   1037 */	orr	x9, x2, 6917529027641081856
	.loc 13 1044 0
..LDL4671:
/*   1044 */	ldr	s4, [x8, -4]	//  (*)
	.loc 13 1037 0
..LDL4672:
/*   1037 */	ld1w	{z3.s}, p0/z, [x9, 0, mul vl]	//  (*)
/*   1037 */	prfm	2, [x9, 2560]	//  (*)
/*   1037 */	prfm	0, [x9, 512]	//  (*)
	.p2align 5
.L11356:					// :entr:term:body:swpl
	.loc 13 1044 0
..LDL4673:
/*   1044 */	dup	z4.s, z4.s[0]
	.loc 13 1117 0
..LDL4674:
/*   1117 */	add	x2, x2, x4
	.loc 13 1044 0
..LDL4675:
/*   1044 */	ptrue	p1.s, ALL
	.loc 13 1037 0
..LDL4676:
/*   1037 */	orr	x9, x2, 6917529027641081856
/*   1037 */	prfm	2, [x9, 2560]	//  (*)
/*   1037 */	prfm	0, [x9, 512]	//  (*)
/*   1037 */	ld1w	{z0.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL4677:
/*   1044 */	ld1rw	{z2.s}, p1/z, [x8]	//  (*)
	.loc 13 1046 0
..LDL4678:
/*   1046 */	fmla	z1.s, p0/m, z4.s, z3.s
	.loc 13 1118 0
..LDL4679:
/*   1118 */	add	x9, x8, 8
	.loc 13 1117 0
..LDL4680:
/*   1117 */	add	x10, x2, x4
	.loc 13 1044 0
..LDL4681:
/*   1044 */	ldr	s4, [x8, 4]	//  (*)
	.loc 13 1037 0
..LDL4682:
/*   1037 */	orr	x2, x10, 6917529027641081856
/*   1037 */	prfm	2, [x2, 2560]	//  (*)
/*   1037 */	prfm	0, [x2, 512]	//  (*)
/*   1037 */	ld1w	{z3.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1046 0
..LDL4683:
/*   1046 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1044 0
..LDL4684:
/*   1044 */	dup	z4.s, z4.s[0]
	.loc 13 1117 0
..LDL4685:
/*   1117 */	add	x2, x10, x4
	.loc 13 1037 0
..LDL4686:
/*   1037 */	orr	x10, x2, 6917529027641081856
/*   1037 */	prfm	2, [x10, 2560]	//  (*)
/*   1037 */	prfm	0, [x10, 512]	//  (*)
/*   1037 */	ld1w	{z0.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL4687:
/*   1044 */	ld1rw	{z2.s}, p1/z, [x9]	//  (*)
	.loc 13 1046 0
..LDL4688:
/*   1046 */	fmla	z1.s, p0/m, z4.s, z3.s
	.loc 13 1118 0
..LDL4689:
/*   1118 */	add	x8, x8, 16
	.loc 13 1117 0
..LDL4690:
/*   1117 */	add	x2, x2, x4
	.loc 13 1044 0
..LDL4691:
/*   1044 */	ldr	s4, [x8, -4]	//  (*)
	.loc 13 1037 0
..LDL4692:
/*   1037 */	orr	x10, x2, 6917529027641081856
/*   1037 */	prfm	2, [x10, 2560]	//  (*)
/*   1037 */	prfm	0, [x10, 512]	//  (*)
/*   1037 */	ld1w	{z3.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL4693:
/*   1044 */	prfm	2, [x9, x6]	//  (*)
	.loc 13 1116 0
..LDL4694:
/*   1116 */	add	x5, x5, 16
	.loc 13 1044 0
..LDL4695:
/*   1044 */	prfm	0, [x9, x7]	//  (*)
	.loc 13 1046 0
..LDL4696:
/*   1046 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1118 0
..LDL4697:
/*   1118 */	sub	w0, w0, 4
	.loc 13 1036 0
..LDL4698:
/*   1036 */	cmp	w0, 4
/*   1036 */	bge	.L11356
	.loc 13 1044 0
..LDL4699:
/*   1044 */	dup	z4.s, z4.s[0]
	.loc 13 1117 0
..LDL4700:
/*   1117 */	add	x2, x4, x2
	.loc 13 1044 0
..LDL4701:
/*   1044 */	ptrue	p1.s, ALL
/*   1044 */	prfm	2, [x8, x6]	//  (*)
	.loc 13 1037 0
..LDL4702:
/*   1037 */	orr	x9, x2, 6917529027641081856
	.loc 13 1044 0
..LDL4703:
/*   1044 */	prfm	0, [x8, x7]	//  (*)
	.loc 13 1118 0
..LDL4704:
/*   1118 */	sub	w0, w0, 2
	.loc 13 1037 0
..LDL4705:
/*   1037 */	prfm	2, [x9, 2560]	//  (*)
/*   1037 */	ld1w	{z0.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL4706:
/*   1117 */	add	x2, x2, x4
	.loc 13 1116 0
..LDL4707:
/*   1116 */	add	x5, x5, 8
	.loc 13 1037 0
..LDL4708:
/*   1037 */	prfm	0, [x9, 512]	//  (*)
	.loc 13 1044 0
..LDL4709:
/*   1044 */	ld1rw	{z2.s}, p1/z, [x8]	//  (*)
	.loc 13 1118 0
..LDL4710:
/*   1118 */	add	x9, x8, 8
/*   1118 */	cmp	w0, 0
	.loc 13 1046 0
..LDL4711:
/*   1046 */	fmla	z1.s, p0/m, z4.s, z3.s
/*   1046 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1118 0
..LDL4712:
/*   1118 */	blt	.L11972
.L11975:
	.p2align 5
.L11978:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL4713:
/*   1037 */	orr	x8, x2, 6917529027641081856
	.loc 13 1044 0
..LDL4714:
/*   1044 */	ldr	s2, [x9, -4]	//  (*)
	.loc 13 1117 0
..LDL4715:
/*   1117 */	add	x2, x4, x2
	.loc 13 1044 0
..LDL4716:
/*   1044 */	ptrue	p1.s, ALL
	.loc 13 1037 0
..LDL4717:
/*   1037 */	ld1w	{z0.s}, p0/z, [x8, 0, mul vl]	//  (*)
/*   1037 */	orr	x10, x2, 6917529027641081856
	.loc 13 1044 0
..LDL4718:
/*   1044 */	prfm	2, [x9, x6]	//  (*)
	.loc 13 1117 0
..LDL4719:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL4720:
/*   1037 */	ld1w	{z4.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL4721:
/*   1044 */	prfm	0, [x9, x7]	//  (*)
	.loc 13 1118 0
..LDL4722:
	.loc 13 1116 0 is_stmt 0
..LDL4723:
/*   1116 */	add	x5, x5, 8
	.loc 13 1118 0
..LDL4724:
/*   1118 */	subs	w0, w0, 2
	.loc 13 1037 0 is_stmt 1
..LDL4725:
/*   1037 */	prfm	2, [x8, 2560]	//  (*)
	.loc 13 1044 0
..LDL4726:
/*   1044 */	ld1rw	{z3.s}, p1/z, [x9]	//  (*)
	.loc 13 1118 0
..LDL4727:
/*   1118 */	add	x9, x9, 8
	.loc 13 1037 0
..LDL4728:
/*   1037 */	prfm	0, [x8, 512]	//  (*)
/*   1037 */	prfm	2, [x10, 2560]	//  (*)
/*   1037 */	prfm	0, [x10, 512]	//  (*)
	.loc 13 1044 0
..LDL4729:
/*   1044 */	dup	z2.s, z2.s[0]
	.loc 13 1046 0
..LDL4730:
/*   1046 */	fmla	z1.s, p0/m, z2.s, z0.s
/*   1046 */	fmla	z1.s, p0/m, z3.s, z4.s
	.loc 13 1118 0 is_stmt 0
..LDL4731:
/*   1118 */	bpl	.L11978
.L11972:
.L11361:
	.loc 13 1034 0 is_stmt 1
..LDL4732:
/*   1034 */	adds	w0, w0, 1
/*   1034 */	bmi	.L11358
	.loc 13 1044 0 is_stmt 0
..LDL4733:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x1, x1, x5
	.p2align 5
.L11367:					// :entr:term:mod
	.loc 13 1037 0 is_stmt 1
..LDL4734:
/*   1037 */	orr	x5, x2, 6917529027641081856
	.loc 13 1044 0
..LDL4735:
/*   1044 */	prfm	2, [x1, 2560]	//  (*)
/*   1044 */	ptrue	p1.s, ALL
	.loc 13 1117 0
..LDL4736:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL4737:
/*   1037 */	ld1w	{z2.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL4738:
/*   1044 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1118 0
..LDL4739:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1037 0
..LDL4740:
/*   1037 */	prfm	2, [x5, 2560]	//  (*)
/*   1037 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 1044 0
..LDL4741:
/*   1044 */	ld1rw	{z0.s}, p1/z, [x1]	//  (*)
	.loc 13 1116 0
..LDL4742:
/*   1116 */	add	x1, x1, 4
	.loc 13 1046 0
..LDL4743:
/*   1046 */	fmla	z1.s, p0/m, z0.s, z2.s
	.loc 13 1118 0 is_stmt 0
..LDL4744:
/*   1118 */	bpl	.L11367
.L11358:
	.loc 13 1123 0 is_stmt 1
..LDL4745:
/*   1123 */	st1w	{z1.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL4746:
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp], 16	//  (*)
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D28.pchi:
	.cfi_endproc
.LFE27:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL4747:
.LFB28:
	.cfi_startproc
/*    ??? */	stp	x29, x30, [sp, -16]!	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_def_cfa 29, 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*   1185 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_offset 19, -24
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
	.loc 13 971 0
..LDL4748:
/*    971 */	ld1w	{z4.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 973 0
..LDL4749:
/*    973 */	add	x7, x3, 64
/*    973 */	ld1w	{z1.s}, p1/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL4750:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11374
/*   1034 */	mov	x5, 0
	.loc 13 1117 0 is_stmt 0
..LDL4751:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1034 0
..LDL4752:
/*   1034 */	subs	w0, w0, 2
/*   1034 */	bmi	.L11377
	.loc 13 1044 0
..LDL4753:
/*   1044 */	orr	x6, x1, 6917529027641081856
/*   1044 */	add	x9, x6, 4
/*   1044 */	mov	x8, 2564
/*   1044 */	mov	x6, 516
	.loc 13 1034 0
..LDL4754:
/*   1034 */	cmp	w0, 4
/*   1034 */	blt	.L11986
	.loc 13 1118 0
..LDL4755:
/*   1118 */	mov	x10, x9
	.loc 13 1037 0
..LDL4756:
/*   1037 */	orr	x9, x2, 6917529027641081856
	.loc 13 1039 0
..LDL4757:
/*   1039 */	ld1w	{z5.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1044 0
..LDL4758:
/*   1044 */	ldr	s6, [x10, -4]	//  (*)
	.loc 13 1037 0
..LDL4759:
/*   1037 */	ld1w	{z7.s}, p0/z, [x9, 0, mul vl]	//  (*)
/*   1037 */	prfm	2, [x9, 2560]	//  (*)
/*   1037 */	prfm	0, [x9, 512]	//  (*)
	.p2align 5
.L11372:					// :entr:term:body:swpl
	.loc 13 1044 0
..LDL4760:
/*   1044 */	dup	z6.s, z6.s[0]
	.loc 13 1117 0
..LDL4761:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL4762:
/*   1037 */	orr	x9, x2, 6917529027641081856
	.loc 13 1044 0
..LDL4763:
/*   1044 */	ptrue	p2.s, ALL
	.loc 13 1037 0
..LDL4764:
/*   1037 */	prfm	2, [x9, 2560]	//  (*)
/*   1037 */	prfm	0, [x9, 512]	//  (*)
/*   1037 */	ld1w	{z3.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL4765:
/*   1039 */	ld1w	{z0.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1044 0
..LDL4766:
/*   1044 */	ld1rw	{z2.s}, p2/z, [x10]	//  (*)
	.loc 13 1046 0
..LDL4767:
/*   1046 */	fmla	z4.s, p0/m, z6.s, z7.s
	.loc 13 1048 0
..LDL4768:
/*   1048 */	fmla	z1.s, p1/m, z6.s, z5.s
	.loc 13 1118 0
..LDL4769:
/*   1118 */	add	x9, x10, 8
	.loc 13 1117 0
..LDL4770:
/*   1117 */	add	x2, x2, x4
	.loc 13 1044 0
..LDL4771:
/*   1044 */	ldr	s6, [x10, 4]	//  (*)
	.loc 13 1037 0
..LDL4772:
/*   1037 */	orr	x11, x2, 6917529027641081856
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
/*   1037 */	prfm	0, [x11, 512]	//  (*)
/*   1037 */	ld1w	{z7.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL4773:
/*   1039 */	ld1w	{z5.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1046 0
..LDL4774:
/*   1046 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1048 0
..LDL4775:
/*   1048 */	fmla	z1.s, p1/m, z2.s, z0.s
	.loc 13 1044 0
..LDL4776:
/*   1044 */	dup	z6.s, z6.s[0]
	.loc 13 1117 0
..LDL4777:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL4778:
/*   1037 */	orr	x11, x2, 6917529027641081856
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
/*   1037 */	prfm	0, [x11, 512]	//  (*)
/*   1037 */	ld1w	{z3.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL4779:
/*   1039 */	ld1w	{z0.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1044 0
..LDL4780:
/*   1044 */	ld1rw	{z2.s}, p2/z, [x9]	//  (*)
	.loc 13 1046 0
..LDL4781:
/*   1046 */	fmla	z4.s, p0/m, z6.s, z7.s
	.loc 13 1048 0
..LDL4782:
/*   1048 */	fmla	z1.s, p1/m, z6.s, z5.s
	.loc 13 1118 0
..LDL4783:
/*   1118 */	add	x10, x10, 16
	.loc 13 1117 0
..LDL4784:
/*   1117 */	add	x2, x2, x4
	.loc 13 1044 0
..LDL4785:
/*   1044 */	ldr	s6, [x10, -4]	//  (*)
	.loc 13 1037 0
..LDL4786:
/*   1037 */	orr	x11, x2, 6917529027641081856
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
/*   1037 */	prfm	0, [x11, 512]	//  (*)
/*   1037 */	ld1w	{z7.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL4787:
/*   1039 */	ld1w	{z5.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1044 0
..LDL4788:
/*   1044 */	prfm	2, [x9, x8]	//  (*)
/*   1044 */	prfm	0, [x9, x6]	//  (*)
	.loc 13 1116 0
..LDL4789:
/*   1116 */	add	x5, x5, 16
	.loc 13 1046 0
..LDL4790:
/*   1046 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1048 0
..LDL4791:
/*   1048 */	fmla	z1.s, p1/m, z2.s, z0.s
	.loc 13 1118 0
..LDL4792:
/*   1118 */	sub	w0, w0, 4
	.loc 13 1036 0
..LDL4793:
/*   1036 */	cmp	w0, 4
/*   1036 */	bge	.L11372
	.loc 13 1044 0
..LDL4794:
/*   1044 */	dup	z6.s, z6.s[0]
	.loc 13 1117 0
..LDL4795:
/*   1117 */	add	x2, x4, x2
	.loc 13 1044 0
..LDL4796:
/*   1044 */	ptrue	p2.s, ALL
/*   1044 */	prfm	2, [x10, x8]	//  (*)
	.loc 13 1037 0
..LDL4797:
/*   1037 */	orr	x9, x2, 6917529027641081856
	.loc 13 1039 0
..LDL4798:
/*   1039 */	ld1w	{z0.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1118 0
..LDL4799:
/*   1118 */	sub	w0, w0, 2
	.loc 13 1037 0
..LDL4800:
/*   1037 */	prfm	2, [x9, 2560]	//  (*)
/*   1037 */	ld1w	{z3.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL4801:
/*   1117 */	add	x2, x2, x4
	.loc 13 1116 0
..LDL4802:
/*   1116 */	add	x5, x5, 8
	.loc 13 1037 0
..LDL4803:
/*   1037 */	prfm	0, [x9, 512]	//  (*)
	.loc 13 1044 0
..LDL4804:
/*   1044 */	ld1rw	{z2.s}, p2/z, [x10]	//  (*)
	.loc 13 1118 0
..LDL4805:
/*   1118 */	add	x9, x10, 8
/*   1118 */	cmp	w0, 0
	.loc 13 1044 0
..LDL4806:
/*   1044 */	prfm	0, [x10, x6]	//  (*)
	.loc 13 1046 0
..LDL4807:
/*   1046 */	fmla	z4.s, p0/m, z6.s, z7.s
	.loc 13 1048 0
..LDL4808:
/*   1048 */	fmla	z1.s, p1/m, z6.s, z5.s
	.loc 13 1046 0
..LDL4809:
/*   1046 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1048 0
..LDL4810:
/*   1048 */	fmla	z1.s, p1/m, z2.s, z0.s
	.loc 13 1118 0
..LDL4811:
/*   1118 */	blt	.L11983
.L11986:
	.p2align 5
.L11989:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL4812:
/*   1037 */	orr	x11, x2, 6917529027641081856
	.loc 13 1039 0
..LDL4813:
/*   1039 */	add	x10, x2, 64
	.loc 13 1044 0
..LDL4814:
/*   1044 */	ldr	s2, [x9, -4]	//  (*)
/*   1044 */	ptrue	p2.s, ALL
	.loc 13 1037 0
..LDL4815:
/*   1037 */	ld1w	{z3.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL4816:
/*   1039 */	ld1w	{z0.s}, p1/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL4817:
/*   1117 */	add	x12, x4, x2
	.loc 13 1118 0
..LDL4818:
	.loc 13 1116 0 is_stmt 0
..LDL4819:
/*   1116 */	add	x5, x5, 8
	.loc 13 1037 0 is_stmt 1
..LDL4820:
/*   1037 */	orr	x10, x12, 6917529027641081856
	.loc 13 1039 0
..LDL4821:
/*   1039 */	add	x2, x12, 64
	.loc 13 1044 0
..LDL4822:
/*   1044 */	prfm	2, [x9, x8]	//  (*)
	.loc 13 1037 0
..LDL4823:
/*   1037 */	ld1w	{z7.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL4824:
/*   1039 */	ld1w	{z6.s}, p1/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL4825:
/*   1117 */	add	x2, x12, x4
	.loc 13 1118 0
..LDL4826:
/*   1118 */	subs	w0, w0, 2
	.loc 13 1044 0
..LDL4827:
/*   1044 */	prfm	0, [x9, x6]	//  (*)
/*   1044 */	ld1rw	{z5.s}, p2/z, [x9]	//  (*)
	.loc 13 1118 0
..LDL4828:
/*   1118 */	add	x9, x9, 8
	.loc 13 1037 0
..LDL4829:
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
/*   1037 */	prfm	0, [x11, 512]	//  (*)
/*   1037 */	prfm	2, [x10, 2560]	//  (*)
/*   1037 */	prfm	0, [x10, 512]	//  (*)
	.loc 13 1044 0
..LDL4830:
/*   1044 */	dup	z2.s, z2.s[0]
	.loc 13 1046 0
..LDL4831:
/*   1046 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1048 0
..LDL4832:
/*   1048 */	fmla	z1.s, p1/m, z2.s, z0.s
	.loc 13 1046 0
..LDL4833:
/*   1046 */	fmla	z4.s, p0/m, z5.s, z7.s
	.loc 13 1048 0
..LDL4834:
/*   1048 */	fmla	z1.s, p1/m, z5.s, z6.s
	.loc 13 1118 0 is_stmt 0
..LDL4835:
/*   1118 */	bpl	.L11989
.L11983:
.L11377:
	.loc 13 1034 0 is_stmt 1
..LDL4836:
/*   1034 */	adds	w0, w0, 1
/*   1034 */	bmi	.L11374
	.loc 13 1044 0 is_stmt 0
..LDL4837:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x1, x1, x5
	.p2align 5
.L11383:					// :entr:term:mod
	.loc 13 1037 0 is_stmt 1
..LDL4838:
/*   1037 */	orr	x6, x2, 6917529027641081856
	.loc 13 1039 0
..LDL4839:
/*   1039 */	add	x5, x2, 64
	.loc 13 1044 0
..LDL4840:
/*   1044 */	prfm	2, [x1, 2560]	//  (*)
/*   1044 */	ptrue	p2.s, ALL
	.loc 13 1037 0
..LDL4841:
/*   1037 */	ld1w	{z3.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL4842:
/*   1039 */	ld1w	{z2.s}, p1/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL4843:
/*   1117 */	add	x2, x2, x4
	.loc 13 1118 0
..LDL4844:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1037 0
..LDL4845:
/*   1037 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 1044 0
..LDL4846:
/*   1044 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1037 0
..LDL4847:
/*   1037 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1044 0
..LDL4848:
/*   1044 */	ld1rw	{z0.s}, p2/z, [x1]	//  (*)
	.loc 13 1116 0
..LDL4849:
/*   1116 */	add	x1, x1, 4
	.loc 13 1046 0
..LDL4850:
/*   1046 */	fmla	z4.s, p0/m, z0.s, z3.s
	.loc 13 1048 0
..LDL4851:
/*   1048 */	fmla	z1.s, p1/m, z0.s, z2.s
	.loc 13 1118 0 is_stmt 0
..LDL4852:
/*   1118 */	bpl	.L11383
.L11374:
	.loc 13 1123 0 is_stmt 1
..LDL4853:
/*   1123 */	st1w	{z4.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL4854:
/*   1125 */	st1w	{z1.s}, p1, [x7, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL4855:
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp], 16	//  (*)
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D29.pchi:
	.cfi_endproc
.LFE28:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi1ELi48EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi1ELi48EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi1ELi48EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi1ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi1ELi48EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi1ELi48EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL4856:
.LFB29:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -2
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xa,0x92,0x1d,0x0,0x11,0x10,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xa,0x11,0x8,0x22,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xa,0x11,0x78,0x22,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	p4, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x34,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	p5, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x35,0x7,0x11,0x79,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL4857:
/*    971 */	ld1w	{z5.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 973 0
..LDL4858:
/*    973 */	add	x5, x3, 64
	.loc 13 975 0
..LDL4859:
/*    975 */	add	x7, x3, 128
	.loc 13 973 0
..LDL4860:
/*    973 */	ld1w	{z4.s}, p1/z, [x5, 0, mul vl]	//  (*)
	.loc 13 975 0
..LDL4861:
/*    975 */	ld1w	{z1.s}, p2/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL4862:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11390
	.loc 13 1117 0 is_stmt 0
..LDL4863:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL4864:
/*   1044 */	orr	x1, x1, 6917529027641081856
	.loc 13 1034 0
..LDL4865:
/*   1034 */	cmp	w0, 6
/*   1034 */	blt	.L11997
	.loc 13 1037 0
..LDL4866:
/*   1037 */	orr	x9, x2, 6917529027641081856
	.loc 13 1044 0
..LDL4867:
/*   1044 */	ptrue	p4.s, ALL
	.loc 13 1117 0
..LDL4868:
/*   1117 */	add	x11, x2, x4
	.loc 13 1039 0
..LDL4869:
/*   1039 */	ld1w	{z3.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1041 0
..LDL4870:
/*   1041 */	ld1w	{z0.s}, p2/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1037 0
..LDL4871:
/*   1037 */	orr	x12, x11, 6917529027641081856
	.loc 13 1044 0
..LDL4872:
/*   1044 */	ptrue	p3.s, ALL
	.loc 13 1116 0
..LDL4873:
/*   1116 */	add	x6, x1, 4
	.loc 13 1037 0
..LDL4874:
/*   1037 */	ld1w	{z26.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL4875:
/*   1117 */	add	x8, x11, x4
	.loc 13 1037 0
..LDL4876:
/*   1037 */	ld1w	{z25.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL4877:
/*   1044 */	ptrue	p5.s, ALL
/*   1044 */	ld1rw	{z2.s}, p4/z, [x1]	//  (*)
	.loc 13 1039 0
..LDL4878:
/*   1039 */	ld1w	{z24.s}, p1/z, [x11, 1, mul vl]	//  (*)
	.loc 13 1037 0
..LDL4879:
/*   1037 */	orr	x10, x8, 6917529027641081856
	.loc 13 1117 0
..LDL4880:
/*   1117 */	add	x2, x8, x4
	.loc 13 1041 0
..LDL4881:
/*   1041 */	ld1w	{z6.s}, p2/z, [x11, 2, mul vl]	//  (*)
	.loc 13 1044 0
..LDL4882:
/*   1044 */	ld1rw	{z7.s}, p3/z, [x6]	//  (*)
	.loc 13 1037 0
..LDL4883:
/*   1037 */	prfm	2, [x9, 2560]	//  (*)
/*   1037 */	prfm	0, [x9, 512]	//  (*)
/*   1037 */	prfm	2, [x12, 2560]	//  (*)
/*   1037 */	prfm	0, [x12, 512]	//  (*)
	.p2align 5
.L11388:					// :entr:term:swpl
/*   1037 */	prfm	2, [x10, 2560]	//  (*)
/*   1037 */	prfm	0, [x10, 512]	//  (*)
/*   1037 */	ld1w	{z30.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL4884:
/*   1039 */	ld1w	{z28.s}, p1/z, [x8, 1, mul vl]	//  (*)
	.loc 13 1116 0
..LDL4885:
/*   1116 */	add	x9, x6, 4
	.loc 13 1041 0
..LDL4886:
/*   1041 */	ld1w	{z29.s}, p2/z, [x8, 2, mul vl]	//  (*)
	.loc 13 1037 0
..LDL4887:
/*   1037 */	orr	x1, x2, 6917529027641081856
	.loc 13 1044 0
..LDL4888:
/*   1044 */	ld1rw	{z27.s}, p5/z, [x9]	//  (*)
	.loc 13 1046 0
..LDL4889:
/*   1046 */	fmla	z5.s, p0/m, z2.s, z26.s
	.loc 13 1044 0
..LDL4890:
/*   1044 */	ptrue	p3.s, ALL
	.loc 13 1048 0
..LDL4891:
/*   1048 */	fmla	z4.s, p1/m, z2.s, z3.s
	.loc 13 1050 0
..LDL4892:
/*   1050 */	fmla	z1.s, p2/m, z2.s, z0.s
	.loc 13 1117 0
..LDL4893:
/*   1117 */	add	x9, x4, x2
	.loc 13 1037 0
..LDL4894:
/*   1037 */	prfm	2, [x1, 2560]	//  (*)
/*   1037 */	prfm	0, [x1, 512]	//  (*)
/*   1037 */	ld1w	{z26.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL4895:
/*   1039 */	ld1w	{z3.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1116 0
..LDL4896:
/*   1116 */	add	x1, x6, 8
	.loc 13 1041 0
..LDL4897:
/*   1041 */	ld1w	{z0.s}, p2/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1037 0
..LDL4898:
/*   1037 */	orr	x2, x9, 6917529027641081856
	.loc 13 1044 0
..LDL4899:
/*   1044 */	ld1rw	{z2.s}, p3/z, [x1]	//  (*)
	.loc 13 1046 0
..LDL4900:
/*   1046 */	fmla	z5.s, p0/m, z7.s, z25.s
	.loc 13 1048 0
..LDL4901:
/*   1048 */	fmla	z4.s, p1/m, z7.s, z24.s
	.loc 13 1050 0
..LDL4902:
/*   1050 */	fmla	z1.s, p2/m, z7.s, z6.s
	.loc 13 1117 0
..LDL4903:
/*   1117 */	add	x8, x9, x4
	.loc 13 1037 0
..LDL4904:
/*   1037 */	prfm	2, [x2, 2560]	//  (*)
/*   1037 */	prfm	0, [x2, 512]	//  (*)
/*   1037 */	ld1w	{z25.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL4905:
/*   1039 */	ld1w	{z24.s}, p1/z, [x9, 1, mul vl]	//  (*)
	.loc 13 1116 0
..LDL4906:
/*   1116 */	add	x6, x6, 12
	.loc 13 1041 0
..LDL4907:
/*   1041 */	ld1w	{z6.s}, p2/z, [x9, 2, mul vl]	//  (*)
	.loc 13 1037 0
..LDL4908:
/*   1037 */	orr	x10, x8, 6917529027641081856
	.loc 13 1044 0
..LDL4909:
/*   1044 */	ld1rw	{z7.s}, p3/z, [x6]	//  (*)
/*   1044 */	prfm	2, [x6, 2552]	//  (*)
/*   1044 */	prfm	0, [x6, 504]	//  (*)
	.loc 13 1046 0
..LDL4910:
/*   1046 */	fmla	z5.s, p0/m, z27.s, z30.s
	.loc 13 1044 0
..LDL4911:
/*   1044 */	ptrue	p5.s, ALL
	.loc 13 1048 0
..LDL4912:
/*   1048 */	fmla	z4.s, p1/m, z27.s, z28.s
	.loc 13 1050 0
..LDL4913:
/*   1050 */	fmla	z1.s, p2/m, z27.s, z29.s
	.loc 13 1117 0
..LDL4914:
/*   1117 */	add	x2, x8, x4
	.loc 13 1118 0
..LDL4915:
/*   1118 */	sub	w0, w0, 3
	.loc 13 1036 0
..LDL4916:
/*   1036 */	cmp	w0, 6
/*   1036 */	bge	.L11388
	.loc 13 1037 0
..LDL4917:
/*   1037 */	ld1w	{z27.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1116 0
..LDL4918:
/*   1116 */	add	x9, x6, 4
	.loc 13 1046 0
..LDL4919:
/*   1046 */	fmla	z5.s, p0/m, z2.s, z26.s
	.loc 13 1048 0
..LDL4920:
/*   1048 */	fmla	z4.s, p1/m, z2.s, z3.s
	.loc 13 1039 0
..LDL4921:
/*   1039 */	ld1w	{z3.s}, p1/z, [x8, 1, mul vl]	//  (*)
	.loc 13 1050 0
..LDL4922:
/*   1050 */	fmla	z1.s, p2/m, z2.s, z0.s
	.loc 13 1118 0
..LDL4923:
/*   1118 */	sub	w0, w0, 3
	.loc 13 1041 0
..LDL4924:
/*   1041 */	ld1w	{z0.s}, p2/z, [x8, 2, mul vl]	//  (*)
	.loc 13 1044 0
..LDL4925:
/*   1044 */	ld1rw	{z2.s}, p5/z, [x9]	//  (*)
/*   1044 */	prfm	2, [x1, 2560]	//  (*)
/*   1044 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1116 0
..LDL4926:
/*   1116 */	add	x1, x6, 8
	.loc 13 1037 0
..LDL4927:
/*   1037 */	prfm	2, [x10, 2560]	//  (*)
/*   1037 */	prfm	0, [x10, 512]	//  (*)
	.loc 13 1044 0
..LDL4928:
/*   1044 */	prfm	2, [x6, 2560]	//  (*)
/*   1044 */	prfm	0, [x6, 512]	//  (*)
/*   1044 */	prfm	2, [x9, 2560]	//  (*)
/*   1044 */	prfm	0, [x9, 512]	//  (*)
	.loc 13 1046 0
..LDL4929:
/*   1046 */	fmla	z5.s, p0/m, z7.s, z25.s
	.loc 13 1048 0
..LDL4930:
/*   1048 */	fmla	z4.s, p1/m, z7.s, z24.s
	.loc 13 1050 0
..LDL4931:
/*   1050 */	fmla	z1.s, p2/m, z7.s, z6.s
	.loc 13 1046 0
..LDL4932:
/*   1046 */	fmla	z5.s, p0/m, z2.s, z27.s
	.loc 13 1048 0
..LDL4933:
/*   1048 */	fmla	z4.s, p1/m, z2.s, z3.s
	.loc 13 1050 0
..LDL4934:
/*   1050 */	fmla	z1.s, p2/m, z2.s, z0.s
	.loc 13 1118 0
..LDL4935:
/*   1118 */	cbz	w0, .L11994
.L11997:
	.p2align 5
.L12000:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL4936:
/*   1037 */	orr	x9, x2, 6917529027641081856
	.loc 13 1039 0
..LDL4937:
/*   1039 */	add	x8, x2, 64
	.loc 13 1044 0
..LDL4938:
/*   1044 */	prfm	2, [x1, 2560]	//  (*)
/*   1044 */	ptrue	p3.s, ALL
	.loc 13 1037 0
..LDL4939:
/*   1037 */	ld1w	{z6.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1041 0
..LDL4940:
/*   1041 */	add	x6, x2, 128
	.loc 13 1117 0
..LDL4941:
/*   1117 */	add	x2, x2, x4
	.loc 13 1039 0
..LDL4942:
/*   1039 */	ld1w	{z2.s}, p1/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1041 0
..LDL4943:
/*   1041 */	ld1w	{z0.s}, p2/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1118 0
..LDL4944:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1044 0
..LDL4945:
/*   1044 */	prfm	0, [x1, 512]	//  (*)
/*   1044 */	ld1rw	{z3.s}, p3/z, [x1]	//  (*)
	.loc 13 1116 0
..LDL4946:
/*   1116 */	add	x1, x1, 4
	.loc 13 1037 0
..LDL4947:
/*   1037 */	prfm	2, [x9, 2560]	//  (*)
/*   1037 */	prfm	0, [x9, 512]	//  (*)
	.loc 13 1046 0
..LDL4948:
/*   1046 */	fmla	z5.s, p0/m, z3.s, z6.s
	.loc 13 1048 0
..LDL4949:
/*   1048 */	fmla	z4.s, p1/m, z3.s, z2.s
	.loc 13 1050 0
..LDL4950:
/*   1050 */	fmla	z1.s, p2/m, z3.s, z0.s
	.loc 13 1118 0 is_stmt 0
..LDL4951:
/*   1118 */	bne	.L12000
.L11994:
.L11390:
	.loc 13 1123 0 is_stmt 1
..LDL4952:
/*   1123 */	st1w	{z5.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL4953:
/*   1125 */	st1w	{z4.s}, p1, [x5, 0, mul vl]	//  (*)
	.loc 13 1127 0
..LDL4954:
/*   1127 */	st1w	{z1.s}, p2, [x7, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL4955:
/*    ??? */	ldr	p4, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	p5, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 2
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D30.pchi:
	.cfi_endproc
.LFE29:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi1ELi48EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi1ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL4956:
.LFB30:
	.cfi_startproc
/*    ??? */	stp	x29, x30, [sp, -16]!	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_def_cfa 29, 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*   1185 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_offset 19, -24
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
	.loc 13 971 0
..LDL4957:
/*    971 */	ld1w	{z4.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 979 0
..LDL4958:
/*    979 */	sxtw	x4, w4
/*    979 */	add	x7, x3, x4, lsl #2
/*    979 */	ld1w	{z1.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL4959:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11398
/*   1034 */	mov	x5, 0
	.loc 13 1117 0 is_stmt 0
..LDL4960:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1034 0
..LDL4961:
/*   1034 */	subs	w0, w0, 2
/*   1034 */	bmi	.L11401
	.loc 13 1044 0
..LDL4962:
/*   1044 */	orr	x6, x1, 6917529027641081856
/*   1044 */	add	x9, x6, 12
	.loc 13 1053 0
..LDL4963:
/*   1053 */	mov	x8, 2564
/*   1053 */	mov	x6, 516
	.loc 13 1034 0
..LDL4964:
/*   1034 */	cmp	w0, 4
/*   1034 */	blt	.L12008
	.loc 13 1118 0
..LDL4965:
/*   1118 */	mov	x10, x9
	.loc 13 1037 0
..LDL4966:
/*   1037 */	orr	x9, x2, 6917529027641081856
	.loc 13 1044 0
..LDL4967:
/*   1044 */	ldr	s6, [x10, -12]	//  (*)
	.loc 13 1037 0
..LDL4968:
/*   1037 */	ld1w	{z3.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL4969:
/*   1053 */	ldr	s7, [x10, -8]	//  (*)
	.loc 13 1037 0
..LDL4970:
/*   1037 */	prfm	2, [x9, 2560]	//  (*)
/*   1037 */	prfm	0, [x9, 512]	//  (*)
	.p2align 5
.L11396:					// :entr:term:body:swpl
	.loc 13 1044 0
..LDL4971:
/*   1044 */	dup	z6.s, z6.s[0]
	.loc 13 1053 0
..LDL4972:
/*   1053 */	dup	z5.s, z7.s[0]
	.loc 13 1117 0
..LDL4973:
/*   1117 */	add	x2, x2, x4
	.loc 13 1044 0
..LDL4974:
/*   1044 */	ldr	s7, [x10, -4]	//  (*)
	.loc 13 1037 0
..LDL4975:
/*   1037 */	orr	x9, x2, 6917529027641081856
	.loc 13 1053 0
..LDL4976:
/*   1053 */	ptrue	p1.s, ALL
	.loc 13 1037 0
..LDL4977:
/*   1037 */	prfm	2, [x9, 2560]	//  (*)
/*   1037 */	prfm	0, [x9, 512]	//  (*)
/*   1037 */	ld1w	{z0.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL4978:
/*   1053 */	ld1rw	{z2.s}, p1/z, [x10]	//  (*)
	.loc 13 1046 0
..LDL4979:
/*   1046 */	fmla	z4.s, p0/m, z6.s, z3.s
	.loc 13 1055 0
..LDL4980:
/*   1055 */	fmla	z1.s, p0/m, z5.s, z3.s
	.loc 13 1118 0
..LDL4981:
/*   1118 */	add	x9, x10, 16
	.loc 13 1044 0
..LDL4982:
/*   1044 */	dup	z5.s, z7.s[0]
/*   1044 */	ldr	s6, [x10, 4]	//  (*)
	.loc 13 1117 0
..LDL4983:
/*   1117 */	add	x11, x2, x4
	.loc 13 1037 0
..LDL4984:
/*   1037 */	orr	x2, x11, 6917529027641081856
	.loc 13 1053 0
..LDL4985:
/*   1053 */	ldr	s7, [x10, 8]	//  (*)
	.loc 13 1037 0
..LDL4986:
/*   1037 */	prfm	2, [x2, 2560]	//  (*)
/*   1037 */	prfm	0, [x2, 512]	//  (*)
/*   1037 */	ld1w	{z3.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1046 0
..LDL4987:
/*   1046 */	fmla	z4.s, p0/m, z5.s, z0.s
	.loc 13 1055 0
..LDL4988:
/*   1055 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1044 0
..LDL4989:
/*   1044 */	dup	z6.s, z6.s[0]
	.loc 13 1053 0
..LDL4990:
/*   1053 */	dup	z5.s, z7.s[0]
	.loc 13 1117 0
..LDL4991:
/*   1117 */	add	x2, x11, x4
	.loc 13 1044 0
..LDL4992:
/*   1044 */	ldr	s7, [x10, 12]	//  (*)
	.loc 13 1037 0
..LDL4993:
/*   1037 */	orr	x11, x2, 6917529027641081856
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
/*   1037 */	prfm	0, [x11, 512]	//  (*)
/*   1037 */	ld1w	{z0.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL4994:
/*   1053 */	ld1rw	{z2.s}, p1/z, [x9]	//  (*)
	.loc 13 1046 0
..LDL4995:
/*   1046 */	fmla	z4.s, p0/m, z6.s, z3.s
	.loc 13 1055 0
..LDL4996:
/*   1055 */	fmla	z1.s, p0/m, z5.s, z3.s
	.loc 13 1118 0
..LDL4997:
/*   1118 */	add	x10, x10, 32
	.loc 13 1044 0
..LDL4998:
/*   1044 */	dup	z5.s, z7.s[0]
/*   1044 */	ldr	s6, [x10, -12]	//  (*)
	.loc 13 1117 0
..LDL4999:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL5000:
/*   1037 */	orr	x11, x2, 6917529027641081856
	.loc 13 1053 0
..LDL5001:
/*   1053 */	ldr	s7, [x10, -8]	//  (*)
	.loc 13 1037 0
..LDL5002:
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
/*   1037 */	prfm	0, [x11, 512]	//  (*)
/*   1037 */	ld1w	{z3.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1046 0
..LDL5003:
/*   1046 */	fmla	z4.s, p0/m, z5.s, z0.s
	.loc 13 1053 0
..LDL5004:
/*   1053 */	prfm	2, [x9, x8]	//  (*)
	.loc 13 1116 0
..LDL5005:
/*   1116 */	add	x5, x5, 32
	.loc 13 1053 0
..LDL5006:
/*   1053 */	prfm	0, [x9, x6]	//  (*)
	.loc 13 1055 0
..LDL5007:
/*   1055 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1118 0
..LDL5008:
/*   1118 */	sub	w0, w0, 4
	.loc 13 1036 0
..LDL5009:
/*   1036 */	cmp	w0, 4
/*   1036 */	bge	.L11396
	.loc 13 1044 0
..LDL5010:
/*   1044 */	dup	z6.s, z6.s[0]
	.loc 13 1117 0
..LDL5011:
/*   1117 */	add	x2, x4, x2
	.loc 13 1053 0
..LDL5012:
/*   1053 */	ptrue	p1.s, ALL
/*   1053 */	prfm	2, [x10, x8]	//  (*)
/*   1053 */	dup	z5.s, z7.s[0]
	.loc 13 1044 0
..LDL5013:
/*   1044 */	ldr	s7, [x10, -4]	//  (*)
	.loc 13 1037 0
..LDL5014:
/*   1037 */	orr	x9, x2, 6917529027641081856
	.loc 13 1118 0
..LDL5015:
/*   1118 */	sub	w0, w0, 2
	.loc 13 1037 0
..LDL5016:
/*   1037 */	prfm	2, [x9, 2560]	//  (*)
/*   1037 */	ld1w	{z0.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL5017:
/*   1117 */	add	x2, x2, x4
	.loc 13 1116 0
..LDL5018:
/*   1116 */	add	x5, x5, 16
	.loc 13 1037 0
..LDL5019:
/*   1037 */	prfm	0, [x9, 512]	//  (*)
	.loc 13 1053 0
..LDL5020:
/*   1053 */	ld1rw	{z2.s}, p1/z, [x10]	//  (*)
	.loc 13 1118 0
..LDL5021:
/*   1118 */	add	x9, x10, 16
/*   1118 */	cmp	w0, 0
	.loc 13 1053 0
..LDL5022:
/*   1053 */	prfm	0, [x10, x6]	//  (*)
	.loc 13 1046 0
..LDL5023:
/*   1046 */	fmla	z4.s, p0/m, z6.s, z3.s
	.loc 13 1055 0
..LDL5024:
/*   1055 */	fmla	z1.s, p0/m, z5.s, z3.s
	.loc 13 1044 0
..LDL5025:
/*   1044 */	dup	z3.s, z7.s[0]
	.loc 13 1046 0
..LDL5026:
/*   1046 */	fmla	z4.s, p0/m, z3.s, z0.s
	.loc 13 1055 0
..LDL5027:
/*   1055 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1118 0
..LDL5028:
/*   1118 */	blt	.L12005
.L12008:
	.p2align 5
.L12011:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL5029:
/*   1037 */	orr	x10, x2, 6917529027641081856
	.loc 13 1044 0
..LDL5030:
/*   1044 */	ldp	s3, s2, [x9, -12]	//  (*)
	.loc 13 1053 0
..LDL5031:
/*   1053 */	ptrue	p1.s, ALL
	.loc 13 1037 0
..LDL5032:
/*   1037 */	ld1w	{z0.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL5033:
/*   1117 */	add	x2, x4, x2
	.loc 13 1044 0
..LDL5034:
/*   1044 */	ldr	s7, [x9, -4]	//  (*)
	.loc 13 1118 0
..LDL5035:
	.loc 13 1116 0 is_stmt 0
..LDL5036:
/*   1116 */	add	x5, x5, 16
	.loc 13 1037 0 is_stmt 1
..LDL5037:
/*   1037 */	orr	x11, x2, 6917529027641081856
	.loc 13 1053 0
..LDL5038:
/*   1053 */	prfm	2, [x9, x8]	//  (*)
	.loc 13 1117 0
..LDL5039:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL5040:
/*   1037 */	ld1w	{z6.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL5041:
/*   1053 */	ld1rw	{z5.s}, p1/z, [x9]	//  (*)
	.loc 13 1118 0
..LDL5042:
/*   1118 */	subs	w0, w0, 2
	.loc 13 1037 0
..LDL5043:
/*   1037 */	prfm	2, [x10, 2560]	//  (*)
	.loc 13 1053 0
..LDL5044:
/*   1053 */	prfm	0, [x9, x6]	//  (*)
	.loc 13 1118 0
..LDL5045:
/*   1118 */	add	x9, x9, 16
	.loc 13 1037 0
..LDL5046:
/*   1037 */	prfm	0, [x10, 512]	//  (*)
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
/*   1037 */	prfm	0, [x11, 512]	//  (*)
	.loc 13 1044 0
..LDL5047:
/*   1044 */	dup	z3.s, z3.s[0]
	.loc 13 1053 0
..LDL5048:
/*   1053 */	dup	z2.s, z2.s[0]
	.loc 13 1044 0
..LDL5049:
/*   1044 */	dup	z7.s, z7.s[0]
	.loc 13 1046 0
..LDL5050:
/*   1046 */	fmla	z4.s, p0/m, z3.s, z0.s
	.loc 13 1055 0
..LDL5051:
/*   1055 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1046 0
..LDL5052:
/*   1046 */	fmla	z4.s, p0/m, z7.s, z6.s
	.loc 13 1055 0
..LDL5053:
/*   1055 */	fmla	z1.s, p0/m, z5.s, z6.s
	.loc 13 1118 0 is_stmt 0
..LDL5054:
/*   1118 */	bpl	.L12011
.L12005:
.L11401:
	.loc 13 1034 0 is_stmt 1
..LDL5055:
/*   1034 */	adds	w6, w0, 1
/*   1034 */	bmi	.L11398
	.loc 13 1044 0 is_stmt 0
..LDL5056:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x0, x5, 4
	.loc 13 1053 0
..LDL5057:
/*   1053 */	mov	x5, 2564
	.loc 13 1044 0
..LDL5058:
/*   1044 */	add	x1, x1, x0
	.loc 13 1053 0
..LDL5059:
/*   1053 */	mov	x0, 516
	.p2align 5
.L11407:					// :entr:term:mod
	.loc 13 1037 0 is_stmt 1
..LDL5060:
/*   1037 */	orr	x8, x2, 6917529027641081856
	.loc 13 1044 0
..LDL5061:
/*   1044 */	ldr	s3, [x1, -4]	//  (*)
	.loc 13 1053 0
..LDL5062:
/*   1053 */	prfm	2, [x1, x5]	//  (*)
/*   1053 */	ptrue	p1.s, ALL
	.loc 13 1037 0
..LDL5063:
/*   1037 */	ld1w	{z2.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL5064:
/*   1053 */	prfm	0, [x1, x0]	//  (*)
	.loc 13 1117 0
..LDL5065:
/*   1117 */	add	x2, x2, x4
	.loc 13 1118 0
..LDL5066:
/*   1118 */	subs	w6, w6, 1
	.loc 13 1037 0
..LDL5067:
/*   1037 */	prfm	2, [x8, 2560]	//  (*)
/*   1037 */	prfm	0, [x8, 512]	//  (*)
	.loc 13 1053 0
..LDL5068:
/*   1053 */	ld1rw	{z0.s}, p1/z, [x1]	//  (*)
	.loc 13 1116 0
..LDL5069:
/*   1116 */	add	x1, x1, 8
	.loc 13 1044 0
..LDL5070:
/*   1044 */	dup	z3.s, z3.s[0]
	.loc 13 1046 0
..LDL5071:
/*   1046 */	fmla	z4.s, p0/m, z3.s, z2.s
	.loc 13 1055 0
..LDL5072:
/*   1055 */	fmla	z1.s, p0/m, z0.s, z2.s
	.loc 13 1118 0 is_stmt 0
..LDL5073:
/*   1118 */	bpl	.L11407
.L11398:
	.loc 13 1123 0 is_stmt 1
..LDL5074:
/*   1123 */	st1w	{z4.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL5075:
/*   1131 */	st1w	{z1.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL5076:
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp], 16	//  (*)
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D31.pchi:
	.cfi_endproc
.LFE30:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL5077:
.LFB31:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -7
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xa,0x92,0x1d,0x0,0x11,0x38,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xa,0x11,0x8,0x22,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xa,0x11,0x78,0x22,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL5078:
/*    971 */	ld1w	{z7.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 973 0
..LDL5079:
/*    973 */	add	x7, x3, 64
	.loc 13 979 0
..LDL5080:
/*    979 */	sxtw	x5, w4
	.loc 13 973 0
..LDL5081:
/*    973 */	ld1w	{z6.s}, p1/z, [x7, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL5082:
/*    981 */	add	x4, x5, 16
	.loc 13 979 0
..LDL5083:
/*    979 */	add	x5, x3, x5, lsl #2
/*    979 */	ld1w	{z4.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL5084:
/*    981 */	add	x8, x3, x4, lsl #2
/*    981 */	ld1w	{z1.s}, p1/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL5085:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11414
	.loc 13 1117 0 is_stmt 0
..LDL5086:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL5087:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x1, x1, 4
	.loc 13 1053 0
..LDL5088:
/*   1053 */	mov	x6, 2564
/*   1053 */	mov	x9, 516
	.loc 13 1034 0
..LDL5089:
/*   1034 */	cmp	w0, 7
/*   1034 */	blt	.L12019
	.loc 13 1053 0
..LDL5090:
/*   1053 */	ptrue	p2.s, ALL
	.loc 13 1044 0
..LDL5091:
/*   1044 */	ldr	s0, [x1, -4]	//  (*)
	.loc 13 1037 0
..LDL5092:
/*   1037 */	orr	x14, x2, 6917529027641081856
	.loc 13 1117 0
..LDL5093:
/*   1117 */	add	x11, x2, x4
	.loc 13 1053 0
..LDL5094:
/*   1053 */	ptrue	p3.s, ALL
	.loc 13 1116 0
..LDL5095:
/*   1116 */	add	x15, x1, 8
	.loc 13 1037 0
..LDL5096:
/*   1037 */	orr	x10, x11, 6917529027641081856
	.loc 13 1039 0
..LDL5097:
/*   1039 */	ld1w	{z24.s}, p1/z, [x11, 1, mul vl]	//  (*)
	.loc 13 1037 0
..LDL5098:
/*   1037 */	ld1w	{z27.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL5099:
/*   1039 */	ld1w	{z2.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1117 0
..LDL5100:
/*   1117 */	add	x13, x11, x4
	.loc 13 1116 0
..LDL5101:
/*   1116 */	add	x12, x1, 16
	.loc 13 1053 0
..LDL5102:
/*   1053 */	ld1rw	{z5.s}, p2/z, [x1]	//  (*)
	.loc 13 1037 0
..LDL5103:
/*   1037 */	ld1w	{z26.s}, p0/z, [x10, 0, mul vl]	//  (*)
/*   1037 */	orr	x11, x13, 6917529027641081856
	.loc 13 1044 0
..LDL5104:
/*   1044 */	ldr	s10, [x1, 4]	//  (*)
	.loc 13 1053 0
..LDL5105:
/*   1053 */	ld1rw	{z25.s}, p3/z, [x15]	//  (*)
	.loc 13 1037 0
..LDL5106:
/*   1037 */	prfm	2, [x14, 2560]	//  (*)
	.loc 13 1044 0
..LDL5107:
/*   1044 */	ldr	s11, [x1, 12]	//  (*)
	.loc 13 1037 0
..LDL5108:
/*   1037 */	prfm	0, [x14, 512]	//  (*)
/*   1037 */	prfm	2, [x10, 2560]	//  (*)
/*   1037 */	prfm	0, [x10, 512]	//  (*)
	.loc 13 1044 0
..LDL5109:
/*   1044 */	dup	z0.s, z0.s[0]
	.p2align 5
.L11412:					// :entr:term:swpl
	.loc 13 1037 0
..LDL5110:
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
/*   1037 */	prfm	0, [x11, 512]	//  (*)
	.loc 13 1053 0
..LDL5111:
/*   1053 */	ptrue	p2.s, ALL
	.loc 13 1037 0
..LDL5112:
/*   1037 */	ld1w	{z9.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL5113:
/*   1117 */	add	x2, x13, x4
	.loc 13 1039 0
..LDL5114:
/*   1039 */	ld1w	{z31.s}, p1/z, [x13, 1, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5115:
/*   1116 */	add	x1, x12, 8
	.loc 13 1044 0
..LDL5116:
/*   1044 */	ldr	s12, [x12, 4]	//  (*)
/*   1044 */	dup	z30.s, z10.s[0]
	.loc 13 1037 0
..LDL5117:
/*   1037 */	orr	x10, x2, 6917529027641081856
	.loc 13 1046 0
..LDL5118:
/*   1046 */	fmla	z7.s, p0/m, z0.s, z27.s
	.loc 13 1053 0
..LDL5119:
/*   1053 */	ld1rw	{z8.s}, p2/z, [x12]	//  (*)
	.loc 13 1048 0
..LDL5120:
/*   1048 */	fmla	z6.s, p1/m, z0.s, z2.s
	.loc 13 1055 0
..LDL5121:
/*   1055 */	fmla	z4.s, p0/m, z5.s, z27.s
	.loc 13 1057 0
..LDL5122:
/*   1057 */	fmla	z1.s, p1/m, z5.s, z2.s
	.loc 13 1037 0
..LDL5123:
/*   1037 */	prfm	2, [x10, 2560]	//  (*)
/*   1037 */	prfm	0, [x10, 512]	//  (*)
/*   1037 */	ld1w	{z29.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL5124:
/*   1117 */	add	x11, x2, x4
	.loc 13 1039 0
..LDL5125:
/*   1039 */	ld1w	{z3.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5126:
/*   1116 */	add	x10, x12, 16
	.loc 13 1044 0
..LDL5127:
/*   1044 */	ldr	s13, [x12, 12]	//  (*)
/*   1044 */	dup	z0.s, z11.s[0]
	.loc 13 1037 0
..LDL5128:
/*   1037 */	orr	x2, x11, 6917529027641081856
	.loc 13 1046 0
..LDL5129:
/*   1046 */	fmla	z7.s, p0/m, z30.s, z26.s
	.loc 13 1053 0
..LDL5130:
/*   1053 */	ld1rw	{z28.s}, p2/z, [x1]	//  (*)
	.loc 13 1048 0
..LDL5131:
/*   1048 */	fmla	z6.s, p1/m, z30.s, z24.s
	.loc 13 1055 0
..LDL5132:
/*   1055 */	fmla	z4.s, p0/m, z25.s, z26.s
	.loc 13 1057 0
..LDL5133:
/*   1057 */	fmla	z1.s, p1/m, z25.s, z24.s
	.loc 13 1037 0
..LDL5134:
/*   1037 */	prfm	2, [x2, 2560]	//  (*)
/*   1037 */	prfm	0, [x2, 512]	//  (*)
/*   1037 */	ld1w	{z27.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL5135:
/*   1117 */	add	x2, x11, x4
	.loc 13 1039 0
..LDL5136:
/*   1039 */	ld1w	{z2.s}, p1/z, [x11, 1, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5137:
/*   1116 */	add	x14, x12, 24
	.loc 13 1044 0
..LDL5138:
/*   1044 */	ldr	s10, [x12, 20]	//  (*)
/*   1044 */	dup	z30.s, z12.s[0]
	.loc 13 1037 0
..LDL5139:
/*   1037 */	orr	x11, x2, 6917529027641081856
	.loc 13 1046 0
..LDL5140:
/*   1046 */	fmla	z7.s, p0/m, z0.s, z9.s
	.loc 13 1053 0
..LDL5141:
/*   1053 */	ld1rw	{z5.s}, p2/z, [x10]	//  (*)
	.loc 13 1048 0
..LDL5142:
/*   1048 */	fmla	z6.s, p1/m, z0.s, z31.s
	.loc 13 1055 0
..LDL5143:
/*   1055 */	fmla	z4.s, p0/m, z8.s, z9.s
	.loc 13 1057 0
..LDL5144:
/*   1057 */	fmla	z1.s, p1/m, z8.s, z31.s
	.loc 13 1037 0
..LDL5145:
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
/*   1037 */	prfm	0, [x11, 512]	//  (*)
/*   1037 */	ld1w	{z26.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL5146:
/*   1117 */	add	x13, x2, x4
	.loc 13 1039 0
..LDL5147:
/*   1039 */	ld1w	{z24.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5148:
/*   1116 */	add	x12, x12, 32
	.loc 13 1044 0
..LDL5149:
/*   1044 */	ldr	s11, [x12, -4]	//  (*)
/*   1044 */	dup	z0.s, z13.s[0]
	.loc 13 1053 0
..LDL5150:
/*   1053 */	prfm	2, [x1, x6]	//  (*)
	.loc 13 1037 0
..LDL5151:
/*   1037 */	orr	x11, x13, 6917529027641081856
	.loc 13 1053 0
..LDL5152:
/*   1053 */	prfm	0, [x1, x9]	//  (*)
	.loc 13 1046 0
..LDL5153:
/*   1046 */	fmla	z7.s, p0/m, z30.s, z29.s
	.loc 13 1053 0
..LDL5154:
/*   1053 */	ld1rw	{z25.s}, p2/z, [x14]	//  (*)
	.loc 13 1048 0
..LDL5155:
/*   1048 */	fmla	z6.s, p1/m, z30.s, z3.s
	.loc 13 1055 0
..LDL5156:
/*   1055 */	fmla	z4.s, p0/m, z28.s, z29.s
	.loc 13 1057 0
..LDL5157:
/*   1057 */	fmla	z1.s, p1/m, z28.s, z3.s
	.loc 13 1118 0
..LDL5158:
/*   1118 */	sub	w0, w0, 4
	.loc 13 1036 0
..LDL5159:
/*   1036 */	cmp	w0, 7
/*   1036 */	bge	.L11412
	.loc 13 1053 0
..LDL5160:
/*   1053 */	ptrue	p2.s, ALL
	.loc 13 1037 0
..LDL5161:
/*   1037 */	ld1w	{z3.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1046 0
..LDL5162:
/*   1046 */	fmla	z7.s, p0/m, z0.s, z27.s
	.loc 13 1055 0
..LDL5163:
/*   1055 */	fmla	z4.s, p0/m, z5.s, z27.s
	.loc 13 1048 0
..LDL5164:
/*   1048 */	fmla	z6.s, p1/m, z0.s, z2.s
	.loc 13 1117 0
..LDL5165:
/*   1117 */	add	x2, x13, x4
	.loc 13 1039 0
..LDL5166:
/*   1039 */	ld1w	{z0.s}, p1/z, [x13, 1, mul vl]	//  (*)
	.loc 13 1057 0
..LDL5167:
/*   1057 */	fmla	z1.s, p1/m, z5.s, z2.s
	.loc 13 1037 0
..LDL5168:
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
	.loc 13 1116 0
..LDL5169:
/*   1116 */	add	x1, x12, 8
	.loc 13 1044 0
..LDL5170:
/*   1044 */	dup	z27.s, z10.s[0]
	.loc 13 1118 0
..LDL5171:
/*   1118 */	sub	w0, w0, 3
	.loc 13 1037 0
..LDL5172:
/*   1037 */	prfm	0, [x11, 512]	//  (*)
	.loc 13 1053 0
..LDL5173:
/*   1053 */	ld1rw	{z2.s}, p2/z, [x12]	//  (*)
	.loc 13 1044 0
..LDL5174:
/*   1044 */	dup	z5.s, z11.s[0]
	.loc 13 1053 0
..LDL5175:
/*   1053 */	prfm	2, [x10, x6]	//  (*)
/*   1053 */	prfm	0, [x10, x9]	//  (*)
/*   1053 */	prfm	2, [x14, x6]	//  (*)
/*   1053 */	prfm	0, [x14, x9]	//  (*)
/*   1053 */	prfm	2, [x12, x6]	//  (*)
/*   1053 */	prfm	0, [x12, x9]	//  (*)
	.loc 13 1046 0
..LDL5176:
/*   1046 */	fmla	z7.s, p0/m, z27.s, z26.s
	.loc 13 1055 0
..LDL5177:
/*   1055 */	fmla	z4.s, p0/m, z25.s, z26.s
	.loc 13 1048 0
..LDL5178:
/*   1048 */	fmla	z6.s, p1/m, z27.s, z24.s
	.loc 13 1057 0
..LDL5179:
/*   1057 */	fmla	z1.s, p1/m, z25.s, z24.s
	.loc 13 1046 0
..LDL5180:
/*   1046 */	fmla	z7.s, p0/m, z5.s, z3.s
	.loc 13 1055 0
..LDL5181:
/*   1055 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1048 0
..LDL5182:
/*   1048 */	fmla	z6.s, p1/m, z5.s, z0.s
	.loc 13 1057 0
..LDL5183:
/*   1057 */	fmla	z1.s, p1/m, z2.s, z0.s
	.loc 13 1118 0
..LDL5184:
/*   1118 */	cbz	w0, .L12016
.L12019:
	.p2align 5
.L12022:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL5185:
/*   1037 */	orr	x11, x2, 6917529027641081856
	.loc 13 1039 0
..LDL5186:
/*   1039 */	add	x10, x2, 64
	.loc 13 1044 0
..LDL5187:
/*   1044 */	ldr	s5, [x1, -4]	//  (*)
	.loc 13 1053 0
..LDL5188:
/*   1053 */	ptrue	p2.s, ALL
	.loc 13 1037 0
..LDL5189:
/*   1037 */	ld1w	{z3.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL5190:
/*   1039 */	ld1w	{z0.s}, p1/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL5191:
/*   1117 */	add	x2, x2, x4
	.loc 13 1118 0
..LDL5192:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1053 0
..LDL5193:
/*   1053 */	prfm	2, [x1, x6]	//  (*)
/*   1053 */	prfm	0, [x1, x9]	//  (*)
	.loc 13 1037 0
..LDL5194:
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
	.loc 13 1053 0
..LDL5195:
/*   1053 */	ld1rw	{z2.s}, p2/z, [x1]	//  (*)
	.loc 13 1116 0
..LDL5196:
/*   1116 */	add	x1, x1, 8
	.loc 13 1037 0
..LDL5197:
/*   1037 */	prfm	0, [x11, 512]	//  (*)
	.loc 13 1044 0
..LDL5198:
/*   1044 */	dup	z5.s, z5.s[0]
	.loc 13 1046 0
..LDL5199:
/*   1046 */	fmla	z7.s, p0/m, z5.s, z3.s
	.loc 13 1048 0
..LDL5200:
/*   1048 */	fmla	z6.s, p1/m, z5.s, z0.s
	.loc 13 1055 0
..LDL5201:
/*   1055 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1057 0
..LDL5202:
/*   1057 */	fmla	z1.s, p1/m, z2.s, z0.s
	.loc 13 1118 0 is_stmt 0
..LDL5203:
/*   1118 */	bne	.L12022
.L12016:
.L11414:
	.loc 13 1123 0 is_stmt 1
..LDL5204:
/*   1123 */	st1w	{z7.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL5205:
/*   1125 */	st1w	{z6.s}, p1, [x7, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL5206:
/*   1131 */	st1w	{z4.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1133 0
..LDL5207:
/*   1133 */	st1w	{z1.s}, p1, [x8, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL5208:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 7
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D32.pchi:
	.cfi_endproc
.LFE31:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi2ELi48EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi2ELi48EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi2ELi48EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi2ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi2ELi48EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi2ELi48EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL5209:
.LFB32:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -10
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xd0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x78,0x22,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	p4, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x34,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL5210:
/*    971 */	ld1w	{z26.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 973 0
..LDL5211:
/*    973 */	add	x8, x3, 64
	.loc 13 979 0
..LDL5212:
/*    979 */	sxtw	x7, w4
	.loc 13 973 0
..LDL5213:
/*    973 */	ld1w	{z25.s}, p1/z, [x8, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL5214:
/*    981 */	add	x5, x7, 16
	.loc 13 983 0
..LDL5215:
/*    983 */	add	x4, x7, 32
	.loc 13 979 0
..LDL5216:
/*    979 */	add	x7, x3, x7, lsl #2
	.loc 13 975 0
..LDL5217:
/*    975 */	add	x12, x3, 128
/*    975 */	ld1w	{z6.s}, p2/z, [x12, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL5218:
/*    981 */	add	x9, x3, x5, lsl #2
	.loc 13 979 0
..LDL5219:
/*    979 */	ld1w	{z24.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL5220:
/*    981 */	ld1w	{z4.s}, p1/z, [x9, 0, mul vl]	//  (*)
	.loc 13 983 0
..LDL5221:
/*    983 */	add	x10, x3, x4, lsl #2
/*    983 */	ld1w	{z1.s}, p2/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL5222:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11422
	.loc 13 1117 0 is_stmt 0
..LDL5223:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL5224:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x1, x1, 4
	.loc 13 1053 0
..LDL5225:
/*   1053 */	mov	x11, 2564
/*   1053 */	mov	x6, 516
	.loc 13 1034 0
..LDL5226:
/*   1034 */	cmp	w0, 7
/*   1034 */	blt	.L12030
	.loc 13 1053 0
..LDL5227:
/*   1053 */	ptrue	p4.s, ALL
	.loc 13 1037 0
..LDL5228:
/*   1037 */	orr	x15, x2, 6917529027641081856
	.loc 13 1117 0
..LDL5229:
/*   1117 */	add	x5, x2, x4
	.loc 13 1044 0
..LDL5230:
/*   1044 */	ldr	s3, [x1, -4]	//  (*)
	.loc 13 1053 0
..LDL5231:
/*   1053 */	ptrue	p3.s, ALL
	.loc 13 1037 0
..LDL5232:
/*   1037 */	orr	x17, x5, 6917529027641081856
	.loc 13 1116 0
..LDL5233:
/*   1116 */	add	x16, x1, 8
	.loc 13 1039 0
..LDL5234:
/*   1039 */	ld1w	{z29.s}, p1/z, [x5, 1, mul vl]	//  (*)
	.loc 13 1037 0
..LDL5235:
/*   1037 */	ld1w	{z30.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL5236:
/*   1117 */	add	x13, x5, x4
	.loc 13 1041 0
..LDL5237:
/*   1041 */	ld1w	{z27.s}, p2/z, [x5, 2, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5238:
/*   1116 */	add	x5, x1, 16
	.loc 13 1039 0
..LDL5239:
/*   1039 */	ld1w	{z5.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1041 0
..LDL5240:
/*   1041 */	ld1w	{z0.s}, p2/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1037 0
..LDL5241:
/*   1037 */	orr	x14, x13, 6917529027641081856
	.loc 13 1053 0
..LDL5242:
/*   1053 */	ld1rw	{z2.s}, p4/z, [x1]	//  (*)
	.loc 13 1037 0
..LDL5243:
/*   1037 */	ld1w	{z31.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL5244:
/*   1044 */	ldr	s13, [x1, 4]	//  (*)
	.loc 13 1053 0
..LDL5245:
/*   1053 */	ld1rw	{z28.s}, p3/z, [x16]	//  (*)
	.loc 13 1037 0
..LDL5246:
/*   1037 */	prfm	2, [x15, 2560]	//  (*)
/*   1037 */	prfm	0, [x15, 512]	//  (*)
/*   1037 */	prfm	2, [x17, 2560]	//  (*)
/*   1037 */	prfm	0, [x17, 512]	//  (*)
	.loc 13 1044 0
..LDL5247:
/*   1044 */	dup	z3.s, z3.s[0]
	.loc 13 1037 0
..LDL5248:
/*   1037 */	prfm	2, [x14, 2560]	//  (*)
	.p2align 5
.L11420:					// :entr:term:swpl
/*   1037 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 1117 0
..LDL5249:
/*   1117 */	add	x2, x13, x4
	.loc 13 1044 0
..LDL5250:
/*   1044 */	ldr	s8, [x5, -4]	//  (*)
	.loc 13 1037 0
..LDL5251:
/*   1037 */	ld1w	{z15.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL5252:
/*   1053 */	ptrue	p3.s, ALL
	.loc 13 1039 0
..LDL5253:
/*   1039 */	ld1w	{z14.s}, p1/z, [x13, 1, mul vl]	//  (*)
	.loc 13 1037 0
..LDL5254:
/*   1037 */	orr	x14, x2, 6917529027641081856
	.loc 13 1041 0
..LDL5255:
/*   1041 */	ld1w	{z12.s}, p2/z, [x13, 2, mul vl]	//  (*)
	.loc 13 1044 0
..LDL5256:
/*   1044 */	dup	z10.s, z13.s[0]
	.loc 13 1046 0
..LDL5257:
/*   1046 */	fmla	z26.s, p0/m, z3.s, z30.s
	.loc 13 1048 0
..LDL5258:
/*   1048 */	fmla	z25.s, p1/m, z3.s, z5.s
	.loc 13 1116 0
..LDL5259:
/*   1116 */	add	x1, x5, 8
	.loc 13 1053 0
..LDL5260:
/*   1053 */	ld1rw	{z13.s}, p3/z, [x5]	//  (*)
	.loc 13 1055 0
..LDL5261:
/*   1055 */	fmla	z24.s, p0/m, z2.s, z30.s
	.loc 13 1050 0
..LDL5262:
/*   1050 */	fmla	z6.s, p2/m, z3.s, z0.s
	.loc 13 1057 0
..LDL5263:
/*   1057 */	fmla	z4.s, p1/m, z2.s, z5.s
	.loc 13 1059 0
..LDL5264:
/*   1059 */	fmla	z1.s, p2/m, z2.s, z0.s
	.loc 13 1037 0
..LDL5265:
/*   1037 */	prfm	2, [x14, 2560]	//  (*)
/*   1037 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 1117 0
..LDL5266:
/*   1117 */	add	x13, x2, x4
	.loc 13 1044 0
..LDL5267:
/*   1044 */	ldr	s2, [x5, 4]	//  (*)
	.loc 13 1037 0
..LDL5268:
/*   1037 */	ld1w	{z11.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL5269:
/*   1039 */	ld1w	{z9.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1037 0
..LDL5270:
/*   1037 */	orr	x14, x13, 6917529027641081856
	.loc 13 1041 0
..LDL5271:
/*   1041 */	ld1w	{z7.s}, p2/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1044 0
..LDL5272:
/*   1044 */	dup	z3.s, z8.s[0]
	.loc 13 1046 0
..LDL5273:
/*   1046 */	fmla	z26.s, p0/m, z10.s, z31.s
	.loc 13 1048 0
..LDL5274:
/*   1048 */	fmla	z25.s, p1/m, z10.s, z29.s
	.loc 13 1116 0
..LDL5275:
/*   1116 */	add	x16, x5, 16
	.loc 13 1053 0
..LDL5276:
/*   1053 */	ld1rw	{z8.s}, p3/z, [x1]	//  (*)
	.loc 13 1055 0
..LDL5277:
/*   1055 */	fmla	z24.s, p0/m, z28.s, z31.s
	.loc 13 1050 0
..LDL5278:
/*   1050 */	fmla	z6.s, p2/m, z10.s, z27.s
	.loc 13 1057 0
..LDL5279:
/*   1057 */	fmla	z4.s, p1/m, z28.s, z29.s
	.loc 13 1059 0
..LDL5280:
/*   1059 */	fmla	z1.s, p2/m, z28.s, z27.s
	.loc 13 1037 0
..LDL5281:
/*   1037 */	prfm	2, [x14, 2560]	//  (*)
/*   1037 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 1117 0
..LDL5282:
/*   1117 */	add	x2, x13, x4
	.loc 13 1044 0
..LDL5283:
/*   1044 */	ldr	s28, [x5, 12]	//  (*)
	.loc 13 1037 0
..LDL5284:
/*   1037 */	ld1w	{z30.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL5285:
/*   1039 */	ld1w	{z5.s}, p1/z, [x13, 1, mul vl]	//  (*)
	.loc 13 1037 0
..LDL5286:
/*   1037 */	orr	x14, x2, 6917529027641081856
	.loc 13 1041 0
..LDL5287:
/*   1041 */	ld1w	{z0.s}, p2/z, [x13, 2, mul vl]	//  (*)
	.loc 13 1044 0
..LDL5288:
/*   1044 */	dup	z10.s, z2.s[0]
	.loc 13 1046 0
..LDL5289:
/*   1046 */	fmla	z26.s, p0/m, z3.s, z15.s
	.loc 13 1048 0
..LDL5290:
/*   1048 */	fmla	z25.s, p1/m, z3.s, z14.s
	.loc 13 1116 0
..LDL5291:
/*   1116 */	add	x15, x5, 24
	.loc 13 1053 0
..LDL5292:
/*   1053 */	ld1rw	{z2.s}, p3/z, [x16]	//  (*)
	.loc 13 1055 0
..LDL5293:
/*   1055 */	fmla	z24.s, p0/m, z13.s, z15.s
	.loc 13 1050 0
..LDL5294:
/*   1050 */	fmla	z6.s, p2/m, z3.s, z12.s
	.loc 13 1057 0
..LDL5295:
/*   1057 */	fmla	z4.s, p1/m, z13.s, z14.s
	.loc 13 1059 0
..LDL5296:
/*   1059 */	fmla	z1.s, p2/m, z13.s, z12.s
	.loc 13 1037 0
..LDL5297:
/*   1037 */	prfm	2, [x14, 2560]	//  (*)
/*   1037 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 1117 0
..LDL5298:
/*   1117 */	add	x13, x2, x4
	.loc 13 1044 0
..LDL5299:
/*   1044 */	ldr	s13, [x5, 20]	//  (*)
	.loc 13 1037 0
..LDL5300:
/*   1037 */	ld1w	{z31.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL5301:
/*   1039 */	ld1w	{z29.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1037 0
..LDL5302:
/*   1037 */	orr	x14, x13, 6917529027641081856
	.loc 13 1041 0
..LDL5303:
/*   1041 */	ld1w	{z27.s}, p2/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1044 0
..LDL5304:
/*   1044 */	dup	z3.s, z28.s[0]
	.loc 13 1046 0
..LDL5305:
/*   1046 */	fmla	z26.s, p0/m, z10.s, z11.s
	.loc 13 1048 0
..LDL5306:
/*   1048 */	fmla	z25.s, p1/m, z10.s, z9.s
	.loc 13 1053 0
..LDL5307:
/*   1053 */	prfm	2, [x1, x11]	//  (*)
	.loc 13 1116 0
..LDL5308:
/*   1116 */	add	x5, x5, 32
	.loc 13 1053 0
..LDL5309:
/*   1053 */	prfm	0, [x1, x6]	//  (*)
/*   1053 */	ld1rw	{z28.s}, p3/z, [x15]	//  (*)
	.loc 13 1055 0
..LDL5310:
/*   1055 */	fmla	z24.s, p0/m, z8.s, z11.s
	.loc 13 1050 0
..LDL5311:
/*   1050 */	fmla	z6.s, p2/m, z10.s, z7.s
	.loc 13 1057 0
..LDL5312:
/*   1057 */	fmla	z4.s, p1/m, z8.s, z9.s
	.loc 13 1059 0
..LDL5313:
/*   1059 */	fmla	z1.s, p2/m, z8.s, z7.s
	.loc 13 1037 0
..LDL5314:
/*   1037 */	prfm	2, [x14, 2560]	//  (*)
	.loc 13 1118 0
..LDL5315:
/*   1118 */	sub	w0, w0, 4
	.loc 13 1036 0
..LDL5316:
/*   1036 */	cmp	w0, 7
/*   1036 */	bge	.L11420
	.loc 13 1044 0
..LDL5317:
/*   1044 */	ldr	s8, [x5, -4]	//  (*)
	.loc 13 1053 0
..LDL5318:
/*   1053 */	ptrue	p3.s, ALL
	.loc 13 1046 0
..LDL5319:
/*   1046 */	fmla	z26.s, p0/m, z3.s, z30.s
	.loc 13 1055 0
..LDL5320:
/*   1055 */	fmla	z24.s, p0/m, z2.s, z30.s
	.loc 13 1048 0
..LDL5321:
/*   1048 */	fmla	z25.s, p1/m, z3.s, z5.s
	.loc 13 1117 0
..LDL5322:
/*   1117 */	add	x2, x13, x4
	.loc 13 1037 0
..LDL5323:
/*   1037 */	ld1w	{z7.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1050 0
..LDL5324:
/*   1050 */	fmla	z6.s, p2/m, z3.s, z0.s
	.loc 13 1039 0
..LDL5325:
/*   1039 */	ld1w	{z3.s}, p1/z, [x13, 1, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5326:
/*   1116 */	add	x1, x5, 8
	.loc 13 1057 0
..LDL5327:
/*   1057 */	fmla	z4.s, p1/m, z2.s, z5.s
	.loc 13 1059 0
..LDL5328:
/*   1059 */	fmla	z1.s, p2/m, z2.s, z0.s
	.loc 13 1041 0
..LDL5329:
/*   1041 */	ld1w	{z0.s}, p2/z, [x13, 2, mul vl]	//  (*)
	.loc 13 1044 0
..LDL5330:
/*   1044 */	dup	z30.s, z13.s[0]
	.loc 13 1118 0
..LDL5331:
/*   1118 */	sub	w0, w0, 3
	.loc 13 1037 0
..LDL5332:
/*   1037 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 1053 0
..LDL5333:
/*   1053 */	ld1rw	{z2.s}, p3/z, [x5]	//  (*)
/*   1053 */	prfm	2, [x16, x11]	//  (*)
/*   1053 */	prfm	0, [x16, x6]	//  (*)
/*   1053 */	prfm	2, [x15, x11]	//  (*)
/*   1053 */	prfm	0, [x15, x6]	//  (*)
/*   1053 */	prfm	2, [x5, x11]	//  (*)
/*   1053 */	prfm	0, [x5, x6]	//  (*)
	.loc 13 1044 0
..LDL5334:
/*   1044 */	dup	z5.s, z8.s[0]
	.loc 13 1046 0
..LDL5335:
/*   1046 */	fmla	z26.s, p0/m, z30.s, z31.s
	.loc 13 1055 0
..LDL5336:
/*   1055 */	fmla	z24.s, p0/m, z28.s, z31.s
	.loc 13 1048 0
..LDL5337:
/*   1048 */	fmla	z25.s, p1/m, z30.s, z29.s
	.loc 13 1050 0
..LDL5338:
/*   1050 */	fmla	z6.s, p2/m, z30.s, z27.s
	.loc 13 1057 0
..LDL5339:
/*   1057 */	fmla	z4.s, p1/m, z28.s, z29.s
	.loc 13 1059 0
..LDL5340:
/*   1059 */	fmla	z1.s, p2/m, z28.s, z27.s
	.loc 13 1046 0
..LDL5341:
/*   1046 */	fmla	z26.s, p0/m, z5.s, z7.s
	.loc 13 1055 0
..LDL5342:
/*   1055 */	fmla	z24.s, p0/m, z2.s, z7.s
	.loc 13 1048 0
..LDL5343:
/*   1048 */	fmla	z25.s, p1/m, z5.s, z3.s
	.loc 13 1050 0
..LDL5344:
/*   1050 */	fmla	z6.s, p2/m, z5.s, z0.s
	.loc 13 1057 0
..LDL5345:
/*   1057 */	fmla	z4.s, p1/m, z2.s, z3.s
	.loc 13 1059 0
..LDL5346:
/*   1059 */	fmla	z1.s, p2/m, z2.s, z0.s
	.loc 13 1118 0
..LDL5347:
/*   1118 */	cbz	w0, .L12027
.L12030:
	.p2align 5
.L12033:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL5348:
/*   1037 */	orr	x14, x2, 6917529027641081856
	.loc 13 1039 0
..LDL5349:
/*   1039 */	add	x13, x2, 64
	.loc 13 1044 0
..LDL5350:
/*   1044 */	ldr	s7, [x1, -4]	//  (*)
	.loc 13 1053 0
..LDL5351:
/*   1053 */	ptrue	p3.s, ALL
	.loc 13 1037 0
..LDL5352:
/*   1037 */	ld1w	{z2.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1041 0
..LDL5353:
/*   1041 */	add	x5, x2, 128
	.loc 13 1117 0
..LDL5354:
/*   1117 */	add	x2, x2, x4
	.loc 13 1039 0
..LDL5355:
/*   1039 */	ld1w	{z0.s}, p1/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1041 0
..LDL5356:
/*   1041 */	ld1w	{z5.s}, p2/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1118 0
..LDL5357:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1053 0
..LDL5358:
/*   1053 */	prfm	2, [x1, x11]	//  (*)
/*   1053 */	ld1rw	{z3.s}, p3/z, [x1]	//  (*)
	.loc 13 1037 0
..LDL5359:
/*   1037 */	prfm	2, [x14, 2560]	//  (*)
	.loc 13 1053 0
..LDL5360:
/*   1053 */	prfm	0, [x1, x6]	//  (*)
	.loc 13 1116 0
..LDL5361:
/*   1116 */	add	x1, x1, 8
	.loc 13 1037 0
..LDL5362:
/*   1037 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 1044 0
..LDL5363:
/*   1044 */	dup	z7.s, z7.s[0]
	.loc 13 1046 0
..LDL5364:
/*   1046 */	fmla	z26.s, p0/m, z7.s, z2.s
	.loc 13 1048 0
..LDL5365:
/*   1048 */	fmla	z25.s, p1/m, z7.s, z0.s
	.loc 13 1050 0
..LDL5366:
/*   1050 */	fmla	z6.s, p2/m, z7.s, z5.s
	.loc 13 1055 0
..LDL5367:
/*   1055 */	fmla	z24.s, p0/m, z3.s, z2.s
	.loc 13 1057 0
..LDL5368:
/*   1057 */	fmla	z4.s, p1/m, z3.s, z0.s
	.loc 13 1059 0
..LDL5369:
/*   1059 */	fmla	z1.s, p2/m, z3.s, z5.s
	.loc 13 1118 0 is_stmt 0
..LDL5370:
/*   1118 */	bne	.L12033
.L12027:
.L11422:
	.loc 13 1123 0 is_stmt 1
..LDL5371:
/*   1123 */	st1w	{z26.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL5372:
/*   1125 */	st1w	{z25.s}, p1, [x8, 0, mul vl]	//  (*)
	.loc 13 1127 0
..LDL5373:
/*   1127 */	st1w	{z6.s}, p2, [x12, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL5374:
/*   1131 */	st1w	{z24.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1133 0
..LDL5375:
/*   1133 */	st1w	{z4.s}, p1, [x9, 0, mul vl]	//  (*)
	.loc 13 1135 0
..LDL5376:
/*   1135 */	st1w	{z1.s}, p2, [x10, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL5377:
/*    ??? */	ldr	p4, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z8, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 10
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D33.pchi:
	.cfi_endproc
.LFE32:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi2ELi48EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi2ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL5378:
.LFB33:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -4
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xa,0x92,0x1d,0x0,0x11,0x20,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xa,0x11,0x8,0x22,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xa,0x11,0x78,0x22,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL5379:
/*    971 */	ld1w	{z6.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 979 0
..LDL5380:
/*    979 */	sxtw	x5, w4
	.loc 13 987 0
..LDL5381:
/*    987 */	add	w4, w4, w4
/*    987 */	sxtw	x4, w4
	.loc 13 979 0
..LDL5382:
/*    979 */	add	x5, x3, x5, lsl #2
/*    979 */	ld1w	{z4.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL5383:
/*    987 */	add	x7, x3, x4, lsl #2
/*    987 */	ld1w	{z1.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL5384:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11430
	.loc 13 1117 0 is_stmt 0
..LDL5385:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL5386:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x1, x1, 8
	.loc 13 1034 0
..LDL5387:
/*   1034 */	cmp	w0, 7
/*   1034 */	blt	.L12041
	.loc 13 1062 0
..LDL5388:
/*   1062 */	ptrue	p1.s, ALL
/*   1044 */	ldp	s5, s0, [x1, -8]	//  (*)
	.loc 13 1117 0
..LDL5389:
/*   1117 */	add	x6, x2, x4
	.loc 13 1062 0
..LDL5390:
/*   1062 */	ptrue	p2.s, ALL
	.loc 13 1037 0
..LDL5391:
/*   1037 */	orr	x9, x2, 6917529027641081856
	.loc 13 1116 0
..LDL5392:
/*   1116 */	add	x11, x1, 12
	.loc 13 1044 0
..LDL5393:
/*   1044 */	ldr	s8, [x1, 4]	//  (*)
	.loc 13 1037 0
..LDL5394:
/*   1037 */	ld1w	{z2.s}, p0/z, [x9, 0, mul vl]	//  (*)
/*   1037 */	orr	x10, x6, 6917529027641081856
	.loc 13 1117 0
..LDL5395:
/*   1117 */	add	x2, x6, x4
	.loc 13 1062 0
..LDL5396:
/*   1062 */	ld1rw	{z3.s}, p1/z, [x1]	//  (*)
	.loc 13 1037 0
..LDL5397:
/*   1037 */	ld1w	{z7.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5398:
/*   1116 */	add	x6, x1, 24
	.loc 13 1037 0
..LDL5399:
/*   1037 */	orr	x8, x2, 6917529027641081856
	.loc 13 1053 0
..LDL5400:
/*   1053 */	ldr	s31, [x1, 8]	//  (*)
	.loc 13 1062 0
..LDL5401:
/*   1062 */	ld1rw	{z24.s}, p2/z, [x11]	//  (*)
/*   1044 */	ldp	s30, s29, [x1, 16]	//  (*)
	.loc 13 1037 0
..LDL5402:
/*   1037 */	prfm	2, [x9, 2560]	//  (*)
/*   1037 */	prfm	0, [x9, 512]	//  (*)
/*   1037 */	prfm	2, [x10, 2560]	//  (*)
/*   1037 */	prfm	0, [x10, 512]	//  (*)
	.loc 13 1044 0
..LDL5403:
/*   1044 */	dup	z25.s, z5.s[0]
	.loc 13 1053 0
..LDL5404:
/*   1053 */	dup	z5.s, z0.s[0]
	.p2align 5
.L11428:					// :entr:term:swpl
	.loc 13 1037 0
..LDL5405:
/*   1037 */	prfm	2, [x8, 2560]	//  (*)
	.loc 13 1117 0
..LDL5406:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL5407:
/*   1037 */	prfm	0, [x8, 512]	//  (*)
	.loc 13 1062 0
..LDL5408:
/*   1062 */	ptrue	p1.s, ALL
	.loc 13 1037 0
..LDL5409:
/*   1037 */	ld1w	{z28.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL5410:
/*   1044 */	dup	z26.s, z8.s[0]
	.loc 13 1116 0
..LDL5411:
/*   1116 */	add	x1, x6, 12
/*   1044 */	ldp	s8, s9, [x6, 4]	//  (*)
	.loc 13 1053 0
..LDL5412:
/*   1053 */	dup	z27.s, z31.s[0]
	.loc 13 1037 0
..LDL5413:
/*   1037 */	orr	x8, x2, 6917529027641081856
	.loc 13 1046 0
..LDL5414:
/*   1046 */	fmla	z6.s, p0/m, z25.s, z2.s
	.loc 13 1062 0
..LDL5415:
/*   1062 */	ld1rw	{z25.s}, p1/z, [x6]	//  (*)
	.loc 13 1055 0
..LDL5416:
/*   1055 */	fmla	z4.s, p0/m, z5.s, z2.s
	.loc 13 1064 0
..LDL5417:
/*   1064 */	fmla	z1.s, p0/m, z3.s, z2.s
	.loc 13 1037 0
..LDL5418:
/*   1037 */	prfm	2, [x8, 2560]	//  (*)
	.loc 13 1117 0
..LDL5419:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL5420:
/*   1037 */	prfm	0, [x8, 512]	//  (*)
/*   1037 */	ld1w	{z0.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL5421:
/*   1044 */	dup	z3.s, z30.s[0]
	.loc 13 1116 0
..LDL5422:
/*   1116 */	add	x9, x6, 24
/*   1044 */	ldp	s30, s10, [x6, 16]	//  (*)
	.loc 13 1053 0
..LDL5423:
/*   1053 */	dup	z5.s, z29.s[0]
	.loc 13 1037 0
..LDL5424:
/*   1037 */	orr	x8, x2, 6917529027641081856
	.loc 13 1046 0
..LDL5425:
/*   1046 */	fmla	z6.s, p0/m, z26.s, z7.s
	.loc 13 1062 0
..LDL5426:
/*   1062 */	ld1rw	{z26.s}, p1/z, [x1]	//  (*)
	.loc 13 1055 0
..LDL5427:
/*   1055 */	fmla	z4.s, p0/m, z27.s, z7.s
	.loc 13 1064 0
..LDL5428:
/*   1064 */	fmla	z1.s, p0/m, z24.s, z7.s
	.loc 13 1037 0
..LDL5429:
/*   1037 */	prfm	2, [x8, 2560]	//  (*)
	.loc 13 1117 0
..LDL5430:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL5431:
/*   1037 */	prfm	0, [x8, 512]	//  (*)
/*   1037 */	ld1w	{z2.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL5432:
/*   1044 */	dup	z24.s, z8.s[0]
	.loc 13 1116 0
..LDL5433:
/*   1116 */	add	x10, x6, 36
/*   1044 */	ldp	s8, s31, [x6, 28]	//  (*)
	.loc 13 1053 0
..LDL5434:
/*   1053 */	dup	z27.s, z9.s[0]
	.loc 13 1037 0
..LDL5435:
/*   1037 */	orr	x8, x2, 6917529027641081856
	.loc 13 1046 0
..LDL5436:
/*   1046 */	fmla	z6.s, p0/m, z3.s, z28.s
	.loc 13 1062 0
..LDL5437:
/*   1062 */	ld1rw	{z3.s}, p1/z, [x9]	//  (*)
	.loc 13 1055 0
..LDL5438:
/*   1055 */	fmla	z4.s, p0/m, z5.s, z28.s
	.loc 13 1064 0
..LDL5439:
/*   1064 */	fmla	z1.s, p0/m, z25.s, z28.s
	.loc 13 1037 0
..LDL5440:
/*   1037 */	prfm	2, [x8, 2560]	//  (*)
	.loc 13 1117 0
..LDL5441:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL5442:
/*   1037 */	prfm	0, [x8, 512]	//  (*)
/*   1037 */	ld1w	{z7.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL5443:
/*   1044 */	dup	z25.s, z30.s[0]
	.loc 13 1116 0
..LDL5444:
/*   1116 */	add	x6, x6, 48
/*   1044 */	ldp	s30, s29, [x6, -8]	//  (*)
	.loc 13 1053 0
..LDL5445:
/*   1053 */	dup	z5.s, z10.s[0]
	.loc 13 1037 0
..LDL5446:
/*   1037 */	orr	x8, x2, 6917529027641081856
	.loc 13 1062 0
..LDL5447:
/*   1062 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 1046 0
..LDL5448:
/*   1046 */	fmla	z6.s, p0/m, z24.s, z0.s
	.loc 13 1062 0
..LDL5449:
/*   1062 */	ld1rw	{z24.s}, p1/z, [x10]	//  (*)
	.loc 13 1055 0
..LDL5450:
/*   1055 */	fmla	z4.s, p0/m, z27.s, z0.s
	.loc 13 1062 0
..LDL5451:
/*   1062 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1064 0
..LDL5452:
/*   1064 */	fmla	z1.s, p0/m, z26.s, z0.s
	.loc 13 1118 0
..LDL5453:
/*   1118 */	sub	w0, w0, 4
	.loc 13 1036 0
..LDL5454:
/*   1036 */	cmp	w0, 7
/*   1036 */	bge	.L11428
	.loc 13 1062 0
..LDL5455:
/*   1062 */	ptrue	p1.s, ALL
	.loc 13 1037 0
..LDL5456:
/*   1037 */	ld1w	{z0.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1046 0
..LDL5457:
/*   1046 */	fmla	z6.s, p0/m, z25.s, z2.s
	.loc 13 1055 0
..LDL5458:
/*   1055 */	fmla	z4.s, p0/m, z5.s, z2.s
	.loc 13 1037 0
..LDL5459:
/*   1037 */	prfm	2, [x8, 2560]	//  (*)
	.loc 13 1117 0
..LDL5460:
/*   1117 */	add	x2, x2, x4
	.loc 13 1116 0
..LDL5461:
/*   1116 */	add	x1, x6, 12
	.loc 13 1064 0
..LDL5462:
/*   1064 */	fmla	z1.s, p0/m, z3.s, z2.s
	.loc 13 1037 0
..LDL5463:
/*   1037 */	prfm	0, [x8, 512]	//  (*)
	.loc 13 1044 0
..LDL5464:
/*   1044 */	dup	z26.s, z8.s[0]
	.loc 13 1118 0
..LDL5465:
/*   1118 */	sub	w0, w0, 3
	.loc 13 1053 0
..LDL5466:
/*   1053 */	dup	z25.s, z31.s[0]
	.loc 13 1062 0
..LDL5467:
/*   1062 */	ld1rw	{z2.s}, p1/z, [x6]	//  (*)
/*   1062 */	prfm	2, [x9, 2560]	//  (*)
	.loc 13 1044 0
..LDL5468:
/*   1044 */	dup	z5.s, z30.s[0]
	.loc 13 1062 0
..LDL5469:
/*   1062 */	prfm	0, [x9, 512]	//  (*)
	.loc 13 1053 0
..LDL5470:
/*   1053 */	dup	z3.s, z29.s[0]
	.loc 13 1062 0
..LDL5471:
/*   1062 */	prfm	2, [x10, 2560]	//  (*)
/*   1062 */	prfm	0, [x10, 512]	//  (*)
/*   1062 */	prfm	2, [x6, 2560]	//  (*)
/*   1062 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1046 0
..LDL5472:
/*   1046 */	fmla	z6.s, p0/m, z26.s, z7.s
	.loc 13 1055 0
..LDL5473:
/*   1055 */	fmla	z4.s, p0/m, z25.s, z7.s
	.loc 13 1064 0
..LDL5474:
/*   1064 */	fmla	z1.s, p0/m, z24.s, z7.s
	.loc 13 1046 0
..LDL5475:
/*   1046 */	fmla	z6.s, p0/m, z5.s, z0.s
	.loc 13 1055 0
..LDL5476:
/*   1055 */	fmla	z4.s, p0/m, z3.s, z0.s
	.loc 13 1064 0
..LDL5477:
/*   1064 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1118 0
..LDL5478:
/*   1118 */	cbz	w0, .L12038
.L12041:
	.p2align 5
.L12044:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL5479:
/*   1037 */	orr	x6, x2, 6917529027641081856
	.loc 13 1044 0
..LDL5480:
/*   1044 */	ldp	s5, s3, [x1, -8]	//  (*)
	.loc 13 1062 0
..LDL5481:
/*   1062 */	ptrue	p1.s, ALL
	.loc 13 1037 0
..LDL5482:
/*   1037 */	ld1w	{z2.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1062 0
..LDL5483:
/*   1062 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 1117 0
..LDL5484:
/*   1117 */	add	x2, x2, x4
	.loc 13 1118 0
..LDL5485:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1037 0
..LDL5486:
/*   1037 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 1062 0
..LDL5487:
/*   1062 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1037 0
..LDL5488:
/*   1037 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1062 0
..LDL5489:
/*   1062 */	ld1rw	{z0.s}, p1/z, [x1]	//  (*)
	.loc 13 1116 0
..LDL5490:
/*   1116 */	add	x1, x1, 12
	.loc 13 1044 0
..LDL5491:
/*   1044 */	dup	z5.s, z5.s[0]
	.loc 13 1053 0
..LDL5492:
/*   1053 */	dup	z3.s, z3.s[0]
	.loc 13 1046 0
..LDL5493:
/*   1046 */	fmla	z6.s, p0/m, z5.s, z2.s
	.loc 13 1064 0
..LDL5494:
/*   1064 */	fmla	z1.s, p0/m, z0.s, z2.s
	.loc 13 1055 0
..LDL5495:
/*   1055 */	fmla	z4.s, p0/m, z3.s, z2.s
	.loc 13 1118 0 is_stmt 0
..LDL5496:
/*   1118 */	bne	.L12044
.L12038:
.L11430:
	.loc 13 1123 0 is_stmt 1
..LDL5497:
/*   1123 */	st1w	{z6.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL5498:
/*   1131 */	st1w	{z4.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL5499:
/*   1139 */	st1w	{z1.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL5500:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 4
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D34.pchi:
	.cfi_endproc
.LFE33:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL5501:
.LFB34:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -9
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xc8,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x78,0x22,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL5502:
/*    971 */	ld1w	{z26.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 979 0
..LDL5503:
/*    979 */	sxtw	x5, w4
	.loc 13 987 0
..LDL5504:
/*    987 */	add	w4, w4, w4
	.loc 13 973 0
..LDL5505:
/*    973 */	add	x7, x3, 64
	.loc 13 979 0
..LDL5506:
/*    979 */	add	x8, x3, x5, lsl #2
	.loc 13 981 0
..LDL5507:
/*    981 */	add	x5, x5, 16
	.loc 13 973 0
..LDL5508:
/*    973 */	ld1w	{z6.s}, p1/z, [x7, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL5509:
/*    981 */	add	x9, x3, x5, lsl #2
	.loc 13 987 0
..LDL5510:
/*    987 */	sxtw	x5, w4
	.loc 13 979 0
..LDL5511:
/*    979 */	ld1w	{z25.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 989 0
..LDL5512:
/*    989 */	add	x4, x5, 16
	.loc 13 987 0
..LDL5513:
/*    987 */	add	x5, x3, x5, lsl #2
	.loc 13 981 0
..LDL5514:
/*    981 */	ld1w	{z24.s}, p1/z, [x9, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL5515:
/*    987 */	ld1w	{z4.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 989 0
..LDL5516:
/*    989 */	add	x10, x3, x4, lsl #2
/*    989 */	ld1w	{z1.s}, p1/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL5517:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11438
	.loc 13 1117 0 is_stmt 0
..LDL5518:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL5519:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x1, x1, 8
	.loc 13 1034 0
..LDL5520:
/*   1034 */	cmp	w0, 7
/*   1034 */	blt	.L12052
	.loc 13 1062 0
..LDL5521:
/*   1062 */	ptrue	p2.s, ALL
	.loc 13 1044 0
..LDL5522:
/*   1044 */	ldr	s2, [x1, -8]	//  (*)
	.loc 13 1037 0
..LDL5523:
/*   1037 */	orr	x11, x2, 6917529027641081856
	.loc 13 1117 0
..LDL5524:
/*   1117 */	add	x6, x2, x4
	.loc 13 1053 0
..LDL5525:
/*   1053 */	ldr	s0, [x1, -4]	//  (*)
	.loc 13 1037 0
..LDL5526:
/*   1037 */	ld1w	{z9.s}, p0/z, [x11, 0, mul vl]	//  (*)
/*   1037 */	orr	x14, x6, 6917529027641081856
	.loc 13 1117 0
..LDL5527:
/*   1117 */	add	x13, x6, x4
	.loc 13 1039 0
..LDL5528:
/*   1039 */	ld1w	{z8.s}, p1/z, [x2, 1, mul vl]	//  (*)
/*   1039 */	ld1w	{z12.s}, p1/z, [x6, 1, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5529:
/*   1116 */	add	x6, x1, 12
/*   1116 */	add	x12, x1, 24
	.loc 13 1062 0
..LDL5530:
/*   1062 */	ld1rw	{z28.s}, p2/z, [x1]	//  (*)
	.loc 13 1037 0
..LDL5531:
/*   1037 */	ld1w	{z10.s}, p0/z, [x14, 0, mul vl]	//  (*)
/*   1044 */	ldp	s11, s15, [x1, 4]	//  (*)
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
	.loc 13 1044 0
..LDL5532:
/*   1044 */	ldr	s13, [x1, 16]	//  (*)
	.loc 13 1037 0
..LDL5533:
/*   1037 */	prfm	0, [x11, 512]	//  (*)
/*   1037 */	prfm	2, [x14, 2560]	//  (*)
/*   1037 */	orr	x11, x13, 6917529027641081856
/*   1037 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 1044 0
..LDL5534:
/*   1044 */	dup	z30.s, z2.s[0]
	.loc 13 1053 0
..LDL5535:
/*   1053 */	dup	z31.s, z0.s[0]
	.p2align 5
.L11436:					// :entr:term:swpl
	.loc 13 1037 0
..LDL5536:
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
	.loc 13 1117 0
..LDL5537:
/*   1117 */	add	x2, x13, x4
	.loc 13 1062 0
..LDL5538:
/*   1062 */	ld1rw	{z2.s}, p2/z, [x6]	//  (*)
	.loc 13 1037 0
..LDL5539:
/*   1037 */	prfm	0, [x11, 512]	//  (*)
	.loc 13 1044 0
..LDL5540:
/*   1044 */	dup	z7.s, z11.s[0]
	.loc 13 1053 0
..LDL5541:
/*   1053 */	ldr	s14, [x12, -4]	//  (*)
	.loc 13 1037 0
..LDL5542:
/*   1037 */	ld1w	{z29.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL5543:
/*   1039 */	ld1w	{z27.s}, p1/z, [x13, 1, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5544:
/*   1116 */	add	x1, x12, 12
	.loc 13 1046 0
..LDL5545:
/*   1046 */	fmla	z26.s, p0/m, z30.s, z9.s
	.loc 13 1044 0
..LDL5546:
/*   1044 */	ldr	s5, [x12, 4]	//  (*)
	.loc 13 1053 0
..LDL5547:
/*   1053 */	dup	z11.s, z15.s[0]
	.loc 13 1055 0
..LDL5548:
/*   1055 */	fmla	z25.s, p0/m, z31.s, z9.s
	.loc 13 1062 0
..LDL5549:
/*   1062 */	ptrue	p2.s, ALL
	.loc 13 1057 0
..LDL5550:
/*   1057 */	fmla	z24.s, p1/m, z31.s, z8.s
	.loc 13 1048 0
..LDL5551:
/*   1048 */	fmla	z6.s, p1/m, z30.s, z8.s
	.loc 13 1064 0
..LDL5552:
/*   1064 */	fmla	z4.s, p0/m, z28.s, z9.s
	.loc 13 1066 0
..LDL5553:
/*   1066 */	fmla	z1.s, p1/m, z28.s, z8.s
	.loc 13 1037 0
..LDL5554:
/*   1037 */	orr	x11, x2, 6917529027641081856
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
	.loc 13 1117 0
..LDL5555:
/*   1117 */	add	x6, x2, x4
	.loc 13 1062 0
..LDL5556:
/*   1062 */	ld1rw	{z28.s}, p2/z, [x12]	//  (*)
	.loc 13 1037 0
..LDL5557:
/*   1037 */	prfm	0, [x11, 512]	//  (*)
	.loc 13 1044 0
..LDL5558:
/*   1044 */	dup	z30.s, z13.s[0]
	.loc 13 1053 0
..LDL5559:
/*   1053 */	ldr	s15, [x12, 8]	//  (*)
	.loc 13 1037 0
..LDL5560:
/*   1037 */	ld1w	{z3.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL5561:
/*   1039 */	ld1w	{z0.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5562:
/*   1116 */	add	x14, x12, 24
	.loc 13 1046 0
..LDL5563:
/*   1046 */	fmla	z26.s, p0/m, z7.s, z10.s
	.loc 13 1044 0
..LDL5564:
/*   1044 */	ldr	s13, [x12, 16]	//  (*)
	.loc 13 1053 0
..LDL5565:
/*   1053 */	dup	z31.s, z14.s[0]
	.loc 13 1055 0
..LDL5566:
/*   1055 */	fmla	z25.s, p0/m, z11.s, z10.s
	.loc 13 1057 0
..LDL5567:
/*   1057 */	fmla	z24.s, p1/m, z11.s, z12.s
	.loc 13 1048 0
..LDL5568:
/*   1048 */	fmla	z6.s, p1/m, z7.s, z12.s
	.loc 13 1064 0
..LDL5569:
/*   1064 */	fmla	z4.s, p0/m, z2.s, z10.s
	.loc 13 1066 0
..LDL5570:
/*   1066 */	fmla	z1.s, p1/m, z2.s, z12.s
	.loc 13 1037 0
..LDL5571:
/*   1037 */	orr	x11, x6, 6917529027641081856
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
	.loc 13 1117 0
..LDL5572:
/*   1117 */	add	x2, x6, x4
	.loc 13 1062 0
..LDL5573:
/*   1062 */	ld1rw	{z2.s}, p2/z, [x1]	//  (*)
	.loc 13 1037 0
..LDL5574:
/*   1037 */	prfm	0, [x11, 512]	//  (*)
	.loc 13 1044 0
..LDL5575:
/*   1044 */	dup	z5.s, z5.s[0]
	.loc 13 1053 0
..LDL5576:
/*   1053 */	ldr	s14, [x12, 20]	//  (*)
	.loc 13 1037 0
..LDL5577:
/*   1037 */	ld1w	{z9.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL5578:
/*   1039 */	ld1w	{z8.s}, p1/z, [x6, 1, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5579:
/*   1116 */	add	x6, x12, 36
	.loc 13 1046 0
..LDL5580:
/*   1046 */	fmla	z26.s, p0/m, z30.s, z29.s
	.loc 13 1044 0
..LDL5581:
/*   1044 */	ldr	s11, [x12, 28]	//  (*)
	.loc 13 1053 0
..LDL5582:
/*   1053 */	dup	z7.s, z15.s[0]
	.loc 13 1055 0
..LDL5583:
/*   1055 */	fmla	z25.s, p0/m, z31.s, z29.s
	.loc 13 1057 0
..LDL5584:
/*   1057 */	fmla	z24.s, p1/m, z31.s, z27.s
	.loc 13 1048 0
..LDL5585:
/*   1048 */	fmla	z6.s, p1/m, z30.s, z27.s
	.loc 13 1064 0
..LDL5586:
/*   1064 */	fmla	z4.s, p0/m, z28.s, z29.s
	.loc 13 1066 0
..LDL5587:
/*   1066 */	fmla	z1.s, p1/m, z28.s, z27.s
	.loc 13 1037 0
..LDL5588:
/*   1037 */	orr	x11, x2, 6917529027641081856
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
	.loc 13 1117 0
..LDL5589:
/*   1117 */	add	x13, x2, x4
	.loc 13 1062 0
..LDL5590:
/*   1062 */	ld1rw	{z28.s}, p2/z, [x14]	//  (*)
	.loc 13 1037 0
..LDL5591:
/*   1037 */	prfm	0, [x11, 512]	//  (*)
	.loc 13 1044 0
..LDL5592:
/*   1044 */	dup	z30.s, z13.s[0]
	.loc 13 1053 0
..LDL5593:
/*   1053 */	ldr	s15, [x12, 32]	//  (*)
	.loc 13 1037 0
..LDL5594:
/*   1037 */	ld1w	{z10.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL5595:
/*   1039 */	ld1w	{z12.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5596:
/*   1116 */	add	x12, x12, 48
	.loc 13 1046 0
..LDL5597:
/*   1046 */	fmla	z26.s, p0/m, z5.s, z3.s
	.loc 13 1044 0
..LDL5598:
/*   1044 */	ldr	s13, [x12, -8]	//  (*)
	.loc 13 1053 0
..LDL5599:
/*   1053 */	dup	z31.s, z14.s[0]
	.loc 13 1055 0
..LDL5600:
/*   1055 */	fmla	z25.s, p0/m, z7.s, z3.s
	.loc 13 1062 0
..LDL5601:
/*   1062 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 1057 0
..LDL5602:
/*   1057 */	fmla	z24.s, p1/m, z7.s, z0.s
	.loc 13 1062 0
..LDL5603:
/*   1062 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1048 0
..LDL5604:
/*   1048 */	fmla	z6.s, p1/m, z5.s, z0.s
	.loc 13 1064 0
..LDL5605:
/*   1064 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1066 0
..LDL5606:
/*   1066 */	fmla	z1.s, p1/m, z2.s, z0.s
	.loc 13 1037 0
..LDL5607:
/*   1037 */	orr	x11, x13, 6917529027641081856
	.loc 13 1118 0
..LDL5608:
/*   1118 */	sub	w0, w0, 4
	.loc 13 1036 0
..LDL5609:
/*   1036 */	cmp	w0, 7
/*   1036 */	bge	.L11436
	.loc 13 1062 0
..LDL5610:
/*   1062 */	ld1rw	{z27.s}, p2/z, [x6]	//  (*)
	.loc 13 1053 0
..LDL5611:
/*   1053 */	ldr	s7, [x12, -4]	//  (*)
	.loc 13 1064 0
..LDL5612:
/*   1064 */	fmla	z4.s, p0/m, z28.s, z9.s
	.loc 13 1066 0
..LDL5613:
/*   1066 */	fmla	z1.s, p1/m, z28.s, z8.s
	.loc 13 1046 0
..LDL5614:
/*   1046 */	fmla	z26.s, p0/m, z30.s, z9.s
	.loc 13 1055 0
..LDL5615:
/*   1055 */	fmla	z25.s, p0/m, z31.s, z9.s
	.loc 13 1037 0
..LDL5616:
/*   1037 */	ld1w	{z3.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1062 0
..LDL5617:
/*   1062 */	ptrue	p2.s, ALL
	.loc 13 1057 0
..LDL5618:
/*   1057 */	fmla	z24.s, p1/m, z31.s, z8.s
	.loc 13 1048 0
..LDL5619:
/*   1048 */	fmla	z6.s, p1/m, z30.s, z8.s
	.loc 13 1117 0
..LDL5620:
/*   1117 */	add	x2, x13, x4
	.loc 13 1039 0
..LDL5621:
/*   1039 */	ld1w	{z0.s}, p1/z, [x13, 1, mul vl]	//  (*)
	.loc 13 1037 0
..LDL5622:
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
	.loc 13 1044 0
..LDL5623:
/*   1044 */	dup	z28.s, z11.s[0]
	.loc 13 1116 0
..LDL5624:
/*   1116 */	add	x1, x12, 12
	.loc 13 1118 0
..LDL5625:
/*   1118 */	sub	w0, w0, 3
	.loc 13 1053 0
..LDL5626:
/*   1053 */	dup	z29.s, z15.s[0]
	.loc 13 1062 0
..LDL5627:
/*   1062 */	ld1rw	{z2.s}, p2/z, [x12]	//  (*)
	.loc 13 1037 0
..LDL5628:
/*   1037 */	prfm	0, [x11, 512]	//  (*)
	.loc 13 1044 0
..LDL5629:
/*   1044 */	dup	z5.s, z13.s[0]
	.loc 13 1062 0
..LDL5630:
/*   1062 */	prfm	2, [x14, 2560]	//  (*)
/*   1062 */	prfm	0, [x14, 512]	//  (*)
/*   1062 */	prfm	2, [x6, 2560]	//  (*)
/*   1062 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1053 0
..LDL5631:
/*   1053 */	dup	z7.s, z7.s[0]
	.loc 13 1062 0
..LDL5632:
/*   1062 */	prfm	2, [x12, 2560]	//  (*)
/*   1062 */	prfm	0, [x12, 512]	//  (*)
	.loc 13 1046 0
..LDL5633:
/*   1046 */	fmla	z26.s, p0/m, z28.s, z10.s
	.loc 13 1055 0
..LDL5634:
/*   1055 */	fmla	z25.s, p0/m, z29.s, z10.s
	.loc 13 1057 0
..LDL5635:
/*   1057 */	fmla	z24.s, p1/m, z29.s, z12.s
	.loc 13 1048 0
..LDL5636:
/*   1048 */	fmla	z6.s, p1/m, z28.s, z12.s
	.loc 13 1064 0
..LDL5637:
/*   1064 */	fmla	z4.s, p0/m, z27.s, z10.s
	.loc 13 1066 0
..LDL5638:
/*   1066 */	fmla	z1.s, p1/m, z27.s, z12.s
	.loc 13 1046 0
..LDL5639:
/*   1046 */	fmla	z26.s, p0/m, z5.s, z3.s
	.loc 13 1055 0
..LDL5640:
/*   1055 */	fmla	z25.s, p0/m, z7.s, z3.s
	.loc 13 1057 0
..LDL5641:
/*   1057 */	fmla	z24.s, p1/m, z7.s, z0.s
	.loc 13 1048 0
..LDL5642:
/*   1048 */	fmla	z6.s, p1/m, z5.s, z0.s
	.loc 13 1064 0
..LDL5643:
/*   1064 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1066 0
..LDL5644:
/*   1066 */	fmla	z1.s, p1/m, z2.s, z0.s
	.loc 13 1118 0
..LDL5645:
/*   1118 */	cbz	w0, .L12049
.L12052:
	.p2align 5
.L12055:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL5646:
/*   1037 */	orr	x11, x2, 6917529027641081856
	.loc 13 1044 0
..LDL5647:
/*   1044 */	ldp	s7, s5, [x1, -8]	//  (*)
	.loc 13 1062 0
..LDL5648:
/*   1062 */	ptrue	p2.s, ALL
	.loc 13 1037 0
..LDL5649:
/*   1037 */	ld1w	{z3.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL5650:
/*   1039 */	add	x6, x2, 64
	.loc 13 1117 0
..LDL5651:
/*   1117 */	add	x2, x2, x4
	.loc 13 1039 0
..LDL5652:
/*   1039 */	ld1w	{z0.s}, p1/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1062 0
..LDL5653:
/*   1062 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 1118 0
..LDL5654:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1062 0
..LDL5655:
/*   1062 */	prfm	0, [x1, 512]	//  (*)
/*   1062 */	ld1rw	{z2.s}, p2/z, [x1]	//  (*)
	.loc 13 1116 0
..LDL5656:
/*   1116 */	add	x1, x1, 12
	.loc 13 1037 0
..LDL5657:
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
/*   1037 */	prfm	0, [x11, 512]	//  (*)
	.loc 13 1044 0
..LDL5658:
/*   1044 */	dup	z7.s, z7.s[0]
	.loc 13 1053 0
..LDL5659:
/*   1053 */	dup	z5.s, z5.s[0]
	.loc 13 1046 0
..LDL5660:
/*   1046 */	fmla	z26.s, p0/m, z7.s, z3.s
	.loc 13 1048 0
..LDL5661:
/*   1048 */	fmla	z6.s, p1/m, z7.s, z0.s
	.loc 13 1055 0
..LDL5662:
/*   1055 */	fmla	z25.s, p0/m, z5.s, z3.s
	.loc 13 1057 0
..LDL5663:
/*   1057 */	fmla	z24.s, p1/m, z5.s, z0.s
	.loc 13 1064 0
..LDL5664:
/*   1064 */	fmla	z4.s, p0/m, z2.s, z3.s
	.loc 13 1066 0
..LDL5665:
/*   1066 */	fmla	z1.s, p1/m, z2.s, z0.s
	.loc 13 1118 0 is_stmt 0
..LDL5666:
/*   1118 */	bne	.L12055
.L12049:
.L11438:
	.loc 13 1123 0 is_stmt 1
..LDL5667:
/*   1123 */	st1w	{z26.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL5668:
/*   1125 */	st1w	{z6.s}, p1, [x7, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL5669:
/*   1131 */	st1w	{z25.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1133 0
..LDL5670:
/*   1133 */	st1w	{z24.s}, p1, [x9, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL5671:
/*   1139 */	st1w	{z4.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1141 0
..LDL5672:
/*   1141 */	st1w	{z1.s}, p1, [x10, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL5673:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 9
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D35.pchi:
	.cfi_endproc
.LFE34:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi3ELi48EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi3ELi48EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi3ELi48EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi3ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi3ELi48EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi3ELi48EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL5674:
.LFB35:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -12
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xe0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 16
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL5675:
/*    971 */	ld1w	{z16.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 979 0
..LDL5676:
/*    979 */	sxtw	x10, w4
	.loc 13 987 0
..LDL5677:
/*    987 */	add	w4, w4, w4
	.loc 13 981 0
..LDL5678:
/*    981 */	add	x9, x10, 16
	.loc 13 987 0
..LDL5679:
/*    987 */	sxtw	x7, w4
	.loc 13 983 0
..LDL5680:
/*    983 */	add	x8, x10, 32
	.loc 13 989 0
..LDL5681:
/*    989 */	add	x5, x7, 16
	.loc 13 991 0
..LDL5682:
/*    991 */	add	x4, x7, 32
	.loc 13 979 0
..LDL5683:
/*    979 */	add	x10, x3, x10, lsl #2
	.loc 13 973 0
..LDL5684:
/*    973 */	add	x12, x3, 64
	.loc 13 975 0
..LDL5685:
/*    975 */	add	x11, x3, 128
	.loc 13 973 0
..LDL5686:
/*    973 */	ld1w	{z31.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL5687:
/*    981 */	add	x9, x3, x9, lsl #2
	.loc 13 975 0
..LDL5688:
/*    975 */	ld1w	{z0.s}, p2/z, [x11, 0, mul vl]	//  (*)
	.loc 13 979 0
..LDL5689:
/*    979 */	ld1w	{z30.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL5690:
/*    981 */	ld1w	{z26.s}, p1/z, [x9, 0, mul vl]	//  (*)
	.loc 13 983 0
..LDL5691:
/*    983 */	add	x8, x3, x8, lsl #2
/*    983 */	ld1w	{z25.s}, p2/z, [x8, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL5692:
/*    987 */	add	x7, x3, x7, lsl #2
/*    987 */	ld1w	{z5.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 989 0
..LDL5693:
/*    989 */	add	x5, x3, x5, lsl #2
/*    989 */	ld1w	{z3.s}, p1/z, [x5, 0, mul vl]	//  (*)
	.loc 13 991 0
..LDL5694:
/*    991 */	add	x14, x3, x4, lsl #2
/*    991 */	ld1w	{z1.s}, p2/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL5695:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11446
	.loc 13 1117 0 is_stmt 0
..LDL5696:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL5697:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x1, x1, 8
	.loc 13 1034 0
..LDL5698:
/*   1034 */	cmp	w0, 7
/*   1034 */	blt	.L12063
	.loc 13 1062 0
..LDL5699:
/*   1062 */	ptrue	p3.s, ALL
	.loc 13 1037 0
..LDL5700:
/*   1037 */	orr	x13, x2, 6917529027641081856
	.loc 13 1117 0
..LDL5701:
/*   1117 */	add	x17, x2, x4
/*   1044 */	ldp	s4, s2, [x1, -8]	//  (*)
	.loc 13 1037 0
..LDL5702:
/*   1037 */	orr	x16, x17, 6917529027641081856
	.loc 13 1117 0
..LDL5703:
/*   1117 */	add	x6, x17, x4
	.loc 13 1037 0
..LDL5704:
/*   1037 */	ld1w	{z13.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL5705:
/*   1039 */	ld1w	{z12.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1041 0
..LDL5706:
/*   1041 */	ld1w	{z11.s}, p2/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1037 0
..LDL5707:
/*   1037 */	orr	x15, x6, 6917529027641081856
	.loc 13 1118 0
..LDL5708:
/*   1118 */	mov	z7.d, z0.d
	.loc 13 1062 0
..LDL5709:
/*   1062 */	ld1rw	{z10.s}, p3/z, [x1]	//  (*)
	.loc 13 1037 0
..LDL5710:
/*   1037 */	ld1w	{z14.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL5711:
/*   1117 */	add	x2, x6, x4
	.loc 13 1039 0
..LDL5712:
/*   1039 */	ld1w	{z15.s}, p1/z, [x17, 1, mul vl]	//  (*)
	.loc 13 1041 0
..LDL5713:
/*   1041 */	ld1w	{z6.s}, p2/z, [x17, 2, mul vl]	//  (*)
/*   1044 */	ldp	s9, s8, [x1, 4]	//  (*)
	.loc 13 1037 0
..LDL5714:
/*   1037 */	prfm	2, [x13, 2560]	//  (*)
/*   1037 */	prfm	0, [x13, 512]	//  (*)
	.loc 13 1116 0
..LDL5715:
/*   1116 */	add	x13, x1, 12
	.loc 13 1037 0
..LDL5716:
/*   1037 */	prfm	2, [x16, 2560]	//  (*)
/*   1037 */	prfm	0, [x16, 512]	//  (*)
	.loc 13 1116 0
..LDL5717:
/*   1116 */	add	x16, x1, 24
	.loc 13 1044 0
..LDL5718:
/*   1044 */	dup	z27.s, z4.s[0]
	.loc 13 1037 0
..LDL5719:
/*   1037 */	prfm	2, [x15, 2560]	//  (*)
	.loc 13 1053 0
..LDL5720:
/*   1053 */	dup	z24.s, z2.s[0]
	.p2align 5
.L11444:					// :entr:term:swpl
	.loc 13 1037 0
..LDL5721:
/*   1037 */	prfm	0, [x15, 512]	//  (*)
/*   1037 */	orr	x17, x2, 6917529027641081856
	.loc 13 1044 0
..LDL5722:
/*   1044 */	ldr	s2, [x16, -8]	//  (*)
	.loc 13 1117 0
..LDL5723:
/*   1117 */	add	x18, x4, x2
	.loc 13 1053 0
..LDL5724:
/*   1053 */	ldr	s17, [x16, -4]	//  (*)
	.loc 13 1044 0
..LDL5725:
/*   1044 */	dup	z0.s, z9.s[0]
	.loc 13 1046 0
..LDL5726:
/*   1046 */	fmla	z16.s, p0/m, z27.s, z13.s
	.loc 13 1062 0
..LDL5727:
/*   1062 */	ld1rw	{z28.s}, p3/z, [x13]	//  (*)
	.loc 13 1037 0
..LDL5728:
/*   1037 */	ld1w	{z9.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1048 0
..LDL5729:
/*   1048 */	fmla	z31.s, p1/m, z27.s, z12.s
	.loc 13 1053 0
..LDL5730:
/*   1053 */	dup	z29.s, z8.s[0]
	.loc 13 1039 0
..LDL5731:
/*   1039 */	ld1w	{z8.s}, p1/z, [x6, 1, mul vl]	//  (*)
	.loc 13 1050 0
..LDL5732:
/*   1050 */	fmla	z7.s, p2/m, z27.s, z11.s
	.loc 13 1055 0
..LDL5733:
/*   1055 */	fmla	z30.s, p0/m, z24.s, z13.s
	.loc 13 1041 0
..LDL5734:
/*   1041 */	ld1w	{z27.s}, p2/z, [x6, 2, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5735:
/*   1116 */	add	x20, x16, 12
	.loc 13 1057 0
..LDL5736:
/*   1057 */	fmla	z26.s, p1/m, z24.s, z12.s
	.loc 13 1059 0
..LDL5737:
/*   1059 */	fmad	z24.s, p2/m, z11.s, z25.s
	.loc 13 1064 0
..LDL5738:
/*   1064 */	fmla	z5.s, p0/m, z10.s, z13.s
	.loc 13 1062 0
..LDL5739:
/*   1062 */	ptrue	p3.s, ALL
	.loc 13 1066 0
..LDL5740:
/*   1066 */	fmad	z12.s, p1/m, z10.s, z3.s
	.loc 13 1068 0
..LDL5741:
/*   1068 */	fmad	z10.s, p2/m, z11.s, z1.s
	.loc 13 1037 0
..LDL5742:
/*   1037 */	prfm	2, [x17, 2560]	//  (*)
/*   1037 */	prfm	0, [x17, 512]	//  (*)
/*   1037 */	orr	x13, x18, 6917529027641081856
	.loc 13 1044 0
..LDL5743:
/*   1044 */	ldr	s11, [x16, 4]	//  (*)
	.loc 13 1117 0
..LDL5744:
/*   1117 */	add	x1, x18, x4
	.loc 13 1053 0
..LDL5745:
/*   1053 */	ldr	s18, [x16, 8]	//  (*)
	.loc 13 1044 0
..LDL5746:
/*   1044 */	dup	z3.s, z2.s[0]
	.loc 13 1046 0
..LDL5747:
/*   1046 */	fmla	z16.s, p0/m, z0.s, z14.s
	.loc 13 1062 0
..LDL5748:
/*   1062 */	ld1rw	{z1.s}, p3/z, [x16]	//  (*)
	.loc 13 1037 0
..LDL5749:
/*   1037 */	ld1w	{z4.s}, p0/z, [x17, 0, mul vl]	//  (*)
	.loc 13 1048 0
..LDL5750:
/*   1048 */	fmla	z31.s, p1/m, z0.s, z15.s
	.loc 13 1053 0
..LDL5751:
/*   1053 */	dup	z25.s, z17.s[0]
	.loc 13 1039 0
..LDL5752:
/*   1039 */	ld1w	{z2.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1050 0
..LDL5753:
/*   1050 */	fmla	z7.s, p2/m, z0.s, z6.s
	.loc 13 1055 0
..LDL5754:
/*   1055 */	fmla	z30.s, p0/m, z29.s, z14.s
	.loc 13 1041 0
..LDL5755:
/*   1041 */	ld1w	{z0.s}, p2/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5756:
/*   1116 */	add	x17, x16, 24
	.loc 13 1057 0
..LDL5757:
/*   1057 */	fmla	z26.s, p1/m, z29.s, z15.s
	.loc 13 1059 0
..LDL5758:
/*   1059 */	fmla	z24.s, p2/m, z29.s, z6.s
	.loc 13 1064 0
..LDL5759:
/*   1064 */	fmla	z5.s, p0/m, z28.s, z14.s
	.loc 13 1066 0
..LDL5760:
/*   1066 */	fmad	z15.s, p1/m, z28.s, z12.s
	.loc 13 1068 0
..LDL5761:
/*   1068 */	fmla	z10.s, p2/m, z28.s, z6.s
	.loc 13 1037 0
..LDL5762:
/*   1037 */	prfm	2, [x13, 2560]	//  (*)
/*   1037 */	prfm	0, [x13, 512]	//  (*)
/*   1037 */	orr	x30, x1, 6917529027641081856
	.loc 13 1044 0
..LDL5763:
/*   1044 */	ldr	s14, [x16, 16]	//  (*)
	.loc 13 1117 0
..LDL5764:
/*   1117 */	add	x6, x1, x4
	.loc 13 1053 0
..LDL5765:
/*   1053 */	ldr	s17, [x16, 20]	//  (*)
	.loc 13 1044 0
..LDL5766:
/*   1044 */	dup	z6.s, z11.s[0]
	.loc 13 1046 0
..LDL5767:
/*   1046 */	fmla	z16.s, p0/m, z3.s, z9.s
	.loc 13 1062 0
..LDL5768:
/*   1062 */	ld1rw	{z28.s}, p3/z, [x20]	//  (*)
	.loc 13 1037 0
..LDL5769:
/*   1037 */	ld1w	{z13.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1048 0
..LDL5770:
/*   1048 */	fmla	z31.s, p1/m, z3.s, z8.s
	.loc 13 1053 0
..LDL5771:
/*   1053 */	dup	z29.s, z18.s[0]
	.loc 13 1039 0
..LDL5772:
/*   1039 */	ld1w	{z12.s}, p1/z, [x18, 1, mul vl]	//  (*)
	.loc 13 1050 0
..LDL5773:
/*   1050 */	fmla	z7.s, p2/m, z3.s, z27.s
	.loc 13 1055 0
..LDL5774:
/*   1055 */	fmla	z30.s, p0/m, z25.s, z9.s
	.loc 13 1041 0
..LDL5775:
/*   1041 */	ld1w	{z11.s}, p2/z, [x18, 2, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5776:
/*   1116 */	add	x13, x16, 36
	.loc 13 1057 0
..LDL5777:
/*   1057 */	fmla	z26.s, p1/m, z25.s, z8.s
	.loc 13 1059 0
..LDL5778:
/*   1059 */	fmad	z25.s, p2/m, z27.s, z24.s
	.loc 13 1064 0
..LDL5779:
/*   1064 */	fmla	z5.s, p0/m, z1.s, z9.s
	.loc 13 1066 0
..LDL5780:
/*   1066 */	movprfx	z3.s, p1/z, z15.s
/*   1066 */	fmla	z3.s, p1/m, z1.s, z8.s
	.loc 13 1068 0
..LDL5781:
/*   1068 */	fmad	z1.s, p2/m, z27.s, z10.s
	.loc 13 1037 0
..LDL5782:
/*   1037 */	prfm	2, [x30, 2560]	//  (*)
/*   1037 */	prfm	0, [x30, 512]	//  (*)
/*   1037 */	orr	x15, x6, 6917529027641081856
	.loc 13 1044 0
..LDL5783:
/*   1044 */	ldr	s9, [x16, 28]	//  (*)
	.loc 13 1117 0
..LDL5784:
/*   1117 */	add	x2, x6, x4
	.loc 13 1053 0
..LDL5785:
/*   1053 */	ldr	s8, [x16, 32]	//  (*)
	.loc 13 1044 0
..LDL5786:
/*   1044 */	dup	z27.s, z14.s[0]
	.loc 13 1046 0
..LDL5787:
/*   1046 */	fmla	z16.s, p0/m, z6.s, z4.s
	.loc 13 1062 0
..LDL5788:
/*   1062 */	ld1rw	{z10.s}, p3/z, [x17]	//  (*)
	.loc 13 1037 0
..LDL5789:
/*   1037 */	ld1w	{z14.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1048 0
..LDL5790:
/*   1048 */	fmla	z31.s, p1/m, z6.s, z2.s
	.loc 13 1053 0
..LDL5791:
/*   1053 */	dup	z24.s, z17.s[0]
	.loc 13 1039 0
..LDL5792:
/*   1039 */	ld1w	{z15.s}, p1/z, [x1, 1, mul vl]	//  (*)
	.loc 13 1050 0
..LDL5793:
/*   1050 */	fmla	z7.s, p2/m, z6.s, z0.s
	.loc 13 1055 0
..LDL5794:
/*   1055 */	fmla	z30.s, p0/m, z29.s, z4.s
	.loc 13 1041 0
..LDL5795:
/*   1041 */	ld1w	{z6.s}, p2/z, [x1, 2, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5796:
/*   1116 */	add	x16, x16, 48
	.loc 13 1057 0
..LDL5797:
/*   1057 */	fmla	z26.s, p1/m, z29.s, z2.s
	.loc 13 1059 0
..LDL5798:
/*   1059 */	fmla	z25.s, p2/m, z29.s, z0.s
	.loc 13 1062 0
..LDL5799:
/*   1062 */	prfm	2, [x20, 2560]	//  (*)
/*   1062 */	prfm	0, [x20, 512]	//  (*)
	.loc 13 1064 0
..LDL5800:
/*   1064 */	fmla	z5.s, p0/m, z28.s, z4.s
	.loc 13 1066 0
..LDL5801:
/*   1066 */	fmla	z3.s, p1/m, z28.s, z2.s
	.loc 13 1068 0
..LDL5802:
/*   1068 */	fmla	z1.s, p2/m, z28.s, z0.s
	.loc 13 1037 0
..LDL5803:
/*   1037 */	prfm	2, [x15, 2560]	//  (*)
	.loc 13 1118 0
..LDL5804:
/*   1118 */	sub	w0, w0, 4
	.loc 13 1036 0
..LDL5805:
/*   1036 */	cmp	w0, 7
/*   1036 */	bge	.L11444
	.loc 13 1046 0
..LDL5806:
/*   1046 */	fmla	z16.s, p0/m, z27.s, z13.s
	.loc 13 1062 0
..LDL5807:
/*   1062 */	ld1rw	{z4.s}, p3/z, [x13]	//  (*)
	.loc 13 1048 0
..LDL5808:
/*   1048 */	fmla	z31.s, p1/m, z27.s, z12.s
	.loc 13 1062 0
..LDL5809:
/*   1062 */	ptrue	p3.s, ALL
	.loc 13 1044 0
..LDL5810:
/*   1044 */	ldr	s0, [x16, -8]	//  (*)
	.loc 13 1050 0
..LDL5811:
/*   1050 */	fmla	z7.s, p2/m, z27.s, z11.s
	.loc 13 1055 0
..LDL5812:
/*   1055 */	fmla	z30.s, p0/m, z24.s, z13.s
	.loc 13 1116 0
..LDL5813:
/*   1116 */	add	x1, x16, 12
	.loc 13 1037 0
..LDL5814:
/*   1037 */	ld1w	{z27.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1057 0
..LDL5815:
/*   1057 */	fmla	z26.s, p1/m, z24.s, z12.s
	.loc 13 1059 0
..LDL5816:
/*   1059 */	fmla	z25.s, p2/m, z24.s, z11.s
	.loc 13 1118 0
..LDL5817:
/*   1118 */	sub	w0, w0, 3
	.loc 13 1039 0
..LDL5818:
/*   1039 */	ld1w	{z24.s}, p1/z, [x6, 1, mul vl]	//  (*)
	.loc 13 1064 0
..LDL5819:
/*   1064 */	fmla	z5.s, p0/m, z10.s, z13.s
	.loc 13 1044 0
..LDL5820:
/*   1044 */	dup	z2.s, z9.s[0]
	.loc 13 1053 0
..LDL5821:
/*   1053 */	ldr	s28, [x16, -4]	//  (*)
	.loc 13 1066 0
..LDL5822:
/*   1066 */	fmla	z3.s, p1/m, z10.s, z12.s
	.loc 13 1068 0
..LDL5823:
/*   1068 */	fmla	z1.s, p2/m, z10.s, z11.s
	.loc 13 1041 0
..LDL5824:
/*   1041 */	ld1w	{z29.s}, p2/z, [x6, 2, mul vl]	//  (*)
	.loc 13 1053 0
..LDL5825:
/*   1053 */	dup	z8.s, z8.s[0]
	.loc 13 1062 0
..LDL5826:
/*   1062 */	ld1rw	{z9.s}, p3/z, [x16]	//  (*)
	.loc 13 1037 0
..LDL5827:
/*   1037 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 1062 0
..LDL5828:
/*   1062 */	prfm	2, [x17, 2560]	//  (*)
/*   1062 */	prfm	0, [x17, 512]	//  (*)
/*   1062 */	prfm	2, [x13, 2560]	//  (*)
/*   1062 */	prfm	0, [x13, 512]	//  (*)
/*   1062 */	prfm	2, [x16, 2560]	//  (*)
	.loc 13 1046 0
..LDL5829:
/*   1046 */	fmla	z16.s, p0/m, z2.s, z14.s
	.loc 13 1048 0
..LDL5830:
/*   1048 */	fmla	z31.s, p1/m, z2.s, z15.s
	.loc 13 1044 0
..LDL5831:
/*   1044 */	dup	z0.s, z0.s[0]
	.loc 13 1062 0
..LDL5832:
/*   1062 */	prfm	0, [x16, 512]	//  (*)
	.loc 13 1050 0
..LDL5833:
/*   1050 */	fmad	z2.s, p2/m, z6.s, z7.s
	.loc 13 1055 0
..LDL5834:
/*   1055 */	fmla	z30.s, p0/m, z8.s, z14.s
	.loc 13 1057 0
..LDL5835:
/*   1057 */	fmla	z26.s, p1/m, z8.s, z15.s
	.loc 13 1059 0
..LDL5836:
/*   1059 */	fmla	z25.s, p2/m, z8.s, z6.s
	.loc 13 1064 0
..LDL5837:
/*   1064 */	fmla	z5.s, p0/m, z4.s, z14.s
	.loc 13 1066 0
..LDL5838:
/*   1066 */	fmla	z3.s, p1/m, z4.s, z15.s
	.loc 13 1068 0
..LDL5839:
/*   1068 */	fmla	z1.s, p2/m, z4.s, z6.s
	.loc 13 1053 0
..LDL5840:
/*   1053 */	dup	z28.s, z28.s[0]
	.loc 13 1046 0
..LDL5841:
/*   1046 */	fmla	z16.s, p0/m, z0.s, z27.s
	.loc 13 1048 0
..LDL5842:
/*   1048 */	fmla	z31.s, p1/m, z0.s, z24.s
	.loc 13 1050 0
..LDL5843:
/*   1050 */	fmad	z0.s, p2/m, z29.s, z2.s
	.loc 13 1055 0
..LDL5844:
/*   1055 */	fmla	z30.s, p0/m, z28.s, z27.s
	.loc 13 1057 0
..LDL5845:
/*   1057 */	fmla	z26.s, p1/m, z28.s, z24.s
	.loc 13 1059 0
..LDL5846:
/*   1059 */	fmla	z25.s, p2/m, z28.s, z29.s
	.loc 13 1064 0
..LDL5847:
/*   1064 */	fmla	z5.s, p0/m, z9.s, z27.s
	.loc 13 1066 0
..LDL5848:
/*   1066 */	fmla	z3.s, p1/m, z9.s, z24.s
	.loc 13 1068 0
..LDL5849:
/*   1068 */	fmla	z1.s, p2/m, z9.s, z29.s
	.loc 13 1118 0
..LDL5850:
/*   1118 */	cbz	w0, .L12060
.L12063:
	.p2align 5
.L12066:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL5851:
/*   1037 */	orr	x15, x2, 6917529027641081856
	.loc 13 1044 0
..LDL5852:
/*   1044 */	ldp	s27, s4, [x1, -8]	//  (*)
	.loc 13 1062 0
..LDL5853:
/*   1062 */	ptrue	p3.s, ALL
	.loc 13 1037 0
..LDL5854:
/*   1037 */	ld1w	{z7.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL5855:
/*   1039 */	add	x13, x2, 64
	.loc 13 1041 0
..LDL5856:
/*   1041 */	add	x6, x2, 128
	.loc 13 1039 0
..LDL5857:
/*   1039 */	ld1w	{z24.s}, p1/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1041 0
..LDL5858:
/*   1041 */	ld1w	{z6.s}, p2/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL5859:
/*   1117 */	add	x2, x2, x4
	.loc 13 1118 0
..LDL5860:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1062 0
..LDL5861:
/*   1062 */	prfm	2, [x1, 2560]	//  (*)
/*   1062 */	ld1rw	{z2.s}, p3/z, [x1]	//  (*)
	.loc 13 1037 0
..LDL5862:
/*   1037 */	prfm	2, [x15, 2560]	//  (*)
	.loc 13 1062 0
..LDL5863:
/*   1062 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1116 0
..LDL5864:
/*   1116 */	add	x1, x1, 12
	.loc 13 1037 0
..LDL5865:
/*   1037 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 1044 0
..LDL5866:
/*   1044 */	dup	z27.s, z27.s[0]
	.loc 13 1053 0
..LDL5867:
/*   1053 */	dup	z4.s, z4.s[0]
	.loc 13 1046 0
..LDL5868:
/*   1046 */	fmla	z16.s, p0/m, z27.s, z7.s
	.loc 13 1048 0
..LDL5869:
/*   1048 */	fmla	z31.s, p1/m, z27.s, z24.s
	.loc 13 1050 0
..LDL5870:
/*   1050 */	fmla	z0.s, p2/m, z27.s, z6.s
	.loc 13 1055 0
..LDL5871:
/*   1055 */	fmla	z30.s, p0/m, z4.s, z7.s
	.loc 13 1057 0
..LDL5872:
/*   1057 */	fmla	z26.s, p1/m, z4.s, z24.s
	.loc 13 1059 0
..LDL5873:
/*   1059 */	fmla	z25.s, p2/m, z4.s, z6.s
	.loc 13 1064 0
..LDL5874:
/*   1064 */	fmla	z5.s, p0/m, z2.s, z7.s
	.loc 13 1066 0
..LDL5875:
/*   1066 */	fmla	z3.s, p1/m, z2.s, z24.s
	.loc 13 1068 0
..LDL5876:
/*   1068 */	fmla	z1.s, p2/m, z2.s, z6.s
	.loc 13 1118 0 is_stmt 0
..LDL5877:
/*   1118 */	bne	.L12066
.L12060:
.L11446:
	.loc 13 1123 0 is_stmt 1
..LDL5878:
/*   1123 */	st1w	{z16.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL5879:
/*   1125 */	st1w	{z31.s}, p1, [x12, 0, mul vl]	//  (*)
	.loc 13 1127 0
..LDL5880:
/*   1127 */	st1w	{z0.s}, p2, [x11, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL5881:
/*   1131 */	st1w	{z30.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1133 0
..LDL5882:
/*   1133 */	st1w	{z26.s}, p1, [x9, 0, mul vl]	//  (*)
	.loc 13 1135 0
..LDL5883:
/*   1135 */	st1w	{z25.s}, p2, [x8, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL5884:
/*   1139 */	st1w	{z5.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1141 0
..LDL5885:
/*   1141 */	st1w	{z3.s}, p1, [x5, 0, mul vl]	//  (*)
	.loc 13 1143 0
..LDL5886:
/*   1143 */	st1w	{z1.s}, p2, [x14, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL5887:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 12
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D36.pchi:
	.cfi_endproc
.LFE35:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi3ELi48EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi3ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL5888:
.LFB36:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -4
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xa,0x92,0x1d,0x0,0x11,0x20,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xa,0x11,0x8,0x22,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xa,0x11,0x78,0x22,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL5889:
/*    971 */	ld1w	{z24.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 979 0
..LDL5890:
/*    979 */	sxtw	x7, w4
	.loc 13 987 0
..LDL5891:
/*    987 */	add	w8, w4, w4
/*    987 */	sxtw	x5, w8
	.loc 13 995 0
..LDL5892:
/*    995 */	add	w4, w8, w4
/*    995 */	sxtw	x4, w4
	.loc 13 979 0
..LDL5893:
/*    979 */	add	x7, x3, x7, lsl #2
/*    979 */	ld1w	{z6.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL5894:
/*    987 */	add	x5, x3, x5, lsl #2
/*    987 */	ld1w	{z4.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 995 0
..LDL5895:
/*    995 */	add	x8, x3, x4, lsl #2
/*    995 */	ld1w	{z1.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL5896:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11454
	.loc 13 1117 0 is_stmt 0
..LDL5897:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL5898:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x1, x1, 12
	.loc 13 1071 0
..LDL5899:
/*   1071 */	mov	x9, 2564
/*   1071 */	mov	x6, 516
	.loc 13 1034 0
..LDL5900:
/*   1034 */	cmp	w0, 6
/*   1034 */	blt	.L12074
	.loc 13 1071 0
..LDL5901:
/*   1071 */	ptrue	p1.s, ALL
	.loc 13 1044 0
..LDL5902:
/*   1044 */	ldr	s25, [x1, -12]	//  (*)
	.loc 13 1037 0
..LDL5903:
/*   1037 */	orr	x11, x2, 6917529027641081856
	.loc 13 1053 0
..LDL5904:
/*   1053 */	ldr	s2, [x1, -8]	//  (*)
	.loc 13 1117 0
..LDL5905:
/*   1117 */	add	x2, x2, x4
	.loc 13 1062 0
..LDL5906:
/*   1062 */	ldr	s7, [x1, -4]	//  (*)
	.loc 13 1037 0
..LDL5907:
/*   1037 */	ld1w	{z3.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1116 0
..LDL5908:
/*   1116 */	add	x10, x1, 16
	.loc 13 1037 0
..LDL5909:
/*   1037 */	orr	x12, x2, 6917529027641081856
	.loc 13 1044 0
..LDL5910:
/*   1044 */	ldr	s31, [x1, 4]	//  (*)
	.loc 13 1117 0
..LDL5911:
/*   1117 */	add	x2, x2, x4
	.loc 13 1071 0
..LDL5912:
/*   1071 */	ld1rw	{z5.s}, p1/z, [x1]	//  (*)
	.loc 13 1037 0
..LDL5913:
/*   1037 */	ld1w	{z0.s}, p0/z, [x12, 0, mul vl]	//  (*)
/*   1053 */	ldp	s30, s29, [x1, 8]	//  (*)
	.loc 13 1116 0
..LDL5914:
/*   1116 */	add	x1, x1, 32
	.loc 13 1037 0
..LDL5915:
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
/*   1037 */	prfm	0, [x11, 512]	//  (*)
/*   1037 */	prfm	2, [x12, 2560]	//  (*)
/*   1037 */	prfm	0, [x12, 512]	//  (*)
	.loc 13 1044 0
..LDL5916:
/*   1044 */	dup	z26.s, z25.s[0]
	.loc 13 1053 0
..LDL5917:
/*   1053 */	dup	z25.s, z2.s[0]
	.loc 13 1062 0
..LDL5918:
/*   1062 */	dup	z7.s, z7.s[0]
	.p2align 5
.L11452:					// :entr:term:swpl
	.loc 13 1044 0
..LDL5919:
/*   1044 */	ldr	s9, [x1, -12]	//  (*)
	.loc 13 1037 0
..LDL5920:
/*   1037 */	orr	x11, x2, 6917529027641081856
	.loc 13 1071 0
..LDL5921:
/*   1071 */	ld1rw	{z27.s}, p1/z, [x10]	//  (*)
	.loc 13 1037 0
..LDL5922:
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
	.loc 13 1053 0
..LDL5923:
/*   1053 */	ldr	s28, [x1, -8]	//  (*)
	.loc 13 1037 0
..LDL5924:
/*   1037 */	prfm	0, [x11, 512]	//  (*)
	.loc 13 1044 0
..LDL5925:
/*   1044 */	dup	z2.s, z31.s[0]
	.loc 13 1046 0
..LDL5926:
/*   1046 */	fmla	z24.s, p0/m, z26.s, z3.s
	.loc 13 1062 0
..LDL5927:
/*   1062 */	ldr	s8, [x1, -4]	//  (*)
	.loc 13 1037 0
..LDL5928:
/*   1037 */	ld1w	{z26.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL5929:
/*   1053 */	dup	z30.s, z30.s[0]
	.loc 13 1055 0
..LDL5930:
/*   1055 */	fmla	z6.s, p0/m, z25.s, z3.s
	.loc 13 1071 0
..LDL5931:
/*   1071 */	ptrue	p1.s, ALL
	.loc 13 1062 0
..LDL5932:
/*   1062 */	dup	z29.s, z29.s[0]
	.loc 13 1064 0
..LDL5933:
/*   1064 */	fmla	z4.s, p0/m, z7.s, z3.s
	.loc 13 1116 0
..LDL5934:
/*   1116 */	add	x12, x1, 16
	.loc 13 1073 0
..LDL5935:
/*   1073 */	fmla	z1.s, p0/m, z5.s, z3.s
	.loc 13 1117 0
..LDL5936:
/*   1117 */	add	x2, x4, x2
	.loc 13 1044 0
..LDL5937:
/*   1044 */	ldr	s10, [x1, 4]	//  (*)
	.loc 13 1037 0
..LDL5938:
/*   1037 */	orr	x10, x2, 6917529027641081856
	.loc 13 1071 0
..LDL5939:
/*   1071 */	ld1rw	{z5.s}, p1/z, [x1]	//  (*)
	.loc 13 1037 0
..LDL5940:
/*   1037 */	prfm	2, [x10, 2560]	//  (*)
	.loc 13 1053 0
..LDL5941:
/*   1053 */	ldr	s7, [x1, 8]	//  (*)
	.loc 13 1037 0
..LDL5942:
/*   1037 */	prfm	0, [x10, 512]	//  (*)
	.loc 13 1044 0
..LDL5943:
/*   1044 */	dup	z3.s, z9.s[0]
	.loc 13 1046 0
..LDL5944:
/*   1046 */	fmla	z24.s, p0/m, z2.s, z0.s
	.loc 13 1062 0
..LDL5945:
/*   1062 */	ldr	s31, [x1, 12]	//  (*)
	.loc 13 1037 0
..LDL5946:
/*   1037 */	ld1w	{z2.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL5947:
/*   1053 */	dup	z28.s, z28.s[0]
	.loc 13 1055 0
..LDL5948:
/*   1055 */	fmla	z6.s, p0/m, z30.s, z0.s
	.loc 13 1062 0
..LDL5949:
/*   1062 */	dup	z25.s, z8.s[0]
	.loc 13 1064 0
..LDL5950:
/*   1064 */	fmla	z4.s, p0/m, z29.s, z0.s
	.loc 13 1116 0
..LDL5951:
/*   1116 */	add	x11, x1, 32
	.loc 13 1073 0
..LDL5952:
/*   1073 */	fmla	z1.s, p0/m, z27.s, z0.s
	.loc 13 1117 0
..LDL5953:
/*   1117 */	add	x2, x2, x4
	.loc 13 1044 0
..LDL5954:
/*   1044 */	ldr	s29, [x1, 20]	//  (*)
	.loc 13 1037 0
..LDL5955:
/*   1037 */	orr	x10, x2, 6917529027641081856
	.loc 13 1071 0
..LDL5956:
/*   1071 */	ld1rw	{z27.s}, p1/z, [x12]	//  (*)
	.loc 13 1037 0
..LDL5957:
/*   1037 */	prfm	2, [x10, 2560]	//  (*)
	.loc 13 1053 0
..LDL5958:
/*   1053 */	ldr	s9, [x1, 24]	//  (*)
	.loc 13 1037 0
..LDL5959:
/*   1037 */	prfm	0, [x10, 512]	//  (*)
	.loc 13 1044 0
..LDL5960:
/*   1044 */	dup	z0.s, z10.s[0]
	.loc 13 1046 0
..LDL5961:
/*   1046 */	fmla	z24.s, p0/m, z3.s, z26.s
	.loc 13 1062 0
..LDL5962:
/*   1062 */	ldr	s8, [x1, 28]	//  (*)
	.loc 13 1037 0
..LDL5963:
/*   1037 */	ld1w	{z3.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL5964:
/*   1053 */	dup	z7.s, z7.s[0]
	.loc 13 1055 0
..LDL5965:
/*   1055 */	fmla	z6.s, p0/m, z28.s, z26.s
	.loc 13 1062 0
..LDL5966:
/*   1062 */	dup	z28.s, z31.s[0]
	.loc 13 1064 0
..LDL5967:
/*   1064 */	fmla	z4.s, p0/m, z25.s, z26.s
	.loc 13 1116 0
..LDL5968:
/*   1116 */	add	x10, x1, 48
	.loc 13 1073 0
..LDL5969:
/*   1073 */	fmla	z1.s, p0/m, z5.s, z26.s
	.loc 13 1117 0
..LDL5970:
/*   1117 */	add	x13, x2, x4
	.loc 13 1044 0
..LDL5971:
/*   1044 */	ldr	s31, [x1, 36]	//  (*)
	.loc 13 1037 0
..LDL5972:
/*   1037 */	orr	x2, x13, 6917529027641081856
	.loc 13 1071 0
..LDL5973:
/*   1071 */	ld1rw	{z5.s}, p1/z, [x11]	//  (*)
	.loc 13 1037 0
..LDL5974:
/*   1037 */	prfm	2, [x2, 2560]	//  (*)
	.loc 13 1053 0
..LDL5975:
/*   1053 */	ldr	s30, [x1, 40]	//  (*)
	.loc 13 1037 0
..LDL5976:
/*   1037 */	prfm	0, [x2, 512]	//  (*)
	.loc 13 1044 0
..LDL5977:
/*   1044 */	dup	z26.s, z29.s[0]
	.loc 13 1046 0
..LDL5978:
/*   1046 */	fmla	z24.s, p0/m, z0.s, z2.s
	.loc 13 1062 0
..LDL5979:
/*   1062 */	ldr	s29, [x1, 44]	//  (*)
	.loc 13 1037 0
..LDL5980:
/*   1037 */	ld1w	{z0.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL5981:
/*   1053 */	dup	z25.s, z9.s[0]
	.loc 13 1055 0
..LDL5982:
/*   1055 */	fmla	z6.s, p0/m, z7.s, z2.s
	.loc 13 1062 0
..LDL5983:
/*   1062 */	dup	z7.s, z8.s[0]
	.loc 13 1064 0
..LDL5984:
/*   1064 */	fmla	z4.s, p0/m, z28.s, z2.s
	.loc 13 1071 0
..LDL5985:
/*   1071 */	prfm	2, [x12, x9]	//  (*)
	.loc 13 1116 0
..LDL5986:
/*   1116 */	add	x1, x1, 64
	.loc 13 1071 0
..LDL5987:
/*   1071 */	prfm	0, [x12, x6]	//  (*)
	.loc 13 1073 0
..LDL5988:
/*   1073 */	fmla	z1.s, p0/m, z27.s, z2.s
	.loc 13 1117 0
..LDL5989:
/*   1117 */	add	x2, x13, x4
	.loc 13 1118 0
..LDL5990:
/*   1118 */	sub	w0, w0, 4
	.loc 13 1036 0
..LDL5991:
/*   1036 */	cmp	w0, 6
/*   1036 */	bge	.L11452
	.loc 13 1071 0
..LDL5992:
/*   1071 */	ld1rw	{z2.s}, p1/z, [x10]	//  (*)
	.loc 13 1046 0
..LDL5993:
/*   1046 */	fmla	z24.s, p0/m, z26.s, z3.s
	.loc 13 1055 0
..LDL5994:
/*   1055 */	fmla	z6.s, p0/m, z25.s, z3.s
	.loc 13 1118 0
..LDL5995:
/*   1118 */	sub	w0, w0, 2
	.loc 13 1071 0
..LDL5996:
/*   1071 */	prfm	2, [x11, x9]	//  (*)
	.loc 13 1064 0
..LDL5997:
/*   1064 */	fmla	z4.s, p0/m, z7.s, z3.s
	.loc 13 1073 0
..LDL5998:
/*   1073 */	fmla	z1.s, p0/m, z5.s, z3.s
	.loc 13 1071 0
..LDL5999:
/*   1071 */	prfm	0, [x11, x6]	//  (*)
	.loc 13 1044 0
..LDL6000:
/*   1044 */	dup	z7.s, z31.s[0]
	.loc 13 1071 0
..LDL6001:
/*   1071 */	prfm	2, [x10, x9]	//  (*)
	.loc 13 1053 0
..LDL6002:
/*   1053 */	dup	z5.s, z30.s[0]
	.loc 13 1071 0
..LDL6003:
/*   1071 */	prfm	0, [x10, x6]	//  (*)
	.loc 13 1062 0
..LDL6004:
/*   1062 */	dup	z3.s, z29.s[0]
	.loc 13 1046 0
..LDL6005:
/*   1046 */	fmla	z24.s, p0/m, z7.s, z0.s
	.loc 13 1055 0
..LDL6006:
/*   1055 */	fmla	z6.s, p0/m, z5.s, z0.s
	.loc 13 1064 0
..LDL6007:
/*   1064 */	fmla	z4.s, p0/m, z3.s, z0.s
	.loc 13 1073 0
..LDL6008:
/*   1073 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1118 0
..LDL6009:
/*   1118 */	cbz	w0, .L12071
.L12074:
	.p2align 5
.L12077:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL6010:
/*   1037 */	orr	x10, x2, 6917529027641081856
	.loc 13 1044 0
..LDL6011:
/*   1044 */	ldp	s2, s7, [x1, -12]	//  (*)
	.loc 13 1071 0
..LDL6012:
/*   1071 */	ptrue	p1.s, ALL
	.loc 13 1037 0
..LDL6013:
/*   1037 */	ld1w	{z0.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1062 0
..LDL6014:
/*   1062 */	ldr	s3, [x1, -4]	//  (*)
	.loc 13 1117 0
..LDL6015:
/*   1117 */	add	x2, x2, x4
	.loc 13 1118 0
..LDL6016:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1071 0
..LDL6017:
/*   1071 */	prfm	2, [x1, x9]	//  (*)
/*   1071 */	prfm	0, [x1, x6]	//  (*)
	.loc 13 1037 0
..LDL6018:
/*   1037 */	prfm	2, [x10, 2560]	//  (*)
	.loc 13 1071 0
..LDL6019:
/*   1071 */	ld1rw	{z5.s}, p1/z, [x1]	//  (*)
	.loc 13 1116 0
..LDL6020:
/*   1116 */	add	x1, x1, 16
	.loc 13 1037 0
..LDL6021:
/*   1037 */	prfm	0, [x10, 512]	//  (*)
	.loc 13 1044 0
..LDL6022:
/*   1044 */	dup	z2.s, z2.s[0]
	.loc 13 1053 0
..LDL6023:
/*   1053 */	dup	z7.s, z7.s[0]
	.loc 13 1062 0
..LDL6024:
/*   1062 */	dup	z3.s, z3.s[0]
	.loc 13 1046 0
..LDL6025:
/*   1046 */	fmla	z24.s, p0/m, z2.s, z0.s
	.loc 13 1073 0
..LDL6026:
/*   1073 */	fmla	z1.s, p0/m, z5.s, z0.s
	.loc 13 1055 0
..LDL6027:
/*   1055 */	fmla	z6.s, p0/m, z7.s, z0.s
	.loc 13 1064 0
..LDL6028:
/*   1064 */	fmla	z4.s, p0/m, z3.s, z0.s
	.loc 13 1118 0 is_stmt 0
..LDL6029:
/*   1118 */	bne	.L12077
.L12071:
.L11454:
	.loc 13 1123 0 is_stmt 1
..LDL6030:
/*   1123 */	st1w	{z24.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL6031:
/*   1131 */	st1w	{z6.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL6032:
/*   1139 */	st1w	{z4.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1147 0
..LDL6033:
/*   1147 */	st1w	{z1.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL6034:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 4
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D37.pchi:
	.cfi_endproc
.LFE36:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL6035:
.LFB37:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -13
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xe8,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x78,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL6036:
/*    971 */	ld1w	{z26.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 979 0
..LDL6037:
/*    979 */	sxtw	x10, w4
	.loc 13 987 0
..LDL6038:
/*    987 */	add	w5, w4, w4
/*    987 */	sxtw	x8, w5
	.loc 13 995 0
..LDL6039:
/*    995 */	add	w4, w5, w4
	.loc 13 981 0
..LDL6040:
/*    981 */	add	x9, x10, 16
	.loc 13 995 0
..LDL6041:
/*    995 */	sxtw	x5, w4
	.loc 13 989 0
..LDL6042:
/*    989 */	add	x7, x8, 16
	.loc 13 997 0
..LDL6043:
/*    997 */	add	x4, x5, 16
	.loc 13 973 0
..LDL6044:
/*    973 */	add	x11, x3, 64
	.loc 13 979 0
..LDL6045:
/*    979 */	add	x10, x3, x10, lsl #2
	.loc 13 973 0
..LDL6046:
/*    973 */	ld1w	{z0.s}, p1/z, [x11, 0, mul vl]	//  (*)
	.loc 13 979 0
..LDL6047:
/*    979 */	ld1w	{z12.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL6048:
/*    981 */	add	x9, x3, x9, lsl #2
/*    981 */	ld1w	{z7.s}, p1/z, [x9, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL6049:
/*    987 */	add	x8, x3, x8, lsl #2
/*    987 */	ld1w	{z3.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 989 0
..LDL6050:
/*    989 */	add	x7, x3, x7, lsl #2
/*    989 */	ld1w	{z5.s}, p1/z, [x7, 0, mul vl]	//  (*)
	.loc 13 995 0
..LDL6051:
/*    995 */	add	x12, x3, x5, lsl #2
/*    995 */	ld1w	{z2.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 997 0
..LDL6052:
/*    997 */	add	x14, x3, x4, lsl #2
/*    997 */	ld1w	{z1.s}, p1/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL6053:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11462
	.loc 13 1117 0 is_stmt 0
..LDL6054:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL6055:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x1, x1, 12
	.loc 13 1071 0
..LDL6056:
/*   1071 */	mov	x6, 2564
/*   1071 */	mov	x5, 516
	.loc 13 1034 0
..LDL6057:
/*   1034 */	cmp	w0, 7
/*   1034 */	blt	.L12085
	.loc 13 1071 0
..LDL6058:
/*   1071 */	ptrue	p2.s, ALL
	.loc 13 1044 0
..LDL6059:
/*   1044 */	ldr	s6, [x1, -12]	//  (*)
	.loc 13 1117 0
..LDL6060:
/*   1117 */	add	x16, x2, x4
	.loc 13 1053 0
..LDL6061:
/*   1053 */	ldr	s4, [x1, -8]	//  (*)
	.loc 13 1037 0
..LDL6062:
/*   1037 */	orr	x15, x2, 6917529027641081856
	.loc 13 1062 0
..LDL6063:
/*   1062 */	ldr	s27, [x1, -4]	//  (*)
	.loc 13 1037 0
..LDL6064:
/*   1037 */	orr	x13, x16, 6917529027641081856
	.loc 13 1039 0
..LDL6065:
/*   1039 */	ld1w	{z31.s}, p1/z, [x16, 1, mul vl]	//  (*)
	.loc 13 1037 0
..LDL6066:
/*   1037 */	ld1w	{z11.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL6067:
/*   1039 */	ld1w	{z10.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1118 0
..LDL6068:
/*   1118 */	mov	z25.d, z0.d
	.loc 13 1117 0
..LDL6069:
/*   1117 */	add	x16, x16, x4
	.loc 13 1037 0
..LDL6070:
/*   1037 */	ld1w	{z8.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1071 0
..LDL6071:
/*   1071 */	ld1rw	{z9.s}, p2/z, [x1]	//  (*)
	.loc 13 1116 0
..LDL6072:
/*   1116 */	add	x17, x1, 32
	.loc 13 1037 0
..LDL6073:
/*   1037 */	orr	x18, x16, 6917529027641081856
/*   1044 */	ldp	s14, s16, [x1, 4]	//  (*)
	.loc 13 1062 0
..LDL6074:
/*   1062 */	ldr	s15, [x1, 12]	//  (*)
	.loc 13 1044 0
..LDL6075:
/*   1044 */	ldr	s13, [x1, 20]	//  (*)
	.loc 13 1037 0
..LDL6076:
/*   1037 */	prfm	2, [x15, 2560]	//  (*)
/*   1037 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 1116 0
..LDL6077:
/*   1116 */	add	x15, x1, 16
	.loc 13 1037 0
..LDL6078:
/*   1037 */	prfm	2, [x13, 2560]	//  (*)
/*   1037 */	prfm	0, [x13, 512]	//  (*)
	.loc 13 1044 0
..LDL6079:
/*   1044 */	dup	z24.s, z6.s[0]
	.loc 13 1053 0
..LDL6080:
/*   1053 */	dup	z6.s, z4.s[0]
	.loc 13 1062 0
..LDL6081:
/*   1062 */	dup	z4.s, z27.s[0]
	.p2align 5
.L11460:					// :entr:term:swpl
	.loc 13 1037 0
..LDL6082:
/*   1037 */	prfm	2, [x18, 2560]	//  (*)
	.loc 13 1044 0
..LDL6083:
/*   1044 */	dup	z29.s, z14.s[0]
	.loc 13 1037 0
..LDL6084:
/*   1037 */	prfm	0, [x18, 512]	//  (*)
/*   1037 */	ld1w	{z28.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL6085:
/*   1117 */	add	x1, x16, x4
	.loc 13 1053 0
..LDL6086:
/*   1053 */	ldr	s0, [x17, -8]	//  (*)
	.loc 13 1046 0
..LDL6087:
/*   1046 */	fmla	z26.s, p0/m, z24.s, z11.s
	.loc 13 1062 0
..LDL6088:
/*   1062 */	ldr	s17, [x17, -4]	//  (*)
	.loc 13 1048 0
..LDL6089:
/*   1048 */	fmad	z24.s, p1/m, z10.s, z25.s
	.loc 13 1053 0
..LDL6090:
/*   1053 */	dup	z30.s, z16.s[0]
	.loc 13 1071 0
..LDL6091:
/*   1071 */	ld1rw	{z27.s}, p2/z, [x15]	//  (*)
	.loc 13 1116 0
..LDL6092:
/*   1116 */	add	x18, x17, 16
	.loc 13 1055 0
..LDL6093:
/*   1055 */	fmla	z12.s, p0/m, z6.s, z11.s
	.loc 13 1062 0
..LDL6094:
/*   1062 */	dup	z14.s, z15.s[0]
	.loc 13 1039 0
..LDL6095:
/*   1039 */	ld1w	{z15.s}, p1/z, [x16, 1, mul vl]	//  (*)
	.loc 13 1044 0
..LDL6096:
/*   1044 */	ldr	s19, [x17, 4]	//  (*)
	.loc 13 1057 0
..LDL6097:
/*   1057 */	fmad	z6.s, p1/m, z10.s, z7.s
	.loc 13 1064 0
..LDL6098:
/*   1064 */	fmla	z3.s, p0/m, z4.s, z11.s
	.loc 13 1066 0
..LDL6099:
/*   1066 */	fmad	z4.s, p1/m, z10.s, z5.s
	.loc 13 1071 0
..LDL6100:
/*   1071 */	ptrue	p2.s, ALL
	.loc 13 1073 0
..LDL6101:
/*   1073 */	fmad	z11.s, p0/m, z9.s, z2.s
	.loc 13 1075 0
..LDL6102:
/*   1075 */	fmad	z9.s, p1/m, z10.s, z1.s
	.loc 13 1037 0
..LDL6103:
/*   1037 */	orr	x2, x1, 6917529027641081856
/*   1037 */	prfm	2, [x2, 2560]	//  (*)
	.loc 13 1044 0
..LDL6104:
/*   1044 */	dup	z25.s, z13.s[0]
	.loc 13 1037 0
..LDL6105:
/*   1037 */	prfm	0, [x2, 512]	//  (*)
/*   1037 */	ld1w	{z2.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL6106:
/*   1117 */	add	x2, x1, x4
	.loc 13 1053 0
..LDL6107:
/*   1053 */	ldr	s10, [x17, 8]	//  (*)
	.loc 13 1046 0
..LDL6108:
/*   1046 */	fmla	z26.s, p0/m, z29.s, z8.s
	.loc 13 1062 0
..LDL6109:
/*   1062 */	ldr	s16, [x17, 12]	//  (*)
	.loc 13 1048 0
..LDL6110:
/*   1048 */	fmla	z24.s, p1/m, z29.s, z31.s
	.loc 13 1053 0
..LDL6111:
/*   1053 */	dup	z7.s, z0.s[0]
	.loc 13 1071 0
..LDL6112:
/*   1071 */	ld1rw	{z1.s}, p2/z, [x17]	//  (*)
	.loc 13 1116 0
..LDL6113:
/*   1116 */	add	x13, x17, 32
	.loc 13 1055 0
..LDL6114:
/*   1055 */	fmla	z12.s, p0/m, z30.s, z8.s
	.loc 13 1062 0
..LDL6115:
/*   1062 */	dup	z5.s, z17.s[0]
	.loc 13 1039 0
..LDL6116:
/*   1039 */	ld1w	{z0.s}, p1/z, [x1, 1, mul vl]	//  (*)
	.loc 13 1044 0
..LDL6117:
/*   1044 */	ldr	s18, [x17, 20]	//  (*)
	.loc 13 1057 0
..LDL6118:
/*   1057 */	fmla	z6.s, p1/m, z30.s, z31.s
	.loc 13 1064 0
..LDL6119:
/*   1064 */	fmla	z3.s, p0/m, z14.s, z8.s
	.loc 13 1066 0
..LDL6120:
/*   1066 */	fmla	z4.s, p1/m, z14.s, z31.s
	.loc 13 1073 0
..LDL6121:
/*   1073 */	fmad	z8.s, p0/m, z27.s, z11.s
	.loc 13 1075 0
..LDL6122:
/*   1075 */	movprfx	z13.s, p1/z, z9.s
/*   1075 */	fmla	z13.s, p1/m, z27.s, z31.s
	.loc 13 1037 0
..LDL6123:
/*   1037 */	orr	x1, x2, 6917529027641081856
/*   1037 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 1044 0
..LDL6124:
/*   1044 */	dup	z31.s, z19.s[0]
	.loc 13 1037 0
..LDL6125:
/*   1037 */	prfm	0, [x1, 512]	//  (*)
/*   1037 */	ld1w	{z11.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL6126:
/*   1117 */	add	x1, x2, x4
	.loc 13 1053 0
..LDL6127:
/*   1053 */	ldr	s9, [x17, 24]	//  (*)
	.loc 13 1046 0
..LDL6128:
/*   1046 */	fmla	z26.s, p0/m, z25.s, z28.s
	.loc 13 1062 0
..LDL6129:
/*   1062 */	ldr	s17, [x17, 28]	//  (*)
	.loc 13 1048 0
..LDL6130:
/*   1048 */	fmad	z25.s, p1/m, z15.s, z24.s
	.loc 13 1053 0
..LDL6131:
/*   1053 */	dup	z30.s, z10.s[0]
	.loc 13 1071 0
..LDL6132:
/*   1071 */	ld1rw	{z27.s}, p2/z, [x18]	//  (*)
	.loc 13 1116 0
..LDL6133:
/*   1116 */	add	x15, x17, 48
	.loc 13 1055 0
..LDL6134:
/*   1055 */	fmla	z12.s, p0/m, z7.s, z28.s
	.loc 13 1062 0
..LDL6135:
/*   1062 */	dup	z29.s, z16.s[0]
	.loc 13 1039 0
..LDL6136:
/*   1039 */	ld1w	{z10.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1044 0
..LDL6137:
/*   1044 */	ldr	s14, [x17, 36]	//  (*)
	.loc 13 1057 0
..LDL6138:
/*   1057 */	fmad	z7.s, p1/m, z15.s, z6.s
	.loc 13 1064 0
..LDL6139:
/*   1064 */	fmla	z3.s, p0/m, z5.s, z28.s
	.loc 13 1066 0
..LDL6140:
/*   1066 */	fmad	z5.s, p1/m, z15.s, z4.s
	.loc 13 1073 0
..LDL6141:
/*   1073 */	fmad	z28.s, p0/m, z1.s, z8.s
	.loc 13 1075 0
..LDL6142:
/*   1075 */	fmad	z1.s, p1/m, z15.s, z13.s
	.loc 13 1037 0
..LDL6143:
/*   1037 */	orr	x2, x1, 6917529027641081856
/*   1037 */	prfm	2, [x2, 2560]	//  (*)
	.loc 13 1044 0
..LDL6144:
/*   1044 */	dup	z24.s, z18.s[0]
	.loc 13 1037 0
..LDL6145:
/*   1037 */	prfm	0, [x2, 512]	//  (*)
/*   1037 */	ld1w	{z8.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL6146:
/*   1117 */	add	x16, x1, x4
	.loc 13 1053 0
..LDL6147:
/*   1053 */	ldr	s16, [x17, 40]	//  (*)
	.loc 13 1046 0
..LDL6148:
/*   1046 */	fmla	z26.s, p0/m, z31.s, z2.s
	.loc 13 1062 0
..LDL6149:
/*   1062 */	ldr	s15, [x17, 44]	//  (*)
	.loc 13 1048 0
..LDL6150:
/*   1048 */	fmla	z25.s, p1/m, z31.s, z0.s
	.loc 13 1053 0
..LDL6151:
/*   1053 */	dup	z6.s, z9.s[0]
	.loc 13 1071 0
..LDL6152:
/*   1071 */	ld1rw	{z9.s}, p2/z, [x13]	//  (*)
	.loc 13 1116 0
..LDL6153:
/*   1116 */	add	x17, x17, 64
	.loc 13 1055 0
..LDL6154:
/*   1055 */	fmla	z12.s, p0/m, z30.s, z2.s
	.loc 13 1062 0
..LDL6155:
/*   1062 */	dup	z4.s, z17.s[0]
	.loc 13 1039 0
..LDL6156:
/*   1039 */	ld1w	{z31.s}, p1/z, [x1, 1, mul vl]	//  (*)
	.loc 13 1044 0
..LDL6157:
/*   1044 */	ldr	s13, [x17, -12]	//  (*)
	.loc 13 1057 0
..LDL6158:
/*   1057 */	fmla	z7.s, p1/m, z30.s, z0.s
	.loc 13 1064 0
..LDL6159:
/*   1064 */	fmla	z3.s, p0/m, z29.s, z2.s
	.loc 13 1071 0
..LDL6160:
/*   1071 */	prfm	2, [x18, x6]	//  (*)
	.loc 13 1066 0
..LDL6161:
/*   1066 */	fmla	z5.s, p1/m, z29.s, z0.s
	.loc 13 1071 0
..LDL6162:
/*   1071 */	prfm	0, [x18, x5]	//  (*)
	.loc 13 1073 0
..LDL6163:
/*   1073 */	fmad	z2.s, p0/m, z27.s, z28.s
	.loc 13 1075 0
..LDL6164:
/*   1075 */	fmla	z1.s, p1/m, z27.s, z0.s
	.loc 13 1037 0
..LDL6165:
/*   1037 */	orr	x18, x16, 6917529027641081856
	.loc 13 1118 0
..LDL6166:
/*   1118 */	sub	w0, w0, 4
	.loc 13 1036 0
..LDL6167:
/*   1036 */	cmp	w0, 7
/*   1036 */	bge	.L11460
	.loc 13 1046 0
..LDL6168:
/*   1046 */	fmla	z26.s, p0/m, z24.s, z11.s
	.loc 13 1048 0
..LDL6169:
/*   1048 */	fmla	z25.s, p1/m, z24.s, z10.s
	.loc 13 1071 0
..LDL6170:
/*   1071 */	ld1rw	{z28.s}, p2/z, [x15]	//  (*)
/*   1071 */	ptrue	p2.s, ALL
	.loc 13 1053 0
..LDL6171:
/*   1053 */	ldr	s27, [x17, -8]	//  (*)
	.loc 13 1055 0
..LDL6172:
/*   1055 */	fmla	z12.s, p0/m, z6.s, z11.s
	.loc 13 1057 0
..LDL6173:
/*   1057 */	fmla	z7.s, p1/m, z6.s, z10.s
	.loc 13 1117 0
..LDL6174:
/*   1117 */	add	x2, x16, x4
	.loc 13 1062 0
..LDL6175:
/*   1062 */	ldr	s29, [x17, -4]	//  (*)
	.loc 13 1064 0
..LDL6176:
/*   1064 */	fmla	z3.s, p0/m, z4.s, z11.s
	.loc 13 1066 0
..LDL6177:
/*   1066 */	fmla	z5.s, p1/m, z4.s, z10.s
	.loc 13 1116 0
..LDL6178:
/*   1116 */	add	x1, x17, 16
	.loc 13 1037 0
..LDL6179:
/*   1037 */	ld1w	{z24.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 1073 0
..LDL6180:
/*   1073 */	fmla	z2.s, p0/m, z9.s, z11.s
	.loc 13 1075 0
..LDL6181:
/*   1075 */	fmla	z1.s, p1/m, z9.s, z10.s
	.loc 13 1118 0
..LDL6182:
/*   1118 */	sub	w0, w0, 3
	.loc 13 1039 0
..LDL6183:
/*   1039 */	ld1w	{z4.s}, p1/z, [x16, 1, mul vl]	//  (*)
	.loc 13 1044 0
..LDL6184:
/*   1044 */	dup	z0.s, z14.s[0]
	.loc 13 1071 0
..LDL6185:
/*   1071 */	ld1rw	{z6.s}, p2/z, [x17]	//  (*)
	.loc 13 1053 0
..LDL6186:
/*   1053 */	dup	z11.s, z16.s[0]
	.loc 13 1037 0
..LDL6187:
/*   1037 */	prfm	2, [x18, 2560]	//  (*)
	.loc 13 1062 0
..LDL6188:
/*   1062 */	dup	z10.s, z15.s[0]
	.loc 13 1037 0
..LDL6189:
/*   1037 */	prfm	0, [x18, 512]	//  (*)
	.loc 13 1044 0
..LDL6190:
/*   1044 */	dup	z9.s, z13.s[0]
	.loc 13 1071 0
..LDL6191:
/*   1071 */	prfm	2, [x13, x6]	//  (*)
/*   1071 */	prfm	0, [x13, x5]	//  (*)
	.loc 13 1053 0
..LDL6192:
/*   1053 */	dup	z30.s, z27.s[0]
	.loc 13 1071 0
..LDL6193:
/*   1071 */	prfm	2, [x15, x6]	//  (*)
	.loc 13 1046 0
..LDL6194:
/*   1046 */	fmla	z26.s, p0/m, z0.s, z8.s
	.loc 13 1048 0
..LDL6195:
/*   1048 */	fmad	z0.s, p1/m, z31.s, z25.s
	.loc 13 1071 0
..LDL6196:
/*   1071 */	prfm	0, [x15, x5]	//  (*)
	.loc 13 1055 0
..LDL6197:
/*   1055 */	fmla	z12.s, p0/m, z11.s, z8.s
	.loc 13 1057 0
..LDL6198:
/*   1057 */	fmla	z7.s, p1/m, z11.s, z31.s
	.loc 13 1071 0
..LDL6199:
/*   1071 */	prfm	2, [x17, x6]	//  (*)
	.loc 13 1064 0
..LDL6200:
/*   1064 */	fmla	z3.s, p0/m, z10.s, z8.s
	.loc 13 1066 0
..LDL6201:
/*   1066 */	fmla	z5.s, p1/m, z10.s, z31.s
	.loc 13 1071 0
..LDL6202:
/*   1071 */	prfm	0, [x17, x5]	//  (*)
	.loc 13 1073 0
..LDL6203:
/*   1073 */	fmla	z2.s, p0/m, z28.s, z8.s
	.loc 13 1075 0
..LDL6204:
/*   1075 */	fmla	z1.s, p1/m, z28.s, z31.s
	.loc 13 1062 0
..LDL6205:
/*   1062 */	dup	z27.s, z29.s[0]
	.loc 13 1046 0
..LDL6206:
/*   1046 */	fmla	z26.s, p0/m, z9.s, z24.s
	.loc 13 1048 0
..LDL6207:
/*   1048 */	fmla	z0.s, p1/m, z9.s, z4.s
	.loc 13 1055 0
..LDL6208:
/*   1055 */	fmla	z12.s, p0/m, z30.s, z24.s
	.loc 13 1057 0
..LDL6209:
/*   1057 */	fmla	z7.s, p1/m, z30.s, z4.s
	.loc 13 1064 0
..LDL6210:
/*   1064 */	fmla	z3.s, p0/m, z27.s, z24.s
	.loc 13 1066 0
..LDL6211:
/*   1066 */	fmla	z5.s, p1/m, z27.s, z4.s
	.loc 13 1073 0
..LDL6212:
/*   1073 */	fmla	z2.s, p0/m, z6.s, z24.s
	.loc 13 1075 0
..LDL6213:
/*   1075 */	fmla	z1.s, p1/m, z6.s, z4.s
	.loc 13 1118 0
..LDL6214:
/*   1118 */	cbz	w0, .L12082
.L12085:
	.p2align 5
.L12088:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL6215:
/*   1037 */	orr	x15, x2, 6917529027641081856
	.loc 13 1044 0
..LDL6216:
/*   1044 */	ldp	s6, s28, [x1, -12]	//  (*)
	.loc 13 1071 0
..LDL6217:
/*   1071 */	ptrue	p2.s, ALL
	.loc 13 1037 0
..LDL6218:
/*   1037 */	ld1w	{z27.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL6219:
/*   1039 */	add	x13, x2, 64
	.loc 13 1062 0
..LDL6220:
/*   1062 */	ldr	s24, [x1, -4]	//  (*)
	.loc 13 1117 0
..LDL6221:
/*   1117 */	add	x2, x2, x4
	.loc 13 1039 0
..LDL6222:
/*   1039 */	ld1w	{z4.s}, p1/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1071 0
..LDL6223:
/*   1071 */	prfm	2, [x1, x6]	//  (*)
	.loc 13 1118 0
..LDL6224:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1071 0
..LDL6225:
/*   1071 */	prfm	0, [x1, x5]	//  (*)
/*   1071 */	ld1rw	{z25.s}, p2/z, [x1]	//  (*)
	.loc 13 1116 0
..LDL6226:
/*   1116 */	add	x1, x1, 16
	.loc 13 1037 0
..LDL6227:
/*   1037 */	prfm	2, [x15, 2560]	//  (*)
/*   1037 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 1044 0
..LDL6228:
/*   1044 */	dup	z6.s, z6.s[0]
	.loc 13 1053 0
..LDL6229:
/*   1053 */	dup	z28.s, z28.s[0]
	.loc 13 1062 0
..LDL6230:
/*   1062 */	dup	z24.s, z24.s[0]
	.loc 13 1046 0
..LDL6231:
/*   1046 */	fmla	z26.s, p0/m, z6.s, z27.s
	.loc 13 1048 0
..LDL6232:
/*   1048 */	fmla	z0.s, p1/m, z6.s, z4.s
	.loc 13 1055 0
..LDL6233:
/*   1055 */	fmla	z12.s, p0/m, z28.s, z27.s
	.loc 13 1057 0
..LDL6234:
/*   1057 */	fmla	z7.s, p1/m, z28.s, z4.s
	.loc 13 1064 0
..LDL6235:
/*   1064 */	fmla	z3.s, p0/m, z24.s, z27.s
	.loc 13 1066 0
..LDL6236:
/*   1066 */	fmla	z5.s, p1/m, z24.s, z4.s
	.loc 13 1073 0
..LDL6237:
/*   1073 */	fmla	z2.s, p0/m, z25.s, z27.s
	.loc 13 1075 0
..LDL6238:
/*   1075 */	fmla	z1.s, p1/m, z25.s, z4.s
	.loc 13 1118 0 is_stmt 0
..LDL6239:
/*   1118 */	bne	.L12088
.L12082:
.L11462:
	.loc 13 1123 0 is_stmt 1
..LDL6240:
/*   1123 */	st1w	{z26.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL6241:
/*   1125 */	st1w	{z0.s}, p1, [x11, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL6242:
/*   1131 */	st1w	{z12.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1133 0
..LDL6243:
/*   1133 */	st1w	{z7.s}, p1, [x9, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL6244:
/*   1139 */	st1w	{z3.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1141 0
..LDL6245:
/*   1141 */	st1w	{z5.s}, p1, [x7, 0, mul vl]	//  (*)
	.loc 13 1147 0
..LDL6246:
/*   1147 */	st1w	{z2.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1149 0
..LDL6247:
/*   1149 */	st1w	{z1.s}, p1, [x14, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL6248:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 13
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D38.pchi:
	.cfi_endproc
.LFE37:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi4ELi48EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi4ELi48EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi4ELi48EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi4ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi4ELi48EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi4ELi48EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL6249:
.LFB38:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -12
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xe0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 32
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*    ??? */	str	x21, [x29, -24]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x68,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL6250:
/*    971 */	ld1w	{z9.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 979 0
..LDL6251:
/*    979 */	sxtw	x13, w4
	.loc 13 987 0
..LDL6252:
/*    987 */	add	w5, w4, w4
/*    987 */	sxtw	x10, w5
	.loc 13 995 0
..LDL6253:
/*    995 */	add	w4, w5, w4
	.loc 13 981 0
..LDL6254:
/*    981 */	add	x12, x13, 16
	.loc 13 995 0
..LDL6255:
/*    995 */	sxtw	x7, w4
	.loc 13 983 0
..LDL6256:
/*    983 */	add	x11, x13, 32
	.loc 13 989 0
..LDL6257:
/*    989 */	add	x9, x10, 16
	.loc 13 991 0
..LDL6258:
/*    991 */	add	x8, x10, 32
	.loc 13 997 0
..LDL6259:
/*    997 */	add	x5, x7, 16
	.loc 13 999 0
..LDL6260:
/*    999 */	add	x4, x7, 32
	.loc 13 973 0
..LDL6261:
/*    973 */	add	x14, x3, 64
	.loc 13 979 0
..LDL6262:
/*    979 */	add	x13, x3, x13, lsl #2
	.loc 13 973 0
..LDL6263:
/*    973 */	ld1w	{z8.s}, p1/z, [x14, 0, mul vl]	//  (*)
	.loc 13 975 0
..LDL6264:
/*    975 */	add	x15, x3, 128
/*    975 */	ld1w	{z31.s}, p2/z, [x15, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL6265:
/*    981 */	add	x12, x3, x12, lsl #2
	.loc 13 979 0
..LDL6266:
/*    979 */	ld1w	{z30.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL6267:
/*    981 */	ld1w	{z29.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 983 0
..LDL6268:
/*    983 */	add	x11, x3, x11, lsl #2
/*    983 */	ld1w	{z28.s}, p2/z, [x11, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL6269:
/*    987 */	add	x10, x3, x10, lsl #2
/*    987 */	ld1w	{z26.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 989 0
..LDL6270:
/*    989 */	add	x9, x3, x9, lsl #2
/*    989 */	ld1w	{z4.s}, p1/z, [x9, 0, mul vl]	//  (*)
	.loc 13 991 0
..LDL6271:
/*    991 */	add	x8, x3, x8, lsl #2
/*    991 */	ld1w	{z25.s}, p2/z, [x8, 0, mul vl]	//  (*)
	.loc 13 995 0
..LDL6272:
/*    995 */	add	x7, x3, x7, lsl #2
/*    995 */	ld1w	{z3.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 997 0
..LDL6273:
/*    997 */	add	x16, x3, x5, lsl #2
/*    997 */	ld1w	{z6.s}, p1/z, [x16, 0, mul vl]	//  (*)
	.loc 13 999 0
..LDL6274:
/*    999 */	add	x17, x3, x4, lsl #2
/*    999 */	ld1w	{z1.s}, p2/z, [x17, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL6275:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11470
	.loc 13 1117 0 is_stmt 0
..LDL6276:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL6277:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x1, x1, 12
	.loc 13 1071 0
..LDL6278:
/*   1071 */	mov	x5, 2564
/*   1071 */	mov	x18, 516
	.loc 13 1034 0
..LDL6279:
/*   1034 */	cmp	w0, 5
/*   1034 */	blt	.L12096
	.loc 13 1071 0
..LDL6280:
/*   1071 */	ptrue	p3.s, ALL
	.loc 13 1044 0
..LDL6281:
/*   1044 */	ldr	s2, [x1, -12]	//  (*)
	.loc 13 1037 0
..LDL6282:
/*   1037 */	orr	x20, x2, 6917529027641081856
	.loc 13 1117 0
..LDL6283:
/*   1117 */	add	x6, x2, x4
	.loc 13 1053 0
..LDL6284:
/*   1053 */	ldr	s0, [x1, -8]	//  (*)
	.loc 13 1037 0
..LDL6285:
/*   1037 */	ld1w	{z7.s}, p0/z, [x20, 0, mul vl]	//  (*)
/*   1037 */	orr	x30, x6, 6917529027641081856
	.loc 13 1039 0
..LDL6286:
/*   1039 */	ld1w	{z5.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1041 0
..LDL6287:
/*   1041 */	ld1w	{z11.s}, p2/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1071 0
..LDL6288:
/*   1071 */	ld1rw	{z12.s}, p3/z, [x1]	//  (*)
	.loc 13 1062 0
..LDL6289:
/*   1062 */	ldr	s13, [x1, -4]	//  (*)
	.loc 13 1044 0
..LDL6290:
/*   1044 */	ldr	s15, [x1, 4]	//  (*)
	.loc 13 1037 0
..LDL6291:
/*   1037 */	prfm	2, [x20, 2560]	//  (*)
/*   1037 */	prfm	0, [x20, 512]	//  (*)
/*   1037 */	prfm	2, [x30, 2560]	//  (*)
	.loc 13 1116 0
..LDL6292:
/*   1116 */	add	x20, x1, 16
	.loc 13 1044 0
..LDL6293:
/*   1044 */	dup	z10.s, z2.s[0]
	.loc 13 1053 0
..LDL6294:
/*   1053 */	dup	z27.s, z0.s[0]
	.p2align 5
.L11468:					// :entr:term:swpl
	.loc 13 1037 0
..LDL6295:
/*   1037 */	prfm	0, [x30, 512]	//  (*)
	.loc 13 1053 0
..LDL6296:
/*   1053 */	ldr	s2, [x20, -8]	//  (*)
	.loc 13 1062 0
..LDL6297:
/*   1062 */	dup	z0.s, z13.s[0]
	.loc 13 1037 0
..LDL6298:
/*   1037 */	ld1w	{z13.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL6299:
/*   1044 */	dup	z14.s, z15.s[0]
	.loc 13 1062 0
..LDL6300:
/*   1062 */	ldr	s18, [x20, -4]	//  (*)
	.loc 13 1039 0
..LDL6301:
/*   1039 */	ld1w	{z15.s}, p1/z, [x6, 1, mul vl]	//  (*)
	.loc 13 1041 0
..LDL6302:
/*   1041 */	ld1w	{z17.s}, p2/z, [x6, 2, mul vl]	//  (*)
	.loc 13 1116 0
..LDL6303:
/*   1116 */	add	x1, x20, 16
	.loc 13 1046 0
..LDL6304:
/*   1046 */	fmla	z9.s, p0/m, z10.s, z7.s
	.loc 13 1048 0
..LDL6305:
/*   1048 */	fmla	z8.s, p1/m, z10.s, z5.s
	.loc 13 1044 0
..LDL6306:
/*   1044 */	ldr	s16, [x20, 4]	//  (*)
	.loc 13 1050 0
..LDL6307:
/*   1050 */	fmla	z31.s, p2/m, z10.s, z11.s
	.loc 13 1071 0
..LDL6308:
/*   1071 */	ptrue	p3.s, ALL
	.loc 13 1055 0
..LDL6309:
/*   1055 */	fmla	z30.s, p0/m, z27.s, z7.s
	.loc 13 1057 0
..LDL6310:
/*   1057 */	fmla	z29.s, p1/m, z27.s, z5.s
	.loc 13 1117 0
..LDL6311:
/*   1117 */	add	x2, x6, x4
	.loc 13 1064 0
..LDL6312:
/*   1064 */	fmla	z26.s, p0/m, z0.s, z7.s
	.loc 13 1059 0
..LDL6313:
/*   1059 */	fmad	z27.s, p2/m, z11.s, z28.s
	.loc 13 1066 0
..LDL6314:
/*   1066 */	fmla	z4.s, p1/m, z0.s, z5.s
	.loc 13 1037 0
..LDL6315:
/*   1037 */	orr	x6, x2, 6917529027641081856
	.loc 13 1068 0
..LDL6316:
/*   1068 */	fmla	z25.s, p2/m, z0.s, z11.s
	.loc 13 1071 0
..LDL6317:
/*   1071 */	ld1rw	{z24.s}, p3/z, [x20]	//  (*)
	.loc 13 1053 0
..LDL6318:
/*   1053 */	dup	z10.s, z2.s[0]
	.loc 13 1073 0
..LDL6319:
/*   1073 */	fmla	z3.s, p0/m, z12.s, z7.s
	.loc 13 1075 0
..LDL6320:
/*   1075 */	fmla	z6.s, p1/m, z12.s, z5.s
	.loc 13 1077 0
..LDL6321:
/*   1077 */	fmad	z12.s, p2/m, z11.s, z1.s
	.loc 13 1037 0
..LDL6322:
/*   1037 */	prfm	2, [x6, 2560]	//  (*)
/*   1037 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1053 0
..LDL6323:
/*   1053 */	ldr	s5, [x20, 8]	//  (*)
	.loc 13 1062 0
..LDL6324:
/*   1062 */	dup	z1.s, z18.s[0]
	.loc 13 1037 0
..LDL6325:
/*   1037 */	ld1w	{z2.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL6326:
/*   1044 */	dup	z28.s, z16.s[0]
	.loc 13 1062 0
..LDL6327:
/*   1062 */	ldr	s7, [x20, 12]	//  (*)
	.loc 13 1039 0
..LDL6328:
/*   1039 */	ld1w	{z16.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1041 0
..LDL6329:
/*   1041 */	ld1w	{z0.s}, p2/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1116 0
..LDL6330:
/*   1116 */	add	x21, x20, 32
	.loc 13 1046 0
..LDL6331:
/*   1046 */	fmla	z9.s, p0/m, z14.s, z13.s
	.loc 13 1048 0
..LDL6332:
/*   1048 */	fmla	z8.s, p1/m, z14.s, z15.s
	.loc 13 1044 0
..LDL6333:
/*   1044 */	ldr	s11, [x20, 20]	//  (*)
	.loc 13 1050 0
..LDL6334:
/*   1050 */	fmla	z31.s, p2/m, z14.s, z17.s
	.loc 13 1055 0
..LDL6335:
/*   1055 */	fmla	z30.s, p0/m, z10.s, z13.s
	.loc 13 1057 0
..LDL6336:
/*   1057 */	fmla	z29.s, p1/m, z10.s, z15.s
	.loc 13 1117 0
..LDL6337:
/*   1117 */	add	x6, x2, x4
	.loc 13 1064 0
..LDL6338:
/*   1064 */	fmla	z26.s, p0/m, z1.s, z13.s
	.loc 13 1059 0
..LDL6339:
/*   1059 */	fmla	z27.s, p2/m, z10.s, z17.s
	.loc 13 1066 0
..LDL6340:
/*   1066 */	fmla	z4.s, p1/m, z1.s, z15.s
	.loc 13 1037 0
..LDL6341:
/*   1037 */	orr	x2, x6, 6917529027641081856
	.loc 13 1068 0
..LDL6342:
/*   1068 */	fmla	z25.s, p2/m, z1.s, z17.s
	.loc 13 1071 0
..LDL6343:
/*   1071 */	ld1rw	{z1.s}, p3/z, [x1]	//  (*)
	.loc 13 1053 0
..LDL6344:
/*   1053 */	dup	z14.s, z5.s[0]
	.loc 13 1073 0
..LDL6345:
/*   1073 */	fmla	z3.s, p0/m, z24.s, z13.s
	.loc 13 1075 0
..LDL6346:
/*   1075 */	fmla	z6.s, p1/m, z24.s, z15.s
	.loc 13 1077 0
..LDL6347:
/*   1077 */	fmad	z24.s, p2/m, z17.s, z12.s
	.loc 13 1037 0
..LDL6348:
/*   1037 */	prfm	2, [x2, 2560]	//  (*)
/*   1037 */	prfm	0, [x2, 512]	//  (*)
	.loc 13 1053 0
..LDL6349:
/*   1053 */	ldr	s17, [x20, 24]	//  (*)
	.loc 13 1062 0
..LDL6350:
/*   1062 */	dup	z12.s, z7.s[0]
	.loc 13 1037 0
..LDL6351:
/*   1037 */	ld1w	{z7.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL6352:
/*   1044 */	dup	z10.s, z11.s[0]
	.loc 13 1062 0
..LDL6353:
/*   1062 */	ldr	s13, [x20, 28]	//  (*)
	.loc 13 1039 0
..LDL6354:
/*   1039 */	ld1w	{z5.s}, p1/z, [x6, 1, mul vl]	//  (*)
	.loc 13 1041 0
..LDL6355:
/*   1041 */	ld1w	{z11.s}, p2/z, [x6, 2, mul vl]	//  (*)
	.loc 13 1116 0
..LDL6356:
/*   1116 */	add	x20, x20, 48
	.loc 13 1046 0
..LDL6357:
/*   1046 */	fmla	z9.s, p0/m, z28.s, z2.s
	.loc 13 1048 0
..LDL6358:
/*   1048 */	fmla	z8.s, p1/m, z28.s, z16.s
	.loc 13 1044 0
..LDL6359:
/*   1044 */	ldr	s15, [x20, -12]	//  (*)
	.loc 13 1050 0
..LDL6360:
/*   1050 */	fmla	z31.s, p2/m, z28.s, z0.s
	.loc 13 1055 0
..LDL6361:
/*   1055 */	fmla	z30.s, p0/m, z14.s, z2.s
	.loc 13 1057 0
..LDL6362:
/*   1057 */	fmla	z29.s, p1/m, z14.s, z16.s
	.loc 13 1117 0
..LDL6363:
/*   1117 */	add	x6, x6, x4
	.loc 13 1064 0
..LDL6364:
/*   1064 */	fmla	z26.s, p0/m, z12.s, z2.s
	.loc 13 1059 0
..LDL6365:
/*   1059 */	movprfx	z28.s, p2/z, z27.s
/*   1059 */	fmla	z28.s, p2/m, z14.s, z0.s
	.loc 13 1066 0
..LDL6366:
/*   1066 */	fmla	z4.s, p1/m, z12.s, z16.s
	.loc 13 1037 0
..LDL6367:
/*   1037 */	orr	x30, x6, 6917529027641081856
	.loc 13 1068 0
..LDL6368:
/*   1068 */	fmla	z25.s, p2/m, z12.s, z0.s
	.loc 13 1071 0
..LDL6369:
/*   1071 */	ld1rw	{z12.s}, p3/z, [x21]	//  (*)
/*   1071 */	prfm	2, [x1, x5]	//  (*)
	.loc 13 1053 0
..LDL6370:
/*   1053 */	dup	z27.s, z17.s[0]
	.loc 13 1073 0
..LDL6371:
/*   1073 */	fmla	z3.s, p0/m, z1.s, z2.s
	.loc 13 1071 0
..LDL6372:
/*   1071 */	prfm	0, [x1, x18]	//  (*)
	.loc 13 1075 0
..LDL6373:
/*   1075 */	fmla	z6.s, p1/m, z1.s, z16.s
	.loc 13 1077 0
..LDL6374:
/*   1077 */	fmad	z1.s, p2/m, z0.s, z24.s
	.loc 13 1037 0
..LDL6375:
/*   1037 */	prfm	2, [x30, 2560]	//  (*)
	.loc 13 1118 0
..LDL6376:
/*   1118 */	sub	w0, w0, 3
	.loc 13 1036 0
..LDL6377:
/*   1036 */	cmp	w0, 5
/*   1036 */	bge	.L11468
	.loc 13 1053 0
..LDL6378:
/*   1053 */	ldr	s0, [x20, -8]	//  (*)
	.loc 13 1062 0
..LDL6379:
/*   1062 */	dup	z2.s, z13.s[0]
	.loc 13 1071 0
..LDL6380:
/*   1071 */	ptrue	p3.s, ALL
	.loc 13 1055 0
..LDL6381:
/*   1055 */	fmla	z30.s, p0/m, z27.s, z7.s
	.loc 13 1037 0
..LDL6382:
/*   1037 */	ld1w	{z24.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1116 0
..LDL6383:
/*   1116 */	add	x1, x20, 16
	.loc 13 1057 0
..LDL6384:
/*   1057 */	fmla	z29.s, p1/m, z27.s, z5.s
	.loc 13 1059 0
..LDL6385:
/*   1059 */	fmad	z27.s, p2/m, z11.s, z28.s
	.loc 13 1044 0
..LDL6386:
/*   1044 */	dup	z13.s, z15.s[0]
	.loc 13 1062 0
..LDL6387:
/*   1062 */	ldr	s15, [x20, -4]	//  (*)
	.loc 13 1046 0
..LDL6388:
/*   1046 */	fmla	z9.s, p0/m, z10.s, z7.s
	.loc 13 1117 0
..LDL6389:
/*   1117 */	add	x2, x6, x4
	.loc 13 1039 0
..LDL6390:
/*   1039 */	ld1w	{z14.s}, p1/z, [x6, 1, mul vl]	//  (*)
	.loc 13 1041 0
..LDL6391:
/*   1041 */	ld1w	{z16.s}, p2/z, [x6, 2, mul vl]	//  (*)
	.loc 13 1048 0
..LDL6392:
/*   1048 */	fmla	z8.s, p1/m, z10.s, z5.s
	.loc 13 1050 0
..LDL6393:
/*   1050 */	fmla	z31.s, p2/m, z10.s, z11.s
	.loc 13 1037 0
..LDL6394:
/*   1037 */	prfm	0, [x30, 512]	//  (*)
	.loc 13 1071 0
..LDL6395:
/*   1071 */	ld1rw	{z10.s}, p3/z, [x20]	//  (*)
	.loc 13 1073 0
..LDL6396:
/*   1073 */	fmla	z3.s, p0/m, z12.s, z7.s
	.loc 13 1075 0
..LDL6397:
/*   1075 */	fmla	z6.s, p1/m, z12.s, z5.s
	.loc 13 1071 0
..LDL6398:
/*   1071 */	prfm	2, [x21, x5]	//  (*)
	.loc 13 1077 0
..LDL6399:
/*   1077 */	fmla	z1.s, p2/m, z12.s, z11.s
	.loc 13 1118 0
..LDL6400:
/*   1118 */	sub	w0, w0, 2
	.loc 13 1064 0
..LDL6401:
/*   1064 */	fmla	z26.s, p0/m, z2.s, z7.s
	.loc 13 1066 0
..LDL6402:
/*   1066 */	fmla	z4.s, p1/m, z2.s, z5.s
	.loc 13 1071 0
..LDL6403:
/*   1071 */	prfm	0, [x21, x18]	//  (*)
	.loc 13 1068 0
..LDL6404:
/*   1068 */	fmad	z2.s, p2/m, z11.s, z25.s
	.loc 13 1071 0
..LDL6405:
/*   1071 */	prfm	2, [x20, x5]	//  (*)
	.loc 13 1053 0
..LDL6406:
/*   1053 */	dup	z28.s, z0.s[0]
	.loc 13 1071 0
..LDL6407:
/*   1071 */	prfm	0, [x20, x18]	//  (*)
	.loc 13 1062 0
..LDL6408:
/*   1062 */	dup	z25.s, z15.s[0]
	.loc 13 1046 0
..LDL6409:
/*   1046 */	fmla	z9.s, p0/m, z13.s, z24.s
	.loc 13 1055 0
..LDL6410:
/*   1055 */	fmla	z30.s, p0/m, z28.s, z24.s
	.loc 13 1057 0
..LDL6411:
/*   1057 */	fmla	z29.s, p1/m, z28.s, z14.s
	.loc 13 1048 0
..LDL6412:
/*   1048 */	fmla	z8.s, p1/m, z13.s, z14.s
	.loc 13 1050 0
..LDL6413:
/*   1050 */	fmla	z31.s, p2/m, z13.s, z16.s
	.loc 13 1064 0
..LDL6414:
/*   1064 */	fmla	z26.s, p0/m, z25.s, z24.s
	.loc 13 1066 0
..LDL6415:
/*   1066 */	fmla	z4.s, p1/m, z25.s, z14.s
	.loc 13 1059 0
..LDL6416:
/*   1059 */	fmad	z28.s, p2/m, z16.s, z27.s
	.loc 13 1068 0
..LDL6417:
/*   1068 */	fmad	z25.s, p2/m, z16.s, z2.s
	.loc 13 1073 0
..LDL6418:
/*   1073 */	fmla	z3.s, p0/m, z10.s, z24.s
	.loc 13 1075 0
..LDL6419:
/*   1075 */	fmla	z6.s, p1/m, z10.s, z14.s
	.loc 13 1077 0
..LDL6420:
/*   1077 */	fmla	z1.s, p2/m, z10.s, z16.s
	.loc 13 1118 0
..LDL6421:
/*   1118 */	cbz	w0, .L12093
.L12096:
	.p2align 5
.L12099:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL6422:
/*   1037 */	orr	x20, x2, 6917529027641081856
	.loc 13 1044 0
..LDL6423:
/*   1044 */	ldp	s5, s10, [x1, -12]	//  (*)
	.loc 13 1071 0
..LDL6424:
/*   1071 */	ptrue	p3.s, ALL
	.loc 13 1037 0
..LDL6425:
/*   1037 */	ld1w	{z0.s}, p0/z, [x20, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL6426:
/*   1039 */	add	x30, x2, 64
	.loc 13 1041 0
..LDL6427:
/*   1041 */	add	x6, x2, 128
	.loc 13 1062 0
..LDL6428:
/*   1062 */	ldr	s7, [x1, -4]	//  (*)
	.loc 13 1039 0
..LDL6429:
/*   1039 */	ld1w	{z2.s}, p1/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1041 0
..LDL6430:
/*   1041 */	ld1w	{z27.s}, p2/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL6431:
/*   1117 */	add	x2, x2, x4
	.loc 13 1118 0
..LDL6432:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1071 0
..LDL6433:
/*   1071 */	prfm	2, [x1, x5]	//  (*)
/*   1071 */	ld1rw	{z24.s}, p3/z, [x1]	//  (*)
	.loc 13 1037 0
..LDL6434:
/*   1037 */	prfm	2, [x20, 2560]	//  (*)
	.loc 13 1071 0
..LDL6435:
/*   1071 */	prfm	0, [x1, x18]	//  (*)
	.loc 13 1116 0
..LDL6436:
/*   1116 */	add	x1, x1, 16
	.loc 13 1037 0
..LDL6437:
/*   1037 */	prfm	0, [x20, 512]	//  (*)
	.loc 13 1044 0
..LDL6438:
/*   1044 */	dup	z5.s, z5.s[0]
	.loc 13 1053 0
..LDL6439:
/*   1053 */	dup	z10.s, z10.s[0]
	.loc 13 1062 0
..LDL6440:
/*   1062 */	dup	z7.s, z7.s[0]
	.loc 13 1046 0
..LDL6441:
/*   1046 */	fmla	z9.s, p0/m, z5.s, z0.s
	.loc 13 1048 0
..LDL6442:
/*   1048 */	fmla	z8.s, p1/m, z5.s, z2.s
	.loc 13 1050 0
..LDL6443:
/*   1050 */	fmla	z31.s, p2/m, z5.s, z27.s
	.loc 13 1055 0
..LDL6444:
/*   1055 */	fmla	z30.s, p0/m, z10.s, z0.s
	.loc 13 1057 0
..LDL6445:
/*   1057 */	fmla	z29.s, p1/m, z10.s, z2.s
	.loc 13 1059 0
..LDL6446:
/*   1059 */	fmla	z28.s, p2/m, z10.s, z27.s
	.loc 13 1064 0
..LDL6447:
/*   1064 */	fmla	z26.s, p0/m, z7.s, z0.s
	.loc 13 1066 0
..LDL6448:
/*   1066 */	fmla	z4.s, p1/m, z7.s, z2.s
	.loc 13 1068 0
..LDL6449:
/*   1068 */	fmla	z25.s, p2/m, z7.s, z27.s
	.loc 13 1073 0
..LDL6450:
/*   1073 */	fmla	z3.s, p0/m, z24.s, z0.s
	.loc 13 1075 0
..LDL6451:
/*   1075 */	fmla	z6.s, p1/m, z24.s, z2.s
	.loc 13 1077 0
..LDL6452:
/*   1077 */	fmla	z1.s, p2/m, z24.s, z27.s
	.loc 13 1118 0 is_stmt 0
..LDL6453:
/*   1118 */	bne	.L12099
.L12093:
.L11470:
	.loc 13 1123 0 is_stmt 1
..LDL6454:
/*   1123 */	st1w	{z9.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL6455:
/*   1125 */	st1w	{z8.s}, p1, [x14, 0, mul vl]	//  (*)
	.loc 13 1127 0
..LDL6456:
/*   1127 */	st1w	{z31.s}, p2, [x15, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL6457:
/*   1131 */	st1w	{z30.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 1133 0
..LDL6458:
/*   1133 */	st1w	{z29.s}, p1, [x12, 0, mul vl]	//  (*)
	.loc 13 1135 0
..LDL6459:
/*   1135 */	st1w	{z28.s}, p2, [x11, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL6460:
/*   1139 */	st1w	{z26.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1141 0
..LDL6461:
/*   1141 */	st1w	{z4.s}, p1, [x9, 0, mul vl]	//  (*)
	.loc 13 1143 0
..LDL6462:
/*   1143 */	st1w	{z25.s}, p2, [x8, 0, mul vl]	//  (*)
	.loc 13 1147 0
..LDL6463:
/*   1147 */	st1w	{z3.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1149 0
..LDL6464:
/*   1149 */	st1w	{z6.s}, p1, [x16, 0, mul vl]	//  (*)
	.loc 13 1151 0
..LDL6465:
/*   1151 */	st1w	{z1.s}, p2, [x17, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL6466:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldr	x21, [x29, -24]	//  (*)
	.cfi_restore 21
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 12
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D39.pchi:
	.cfi_endproc
.LFE38:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi4ELi48EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi4ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL6467:
.LFB39:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -10
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xd0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x78,0x22,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL6468:
/*    971 */	ld1w	{z24.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL6469:
/*    987 */	add	w5, w4, w4
	.loc 13 1003 0
..LDL6470:
/*   1003 */	lsl	w9, w4, 2
	.loc 13 979 0
..LDL6471:
/*    979 */	sxtw	x8, w4
	.loc 13 995 0
..LDL6472:
/*    995 */	add	w4, w5, w4
	.loc 13 987 0
..LDL6473:
/*    987 */	sxtw	x7, w5
	.loc 13 995 0
..LDL6474:
/*    995 */	sxtw	x5, w4
	.loc 13 1003 0
..LDL6475:
/*   1003 */	sxtw	x4, w9
	.loc 13 979 0
..LDL6476:
/*    979 */	add	x8, x3, x8, lsl #2
/*    979 */	ld1w	{z6.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL6477:
/*    987 */	add	x7, x3, x7, lsl #2
/*    987 */	ld1w	{z4.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 995 0
..LDL6478:
/*    995 */	add	x9, x3, x5, lsl #2
/*    995 */	ld1w	{z2.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1003 0
..LDL6479:
/*   1003 */	add	x10, x3, x4, lsl #2
/*   1003 */	ld1w	{z1.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL6480:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11478
	.loc 13 1117 0 is_stmt 0
..LDL6481:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL6482:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x1, x1, 16
	.loc 13 1034 0
..LDL6483:
/*   1034 */	cmp	w0, 7
/*   1034 */	blt	.L12107
	.loc 13 1080 0
..LDL6484:
/*   1080 */	ptrue	p2.s, ALL
/*   1044 */	ldp	s7, s5, [x1, -16]	//  (*)
	.loc 13 1117 0
..LDL6485:
/*   1117 */	add	x11, x2, x4
	.loc 13 1080 0
..LDL6486:
/*   1080 */	ptrue	p1.s, ALL
	.loc 13 1037 0
..LDL6487:
/*   1037 */	orr	x13, x2, 6917529027641081856
/*   1037 */	orr	x5, x11, 6917529027641081856
/*   1062 */	ldp	s3, s0, [x1, -8]	//  (*)
/*   1037 */	ld1w	{z29.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1116 0
..LDL6488:
/*   1116 */	add	x6, x1, 20
	.loc 13 1117 0
..LDL6489:
/*   1117 */	add	x2, x11, x4
	.loc 13 1080 0
..LDL6490:
/*   1080 */	ld1rw	{z8.s}, p2/z, [x1]	//  (*)
	.loc 13 1037 0
..LDL6491:
/*   1037 */	ld1w	{z28.s}, p0/z, [x5, 0, mul vl]	//  (*)
/*   1037 */	orr	x11, x2, 6917529027641081856
	.loc 13 1116 0
..LDL6492:
/*   1116 */	add	x12, x1, 40
	.loc 13 1044 0
..LDL6493:
/*   1044 */	ldr	s30, [x1, 4]	//  (*)
	.loc 13 1080 0
..LDL6494:
/*   1080 */	ld1rw	{z11.s}, p1/z, [x6]	//  (*)
	.loc 13 1117 0
..LDL6495:
/*   1117 */	add	x2, x2, x4
/*   1053 */	ldp	s31, s9, [x1, 8]	//  (*)
	.loc 13 1071 0
..LDL6496:
/*   1071 */	ldr	s13, [x1, 16]	//  (*)
	.loc 13 1044 0
..LDL6497:
/*   1044 */	ldr	s25, [x1, 24]	//  (*)
	.loc 13 1037 0
..LDL6498:
/*   1037 */	prfm	0, [x13, 512]	//  (*)
	.loc 13 1053 0
..LDL6499:
/*   1053 */	ldr	s10, [x1, 28]	//  (*)
	.loc 13 1037 0
..LDL6500:
/*   1037 */	prfm	2, [x13, 2560]	//  (*)
	.loc 13 1044 0
..LDL6501:
/*   1044 */	dup	z26.s, z7.s[0]
	.loc 13 1037 0
..LDL6502:
/*   1037 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 1053 0
..LDL6503:
/*   1053 */	dup	z12.s, z5.s[0]
	.loc 13 1037 0
..LDL6504:
/*   1037 */	prfm	2, [x5, 2560]	//  (*)
	.loc 13 1062 0
..LDL6505:
/*   1062 */	dup	z7.s, z3.s[0]
	.loc 13 1071 0
..LDL6506:
/*   1071 */	dup	z5.s, z0.s[0]
	.p2align 5
.L11476:					// :entr:term:swpl
	.loc 13 1037 0
..LDL6507:
/*   1037 */	prfm	0, [x11, 512]	//  (*)
/*   1037 */	orr	x5, x2, 6917529027641081856
	.loc 13 1044 0
..LDL6508:
/*   1044 */	dup	z3.s, z30.s[0]
	.loc 13 1037 0
..LDL6509:
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
/*   1037 */	ld1w	{z27.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1080 0
..LDL6510:
/*   1080 */	ptrue	p1.s, ALL
	.loc 13 1062 0
..LDL6511:
/*   1062 */	ldr	s30, [x12, -8]	//  (*)
	.loc 13 1046 0
..LDL6512:
/*   1046 */	fmla	z24.s, p0/m, z26.s, z29.s
	.loc 13 1116 0
..LDL6513:
/*   1116 */	add	x1, x12, 20
	.loc 13 1053 0
..LDL6514:
/*   1053 */	dup	z14.s, z31.s[0]
	.loc 13 1055 0
..LDL6515:
/*   1055 */	movprfx	z16.s, p0/z, z6.s
/*   1055 */	fmla	z16.s, p0/m, z12.s, z29.s
	.loc 13 1071 0
..LDL6516:
/*   1071 */	ldr	s26, [x12, -4]	//  (*)
	.loc 13 1044 0
..LDL6517:
/*   1044 */	ldr	s31, [x12, 4]	//  (*)
	.loc 13 1062 0
..LDL6518:
/*   1062 */	dup	z12.s, z9.s[0]
	.loc 13 1064 0
..LDL6519:
/*   1064 */	fmla	z4.s, p0/m, z7.s, z29.s
	.loc 13 1053 0
..LDL6520:
/*   1053 */	ldr	s7, [x12, 8]	//  (*)
	.loc 13 1071 0
..LDL6521:
/*   1071 */	dup	z15.s, z13.s[0]
	.loc 13 1073 0
..LDL6522:
/*   1073 */	fmla	z2.s, p0/m, z5.s, z29.s
	.loc 13 1082 0
..LDL6523:
/*   1082 */	fmla	z1.s, p0/m, z8.s, z29.s
	.loc 13 1117 0
..LDL6524:
/*   1117 */	add	x2, x4, x2
	.loc 13 1080 0
..LDL6525:
/*   1080 */	ld1rw	{z8.s}, p1/z, [x12]	//  (*)
	.loc 13 1037 0
..LDL6526:
/*   1037 */	prfm	0, [x5, 512]	//  (*)
/*   1037 */	orr	x11, x2, 6917529027641081856
	.loc 13 1044 0
..LDL6527:
/*   1044 */	dup	z5.s, z25.s[0]
	.loc 13 1037 0
..LDL6528:
/*   1037 */	prfm	2, [x5, 2560]	//  (*)
/*   1037 */	ld1w	{z0.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1062 0
..LDL6529:
/*   1062 */	ldr	s13, [x12, 12]	//  (*)
	.loc 13 1046 0
..LDL6530:
/*   1046 */	fmla	z24.s, p0/m, z3.s, z28.s
	.loc 13 1116 0
..LDL6531:
/*   1116 */	add	x5, x12, 40
	.loc 13 1053 0
..LDL6532:
/*   1053 */	dup	z6.s, z10.s[0]
	.loc 13 1055 0
..LDL6533:
/*   1055 */	fmla	z16.s, p0/m, z14.s, z28.s
	.loc 13 1071 0
..LDL6534:
/*   1071 */	ldr	s14, [x12, 16]	//  (*)
	.loc 13 1044 0
..LDL6535:
/*   1044 */	ldr	s9, [x12, 24]	//  (*)
	.loc 13 1062 0
..LDL6536:
/*   1062 */	dup	z3.s, z30.s[0]
	.loc 13 1064 0
..LDL6537:
/*   1064 */	fmla	z4.s, p0/m, z12.s, z28.s
	.loc 13 1053 0
..LDL6538:
/*   1053 */	ldr	s12, [x12, 28]	//  (*)
	.loc 13 1071 0
..LDL6539:
/*   1071 */	dup	z26.s, z26.s[0]
	.loc 13 1073 0
..LDL6540:
/*   1073 */	fmla	z2.s, p0/m, z15.s, z28.s
	.loc 13 1080 0
..LDL6541:
/*   1080 */	prfm	2, [x6, 2560]	//  (*)
/*   1080 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1082 0
..LDL6542:
/*   1082 */	fmad	z28.s, p0/m, z11.s, z1.s
	.loc 13 1117 0
..LDL6543:
/*   1117 */	add	x13, x2, x4
	.loc 13 1080 0
..LDL6544:
/*   1080 */	ld1rw	{z1.s}, p1/z, [x1]	//  (*)
	.loc 13 1037 0
..LDL6545:
/*   1037 */	prfm	0, [x11, 512]	//  (*)
/*   1037 */	orr	x2, x13, 6917529027641081856
	.loc 13 1044 0
..LDL6546:
/*   1044 */	dup	z25.s, z31.s[0]
	.loc 13 1037 0
..LDL6547:
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
/*   1037 */	ld1w	{z29.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1062 0
..LDL6548:
/*   1062 */	ldr	s10, [x12, 32]	//  (*)
	.loc 13 1046 0
..LDL6549:
/*   1046 */	fmla	z24.s, p0/m, z5.s, z27.s
	.loc 13 1116 0
..LDL6550:
/*   1116 */	add	x6, x12, 60
	.loc 13 1053 0
..LDL6551:
/*   1053 */	dup	z7.s, z7.s[0]
	.loc 13 1055 0
..LDL6552:
/*   1055 */	fmad	z6.s, p0/m, z27.s, z16.s
	.loc 13 1071 0
..LDL6553:
/*   1071 */	ldr	s11, [x12, 36]	//  (*)
	.loc 13 1044 0
..LDL6554:
/*   1044 */	ldr	s30, [x12, 44]	//  (*)
	.loc 13 1062 0
..LDL6555:
/*   1062 */	dup	z5.s, z13.s[0]
	.loc 13 1064 0
..LDL6556:
/*   1064 */	fmla	z4.s, p0/m, z3.s, z27.s
	.loc 13 1053 0
..LDL6557:
/*   1053 */	ldr	s31, [x12, 48]	//  (*)
	.loc 13 1071 0
..LDL6558:
/*   1071 */	dup	z3.s, z14.s[0]
	.loc 13 1073 0
..LDL6559:
/*   1073 */	fmla	z2.s, p0/m, z26.s, z27.s
	.loc 13 1082 0
..LDL6560:
/*   1082 */	fmad	z27.s, p0/m, z8.s, z28.s
	.loc 13 1117 0
..LDL6561:
/*   1117 */	add	x13, x13, x4
	.loc 13 1080 0
..LDL6562:
/*   1080 */	ld1rw	{z8.s}, p1/z, [x5]	//  (*)
	.loc 13 1037 0
..LDL6563:
/*   1037 */	prfm	0, [x2, 512]	//  (*)
/*   1037 */	orr	x11, x13, 6917529027641081856
	.loc 13 1044 0
..LDL6564:
/*   1044 */	dup	z26.s, z9.s[0]
	.loc 13 1037 0
..LDL6565:
/*   1037 */	prfm	2, [x2, 2560]	//  (*)
/*   1037 */	ld1w	{z28.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1062 0
..LDL6566:
/*   1062 */	ldr	s9, [x12, 52]	//  (*)
	.loc 13 1046 0
..LDL6567:
/*   1046 */	fmla	z24.s, p0/m, z25.s, z0.s
	.loc 13 1116 0
..LDL6568:
/*   1116 */	add	x12, x12, 80
	.loc 13 1053 0
..LDL6569:
/*   1053 */	dup	z12.s, z12.s[0]
	.loc 13 1055 0
..LDL6570:
/*   1055 */	fmla	z6.s, p0/m, z7.s, z0.s
	.loc 13 1071 0
..LDL6571:
/*   1071 */	ldr	s13, [x6, -4]	//  (*)
	.loc 13 1044 0
..LDL6572:
/*   1044 */	ldr	s25, [x12, -16]	//  (*)
	.loc 13 1062 0
..LDL6573:
/*   1062 */	dup	z7.s, z10.s[0]
	.loc 13 1064 0
..LDL6574:
/*   1064 */	fmla	z4.s, p0/m, z5.s, z0.s
	.loc 13 1053 0
..LDL6575:
/*   1053 */	ldr	s10, [x12, -12]	//  (*)
	.loc 13 1071 0
..LDL6576:
/*   1071 */	dup	z5.s, z11.s[0]
	.loc 13 1073 0
..LDL6577:
/*   1073 */	fmla	z2.s, p0/m, z3.s, z0.s
	.loc 13 1080 0
..LDL6578:
/*   1080 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 1118 0
..LDL6579:
/*   1118 */	sub	w0, w0, 4
	.loc 13 1080 0
..LDL6580:
/*   1080 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1082 0
..LDL6581:
/*   1082 */	fmad	z1.s, p0/m, z0.s, z27.s
	.loc 13 1117 0
..LDL6582:
/*   1117 */	add	x2, x13, x4
	.loc 13 1080 0
..LDL6583:
/*   1080 */	ld1rw	{z11.s}, p1/z, [x6]	//  (*)
	.loc 13 1036 0
..LDL6584:
/*   1036 */	cmp	w0, 7
/*   1036 */	bge	.L11476
	.loc 13 1080 0
..LDL6585:
/*   1080 */	ptrue	p1.s, ALL
	.loc 13 1062 0
..LDL6586:
/*   1062 */	ldr	s27, [x12, -8]	//  (*)
	.loc 13 1046 0
..LDL6587:
/*   1046 */	fmla	z24.s, p0/m, z26.s, z29.s
	.loc 13 1064 0
..LDL6588:
/*   1064 */	fmla	z4.s, p0/m, z7.s, z29.s
	.loc 13 1055 0
..LDL6589:
/*   1055 */	fmla	z6.s, p0/m, z12.s, z29.s
	.loc 13 1116 0
..LDL6590:
/*   1116 */	add	x1, x12, 20
	.loc 13 1071 0
..LDL6591:
/*   1071 */	ldr	s12, [x12, -4]	//  (*)
	.loc 13 1073 0
..LDL6592:
/*   1073 */	fmla	z2.s, p0/m, z5.s, z29.s
	.loc 13 1037 0
..LDL6593:
/*   1037 */	ld1w	{z0.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1082 0
..LDL6594:
/*   1082 */	fmla	z1.s, p0/m, z8.s, z29.s
	.loc 13 1118 0
..LDL6595:
/*   1118 */	sub	w0, w0, 3
	.loc 13 1080 0
..LDL6596:
/*   1080 */	ld1rw	{z5.s}, p1/z, [x12]	//  (*)
	.loc 13 1062 0
..LDL6597:
/*   1062 */	dup	z7.s, z9.s[0]
	.loc 13 1037 0
..LDL6598:
/*   1037 */	prfm	0, [x11, 512]	//  (*)
	.loc 13 1071 0
..LDL6599:
/*   1071 */	dup	z3.s, z13.s[0]
	.loc 13 1044 0
..LDL6600:
/*   1044 */	dup	z30.s, z30.s[0]
	.loc 13 1037 0
..LDL6601:
/*   1037 */	prfm	2, [x11, 2560]	//  (*)
	.loc 13 1053 0
..LDL6602:
/*   1053 */	dup	z29.s, z31.s[0]
	.loc 13 1080 0
..LDL6603:
/*   1080 */	prfm	2, [x5, 2560]	//  (*)
/*   1080 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 1044 0
..LDL6604:
/*   1044 */	dup	z26.s, z25.s[0]
	.loc 13 1053 0
..LDL6605:
/*   1053 */	dup	z25.s, z10.s[0]
	.loc 13 1080 0
..LDL6606:
/*   1080 */	prfm	2, [x6, 2560]	//  (*)
/*   1080 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1064 0
..LDL6607:
/*   1064 */	fmla	z4.s, p0/m, z7.s, z28.s
	.loc 13 1080 0
..LDL6608:
/*   1080 */	prfm	2, [x12, 2560]	//  (*)
	.loc 13 1073 0
..LDL6609:
/*   1073 */	fmla	z2.s, p0/m, z3.s, z28.s
	.loc 13 1046 0
..LDL6610:
/*   1046 */	fmla	z24.s, p0/m, z30.s, z28.s
	.loc 13 1082 0
..LDL6611:
/*   1082 */	fmla	z1.s, p0/m, z11.s, z28.s
	.loc 13 1080 0
..LDL6612:
/*   1080 */	prfm	0, [x12, 512]	//  (*)
	.loc 13 1055 0
..LDL6613:
/*   1055 */	fmla	z6.s, p0/m, z29.s, z28.s
	.loc 13 1062 0
..LDL6614:
/*   1062 */	dup	z7.s, z27.s[0]
	.loc 13 1071 0
..LDL6615:
/*   1071 */	dup	z3.s, z12.s[0]
	.loc 13 1064 0
..LDL6616:
/*   1064 */	fmla	z4.s, p0/m, z7.s, z0.s
	.loc 13 1046 0
..LDL6617:
/*   1046 */	fmla	z24.s, p0/m, z26.s, z0.s
	.loc 13 1082 0
..LDL6618:
/*   1082 */	fmla	z1.s, p0/m, z5.s, z0.s
	.loc 13 1055 0
..LDL6619:
/*   1055 */	fmla	z6.s, p0/m, z25.s, z0.s
	.loc 13 1073 0
..LDL6620:
/*   1073 */	fmla	z2.s, p0/m, z3.s, z0.s
	.loc 13 1118 0
..LDL6621:
/*   1118 */	cbz	w0, .L12104
.L12107:
	.p2align 5
.L12110:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL6622:
/*   1037 */	orr	x5, x2, 6917529027641081856
	.loc 13 1044 0
..LDL6623:
/*   1044 */	ldp	s25, s26, [x1, -16]	//  (*)
	.loc 13 1080 0
..LDL6624:
/*   1080 */	ptrue	p1.s, ALL
	.loc 13 1062 0
..LDL6625:
/*   1062 */	ldp	s5, s3, [x1, -8]	//  (*)
	.loc 13 1117 0
..LDL6626:
/*   1117 */	add	x2, x2, x4
	.loc 13 1118 0
..LDL6627:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1037 0
..LDL6628:
/*   1037 */	ld1w	{z7.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1080 0
..LDL6629:
/*   1080 */	prfm	2, [x1, 2560]	//  (*)
/*   1080 */	prfm	0, [x1, 512]	//  (*)
/*   1080 */	ld1rw	{z0.s}, p1/z, [x1]	//  (*)
	.loc 13 1116 0
..LDL6630:
/*   1116 */	add	x1, x1, 20
	.loc 13 1037 0
..LDL6631:
/*   1037 */	prfm	2, [x5, 2560]	//  (*)
/*   1037 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 1044 0
..LDL6632:
/*   1044 */	dup	z25.s, z25.s[0]
	.loc 13 1053 0
..LDL6633:
/*   1053 */	dup	z26.s, z26.s[0]
	.loc 13 1062 0
..LDL6634:
/*   1062 */	dup	z5.s, z5.s[0]
	.loc 13 1071 0
..LDL6635:
/*   1071 */	dup	z3.s, z3.s[0]
	.loc 13 1046 0
..LDL6636:
/*   1046 */	fmla	z24.s, p0/m, z25.s, z7.s
	.loc 13 1082 0
..LDL6637:
/*   1082 */	fmla	z1.s, p0/m, z0.s, z7.s
	.loc 13 1055 0
..LDL6638:
/*   1055 */	fmla	z6.s, p0/m, z26.s, z7.s
	.loc 13 1064 0
..LDL6639:
/*   1064 */	fmla	z4.s, p0/m, z5.s, z7.s
	.loc 13 1073 0
..LDL6640:
/*   1073 */	fmla	z2.s, p0/m, z3.s, z7.s
	.loc 13 1118 0 is_stmt 0
..LDL6641:
/*   1118 */	bne	.L12110
.L12104:
.L11478:
	.loc 13 1123 0 is_stmt 1
..LDL6642:
/*   1123 */	st1w	{z24.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL6643:
/*   1131 */	st1w	{z6.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL6644:
/*   1139 */	st1w	{z4.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1147 0
..LDL6645:
/*   1147 */	st1w	{z2.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1155 0
..LDL6646:
/*   1155 */	st1w	{z1.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL6647:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 10
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D40.pchi:
	.cfi_endproc
.LFE39:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL6648:
.LFB40:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -13
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xe8,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x78,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL6649:
/*    971 */	ld1w	{z26.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL6650:
/*    987 */	add	w7, w4, w4
	.loc 13 1003 0
..LDL6651:
/*   1003 */	lsl	w5, w4, 2
	.loc 13 979 0
..LDL6652:
/*    979 */	sxtw	x12, w4
	.loc 13 995 0
..LDL6653:
/*    995 */	add	w4, w7, w4
	.loc 13 987 0
..LDL6654:
/*    987 */	sxtw	x10, w7
	.loc 13 995 0
..LDL6655:
/*    995 */	sxtw	x8, w4
	.loc 13 1003 0
..LDL6656:
/*   1003 */	sxtw	x5, w5
	.loc 13 997 0
..LDL6657:
/*    997 */	add	x7, x8, 16
	.loc 13 981 0
..LDL6658:
/*    981 */	add	x11, x12, 16
	.loc 13 989 0
..LDL6659:
/*    989 */	add	x9, x10, 16
	.loc 13 1005 0
..LDL6660:
/*   1005 */	add	x4, x5, 16
	.loc 13 995 0
..LDL6661:
/*    995 */	add	x14, x3, x8, lsl #2
/*    995 */	ld1w	{z1.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 979 0
..LDL6662:
/*    979 */	add	x12, x3, x12, lsl #2
	.loc 13 973 0
..LDL6663:
/*    973 */	add	x13, x3, 64
/*    973 */	ld1w	{z25.s}, p1/z, [x13, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL6664:
/*    981 */	add	x11, x3, x11, lsl #2
	.loc 13 979 0
..LDL6665:
/*    979 */	ld1w	{z7.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL6666:
/*    981 */	ld1w	{z6.s}, p1/z, [x11, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL6667:
/*    987 */	add	x10, x3, x10, lsl #2
/*    987 */	ld1w	{z4.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 989 0
..LDL6668:
/*    989 */	add	x9, x3, x9, lsl #2
/*    989 */	ld1w	{z3.s}, p1/z, [x9, 0, mul vl]	//  (*)
	.loc 13 997 0
..LDL6669:
/*    997 */	add	x7, x3, x7, lsl #2
/*    997 */	ld1w	{z5.s}, p1/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1003 0
..LDL6670:
/*   1003 */	add	x5, x3, x5, lsl #2
/*   1003 */	ld1w	{z30.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1005 0
..LDL6671:
/*   1005 */	add	x8, x3, x4, lsl #2
/*   1005 */	ld1w	{z28.s}, p1/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL6672:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11486
	.loc 13 1117 0 is_stmt 0
..LDL6673:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL6674:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x6, x1, 16
	.loc 13 1034 0
..LDL6675:
/*   1034 */	cmp	w0, 5
/*   1034 */	blt	.L12118
	.loc 13 1118 0
..LDL6676:
/*   1118 */	mov	x1, x6
	.loc 13 1080 0
..LDL6677:
/*   1080 */	ptrue	p2.s, ALL
	.loc 13 1037 0
..LDL6678:
/*   1037 */	orr	x15, x2, 6917529027641081856
	.loc 13 1039 0
..LDL6679:
/*   1039 */	ld1w	{z27.s}, p1/z, [x2, 1, mul vl]	//  (*)
/*   1044 */	ldp	s31, s24, [x1, -16]	//  (*)
	.loc 13 1117 0
..LDL6680:
/*   1117 */	add	x6, x2, x4
	.loc 13 1118 0
..LDL6681:
/*   1118 */	mov	z0.d, z5.d
	.loc 13 1062 0
..LDL6682:
/*   1062 */	ldr	s8, [x1, -8]	//  (*)
	.loc 13 1037 0
..LDL6683:
/*   1037 */	ld1w	{z29.s}, p0/z, [x15, 0, mul vl]	//  (*)
/*   1037 */	orr	x16, x6, 6917529027641081856
	.loc 13 1080 0
..LDL6684:
/*   1080 */	ld1rw	{z2.s}, p2/z, [x1]	//  (*)
	.loc 13 1071 0
..LDL6685:
/*   1071 */	ldr	s16, [x1, -4]	//  (*)
/*   1044 */	ldp	s15, s14, [x1, 4]	//  (*)
	.loc 13 1062 0
..LDL6686:
/*   1062 */	ldr	s18, [x1, 12]	//  (*)
	.loc 13 1037 0
..LDL6687:
/*   1037 */	prfm	2, [x15, 2560]	//  (*)
/*   1037 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 1116 0
..LDL6688:
/*   1116 */	add	x15, x1, 20
	.loc 13 1037 0
..LDL6689:
/*   1037 */	prfm	2, [x16, 2560]	//  (*)
/*   1037 */	prfm	0, [x16, 512]	//  (*)
	.loc 13 1044 0
..LDL6690:
/*   1044 */	dup	z31.s, z31.s[0]
	.loc 13 1053 0
..LDL6691:
/*   1053 */	dup	z24.s, z24.s[0]
	.loc 13 1062 0
..LDL6692:
/*   1062 */	dup	z13.s, z8.s[0]
	.p2align 5
.L11484:					// :entr:term:swpl
	.loc 13 1037 0
..LDL6693:
/*   1037 */	ld1w	{z9.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1071 0
..LDL6694:
/*   1071 */	dup	z10.s, z16.s[0]
	.loc 13 1039 0
..LDL6695:
/*   1039 */	ld1w	{z8.s}, p1/z, [x6, 1, mul vl]	//  (*)
	.loc 13 1117 0
..LDL6696:
/*   1117 */	add	x16, x6, x4
	.loc 13 1071 0
..LDL6697:
/*   1071 */	ldr	s12, [x15, -4]	//  (*)
	.loc 13 1037 0
..LDL6698:
/*   1037 */	orr	x6, x16, 6917529027641081856
	.loc 13 1116 0
..LDL6699:
/*   1116 */	add	x2, x15, 20
	.loc 13 1044 0
..LDL6700:
/*   1044 */	dup	z5.s, z15.s[0]
	.loc 13 1046 0
..LDL6701:
/*   1046 */	fmla	z26.s, p0/m, z31.s, z29.s
	.loc 13 1044 0
..LDL6702:
/*   1044 */	ldr	s16, [x15, 4]	//  (*)
	.loc 13 1048 0
..LDL6703:
/*   1048 */	fmla	z25.s, p1/m, z31.s, z27.s
	.loc 13 1080 0
..LDL6704:
/*   1080 */	ptrue	p2.s, ALL
	.loc 13 1037 0
..LDL6705:
/*   1037 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 1053 0
..LDL6706:
/*   1053 */	dup	z11.s, z14.s[0]
	.loc 13 1055 0
..LDL6707:
/*   1055 */	fmla	z7.s, p0/m, z24.s, z29.s
	.loc 13 1037 0
..LDL6708:
/*   1037 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1053 0
..LDL6709:
/*   1053 */	ldr	s19, [x15, 8]	//  (*)
	.loc 13 1057 0
..LDL6710:
/*   1057 */	fmla	z6.s, p1/m, z24.s, z27.s
	.loc 13 1062 0
..LDL6711:
/*   1062 */	ldr	s17, [x15, 12]	//  (*)
	.loc 13 1064 0
..LDL6712:
/*   1064 */	fmla	z4.s, p0/m, z13.s, z29.s
	.loc 13 1066 0
..LDL6713:
/*   1066 */	fmla	z3.s, p1/m, z13.s, z27.s
	.loc 13 1073 0
..LDL6714:
/*   1073 */	fmla	z1.s, p0/m, z10.s, z29.s
	.loc 13 1080 0
..LDL6715:
/*   1080 */	ld1rw	{z31.s}, p2/z, [x15]	//  (*)
/*   1080 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 1062 0
..LDL6716:
/*   1062 */	dup	z15.s, z18.s[0]
	.loc 13 1075 0
..LDL6717:
/*   1075 */	fmla	z0.s, p1/m, z10.s, z27.s
	.loc 13 1080 0
..LDL6718:
/*   1080 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1082 0
..LDL6719:
/*   1082 */	fmla	z30.s, p0/m, z2.s, z29.s
	.loc 13 1084 0
..LDL6720:
/*   1084 */	fmla	z28.s, p1/m, z2.s, z27.s
	.loc 13 1037 0
..LDL6721:
/*   1037 */	ld1w	{z10.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1071 0
..LDL6722:
/*   1071 */	dup	z27.s, z12.s[0]
	.loc 13 1039 0
..LDL6723:
/*   1039 */	ld1w	{z12.s}, p1/z, [x16, 1, mul vl]	//  (*)
	.loc 13 1117 0
..LDL6724:
/*   1117 */	add	x16, x16, x4
	.loc 13 1071 0
..LDL6725:
/*   1071 */	ldr	s18, [x15, 16]	//  (*)
	.loc 13 1037 0
..LDL6726:
/*   1037 */	orr	x6, x16, 6917529027641081856
	.loc 13 1116 0
..LDL6727:
/*   1116 */	add	x1, x15, 40
	.loc 13 1044 0
..LDL6728:
/*   1044 */	dup	z24.s, z16.s[0]
	.loc 13 1046 0
..LDL6729:
/*   1046 */	fmla	z26.s, p0/m, z5.s, z9.s
	.loc 13 1044 0
..LDL6730:
/*   1044 */	ldr	s14, [x15, 24]	//  (*)
	.loc 13 1048 0
..LDL6731:
/*   1048 */	fmla	z25.s, p1/m, z5.s, z8.s
	.loc 13 1037 0
..LDL6732:
/*   1037 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 1053 0
..LDL6733:
/*   1053 */	dup	z5.s, z19.s[0]
	.loc 13 1055 0
..LDL6734:
/*   1055 */	fmla	z7.s, p0/m, z11.s, z9.s
	.loc 13 1037 0
..LDL6735:
/*   1037 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1053 0
..LDL6736:
/*   1053 */	ldr	s19, [x15, 28]	//  (*)
	.loc 13 1057 0
..LDL6737:
/*   1057 */	fmla	z6.s, p1/m, z11.s, z8.s
	.loc 13 1062 0
..LDL6738:
/*   1062 */	ldr	s13, [x15, 32]	//  (*)
	.loc 13 1064 0
..LDL6739:
/*   1064 */	fmla	z4.s, p0/m, z15.s, z9.s
	.loc 13 1066 0
..LDL6740:
/*   1066 */	fmla	z3.s, p1/m, z15.s, z8.s
	.loc 13 1073 0
..LDL6741:
/*   1073 */	fmla	z1.s, p0/m, z27.s, z9.s
	.loc 13 1080 0
..LDL6742:
/*   1080 */	ld1rw	{z11.s}, p2/z, [x2]	//  (*)
	.loc 13 1062 0
..LDL6743:
/*   1062 */	dup	z2.s, z17.s[0]
	.loc 13 1075 0
..LDL6744:
/*   1075 */	fmla	z0.s, p1/m, z27.s, z8.s
	.loc 13 1082 0
..LDL6745:
/*   1082 */	fmla	z30.s, p0/m, z31.s, z9.s
	.loc 13 1084 0
..LDL6746:
/*   1084 */	fmla	z28.s, p1/m, z31.s, z8.s
	.loc 13 1037 0
..LDL6747:
/*   1037 */	ld1w	{z29.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1071 0
..LDL6748:
/*   1071 */	dup	z8.s, z18.s[0]
	.loc 13 1039 0
..LDL6749:
/*   1039 */	ld1w	{z27.s}, p1/z, [x16, 1, mul vl]	//  (*)
	.loc 13 1117 0
..LDL6750:
/*   1117 */	add	x6, x16, x4
	.loc 13 1071 0
..LDL6751:
/*   1071 */	ldr	s16, [x15, 36]	//  (*)
	.loc 13 1037 0
..LDL6752:
/*   1037 */	orr	x16, x6, 6917529027641081856
	.loc 13 1116 0
..LDL6753:
/*   1116 */	add	x15, x15, 60
	.loc 13 1044 0
..LDL6754:
/*   1044 */	dup	z31.s, z14.s[0]
	.loc 13 1046 0
..LDL6755:
/*   1046 */	fmla	z26.s, p0/m, z24.s, z10.s
	.loc 13 1044 0
..LDL6756:
/*   1044 */	ldr	s15, [x15, -16]	//  (*)
	.loc 13 1048 0
..LDL6757:
/*   1048 */	fmla	z25.s, p1/m, z24.s, z12.s
	.loc 13 1037 0
..LDL6758:
/*   1037 */	prfm	2, [x16, 2560]	//  (*)
	.loc 13 1053 0
..LDL6759:
/*   1053 */	dup	z24.s, z19.s[0]
	.loc 13 1055 0
..LDL6760:
/*   1055 */	fmla	z7.s, p0/m, z5.s, z10.s
	.loc 13 1037 0
..LDL6761:
/*   1037 */	prfm	0, [x16, 512]	//  (*)
	.loc 13 1053 0
..LDL6762:
/*   1053 */	ldr	s14, [x15, -12]	//  (*)
	.loc 13 1057 0
..LDL6763:
/*   1057 */	fmla	z6.s, p1/m, z5.s, z12.s
	.loc 13 1062 0
..LDL6764:
/*   1062 */	ldr	s18, [x15, -8]	//  (*)
	.loc 13 1064 0
..LDL6765:
/*   1064 */	fmla	z4.s, p0/m, z2.s, z10.s
	.loc 13 1066 0
..LDL6766:
/*   1066 */	fmla	z3.s, p1/m, z2.s, z12.s
	.loc 13 1073 0
..LDL6767:
/*   1073 */	fmla	z1.s, p0/m, z8.s, z10.s
	.loc 13 1080 0
..LDL6768:
/*   1080 */	ld1rw	{z2.s}, p2/z, [x1]	//  (*)
/*   1080 */	prfm	2, [x15, 2520]	//  (*)
	.loc 13 1062 0
..LDL6769:
/*   1062 */	dup	z13.s, z13.s[0]
	.loc 13 1075 0
..LDL6770:
/*   1075 */	fmla	z0.s, p1/m, z8.s, z12.s
	.loc 13 1080 0
..LDL6771:
/*   1080 */	prfm	0, [x15, 472]	//  (*)
	.loc 13 1082 0
..LDL6772:
/*   1082 */	fmla	z30.s, p0/m, z11.s, z10.s
	.loc 13 1084 0
..LDL6773:
/*   1084 */	fmla	z28.s, p1/m, z11.s, z12.s
	.loc 13 1118 0
..LDL6774:
/*   1118 */	sub	w0, w0, 3
	.loc 13 1036 0
..LDL6775:
/*   1036 */	cmp	w0, 5
/*   1036 */	bge	.L11484
	.loc 13 1071 0
..LDL6776:
/*   1071 */	dup	z5.s, z16.s[0]
/*   1071 */	ldr	s10, [x15, -4]	//  (*)
	.loc 13 1080 0
..LDL6777:
/*   1080 */	ptrue	p2.s, ALL
	.loc 13 1055 0
..LDL6778:
/*   1055 */	fmla	z7.s, p0/m, z24.s, z29.s
	.loc 13 1117 0
..LDL6779:
/*   1117 */	add	x2, x6, x4
	.loc 13 1037 0
..LDL6780:
/*   1037 */	ld1w	{z9.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1046 0
..LDL6781:
/*   1046 */	fmla	z26.s, p0/m, z31.s, z29.s
	.loc 13 1057 0
..LDL6782:
/*   1057 */	fmla	z6.s, p1/m, z24.s, z27.s
	.loc 13 1039 0
..LDL6783:
/*   1039 */	ld1w	{z8.s}, p1/z, [x6, 1, mul vl]	//  (*)
	.loc 13 1048 0
..LDL6784:
/*   1048 */	fmla	z25.s, p1/m, z31.s, z27.s
	.loc 13 1116 0
..LDL6785:
/*   1116 */	add	x6, x15, 20
	.loc 13 1066 0
..LDL6786:
/*   1066 */	fmla	z3.s, p1/m, z13.s, z27.s
	.loc 13 1080 0
..LDL6787:
/*   1080 */	ld1rw	{z24.s}, p2/z, [x15]	//  (*)
	.loc 13 1082 0
..LDL6788:
/*   1082 */	fmla	z30.s, p0/m, z2.s, z29.s
	.loc 13 1084 0
..LDL6789:
/*   1084 */	fmla	z28.s, p1/m, z2.s, z27.s
	.loc 13 1118 0
..LDL6790:
/*   1118 */	sub	w0, w0, 2
	.loc 13 1080 0
..LDL6791:
/*   1080 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 1064 0
..LDL6792:
/*   1064 */	fmla	z4.s, p0/m, z13.s, z29.s
	.loc 13 1080 0
..LDL6793:
/*   1080 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1044 0
..LDL6794:
/*   1044 */	dup	z31.s, z15.s[0]
	.loc 13 1080 0
..LDL6795:
/*   1080 */	prfm	2, [x15, 2560]	//  (*)
	.loc 13 1073 0
..LDL6796:
/*   1073 */	fmla	z1.s, p0/m, z5.s, z29.s
	.loc 13 1075 0
..LDL6797:
/*   1075 */	fmad	z5.s, p1/m, z27.s, z0.s
	.loc 13 1080 0
..LDL6798:
/*   1080 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 1053 0
..LDL6799:
/*   1053 */	dup	z27.s, z14.s[0]
	.loc 13 1062 0
..LDL6800:
/*   1062 */	dup	z2.s, z18.s[0]
	.loc 13 1071 0
..LDL6801:
/*   1071 */	dup	z0.s, z10.s[0]
	.loc 13 1046 0
..LDL6802:
/*   1046 */	fmla	z26.s, p0/m, z31.s, z9.s
	.loc 13 1048 0
..LDL6803:
/*   1048 */	fmla	z25.s, p1/m, z31.s, z8.s
	.loc 13 1055 0
..LDL6804:
/*   1055 */	fmla	z7.s, p0/m, z27.s, z9.s
	.loc 13 1057 0
..LDL6805:
/*   1057 */	fmla	z6.s, p1/m, z27.s, z8.s
	.loc 13 1064 0
..LDL6806:
/*   1064 */	fmla	z4.s, p0/m, z2.s, z9.s
	.loc 13 1066 0
..LDL6807:
/*   1066 */	fmla	z3.s, p1/m, z2.s, z8.s
	.loc 13 1073 0
..LDL6808:
/*   1073 */	fmla	z1.s, p0/m, z0.s, z9.s
	.loc 13 1075 0
..LDL6809:
/*   1075 */	fmla	z5.s, p1/m, z0.s, z8.s
	.loc 13 1082 0
..LDL6810:
/*   1082 */	fmla	z30.s, p0/m, z24.s, z9.s
	.loc 13 1084 0
..LDL6811:
/*   1084 */	fmla	z28.s, p1/m, z24.s, z8.s
	.loc 13 1118 0
..LDL6812:
/*   1118 */	cbz	w0, .L12115
.L12118:
	.p2align 5
.L12121:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL6813:
/*   1037 */	orr	x15, x2, 6917529027641081856
	.loc 13 1044 0
..LDL6814:
/*   1044 */	ldp	s8, s27, [x6, -16]	//  (*)
	.loc 13 1080 0
..LDL6815:
/*   1080 */	ptrue	p2.s, ALL
	.loc 13 1039 0
..LDL6816:
/*   1039 */	add	x1, x2, 64
	.loc 13 1062 0
..LDL6817:
/*   1062 */	ldp	s0, s29, [x6, -8]	//  (*)
	.loc 13 1117 0
..LDL6818:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL6819:
/*   1037 */	ld1w	{z31.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL6820:
/*   1039 */	ld1w	{z24.s}, p1/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1118 0
..LDL6821:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1080 0
..LDL6822:
/*   1080 */	prfm	2, [x6, 2560]	//  (*)
/*   1080 */	ld1rw	{z2.s}, p2/z, [x6]	//  (*)
	.loc 13 1037 0
..LDL6823:
/*   1037 */	prfm	2, [x15, 2560]	//  (*)
	.loc 13 1080 0
..LDL6824:
/*   1080 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1116 0
..LDL6825:
/*   1116 */	add	x6, x6, 20
	.loc 13 1037 0
..LDL6826:
/*   1037 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 1044 0
..LDL6827:
/*   1044 */	dup	z8.s, z8.s[0]
	.loc 13 1053 0
..LDL6828:
/*   1053 */	dup	z27.s, z27.s[0]
	.loc 13 1062 0
..LDL6829:
/*   1062 */	dup	z0.s, z0.s[0]
	.loc 13 1071 0
..LDL6830:
/*   1071 */	dup	z29.s, z29.s[0]
	.loc 13 1046 0
..LDL6831:
/*   1046 */	fmla	z26.s, p0/m, z8.s, z31.s
	.loc 13 1048 0
..LDL6832:
/*   1048 */	fmla	z25.s, p1/m, z8.s, z24.s
	.loc 13 1055 0
..LDL6833:
/*   1055 */	fmla	z7.s, p0/m, z27.s, z31.s
	.loc 13 1057 0
..LDL6834:
/*   1057 */	fmla	z6.s, p1/m, z27.s, z24.s
	.loc 13 1064 0
..LDL6835:
/*   1064 */	fmla	z4.s, p0/m, z0.s, z31.s
	.loc 13 1066 0
..LDL6836:
/*   1066 */	fmla	z3.s, p1/m, z0.s, z24.s
	.loc 13 1073 0
..LDL6837:
/*   1073 */	fmla	z1.s, p0/m, z29.s, z31.s
	.loc 13 1075 0
..LDL6838:
/*   1075 */	fmla	z5.s, p1/m, z29.s, z24.s
	.loc 13 1082 0
..LDL6839:
/*   1082 */	fmla	z30.s, p0/m, z2.s, z31.s
	.loc 13 1084 0
..LDL6840:
/*   1084 */	fmla	z28.s, p1/m, z2.s, z24.s
	.loc 13 1118 0 is_stmt 0
..LDL6841:
/*   1118 */	bne	.L12121
.L12115:
.L11486:
	.loc 13 1123 0 is_stmt 1
..LDL6842:
/*   1123 */	st1w	{z26.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL6843:
/*   1125 */	st1w	{z25.s}, p1, [x13, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL6844:
/*   1131 */	st1w	{z7.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1133 0
..LDL6845:
/*   1133 */	st1w	{z6.s}, p1, [x11, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL6846:
/*   1139 */	st1w	{z4.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1141 0
..LDL6847:
/*   1141 */	st1w	{z3.s}, p1, [x9, 0, mul vl]	//  (*)
	.loc 13 1147 0
..LDL6848:
/*   1147 */	st1w	{z1.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1149 0
..LDL6849:
/*   1149 */	st1w	{z5.s}, p1, [x7, 0, mul vl]	//  (*)
	.loc 13 1155 0
..LDL6850:
/*   1155 */	st1w	{z30.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1157 0
..LDL6851:
/*   1157 */	st1w	{z28.s}, p1, [x8, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL6852:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 13
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D41.pchi:
	.cfi_endproc
.LFE40:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi5ELi48EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi5ELi48EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi5ELi48EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi5ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi5ELi48EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi5ELi48EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL6853:
.LFB41:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -12
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xe0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 32
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*    ??? */	str	x21, [x29, -24]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x68,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL6854:
/*    971 */	ld1w	{z29.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL6855:
/*    987 */	add	w7, w4, w4
	.loc 13 1003 0
..LDL6856:
/*   1003 */	lsl	w5, w4, 2
	.loc 13 979 0
..LDL6857:
/*    979 */	sxtw	x16, w4
	.loc 13 995 0
..LDL6858:
/*    995 */	add	w4, w7, w4
	.loc 13 987 0
..LDL6859:
/*    987 */	sxtw	x13, w7
	.loc 13 995 0
..LDL6860:
/*    995 */	sxtw	x10, w4
	.loc 13 981 0
..LDL6861:
/*    981 */	add	x15, x16, 16
	.loc 13 1003 0
..LDL6862:
/*   1003 */	sxtw	x7, w5
	.loc 13 983 0
..LDL6863:
/*    983 */	add	x14, x16, 32
	.loc 13 989 0
..LDL6864:
/*    989 */	add	x12, x13, 16
	.loc 13 991 0
..LDL6865:
/*    991 */	add	x11, x13, 32
	.loc 13 997 0
..LDL6866:
/*    997 */	add	x9, x10, 16
	.loc 13 999 0
..LDL6867:
/*    999 */	add	x8, x10, 32
	.loc 13 1005 0
..LDL6868:
/*   1005 */	add	x5, x7, 16
	.loc 13 1007 0
..LDL6869:
/*   1007 */	add	x4, x7, 32
	.loc 13 979 0
..LDL6870:
/*    979 */	add	x16, x3, x16, lsl #2
	.loc 13 973 0
..LDL6871:
/*    973 */	add	x18, x3, 64
	.loc 13 975 0
..LDL6872:
/*    975 */	add	x17, x3, 128
	.loc 13 973 0
..LDL6873:
/*    973 */	ld1w	{z28.s}, p1/z, [x18, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL6874:
/*    981 */	add	x15, x3, x15, lsl #2
	.loc 13 975 0
..LDL6875:
/*    975 */	ld1w	{z1.s}, p2/z, [x17, 0, mul vl]	//  (*)
	.loc 13 979 0
..LDL6876:
/*    979 */	ld1w	{z27.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL6877:
/*    981 */	ld1w	{z26.s}, p1/z, [x15, 0, mul vl]	//  (*)
	.loc 13 983 0
..LDL6878:
/*    983 */	add	x14, x3, x14, lsl #2
/*    983 */	ld1w	{z10.s}, p2/z, [x14, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL6879:
/*    987 */	add	x13, x3, x13, lsl #2
/*    987 */	ld1w	{z24.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 989 0
..LDL6880:
/*    989 */	add	x12, x3, x12, lsl #2
/*    989 */	ld1w	{z7.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 991 0
..LDL6881:
/*    991 */	add	x11, x3, x11, lsl #2
/*    991 */	ld1w	{z13.s}, p2/z, [x11, 0, mul vl]	//  (*)
	.loc 13 995 0
..LDL6882:
/*    995 */	add	x10, x3, x10, lsl #2
/*    995 */	ld1w	{z6.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 997 0
..LDL6883:
/*    997 */	add	x9, x3, x9, lsl #2
/*    997 */	ld1w	{z12.s}, p1/z, [x9, 0, mul vl]	//  (*)
	.loc 13 999 0
..LDL6884:
/*    999 */	add	x8, x3, x8, lsl #2
/*    999 */	ld1w	{z14.s}, p2/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1003 0
..LDL6885:
/*   1003 */	add	x7, x3, x7, lsl #2
/*   1003 */	ld1w	{z4.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1005 0
..LDL6886:
/*   1005 */	add	x5, x3, x5, lsl #2
/*   1005 */	ld1w	{z2.s}, p1/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1007 0
..LDL6887:
/*   1007 */	add	x30, x3, x4, lsl #2
/*   1007 */	ld1w	{z11.s}, p2/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL6888:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11494
	.loc 13 1117 0 is_stmt 0
..LDL6889:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL6890:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x1, x1, 16
	.loc 13 1034 0
..LDL6891:
/*   1034 */	cmp	w0, 3
/*   1034 */	blt	.L12129
	.loc 13 1118 0
..LDL6892:
/*   1118 */	mov	x6, x1
/*   1118 */	mov	z0.d, z11.d
	.loc 13 1037 0
..LDL6893:
/*   1037 */	orr	x1, x2, 6917529027641081856
	.loc 13 1041 0
..LDL6894:
/*   1041 */	ld1w	{z31.s}, p2/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1118 0
..LDL6895:
/*   1118 */	mov	z5.d, z14.d
	.loc 13 1037 0
..LDL6896:
/*   1037 */	ld1w	{z8.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL6897:
/*   1039 */	ld1w	{z30.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1118 0
..LDL6898:
/*   1118 */	mov	z3.d, z13.d
/*   1044 */	ldp	s18, s17, [x6, -16]	//  (*)
/*   1118 */	mov	z25.d, z10.d
/*   1118 */	mov	z9.d, z1.d
/*   1062 */	ldp	s15, s16, [x6, -8]	//  (*)
	.loc 13 1037 0
..LDL6899:
/*   1037 */	prfm	2, [x1, 2560]	//  (*)
/*   1037 */	prfm	0, [x1, 512]	//  (*)
	.p2align 5
.L11492:					// :entr:term:swpl
	.loc 13 1080 0
..LDL6900:
/*   1080 */	ptrue	p3.s, ALL
	.loc 13 1044 0
..LDL6901:
/*   1044 */	dup	z11.s, z18.s[0]
	.loc 13 1080 0
..LDL6902:
/*   1080 */	ld1rw	{z1.s}, p3/z, [x6]	//  (*)
	.loc 13 1053 0
..LDL6903:
/*   1053 */	dup	z10.s, z17.s[0]
	.loc 13 1062 0
..LDL6904:
/*   1062 */	dup	z13.s, z15.s[0]
	.loc 13 1117 0
..LDL6905:
/*   1117 */	add	x2, x2, x4
	.loc 13 1071 0
..LDL6906:
/*   1071 */	dup	z14.s, z16.s[0]
	.loc 13 1037 0
..LDL6907:
/*   1037 */	orr	x1, x2, 6917529027641081856
/*   1037 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 1046 0
..LDL6908:
/*   1046 */	fmla	z29.s, p0/m, z11.s, z8.s
	.loc 13 1037 0
..LDL6909:
/*   1037 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1048 0
..LDL6910:
/*   1048 */	fmla	z28.s, p1/m, z11.s, z30.s
	.loc 13 1050 0
..LDL6911:
/*   1050 */	fmla	z9.s, p2/m, z11.s, z31.s
	.loc 13 1037 0
..LDL6912:
/*   1037 */	ld1w	{z11.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1116 0
..LDL6913:
/*   1116 */	add	x1, x6, 20
	.loc 13 1055 0
..LDL6914:
/*   1055 */	fmla	z27.s, p0/m, z10.s, z8.s
	.loc 13 1057 0
..LDL6915:
/*   1057 */	fmla	z26.s, p1/m, z10.s, z30.s
	.loc 13 1044 0
..LDL6916:
/*   1044 */	ldr	s18, [x6, 4]	//  (*)
	.loc 13 1059 0
..LDL6917:
/*   1059 */	fmla	z25.s, p2/m, z10.s, z31.s
	.loc 13 1064 0
..LDL6918:
/*   1064 */	fmla	z24.s, p0/m, z13.s, z8.s
	.loc 13 1053 0
..LDL6919:
/*   1053 */	ldr	s17, [x6, 8]	//  (*)
	.loc 13 1066 0
..LDL6920:
/*   1066 */	fmla	z7.s, p1/m, z13.s, z30.s
	.loc 13 1041 0
..LDL6921:
/*   1041 */	ld1w	{z10.s}, p2/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1073 0
..LDL6922:
/*   1073 */	fmla	z6.s, p0/m, z14.s, z8.s
/*   1062 */	ldp	s15, s16, [x6, 12]	//  (*)
	.loc 13 1075 0
..LDL6923:
/*   1075 */	fmla	z12.s, p1/m, z14.s, z30.s
	.loc 13 1077 0
..LDL6924:
/*   1077 */	fmla	z5.s, p2/m, z14.s, z31.s
	.loc 13 1082 0
..LDL6925:
/*   1082 */	fmla	z4.s, p0/m, z1.s, z8.s
	.loc 13 1068 0
..LDL6926:
/*   1068 */	fmla	z3.s, p2/m, z13.s, z31.s
	.loc 13 1084 0
..LDL6927:
/*   1084 */	fmla	z2.s, p1/m, z1.s, z30.s
	.loc 13 1086 0
..LDL6928:
/*   1086 */	fmad	z1.s, p2/m, z31.s, z0.s
	.loc 13 1039 0
..LDL6929:
/*   1039 */	ld1w	{z30.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1044 0
..LDL6930:
/*   1044 */	dup	z8.s, z18.s[0]
	.loc 13 1080 0
..LDL6931:
/*   1080 */	ld1rw	{z0.s}, p3/z, [x1]	//  (*)
	.loc 13 1053 0
..LDL6932:
/*   1053 */	dup	z31.s, z17.s[0]
	.loc 13 1062 0
..LDL6933:
/*   1062 */	dup	z13.s, z15.s[0]
	.loc 13 1117 0
..LDL6934:
/*   1117 */	add	x2, x2, x4
	.loc 13 1071 0
..LDL6935:
/*   1071 */	dup	z14.s, z16.s[0]
	.loc 13 1037 0
..LDL6936:
/*   1037 */	orr	x20, x2, 6917529027641081856
/*   1037 */	prfm	2, [x20, 2560]	//  (*)
	.loc 13 1046 0
..LDL6937:
/*   1046 */	fmla	z29.s, p0/m, z8.s, z11.s
	.loc 13 1037 0
..LDL6938:
/*   1037 */	prfm	0, [x20, 512]	//  (*)
	.loc 13 1048 0
..LDL6939:
/*   1048 */	fmla	z28.s, p1/m, z8.s, z30.s
	.loc 13 1050 0
..LDL6940:
/*   1050 */	fmla	z9.s, p2/m, z8.s, z10.s
	.loc 13 1037 0
..LDL6941:
/*   1037 */	ld1w	{z8.s}, p0/z, [x20, 0, mul vl]	//  (*)
	.loc 13 1116 0
..LDL6942:
/*   1116 */	add	x6, x6, 40
	.loc 13 1055 0
..LDL6943:
/*   1055 */	fmla	z27.s, p0/m, z31.s, z11.s
	.loc 13 1057 0
..LDL6944:
/*   1057 */	fmla	z26.s, p1/m, z31.s, z30.s
	.loc 13 1044 0
..LDL6945:
/*   1044 */	ldr	s18, [x6, -16]	//  (*)
	.loc 13 1059 0
..LDL6946:
/*   1059 */	fmla	z25.s, p2/m, z31.s, z10.s
	.loc 13 1064 0
..LDL6947:
/*   1064 */	fmla	z24.s, p0/m, z13.s, z11.s
	.loc 13 1053 0
..LDL6948:
/*   1053 */	ldr	s17, [x6, -12]	//  (*)
	.loc 13 1066 0
..LDL6949:
/*   1066 */	fmla	z7.s, p1/m, z13.s, z30.s
	.loc 13 1041 0
..LDL6950:
/*   1041 */	ld1w	{z31.s}, p2/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1073 0
..LDL6951:
/*   1073 */	fmla	z6.s, p0/m, z14.s, z11.s
/*   1062 */	ldp	s15, s16, [x6, -8]	//  (*)
	.loc 13 1075 0
..LDL6952:
/*   1075 */	fmla	z12.s, p1/m, z14.s, z30.s
	.loc 13 1077 0
..LDL6953:
/*   1077 */	fmla	z5.s, p2/m, z14.s, z10.s
	.loc 13 1080 0
..LDL6954:
/*   1080 */	prfm	2, [x1, 2560]	//  (*)
/*   1080 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1082 0
..LDL6955:
/*   1082 */	fmla	z4.s, p0/m, z0.s, z11.s
	.loc 13 1068 0
..LDL6956:
/*   1068 */	fmla	z3.s, p2/m, z13.s, z10.s
	.loc 13 1084 0
..LDL6957:
/*   1084 */	fmla	z2.s, p1/m, z0.s, z30.s
	.loc 13 1086 0
..LDL6958:
/*   1086 */	fmad	z0.s, p2/m, z10.s, z1.s
	.loc 13 1039 0
..LDL6959:
/*   1039 */	ld1w	{z30.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1118 0
..LDL6960:
/*   1118 */	sub	w0, w0, 2
	.loc 13 1036 0
..LDL6961:
/*   1036 */	cmp	w0, 3
/*   1036 */	bge	.L11492
	.loc 13 1080 0
..LDL6962:
/*   1080 */	ptrue	p3.s, ALL
	.loc 13 1044 0
..LDL6963:
/*   1044 */	dup	z1.s, z18.s[0]
	.loc 13 1117 0
..LDL6964:
/*   1117 */	add	x2, x2, x4
	.loc 13 1080 0
..LDL6965:
/*   1080 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 1053 0
..LDL6966:
/*   1053 */	dup	z10.s, z17.s[0]
	.loc 13 1116 0
..LDL6967:
/*   1116 */	add	x1, x6, 20
	.loc 13 1080 0
..LDL6968:
/*   1080 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1118 0
..LDL6969:
/*   1118 */	sub	w0, w0, 1
	.loc 13 1062 0
..LDL6970:
/*   1062 */	dup	z13.s, z15.s[0]
	.loc 13 1080 0
..LDL6971:
/*   1080 */	ld1rw	{z11.s}, p3/z, [x6]	//  (*)
	.loc 13 1071 0
..LDL6972:
/*   1071 */	dup	z14.s, z16.s[0]
	.loc 13 1046 0
..LDL6973:
/*   1046 */	fmla	z29.s, p0/m, z1.s, z8.s
	.loc 13 1048 0
..LDL6974:
/*   1048 */	fmla	z28.s, p1/m, z1.s, z30.s
	.loc 13 1055 0
..LDL6975:
/*   1055 */	fmla	z27.s, p0/m, z10.s, z8.s
	.loc 13 1057 0
..LDL6976:
/*   1057 */	fmla	z26.s, p1/m, z10.s, z30.s
	.loc 13 1064 0
..LDL6977:
/*   1064 */	fmla	z24.s, p0/m, z13.s, z8.s
	.loc 13 1066 0
..LDL6978:
/*   1066 */	fmla	z7.s, p1/m, z13.s, z30.s
	.loc 13 1073 0
..LDL6979:
/*   1073 */	fmla	z6.s, p0/m, z14.s, z8.s
	.loc 13 1075 0
..LDL6980:
/*   1075 */	fmla	z12.s, p1/m, z14.s, z30.s
	.loc 13 1050 0
..LDL6981:
/*   1050 */	fmad	z1.s, p2/m, z31.s, z9.s
	.loc 13 1059 0
..LDL6982:
/*   1059 */	fmad	z10.s, p2/m, z31.s, z25.s
	.loc 13 1077 0
..LDL6983:
/*   1077 */	fmad	z14.s, p2/m, z31.s, z5.s
	.loc 13 1068 0
..LDL6984:
/*   1068 */	fmad	z13.s, p2/m, z31.s, z3.s
	.loc 13 1082 0
..LDL6985:
/*   1082 */	fmla	z4.s, p0/m, z11.s, z8.s
	.loc 13 1084 0
..LDL6986:
/*   1084 */	fmla	z2.s, p1/m, z11.s, z30.s
	.loc 13 1086 0
..LDL6987:
/*   1086 */	fmad	z11.s, p2/m, z31.s, z0.s
	.loc 13 1118 0
..LDL6988:
/*   1118 */	cbz	w0, .L12126
.L12129:
	.p2align 5
.L12132:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL6989:
/*   1037 */	orr	x6, x2, 6917529027641081856
	.loc 13 1044 0
..LDL6990:
/*   1044 */	ldp	s0, s25, [x1, -16]	//  (*)
	.loc 13 1080 0
..LDL6991:
/*   1080 */	ptrue	p3.s, ALL
	.loc 13 1039 0
..LDL6992:
/*   1039 */	add	x21, x2, 64
	.loc 13 1041 0
..LDL6993:
/*   1041 */	add	x20, x2, 128
	.loc 13 1062 0
..LDL6994:
/*   1062 */	ldp	s8, s9, [x1, -8]	//  (*)
	.loc 13 1037 0
..LDL6995:
/*   1037 */	ld1w	{z3.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL6996:
/*   1039 */	ld1w	{z31.s}, p1/z, [x21, 0, mul vl]	//  (*)
	.loc 13 1117 0
..LDL6997:
/*   1117 */	add	x2, x2, x4
	.loc 13 1118 0
..LDL6998:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1041 0
..LDL6999:
/*   1041 */	ld1w	{z30.s}, p2/z, [x20, 0, mul vl]	//  (*)
	.loc 13 1080 0
..LDL7000:
/*   1080 */	ld1rw	{z5.s}, p3/z, [x1]	//  (*)
/*   1080 */	prfm	2, [x1, 2560]	//  (*)
/*   1080 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1116 0
..LDL7001:
/*   1116 */	add	x1, x1, 20
	.loc 13 1037 0
..LDL7002:
/*   1037 */	prfm	2, [x6, 2560]	//  (*)
/*   1037 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1044 0
..LDL7003:
/*   1044 */	dup	z0.s, z0.s[0]
	.loc 13 1053 0
..LDL7004:
/*   1053 */	dup	z25.s, z25.s[0]
	.loc 13 1062 0
..LDL7005:
/*   1062 */	dup	z8.s, z8.s[0]
	.loc 13 1071 0
..LDL7006:
/*   1071 */	dup	z9.s, z9.s[0]
	.loc 13 1046 0
..LDL7007:
/*   1046 */	fmla	z29.s, p0/m, z0.s, z3.s
	.loc 13 1048 0
..LDL7008:
/*   1048 */	fmla	z28.s, p1/m, z0.s, z31.s
	.loc 13 1050 0
..LDL7009:
/*   1050 */	fmla	z1.s, p2/m, z0.s, z30.s
	.loc 13 1055 0
..LDL7010:
/*   1055 */	fmla	z27.s, p0/m, z25.s, z3.s
	.loc 13 1057 0
..LDL7011:
/*   1057 */	fmla	z26.s, p1/m, z25.s, z31.s
	.loc 13 1059 0
..LDL7012:
/*   1059 */	fmla	z10.s, p2/m, z25.s, z30.s
	.loc 13 1064 0
..LDL7013:
/*   1064 */	fmla	z24.s, p0/m, z8.s, z3.s
	.loc 13 1066 0
..LDL7014:
/*   1066 */	fmla	z7.s, p1/m, z8.s, z31.s
	.loc 13 1068 0
..LDL7015:
/*   1068 */	fmla	z13.s, p2/m, z8.s, z30.s
	.loc 13 1073 0
..LDL7016:
/*   1073 */	fmla	z6.s, p0/m, z9.s, z3.s
	.loc 13 1075 0
..LDL7017:
/*   1075 */	fmla	z12.s, p1/m, z9.s, z31.s
	.loc 13 1077 0
..LDL7018:
/*   1077 */	fmla	z14.s, p2/m, z9.s, z30.s
	.loc 13 1082 0
..LDL7019:
/*   1082 */	fmla	z4.s, p0/m, z5.s, z3.s
	.loc 13 1084 0
..LDL7020:
/*   1084 */	fmla	z2.s, p1/m, z5.s, z31.s
	.loc 13 1086 0
..LDL7021:
/*   1086 */	fmla	z11.s, p2/m, z5.s, z30.s
	.loc 13 1118 0 is_stmt 0
..LDL7022:
/*   1118 */	bne	.L12132
.L12126:
.L11494:
	.loc 13 1123 0 is_stmt 1
..LDL7023:
/*   1123 */	st1w	{z29.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL7024:
/*   1125 */	st1w	{z28.s}, p1, [x18, 0, mul vl]	//  (*)
	.loc 13 1127 0
..LDL7025:
/*   1127 */	st1w	{z1.s}, p2, [x17, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL7026:
/*   1131 */	st1w	{z27.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 1133 0
..LDL7027:
/*   1133 */	st1w	{z26.s}, p1, [x15, 0, mul vl]	//  (*)
	.loc 13 1135 0
..LDL7028:
/*   1135 */	st1w	{z10.s}, p2, [x14, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL7029:
/*   1139 */	st1w	{z24.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 1141 0
..LDL7030:
/*   1141 */	st1w	{z7.s}, p1, [x12, 0, mul vl]	//  (*)
	.loc 13 1143 0
..LDL7031:
/*   1143 */	st1w	{z13.s}, p2, [x11, 0, mul vl]	//  (*)
	.loc 13 1147 0
..LDL7032:
/*   1147 */	st1w	{z6.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1149 0
..LDL7033:
/*   1149 */	st1w	{z12.s}, p1, [x9, 0, mul vl]	//  (*)
	.loc 13 1151 0
..LDL7034:
/*   1151 */	st1w	{z14.s}, p2, [x8, 0, mul vl]	//  (*)
	.loc 13 1155 0
..LDL7035:
/*   1155 */	st1w	{z4.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1157 0
..LDL7036:
/*   1157 */	st1w	{z2.s}, p1, [x5, 0, mul vl]	//  (*)
	.loc 13 1159 0
..LDL7037:
/*   1159 */	st1w	{z11.s}, p2, [x30, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL7038:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldr	x21, [x29, -24]	//  (*)
	.cfi_restore 21
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 12
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D42.pchi:
	.cfi_endproc
.LFE41:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi5ELi48EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi5ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL7039:
.LFB42:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -12
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xe0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x78,0x22,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL7040:
/*    971 */	ld1w	{z27.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL7041:
/*    987 */	add	w8, w4, w4
	.loc 13 1011 0
..LDL7042:
/*   1011 */	add	w10, w4, w4, lsl #2
	.loc 13 995 0
..LDL7043:
/*    995 */	add	w7, w8, w4
	.loc 13 1003 0
..LDL7044:
/*   1003 */	lsl	w5, w4, 2
	.loc 13 979 0
..LDL7045:
/*    979 */	sxtw	x9, w4
	.loc 13 987 0
..LDL7046:
/*    987 */	sxtw	x8, w8
	.loc 13 995 0
..LDL7047:
/*    995 */	sxtw	x7, w7
	.loc 13 1003 0
..LDL7048:
/*   1003 */	sxtw	x5, w5
	.loc 13 1011 0
..LDL7049:
/*   1011 */	sxtw	x4, w10
	.loc 13 979 0
..LDL7050:
/*    979 */	add	x9, x3, x9, lsl #2
/*    979 */	ld1w	{z25.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL7051:
/*    987 */	add	x8, x3, x8, lsl #2
/*    987 */	ld1w	{z24.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 995 0
..LDL7052:
/*    995 */	add	x7, x3, x7, lsl #2
/*    995 */	ld1w	{z5.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1003 0
..LDL7053:
/*   1003 */	add	x5, x3, x5, lsl #2
/*   1003 */	ld1w	{z3.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1011 0
..LDL7054:
/*   1011 */	add	x10, x3, x4, lsl #2
/*   1011 */	ld1w	{z1.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL7055:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11502
	.loc 13 1117 0 is_stmt 0
..LDL7056:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL7057:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x15, x1, 20
	.loc 13 1089 0
..LDL7058:
/*   1089 */	mov	x13, 2564
/*   1089 */	mov	x1, 516
	.loc 13 1034 0
..LDL7059:
/*   1034 */	cmp	w0, 7
/*   1034 */	blt	.L12140
	.loc 13 1118 0
..LDL7060:
/*   1118 */	mov	x12, x15
	.loc 13 1089 0
..LDL7061:
/*   1089 */	ptrue	p1.s, ALL
	.loc 13 1037 0
..LDL7062:
/*   1037 */	orr	x15, x2, 6917529027641081856
	.loc 13 1117 0
..LDL7063:
/*   1117 */	add	x2, x2, x4
/*   1062 */	ldp	s4, s2, [x12, -12]	//  (*)
	.loc 13 1116 0
..LDL7064:
/*   1116 */	add	x6, x12, 24
/*   1044 */	ldp	s7, s6, [x12, -20]	//  (*)
	.loc 13 1037 0
..LDL7065:
/*   1037 */	orr	x16, x2, 6917529027641081856
	.loc 13 1117 0
..LDL7066:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL7067:
/*   1037 */	ld1w	{z31.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1080 0
..LDL7068:
/*   1080 */	ldr	s0, [x12, -4]	//  (*)
	.loc 13 1037 0
..LDL7069:
/*   1037 */	orr	x14, x2, 6917529027641081856
	.loc 13 1116 0
..LDL7070:
/*   1116 */	add	x11, x12, 48
	.loc 13 1089 0
..LDL7071:
/*   1089 */	ld1rw	{z10.s}, p1/z, [x12]	//  (*)
	.loc 13 1037 0
..LDL7072:
/*   1037 */	ld1w	{z8.s}, p0/z, [x16, 0, mul vl]	//  (*)
/*   1044 */	ldp	s16, s14, [x12, 4]	//  (*)
	.loc 13 1062 0
..LDL7073:
/*   1062 */	ldr	s11, [x12, 12]	//  (*)
	.loc 13 1044 0
..LDL7074:
/*   1044 */	ldr	s17, [x12, 28]	//  (*)
/*   1071 */	ldp	s26, s13, [x12, 16]	//  (*)
	.loc 13 1037 0
..LDL7075:
/*   1037 */	prfm	2, [x15, 2560]	//  (*)
/*   1037 */	prfm	0, [x15, 512]	//  (*)
/*   1037 */	prfm	2, [x16, 2560]	//  (*)
	.loc 13 1062 0
..LDL7076:
/*   1062 */	dup	z29.s, z4.s[0]
	.loc 13 1037 0
..LDL7077:
/*   1037 */	prfm	0, [x16, 512]	//  (*)
	.loc 13 1071 0
..LDL7078:
/*   1071 */	dup	z4.s, z2.s[0]
	.loc 13 1044 0
..LDL7079:
/*   1044 */	dup	z9.s, z7.s[0]
	.loc 13 1053 0
..LDL7080:
/*   1053 */	dup	z30.s, z6.s[0]
	.loc 13 1080 0
..LDL7081:
/*   1080 */	dup	z2.s, z0.s[0]
	.p2align 5
.L11500:					// :entr:term:swpl
	.loc 13 1037 0
..LDL7082:
/*   1037 */	prfm	2, [x14, 2560]	//  (*)
	.loc 13 1117 0
..LDL7083:
/*   1117 */	add	x2, x2, x4
	.loc 13 1053 0
..LDL7084:
/*   1053 */	ldr	s15, [x11, -16]	//  (*)
	.loc 13 1044 0
..LDL7085:
/*   1044 */	dup	z7.s, z16.s[0]
	.loc 13 1037 0
..LDL7086:
/*   1037 */	prfm	0, [x14, 512]	//  (*)
/*   1037 */	orr	x16, x2, 6917529027641081856
	.loc 13 1053 0
..LDL7087:
/*   1053 */	dup	z0.s, z14.s[0]
	.loc 13 1062 0
..LDL7088:
/*   1062 */	ldr	s12, [x11, -12]	//  (*)
	.loc 13 1116 0
..LDL7089:
/*   1116 */	add	x15, x11, 24
	.loc 13 1062 0
..LDL7090:
/*   1062 */	dup	z11.s, z11.s[0]
	.loc 13 1046 0
..LDL7091:
/*   1046 */	fmla	z27.s, p0/m, z9.s, z31.s
	.loc 13 1089 0
..LDL7092:
/*   1089 */	ld1rw	{z9.s}, p1/z, [x6]	//  (*)
	.loc 13 1044 0
..LDL7093:
/*   1044 */	ldr	s18, [x11, 4]	//  (*)
	.loc 13 1055 0
..LDL7094:
/*   1055 */	fmla	z25.s, p0/m, z30.s, z31.s
	.loc 13 1071 0
..LDL7095:
/*   1071 */	ldr	s16, [x11, -8]	//  (*)
	.loc 13 1064 0
..LDL7096:
/*   1064 */	fmla	z24.s, p0/m, z29.s, z31.s
	.loc 13 1037 0
..LDL7097:
/*   1037 */	ld1w	{z29.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1071 0
..LDL7098:
/*   1071 */	dup	z28.s, z26.s[0]
	.loc 13 1073 0
..LDL7099:
/*   1073 */	fmla	z5.s, p0/m, z4.s, z31.s
	.loc 13 1080 0
..LDL7100:
/*   1080 */	ldr	s30, [x11, -4]	//  (*)
	.loc 13 1089 0
..LDL7101:
/*   1089 */	prfm	2, [x12, x13]	//  (*)
	.loc 13 1080 0
..LDL7102:
/*   1080 */	dup	z26.s, z13.s[0]
	.loc 13 1082 0
..LDL7103:
/*   1082 */	fmla	z3.s, p0/m, z2.s, z31.s
	.loc 13 1089 0
..LDL7104:
/*   1089 */	prfm	0, [x12, x1]	//  (*)
/*   1089 */	ptrue	p1.s, ALL
	.loc 13 1091 0
..LDL7105:
/*   1091 */	fmad	z10.s, p0/m, z31.s, z1.s
	.loc 13 1037 0
..LDL7106:
/*   1037 */	prfm	2, [x16, 2560]	//  (*)
	.loc 13 1117 0
..LDL7107:
/*   1117 */	add	x14, x2, x4
	.loc 13 1053 0
..LDL7108:
/*   1053 */	ldr	s13, [x11, 8]	//  (*)
	.loc 13 1044 0
..LDL7109:
/*   1044 */	dup	z6.s, z17.s[0]
	.loc 13 1037 0
..LDL7110:
/*   1037 */	prfm	0, [x16, 512]	//  (*)
/*   1037 */	orr	x2, x14, 6917529027641081856
	.loc 13 1053 0
..LDL7111:
/*   1053 */	dup	z2.s, z15.s[0]
	.loc 13 1062 0
..LDL7112:
/*   1062 */	ldr	s31, [x11, 12]	//  (*)
	.loc 13 1116 0
..LDL7113:
/*   1116 */	add	x12, x11, 48
	.loc 13 1062 0
..LDL7114:
/*   1062 */	dup	z4.s, z12.s[0]
	.loc 13 1046 0
..LDL7115:
/*   1046 */	fmla	z27.s, p0/m, z7.s, z8.s
	.loc 13 1089 0
..LDL7116:
/*   1089 */	ld1rw	{z1.s}, p1/z, [x11]	//  (*)
	.loc 13 1044 0
..LDL7117:
/*   1044 */	ldr	s15, [x11, 28]	//  (*)
	.loc 13 1055 0
..LDL7118:
/*   1055 */	fmla	z25.s, p0/m, z0.s, z8.s
	.loc 13 1071 0
..LDL7119:
/*   1071 */	ldr	s14, [x11, 16]	//  (*)
	.loc 13 1064 0
..LDL7120:
/*   1064 */	movprfx	z12.s, p0/z, z24.s
/*   1064 */	fmla	z12.s, p0/m, z11.s, z8.s
	.loc 13 1037 0
..LDL7121:
/*   1037 */	ld1w	{z0.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1071 0
..LDL7122:
/*   1071 */	dup	z7.s, z16.s[0]
	.loc 13 1073 0
..LDL7123:
/*   1073 */	fmla	z5.s, p0/m, z28.s, z8.s
	.loc 13 1080 0
..LDL7124:
/*   1080 */	ldr	s11, [x11, 20]	//  (*)
	.loc 13 1089 0
..LDL7125:
/*   1089 */	prfm	2, [x6, x13]	//  (*)
	.loc 13 1080 0
..LDL7126:
/*   1080 */	dup	z30.s, z30.s[0]
	.loc 13 1082 0
..LDL7127:
/*   1082 */	fmla	z3.s, p0/m, z26.s, z8.s
	.loc 13 1089 0
..LDL7128:
/*   1089 */	prfm	0, [x6, x1]	//  (*)
	.loc 13 1091 0
..LDL7129:
/*   1091 */	fmad	z9.s, p0/m, z8.s, z10.s
	.loc 13 1037 0
..LDL7130:
/*   1037 */	prfm	2, [x2, 2560]	//  (*)
	.loc 13 1117 0
..LDL7131:
/*   1117 */	add	x14, x14, x4
	.loc 13 1053 0
..LDL7132:
/*   1053 */	ldr	s10, [x11, 32]	//  (*)
	.loc 13 1044 0
..LDL7133:
/*   1044 */	dup	z28.s, z18.s[0]
	.loc 13 1037 0
..LDL7134:
/*   1037 */	prfm	0, [x2, 512]	//  (*)
/*   1037 */	orr	x16, x14, 6917529027641081856
	.loc 13 1053 0
..LDL7135:
/*   1053 */	dup	z26.s, z13.s[0]
	.loc 13 1062 0
..LDL7136:
/*   1062 */	ldr	s8, [x11, 36]	//  (*)
	.loc 13 1116 0
..LDL7137:
/*   1116 */	add	x6, x11, 72
	.loc 13 1062 0
..LDL7138:
/*   1062 */	dup	z24.s, z31.s[0]
	.loc 13 1046 0
..LDL7139:
/*   1046 */	fmla	z27.s, p0/m, z6.s, z29.s
	.loc 13 1089 0
..LDL7140:
/*   1089 */	ld1rw	{z6.s}, p1/z, [x15]	//  (*)
	.loc 13 1044 0
..LDL7141:
/*   1044 */	ldr	s16, [x11, 52]	//  (*)
	.loc 13 1055 0
..LDL7142:
/*   1055 */	fmla	z25.s, p0/m, z2.s, z29.s
	.loc 13 1071 0
..LDL7143:
/*   1071 */	ldr	s13, [x11, 40]	//  (*)
	.loc 13 1064 0
..LDL7144:
/*   1064 */	fmad	z4.s, p0/m, z29.s, z12.s
	.loc 13 1037 0
..LDL7145:
/*   1037 */	ld1w	{z31.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1071 0
..LDL7146:
/*   1071 */	dup	z2.s, z14.s[0]
	.loc 13 1073 0
..LDL7147:
/*   1073 */	fmla	z5.s, p0/m, z7.s, z29.s
	.loc 13 1080 0
..LDL7148:
/*   1080 */	ldr	s12, [x11, 44]	//  (*)
	.loc 13 1089 0
..LDL7149:
/*   1089 */	prfm	2, [x11, x13]	//  (*)
	.loc 13 1080 0
..LDL7150:
/*   1080 */	dup	z7.s, z11.s[0]
	.loc 13 1082 0
..LDL7151:
/*   1082 */	fmla	z3.s, p0/m, z30.s, z29.s
	.loc 13 1089 0
..LDL7152:
/*   1089 */	prfm	0, [x11, x1]	//  (*)
	.loc 13 1091 0
..LDL7153:
/*   1091 */	fmad	z1.s, p0/m, z29.s, z9.s
	.loc 13 1037 0
..LDL7154:
/*   1037 */	prfm	2, [x16, 2560]	//  (*)
	.loc 13 1117 0
..LDL7155:
/*   1117 */	add	x2, x14, x4
	.loc 13 1053 0
..LDL7156:
/*   1053 */	ldr	s14, [x11, 56]	//  (*)
	.loc 13 1044 0
..LDL7157:
/*   1044 */	dup	z9.s, z15.s[0]
	.loc 13 1037 0
..LDL7158:
/*   1037 */	prfm	0, [x16, 512]	//  (*)
/*   1037 */	orr	x14, x2, 6917529027641081856
	.loc 13 1053 0
..LDL7159:
/*   1053 */	dup	z30.s, z10.s[0]
	.loc 13 1062 0
..LDL7160:
/*   1062 */	ldr	s11, [x11, 60]	//  (*)
	.loc 13 1116 0
..LDL7161:
/*   1116 */	add	x11, x11, 96
	.loc 13 1062 0
..LDL7162:
/*   1062 */	dup	z29.s, z8.s[0]
	.loc 13 1046 0
..LDL7163:
/*   1046 */	fmla	z27.s, p0/m, z28.s, z0.s
	.loc 13 1089 0
..LDL7164:
/*   1089 */	ld1rw	{z10.s}, p1/z, [x12]	//  (*)
	.loc 13 1044 0
..LDL7165:
/*   1044 */	ldr	s17, [x11, -20]	//  (*)
	.loc 13 1055 0
..LDL7166:
/*   1055 */	fmla	z25.s, p0/m, z26.s, z0.s
	.loc 13 1071 0
..LDL7167:
/*   1071 */	ldr	s26, [x6, -8]	//  (*)
	.loc 13 1064 0
..LDL7168:
/*   1064 */	fmad	z24.s, p0/m, z0.s, z4.s
	.loc 13 1037 0
..LDL7169:
/*   1037 */	ld1w	{z8.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1071 0
..LDL7170:
/*   1071 */	dup	z4.s, z13.s[0]
	.loc 13 1073 0
..LDL7171:
/*   1073 */	fmla	z5.s, p0/m, z2.s, z0.s
	.loc 13 1080 0
..LDL7172:
/*   1080 */	ldr	s13, [x6, -4]	//  (*)
	.loc 13 1089 0
..LDL7173:
/*   1089 */	prfm	2, [x15, x13]	//  (*)
	.loc 13 1080 0
..LDL7174:
/*   1080 */	dup	z2.s, z12.s[0]
	.loc 13 1082 0
..LDL7175:
/*   1082 */	fmla	z3.s, p0/m, z7.s, z0.s
	.loc 13 1089 0
..LDL7176:
/*   1089 */	prfm	0, [x15, x1]	//  (*)
	.loc 13 1091 0
..LDL7177:
/*   1091 */	fmla	z1.s, p0/m, z6.s, z0.s
	.loc 13 1118 0
..LDL7178:
/*   1118 */	sub	w0, w0, 4
	.loc 13 1036 0
..LDL7179:
/*   1036 */	cmp	w0, 7
/*   1036 */	bge	.L11500
	.loc 13 1046 0
..LDL7180:
/*   1046 */	fmla	z27.s, p0/m, z9.s, z31.s
	.loc 13 1089 0
..LDL7181:
/*   1089 */	ld1rw	{z9.s}, p1/z, [x6]	//  (*)
	.loc 13 1073 0
..LDL7182:
/*   1073 */	fmla	z5.s, p0/m, z4.s, z31.s
	.loc 13 1089 0
..LDL7183:
/*   1089 */	ptrue	p1.s, ALL
	.loc 13 1053 0
..LDL7184:
/*   1053 */	ldr	s6, [x11, -16]	//  (*)
	.loc 13 1055 0
..LDL7185:
/*   1055 */	fmla	z25.s, p0/m, z30.s, z31.s
	.loc 13 1117 0
..LDL7186:
/*   1117 */	add	x2, x2, x4
	.loc 13 1082 0
..LDL7187:
/*   1082 */	fmla	z3.s, p0/m, z2.s, z31.s
	.loc 13 1062 0
..LDL7188:
/*   1062 */	ldr	s30, [x11, -12]	//  (*)
	.loc 13 1064 0
..LDL7189:
/*   1064 */	fmla	z24.s, p0/m, z29.s, z31.s
	.loc 13 1091 0
..LDL7190:
/*   1091 */	fmla	z1.s, p0/m, z10.s, z31.s
	.loc 13 1116 0
..LDL7191:
/*   1116 */	add	x15, x11, 24
	.loc 13 1071 0
..LDL7192:
/*   1071 */	ldr	s29, [x11, -8]	//  (*)
	.loc 13 1118 0
..LDL7193:
/*   1118 */	sub	w0, w0, 3
	.loc 13 1071 0
..LDL7194:
/*   1071 */	dup	z4.s, z26.s[0]
	.loc 13 1080 0
..LDL7195:
/*   1080 */	ldr	s12, [x11, -4]	//  (*)
/*   1080 */	dup	z2.s, z13.s[0]
	.loc 13 1044 0
..LDL7196:
/*   1044 */	dup	z15.s, z16.s[0]
	.loc 13 1037 0
..LDL7197:
/*   1037 */	ld1w	{z0.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL7198:
/*   1053 */	dup	z10.s, z14.s[0]
	.loc 13 1089 0
..LDL7199:
/*   1089 */	ld1rw	{z7.s}, p1/z, [x11]	//  (*)
	.loc 13 1062 0
..LDL7200:
/*   1062 */	dup	z31.s, z11.s[0]
	.loc 13 1037 0
..LDL7201:
/*   1037 */	prfm	2, [x14, 2560]	//  (*)
/*   1037 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 1044 0
..LDL7202:
/*   1044 */	dup	z28.s, z17.s[0]
	.loc 13 1089 0
..LDL7203:
/*   1089 */	prfm	2, [x12, x13]	//  (*)
	.loc 13 1073 0
..LDL7204:
/*   1073 */	fmla	z5.s, p0/m, z4.s, z8.s
	.loc 13 1089 0
..LDL7205:
/*   1089 */	prfm	0, [x12, x1]	//  (*)
	.loc 13 1082 0
..LDL7206:
/*   1082 */	fmla	z3.s, p0/m, z2.s, z8.s
	.loc 13 1046 0
..LDL7207:
/*   1046 */	fmla	z27.s, p0/m, z15.s, z8.s
	.loc 13 1089 0
..LDL7208:
/*   1089 */	prfm	2, [x6, x13]	//  (*)
	.loc 13 1053 0
..LDL7209:
/*   1053 */	dup	z26.s, z6.s[0]
	.loc 13 1055 0
..LDL7210:
/*   1055 */	fmla	z25.s, p0/m, z10.s, z8.s
	.loc 13 1089 0
..LDL7211:
/*   1089 */	prfm	0, [x6, x1]	//  (*)
	.loc 13 1091 0
..LDL7212:
/*   1091 */	fmla	z1.s, p0/m, z9.s, z8.s
	.loc 13 1064 0
..LDL7213:
/*   1064 */	fmla	z24.s, p0/m, z31.s, z8.s
	.loc 13 1089 0
..LDL7214:
/*   1089 */	prfm	2, [x11, x13]	//  (*)
/*   1089 */	prfm	0, [x11, x1]	//  (*)
	.loc 13 1062 0
..LDL7215:
/*   1062 */	dup	z6.s, z30.s[0]
	.loc 13 1071 0
..LDL7216:
/*   1071 */	dup	z4.s, z29.s[0]
	.loc 13 1080 0
..LDL7217:
/*   1080 */	dup	z2.s, z12.s[0]
	.loc 13 1046 0
..LDL7218:
/*   1046 */	fmla	z27.s, p0/m, z28.s, z0.s
	.loc 13 1055 0
..LDL7219:
/*   1055 */	fmla	z25.s, p0/m, z26.s, z0.s
	.loc 13 1091 0
..LDL7220:
/*   1091 */	fmla	z1.s, p0/m, z7.s, z0.s
	.loc 13 1064 0
..LDL7221:
/*   1064 */	fmla	z24.s, p0/m, z6.s, z0.s
	.loc 13 1073 0
..LDL7222:
/*   1073 */	fmla	z5.s, p0/m, z4.s, z0.s
	.loc 13 1082 0
..LDL7223:
/*   1082 */	fmla	z3.s, p0/m, z2.s, z0.s
	.loc 13 1118 0
..LDL7224:
/*   1118 */	cbz	w0, .L12137
.L12140:
	.p2align 5
.L12143:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL7225:
/*   1037 */	orr	x6, x2, 6917529027641081856
	.loc 13 1044 0
..LDL7226:
/*   1044 */	ldp	s4, s26, [x15, -20]	//  (*)
	.loc 13 1089 0
..LDL7227:
/*   1089 */	ptrue	p1.s, ALL
	.loc 13 1062 0
..LDL7228:
/*   1062 */	ldp	s28, s7, [x15, -12]	//  (*)
	.loc 13 1117 0
..LDL7229:
/*   1117 */	add	x2, x2, x4
	.loc 13 1118 0
..LDL7230:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1037 0
..LDL7231:
/*   1037 */	ld1w	{z0.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1080 0
..LDL7232:
/*   1080 */	ldr	s6, [x15, -4]	//  (*)
	.loc 13 1089 0
..LDL7233:
/*   1089 */	prfm	2, [x15, x13]	//  (*)
/*   1089 */	ld1rw	{z2.s}, p1/z, [x15]	//  (*)
	.loc 13 1037 0
..LDL7234:
/*   1037 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 1089 0
..LDL7235:
/*   1089 */	prfm	0, [x15, x1]	//  (*)
	.loc 13 1116 0
..LDL7236:
/*   1116 */	add	x15, x15, 24
	.loc 13 1037 0
..LDL7237:
/*   1037 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1044 0
..LDL7238:
/*   1044 */	dup	z4.s, z4.s[0]
	.loc 13 1053 0
..LDL7239:
/*   1053 */	dup	z26.s, z26.s[0]
	.loc 13 1062 0
..LDL7240:
/*   1062 */	dup	z28.s, z28.s[0]
	.loc 13 1071 0
..LDL7241:
/*   1071 */	dup	z7.s, z7.s[0]
	.loc 13 1080 0
..LDL7242:
/*   1080 */	dup	z6.s, z6.s[0]
	.loc 13 1046 0
..LDL7243:
/*   1046 */	fmla	z27.s, p0/m, z4.s, z0.s
	.loc 13 1091 0
..LDL7244:
/*   1091 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1055 0
..LDL7245:
/*   1055 */	fmla	z25.s, p0/m, z26.s, z0.s
	.loc 13 1064 0
..LDL7246:
/*   1064 */	fmla	z24.s, p0/m, z28.s, z0.s
	.loc 13 1073 0
..LDL7247:
/*   1073 */	fmla	z5.s, p0/m, z7.s, z0.s
	.loc 13 1082 0
..LDL7248:
/*   1082 */	fmla	z3.s, p0/m, z6.s, z0.s
	.loc 13 1118 0 is_stmt 0
..LDL7249:
/*   1118 */	bne	.L12143
.L12137:
.L11502:
	.loc 13 1123 0 is_stmt 1
..LDL7250:
/*   1123 */	st1w	{z27.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL7251:
/*   1131 */	st1w	{z25.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL7252:
/*   1139 */	st1w	{z24.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1147 0
..LDL7253:
/*   1147 */	st1w	{z5.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1155 0
..LDL7254:
/*   1155 */	st1w	{z3.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1163 0
..LDL7255:
/*   1163 */	st1w	{z1.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL7256:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 12
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D43.pchi:
	.cfi_endproc
.LFE42:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL7257:
.LFB43:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -13
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xe8,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 32
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*    ??? */	str	x21, [x29, -24]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x68,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL7258:
/*    971 */	ld1w	{z31.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL7259:
/*    987 */	add	w9, w4, w4
	.loc 13 1003 0
..LDL7260:
/*   1003 */	lsl	w7, w4, 2
	.loc 13 1011 0
..LDL7261:
/*   1011 */	add	w5, w4, w4, lsl #2
	.loc 13 995 0
..LDL7262:
/*    995 */	add	w8, w9, w4
/*    995 */	sxtw	x10, w8
	.loc 13 1003 0
..LDL7263:
/*   1003 */	sxtw	x8, w7
	.loc 13 979 0
..LDL7264:
/*    979 */	sxtw	x14, w4
	.loc 13 1005 0
..LDL7265:
/*   1005 */	add	x7, x8, 16
	.loc 13 1011 0
..LDL7266:
/*   1011 */	sxtw	x5, w5
	.loc 13 1013 0
..LDL7267:
/*   1013 */	add	x4, x5, 16
	.loc 13 1005 0
..LDL7268:
/*   1005 */	add	x16, x3, x7, lsl #2
	.loc 13 987 0
..LDL7269:
/*    987 */	sxtw	x12, w9
	.loc 13 981 0
..LDL7270:
/*    981 */	add	x13, x14, 16
	.loc 13 989 0
..LDL7271:
/*    989 */	add	x11, x12, 16
	.loc 13 1005 0
..LDL7272:
/*   1005 */	ld1w	{z1.s}, p1/z, [x16, 0, mul vl]	//  (*)
	.loc 13 997 0
..LDL7273:
/*    997 */	add	x9, x10, 16
	.loc 13 1011 0
..LDL7274:
/*   1011 */	add	x7, x3, x5, lsl #2
/*   1011 */	ld1w	{z4.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 973 0
..LDL7275:
/*    973 */	add	x15, x3, 64
	.loc 13 979 0
..LDL7276:
/*    979 */	add	x14, x3, x14, lsl #2
	.loc 13 973 0
..LDL7277:
/*    973 */	ld1w	{z29.s}, p1/z, [x15, 0, mul vl]	//  (*)
	.loc 13 979 0
..LDL7278:
/*    979 */	ld1w	{z28.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL7279:
/*    981 */	add	x13, x3, x13, lsl #2
/*    981 */	ld1w	{z2.s}, p1/z, [x13, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL7280:
/*    987 */	add	x12, x3, x12, lsl #2
/*    987 */	ld1w	{z26.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 989 0
..LDL7281:
/*    989 */	add	x11, x3, x11, lsl #2
/*    989 */	ld1w	{z6.s}, p1/z, [x11, 0, mul vl]	//  (*)
	.loc 13 995 0
..LDL7282:
/*    995 */	add	x10, x3, x10, lsl #2
/*    995 */	ld1w	{z24.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 997 0
..LDL7283:
/*    997 */	add	x9, x3, x9, lsl #2
/*    997 */	ld1w	{z7.s}, p1/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1003 0
..LDL7284:
/*   1003 */	add	x8, x3, x8, lsl #2
/*   1003 */	ld1w	{z0.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1013 0
..LDL7285:
/*   1013 */	add	x5, x3, x4, lsl #2
/*   1013 */	ld1w	{z3.s}, p1/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL7286:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11510
	.loc 13 1117 0 is_stmt 0
..LDL7287:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL7288:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x6, x1, 20
	.loc 13 1089 0
..LDL7289:
/*   1089 */	mov	x18, 2564
/*   1089 */	mov	x17, 516
	.loc 13 1034 0
..LDL7290:
/*   1034 */	cmp	w0, 5
/*   1034 */	blt	.L12151
	.loc 13 1118 0
..LDL7291:
/*   1118 */	mov	x1, x6
	.loc 13 1089 0
..LDL7292:
/*   1089 */	ptrue	p2.s, ALL
	.loc 13 1037 0
..LDL7293:
/*   1037 */	orr	x6, x2, 6917529027641081856
	.loc 13 1039 0
..LDL7294:
/*   1039 */	ld1w	{z10.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1044 0
..LDL7295:
/*   1044 */	ldr	s8, [x1, -20]	//  (*)
	.loc 13 1037 0
..LDL7296:
/*   1037 */	ld1w	{z11.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1118 0
..LDL7297:
/*   1118 */	mov	z5.d, z7.d
/*   1118 */	mov	z25.d, z6.d
/*   1053 */	ldp	s12, s17, [x1, -16]	//  (*)
/*   1118 */	mov	z27.d, z2.d
	.loc 13 1116 0
..LDL7298:
/*   1116 */	add	x30, x1, 24
	.loc 13 1089 0
..LDL7299:
/*   1089 */	ld1rw	{z30.s}, p2/z, [x1]	//  (*)
/*   1071 */	ldp	s9, s14, [x1, -8]	//  (*)
	.loc 13 1044 0
..LDL7300:
/*   1044 */	ldr	s19, [x1, 4]	//  (*)
	.loc 13 1037 0
..LDL7301:
/*   1037 */	prfm	2, [x6, 2560]	//  (*)
/*   1037 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1044 0
..LDL7302:
/*   1044 */	dup	z8.s, z8.s[0]
	.p2align 5
.L11508:					// :entr:term:swpl
	.loc 13 1117 0
..LDL7303:
/*   1117 */	add	x2, x2, x4
	.loc 13 1053 0
..LDL7304:
/*   1053 */	dup	z18.s, z12.s[0]
	.loc 13 1037 0
..LDL7305:
/*   1037 */	orr	x6, x2, 6917529027641081856
	.loc 13 1062 0
..LDL7306:
/*   1062 */	dup	z15.s, z17.s[0]
	.loc 13 1037 0
..LDL7307:
/*   1037 */	prfm	2, [x6, 2560]	//  (*)
/*   1037 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1071 0
..LDL7308:
/*   1071 */	dup	z6.s, z9.s[0]
	.loc 13 1037 0
..LDL7309:
/*   1037 */	ld1w	{z7.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL7310:
/*   1053 */	ldr	s16, [x30, -16]	//  (*)
	.loc 13 1080 0
..LDL7311:
/*   1080 */	dup	z13.s, z14.s[0]
	.loc 13 1039 0
..LDL7312:
/*   1039 */	ld1w	{z9.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1062 0
..LDL7313:
/*   1062 */	ldr	s14, [x30, -12]	//  (*)
	.loc 13 1044 0
..LDL7314:
/*   1044 */	dup	z12.s, z19.s[0]
	.loc 13 1116 0
..LDL7315:
/*   1116 */	add	x6, x30, 24
	.loc 13 1046 0
..LDL7316:
/*   1046 */	fmla	z31.s, p0/m, z8.s, z11.s
	.loc 13 1071 0
..LDL7317:
/*   1071 */	ldr	s2, [x30, -8]	//  (*)
	.loc 13 1048 0
..LDL7318:
/*   1048 */	fmla	z29.s, p1/m, z8.s, z10.s
	.loc 13 1055 0
..LDL7319:
/*   1055 */	fmla	z28.s, p0/m, z18.s, z11.s
	.loc 13 1057 0
..LDL7320:
/*   1057 */	fmla	z27.s, p1/m, z18.s, z10.s
	.loc 13 1080 0
..LDL7321:
/*   1080 */	ldr	s18, [x30, -4]	//  (*)
	.loc 13 1089 0
..LDL7322:
/*   1089 */	ptrue	p2.s, ALL
	.loc 13 1044 0
..LDL7323:
/*   1044 */	ldr	s8, [x30, 4]	//  (*)
	.loc 13 1064 0
..LDL7324:
/*   1064 */	fmla	z26.s, p0/m, z15.s, z11.s
	.loc 13 1066 0
..LDL7325:
/*   1066 */	fmla	z25.s, p1/m, z15.s, z10.s
	.loc 13 1073 0
..LDL7326:
/*   1073 */	fmla	z24.s, p0/m, z6.s, z11.s
	.loc 13 1089 0
..LDL7327:
/*   1089 */	prfm	2, [x1, x18]	//  (*)
	.loc 13 1075 0
..LDL7328:
/*   1075 */	fmla	z5.s, p1/m, z6.s, z10.s
	.loc 13 1089 0
..LDL7329:
/*   1089 */	prfm	0, [x1, x17]	//  (*)
	.loc 13 1082 0
..LDL7330:
/*   1082 */	fmla	z0.s, p0/m, z13.s, z11.s
	.loc 13 1089 0
..LDL7331:
/*   1089 */	ld1rw	{z6.s}, p2/z, [x30]	//  (*)
	.loc 13 1084 0
..LDL7332:
/*   1084 */	fmla	z1.s, p1/m, z13.s, z10.s
	.loc 13 1091 0
..LDL7333:
/*   1091 */	fmad	z11.s, p0/m, z30.s, z4.s
	.loc 13 1093 0
..LDL7334:
/*   1093 */	fmad	z10.s, p1/m, z30.s, z3.s
	.loc 13 1117 0
..LDL7335:
/*   1117 */	add	x2, x2, x4
	.loc 13 1053 0
..LDL7336:
/*   1053 */	dup	z13.s, z16.s[0]
	.loc 13 1037 0
..LDL7337:
/*   1037 */	orr	x1, x2, 6917529027641081856
	.loc 13 1062 0
..LDL7338:
/*   1062 */	dup	z17.s, z14.s[0]
	.loc 13 1037 0
..LDL7339:
/*   1037 */	prfm	2, [x1, 2560]	//  (*)
/*   1037 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1071 0
..LDL7340:
/*   1071 */	dup	z3.s, z2.s[0]
	.loc 13 1037 0
..LDL7341:
/*   1037 */	ld1w	{z4.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL7342:
/*   1053 */	ldr	s16, [x30, 8]	//  (*)
	.loc 13 1080 0
..LDL7343:
/*   1080 */	dup	z14.s, z18.s[0]
	.loc 13 1039 0
..LDL7344:
/*   1039 */	ld1w	{z2.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1062 0
..LDL7345:
/*   1062 */	ldr	s15, [x30, 12]	//  (*)
	.loc 13 1044 0
..LDL7346:
/*   1044 */	dup	z30.s, z8.s[0]
	.loc 13 1116 0
..LDL7347:
/*   1116 */	add	x1, x30, 48
	.loc 13 1046 0
..LDL7348:
/*   1046 */	fmla	z31.s, p0/m, z12.s, z7.s
	.loc 13 1071 0
..LDL7349:
/*   1071 */	ldr	s18, [x30, 16]	//  (*)
	.loc 13 1048 0
..LDL7350:
/*   1048 */	fmla	z29.s, p1/m, z12.s, z9.s
	.loc 13 1055 0
..LDL7351:
/*   1055 */	fmla	z28.s, p0/m, z13.s, z7.s
	.loc 13 1057 0
..LDL7352:
/*   1057 */	fmla	z27.s, p1/m, z13.s, z9.s
	.loc 13 1080 0
..LDL7353:
/*   1080 */	ldr	s13, [x30, 20]	//  (*)
	.loc 13 1044 0
..LDL7354:
/*   1044 */	ldr	s8, [x30, 28]	//  (*)
	.loc 13 1064 0
..LDL7355:
/*   1064 */	fmla	z26.s, p0/m, z17.s, z7.s
	.loc 13 1066 0
..LDL7356:
/*   1066 */	fmla	z25.s, p1/m, z17.s, z9.s
	.loc 13 1073 0
..LDL7357:
/*   1073 */	fmla	z24.s, p0/m, z3.s, z7.s
	.loc 13 1089 0
..LDL7358:
/*   1089 */	prfm	2, [x30, x18]	//  (*)
	.loc 13 1075 0
..LDL7359:
/*   1075 */	fmla	z5.s, p1/m, z3.s, z9.s
	.loc 13 1089 0
..LDL7360:
/*   1089 */	prfm	0, [x30, x17]	//  (*)
	.loc 13 1082 0
..LDL7361:
/*   1082 */	fmla	z0.s, p0/m, z14.s, z7.s
	.loc 13 1089 0
..LDL7362:
/*   1089 */	ld1rw	{z3.s}, p2/z, [x6]	//  (*)
	.loc 13 1084 0
..LDL7363:
/*   1084 */	fmla	z1.s, p1/m, z14.s, z9.s
	.loc 13 1091 0
..LDL7364:
/*   1091 */	fmad	z7.s, p0/m, z6.s, z11.s
	.loc 13 1093 0
..LDL7365:
/*   1093 */	fmad	z6.s, p1/m, z9.s, z10.s
	.loc 13 1117 0
..LDL7366:
/*   1117 */	add	x2, x2, x4
	.loc 13 1053 0
..LDL7367:
/*   1053 */	dup	z14.s, z16.s[0]
	.loc 13 1037 0
..LDL7368:
/*   1037 */	orr	x20, x2, 6917529027641081856
	.loc 13 1062 0
..LDL7369:
/*   1062 */	dup	z16.s, z15.s[0]
	.loc 13 1037 0
..LDL7370:
/*   1037 */	prfm	2, [x20, 2560]	//  (*)
/*   1037 */	prfm	0, [x20, 512]	//  (*)
	.loc 13 1071 0
..LDL7371:
/*   1071 */	dup	z15.s, z18.s[0]
	.loc 13 1037 0
..LDL7372:
/*   1037 */	ld1w	{z11.s}, p0/z, [x20, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL7373:
/*   1053 */	ldr	s12, [x30, 32]	//  (*)
	.loc 13 1080 0
..LDL7374:
/*   1080 */	dup	z13.s, z13.s[0]
	.loc 13 1039 0
..LDL7375:
/*   1039 */	ld1w	{z10.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1062 0
..LDL7376:
/*   1062 */	ldr	s17, [x30, 36]	//  (*)
	.loc 13 1044 0
..LDL7377:
/*   1044 */	dup	z8.s, z8.s[0]
	.loc 13 1116 0
..LDL7378:
/*   1116 */	add	x30, x30, 72
	.loc 13 1046 0
..LDL7379:
/*   1046 */	fmla	z31.s, p0/m, z30.s, z4.s
	.loc 13 1071 0
..LDL7380:
/*   1071 */	ldr	s9, [x1, -8]	//  (*)
	.loc 13 1048 0
..LDL7381:
/*   1048 */	fmla	z29.s, p1/m, z30.s, z2.s
	.loc 13 1055 0
..LDL7382:
/*   1055 */	fmla	z28.s, p0/m, z14.s, z4.s
	.loc 13 1057 0
..LDL7383:
/*   1057 */	fmla	z27.s, p1/m, z14.s, z2.s
	.loc 13 1080 0
..LDL7384:
/*   1080 */	ldr	s14, [x1, -4]	//  (*)
	.loc 13 1044 0
..LDL7385:
/*   1044 */	ldr	s19, [x30, -20]	//  (*)
	.loc 13 1064 0
..LDL7386:
/*   1064 */	fmla	z26.s, p0/m, z16.s, z4.s
	.loc 13 1066 0
..LDL7387:
/*   1066 */	fmla	z25.s, p1/m, z16.s, z2.s
	.loc 13 1073 0
..LDL7388:
/*   1073 */	fmla	z24.s, p0/m, z15.s, z4.s
	.loc 13 1089 0
..LDL7389:
/*   1089 */	prfm	2, [x6, x18]	//  (*)
	.loc 13 1075 0
..LDL7390:
/*   1075 */	fmla	z5.s, p1/m, z15.s, z2.s
	.loc 13 1089 0
..LDL7391:
/*   1089 */	prfm	0, [x6, x17]	//  (*)
	.loc 13 1082 0
..LDL7392:
/*   1082 */	fmla	z0.s, p0/m, z13.s, z4.s
	.loc 13 1089 0
..LDL7393:
/*   1089 */	ld1rw	{z30.s}, p2/z, [x1]	//  (*)
	.loc 13 1084 0
..LDL7394:
/*   1084 */	fmla	z1.s, p1/m, z13.s, z2.s
	.loc 13 1091 0
..LDL7395:
/*   1091 */	fmad	z4.s, p0/m, z3.s, z7.s
	.loc 13 1093 0
..LDL7396:
/*   1093 */	fmad	z3.s, p1/m, z2.s, z6.s
	.loc 13 1118 0
..LDL7397:
/*   1118 */	sub	w0, w0, 3
	.loc 13 1036 0
..LDL7398:
/*   1036 */	cmp	w0, 5
/*   1036 */	bge	.L11508
	.loc 13 1117 0
..LDL7399:
/*   1117 */	add	x21, x2, x4
	.loc 13 1053 0
..LDL7400:
/*   1053 */	dup	z2.s, z12.s[0]
/*   1053 */	ldr	s7, [x30, -16]	//  (*)
	.loc 13 1089 0
..LDL7401:
/*   1089 */	ptrue	p2.s, ALL
	.loc 13 1037 0
..LDL7402:
/*   1037 */	orr	x20, x21, 6917529027641081856
	.loc 13 1062 0
..LDL7403:
/*   1062 */	dup	z6.s, z17.s[0]
	.loc 13 1116 0
..LDL7404:
/*   1116 */	add	x6, x30, 24
	.loc 13 1071 0
..LDL7405:
/*   1071 */	ldr	s13, [x30, -8]	//  (*)
/*   1071 */	dup	z9.s, z9.s[0]
	.loc 13 1046 0
..LDL7406:
/*   1046 */	fmla	z31.s, p0/m, z8.s, z11.s
	.loc 13 1117 0
..LDL7407:
/*   1117 */	add	x2, x21, x4
	.loc 13 1037 0
..LDL7408:
/*   1037 */	ld1w	{z15.s}, p0/z, [x20, 0, mul vl]	//  (*)
	.loc 13 1062 0
..LDL7409:
/*   1062 */	ldr	s12, [x30, -12]	//  (*)
	.loc 13 1048 0
..LDL7410:
/*   1048 */	fmla	z29.s, p1/m, z8.s, z10.s
	.loc 13 1118 0
..LDL7411:
/*   1118 */	sub	w0, w0, 2
	.loc 13 1091 0
..LDL7412:
/*   1091 */	fmla	z4.s, p0/m, z30.s, z11.s
	.loc 13 1080 0
..LDL7413:
/*   1080 */	dup	z14.s, z14.s[0]
/*   1080 */	ldr	s16, [x30, -4]	//  (*)
	.loc 13 1093 0
..LDL7414:
/*   1093 */	fmla	z3.s, p1/m, z30.s, z10.s
	.loc 13 1039 0
..LDL7415:
/*   1039 */	ld1w	{z8.s}, p1/z, [x21, 1, mul vl]	//  (*)
	.loc 13 1044 0
..LDL7416:
/*   1044 */	dup	z30.s, z19.s[0]
	.loc 13 1089 0
..LDL7417:
/*   1089 */	ld1rw	{z17.s}, p2/z, [x30]	//  (*)
	.loc 13 1037 0
..LDL7418:
/*   1037 */	prfm	2, [x20, 2560]	//  (*)
	.loc 13 1055 0
..LDL7419:
/*   1055 */	fmla	z28.s, p0/m, z2.s, z11.s
	.loc 13 1057 0
..LDL7420:
/*   1057 */	fmad	z2.s, p1/m, z10.s, z27.s
	.loc 13 1037 0
..LDL7421:
/*   1037 */	prfm	0, [x20, 512]	//  (*)
	.loc 13 1064 0
..LDL7422:
/*   1064 */	fmla	z26.s, p0/m, z6.s, z11.s
	.loc 13 1066 0
..LDL7423:
/*   1066 */	fmad	z6.s, p1/m, z10.s, z25.s
	.loc 13 1089 0
..LDL7424:
/*   1089 */	prfm	2, [x1, x18]	//  (*)
	.loc 13 1073 0
..LDL7425:
/*   1073 */	fmla	z24.s, p0/m, z9.s, z11.s
	.loc 13 1053 0
..LDL7426:
/*   1053 */	dup	z27.s, z7.s[0]
	.loc 13 1075 0
..LDL7427:
/*   1075 */	fmla	z5.s, p1/m, z9.s, z10.s
	.loc 13 1089 0
..LDL7428:
/*   1089 */	prfm	0, [x1, x17]	//  (*)
	.loc 13 1082 0
..LDL7429:
/*   1082 */	fmla	z0.s, p0/m, z14.s, z11.s
	.loc 13 1089 0
..LDL7430:
/*   1089 */	prfm	2, [x30, x18]	//  (*)
	.loc 13 1071 0
..LDL7431:
/*   1071 */	dup	z7.s, z13.s[0]
	.loc 13 1084 0
..LDL7432:
/*   1084 */	fmla	z1.s, p1/m, z14.s, z10.s
	.loc 13 1089 0
..LDL7433:
/*   1089 */	prfm	0, [x30, x17]	//  (*)
	.loc 13 1062 0
..LDL7434:
/*   1062 */	dup	z25.s, z12.s[0]
	.loc 13 1080 0
..LDL7435:
/*   1080 */	dup	z9.s, z16.s[0]
	.loc 13 1046 0
..LDL7436:
/*   1046 */	fmla	z31.s, p0/m, z30.s, z15.s
	.loc 13 1055 0
..LDL7437:
/*   1055 */	fmla	z28.s, p0/m, z27.s, z15.s
	.loc 13 1048 0
..LDL7438:
/*   1048 */	fmla	z29.s, p1/m, z30.s, z8.s
	.loc 13 1057 0
..LDL7439:
/*   1057 */	fmla	z2.s, p1/m, z27.s, z8.s
	.loc 13 1073 0
..LDL7440:
/*   1073 */	fmla	z24.s, p0/m, z7.s, z15.s
	.loc 13 1091 0
..LDL7441:
/*   1091 */	fmla	z4.s, p0/m, z17.s, z15.s
	.loc 13 1064 0
..LDL7442:
/*   1064 */	fmla	z26.s, p0/m, z25.s, z15.s
	.loc 13 1066 0
..LDL7443:
/*   1066 */	fmla	z6.s, p1/m, z25.s, z8.s
	.loc 13 1075 0
..LDL7444:
/*   1075 */	fmad	z7.s, p1/m, z8.s, z5.s
	.loc 13 1082 0
..LDL7445:
/*   1082 */	fmla	z0.s, p0/m, z9.s, z15.s
	.loc 13 1084 0
..LDL7446:
/*   1084 */	fmla	z1.s, p1/m, z9.s, z8.s
	.loc 13 1093 0
..LDL7447:
/*   1093 */	fmla	z3.s, p1/m, z17.s, z8.s
	.loc 13 1118 0
..LDL7448:
/*   1118 */	cbz	w0, .L12148
.L12151:
	.p2align 5
.L12154:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL7449:
/*   1037 */	orr	x30, x2, 6917529027641081856
	.loc 13 1044 0
..LDL7450:
/*   1044 */	ldp	s5, s27, [x6, -20]	//  (*)
	.loc 13 1089 0
..LDL7451:
/*   1089 */	ptrue	p2.s, ALL
	.loc 13 1039 0
..LDL7452:
/*   1039 */	add	x1, x2, 64
	.loc 13 1062 0
..LDL7453:
/*   1062 */	ldp	s11, s9, [x6, -12]	//  (*)
	.loc 13 1117 0
..LDL7454:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL7455:
/*   1037 */	ld1w	{z10.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1080 0
..LDL7456:
/*   1080 */	ldr	s30, [x6, -4]	//  (*)
	.loc 13 1118 0
..LDL7457:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1039 0
..LDL7458:
/*   1039 */	ld1w	{z25.s}, p1/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1089 0
..LDL7459:
/*   1089 */	ld1rw	{z8.s}, p2/z, [x6]	//  (*)
/*   1089 */	prfm	2, [x6, x18]	//  (*)
/*   1089 */	prfm	0, [x6, x17]	//  (*)
	.loc 13 1116 0
..LDL7460:
/*   1116 */	add	x6, x6, 24
	.loc 13 1037 0
..LDL7461:
/*   1037 */	prfm	2, [x30, 2560]	//  (*)
/*   1037 */	prfm	0, [x30, 512]	//  (*)
	.loc 13 1044 0
..LDL7462:
/*   1044 */	dup	z5.s, z5.s[0]
	.loc 13 1053 0
..LDL7463:
/*   1053 */	dup	z27.s, z27.s[0]
	.loc 13 1062 0
..LDL7464:
/*   1062 */	dup	z11.s, z11.s[0]
	.loc 13 1071 0
..LDL7465:
/*   1071 */	dup	z9.s, z9.s[0]
	.loc 13 1080 0
..LDL7466:
/*   1080 */	dup	z30.s, z30.s[0]
	.loc 13 1046 0
..LDL7467:
/*   1046 */	fmla	z31.s, p0/m, z5.s, z10.s
	.loc 13 1048 0
..LDL7468:
/*   1048 */	fmla	z29.s, p1/m, z5.s, z25.s
	.loc 13 1055 0
..LDL7469:
/*   1055 */	fmla	z28.s, p0/m, z27.s, z10.s
	.loc 13 1057 0
..LDL7470:
/*   1057 */	fmla	z2.s, p1/m, z27.s, z25.s
	.loc 13 1064 0
..LDL7471:
/*   1064 */	fmla	z26.s, p0/m, z11.s, z10.s
	.loc 13 1066 0
..LDL7472:
/*   1066 */	fmla	z6.s, p1/m, z11.s, z25.s
	.loc 13 1073 0
..LDL7473:
/*   1073 */	fmla	z24.s, p0/m, z9.s, z10.s
	.loc 13 1075 0
..LDL7474:
/*   1075 */	fmla	z7.s, p1/m, z9.s, z25.s
	.loc 13 1082 0
..LDL7475:
/*   1082 */	fmla	z0.s, p0/m, z30.s, z10.s
	.loc 13 1084 0
..LDL7476:
/*   1084 */	fmla	z1.s, p1/m, z30.s, z25.s
	.loc 13 1091 0
..LDL7477:
/*   1091 */	fmla	z4.s, p0/m, z8.s, z10.s
	.loc 13 1093 0
..LDL7478:
/*   1093 */	fmla	z3.s, p1/m, z8.s, z25.s
	.loc 13 1118 0 is_stmt 0
..LDL7479:
/*   1118 */	bne	.L12154
.L12148:
.L11510:
	.loc 13 1123 0 is_stmt 1
..LDL7480:
/*   1123 */	st1w	{z31.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL7481:
/*   1125 */	st1w	{z29.s}, p1, [x15, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL7482:
/*   1131 */	st1w	{z28.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1133 0
..LDL7483:
/*   1133 */	st1w	{z2.s}, p1, [x13, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL7484:
/*   1139 */	st1w	{z26.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1141 0
..LDL7485:
/*   1141 */	st1w	{z6.s}, p1, [x11, 0, mul vl]	//  (*)
	.loc 13 1147 0
..LDL7486:
/*   1147 */	st1w	{z24.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1149 0
..LDL7487:
/*   1149 */	st1w	{z7.s}, p1, [x9, 0, mul vl]	//  (*)
	.loc 13 1155 0
..LDL7488:
/*   1155 */	st1w	{z0.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1157 0
..LDL7489:
/*   1157 */	st1w	{z1.s}, p1, [x16, 0, mul vl]	//  (*)
	.loc 13 1163 0
..LDL7490:
/*   1163 */	st1w	{z4.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1165 0
..LDL7491:
/*   1165 */	st1w	{z3.s}, p1, [x5, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL7492:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldr	x21, [x29, -24]	//  (*)
	.cfi_restore 21
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 13
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D44.pchi:
	.cfi_endproc
.LFE43:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi6ELi48EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi6ELi48EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi6ELi48EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi6ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi6ELi48EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi6ELi48EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL7493:
.LFB44:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -13
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xe8,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 64
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x50,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x18,0xb,0x11,0x58,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x25, x26, [x29, -64]	//  (*)
	.cfi_escape 0x10,0x19,0xb,0x11,0x40,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1a,0xb,0x11,0x48,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL7494:
/*    971 */	ld1w	{z11.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL7495:
/*    987 */	add	w9, w4, w4
	.loc 13 1011 0
..LDL7496:
/*   1011 */	add	w5, w4, w4, lsl #2
	.loc 13 995 0
..LDL7497:
/*    995 */	add	w8, w9, w4
	.loc 13 1003 0
..LDL7498:
/*   1003 */	lsl	w7, w4, 2
	.loc 13 979 0
..LDL7499:
/*    979 */	sxtw	x30, w4
	.loc 13 1003 0
..LDL7500:
/*   1003 */	sxtw	x10, w7
	.loc 13 987 0
..LDL7501:
/*    987 */	sxtw	x16, w9
	.loc 13 995 0
..LDL7502:
/*    995 */	sxtw	x13, w8
	.loc 13 981 0
..LDL7503:
/*    981 */	add	x14, x30, 16
	.loc 13 1011 0
..LDL7504:
/*   1011 */	sxtw	x7, w5
	.loc 13 983 0
..LDL7505:
/*    983 */	add	x15, x30, 32
	.loc 13 989 0
..LDL7506:
/*    989 */	add	x17, x16, 16
	.loc 13 991 0
..LDL7507:
/*    991 */	add	x18, x16, 32
	.loc 13 997 0
..LDL7508:
/*    997 */	add	x12, x13, 16
	.loc 13 999 0
..LDL7509:
/*    999 */	add	x11, x13, 32
	.loc 13 1005 0
..LDL7510:
/*   1005 */	add	x9, x10, 16
	.loc 13 1007 0
..LDL7511:
/*   1007 */	add	x8, x10, 32
	.loc 13 1013 0
..LDL7512:
/*   1013 */	add	x5, x7, 16
	.loc 13 1015 0
..LDL7513:
/*   1015 */	add	x4, x7, 32
	.loc 13 973 0
..LDL7514:
/*    973 */	add	x20, x3, 64
	.loc 13 979 0
..LDL7515:
/*    979 */	add	x21, x3, x30, lsl #2
	.loc 13 973 0
..LDL7516:
/*    973 */	ld1w	{z31.s}, p1/z, [x20, 0, mul vl]	//  (*)
	.loc 13 975 0
..LDL7517:
/*    975 */	add	x30, x3, 128
/*    975 */	ld1w	{z10.s}, p2/z, [x30, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL7518:
/*    981 */	add	x14, x3, x14, lsl #2
	.loc 13 979 0
..LDL7519:
/*    979 */	ld1w	{z30.s}, p0/z, [x21, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL7520:
/*    981 */	ld1w	{z29.s}, p1/z, [x14, 0, mul vl]	//  (*)
	.loc 13 983 0
..LDL7521:
/*    983 */	add	x15, x3, x15, lsl #2
/*    983 */	ld1w	{z5.s}, p2/z, [x15, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL7522:
/*    987 */	add	x16, x3, x16, lsl #2
/*    987 */	ld1w	{z28.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 989 0
..LDL7523:
/*    989 */	add	x17, x3, x17, lsl #2
/*    989 */	ld1w	{z27.s}, p1/z, [x17, 0, mul vl]	//  (*)
	.loc 13 991 0
..LDL7524:
/*    991 */	add	x18, x3, x18, lsl #2
/*    991 */	ld1w	{z26.s}, p2/z, [x18, 0, mul vl]	//  (*)
	.loc 13 995 0
..LDL7525:
/*    995 */	add	x13, x3, x13, lsl #2
/*    995 */	ld1w	{z9.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 997 0
..LDL7526:
/*    997 */	add	x12, x3, x12, lsl #2
/*    997 */	ld1w	{z8.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 999 0
..LDL7527:
/*    999 */	add	x11, x3, x11, lsl #2
/*    999 */	ld1w	{z12.s}, p2/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1003 0
..LDL7528:
/*   1003 */	add	x10, x3, x10, lsl #2
/*   1003 */	ld1w	{z25.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1005 0
..LDL7529:
/*   1005 */	add	x9, x3, x9, lsl #2
/*   1005 */	ld1w	{z24.s}, p1/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1007 0
..LDL7530:
/*   1007 */	add	x8, x3, x8, lsl #2
/*   1007 */	ld1w	{z7.s}, p2/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1011 0
..LDL7531:
/*   1011 */	add	x7, x3, x7, lsl #2
/*   1011 */	ld1w	{z6.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1013 0
..LDL7532:
/*   1013 */	add	x5, x3, x5, lsl #2
/*   1013 */	ld1w	{z4.s}, p1/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1015 0
..LDL7533:
/*   1015 */	add	x22, x3, x4, lsl #2
/*   1015 */	ld1w	{z1.s}, p2/z, [x22, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL7534:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11518
	.loc 13 1117 0 is_stmt 0
..LDL7535:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL7536:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x23, x1, 20
	.loc 13 1089 0
..LDL7537:
/*   1089 */	mov	x1, 2564
/*   1089 */	mov	x6, 516
	.loc 13 1034 0
..LDL7538:
/*   1034 */	cmp	w0, 3
/*   1034 */	blt	.L12162
	.loc 13 1118 0
..LDL7539:
/*   1118 */	mov	x24, x23
	.loc 13 1037 0
..LDL7540:
/*   1037 */	orr	x25, x2, 6917529027641081856
/*   1044 */	ldp	s18, s16, [x24, -20]	//  (*)
	.loc 13 1039 0
..LDL7541:
/*   1039 */	add	x23, x2, 64
	.loc 13 1037 0
..LDL7542:
/*   1037 */	prfm	2, [x25, 2560]	//  (*)
	.loc 13 1062 0
..LDL7543:
/*   1062 */	ldr	s17, [x24, -12]	//  (*)
	.loc 13 1037 0
..LDL7544:
/*   1037 */	prfm	0, [x25, 512]	//  (*)
	.p2align 5
.L11516:					// :entr:term:swpl
/*   1037 */	ld1w	{z14.s}, p0/z, [x25, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL7545:
/*   1039 */	ld1w	{z3.s}, p1/z, [x23, 0, mul vl]	//  (*)
	.loc 13 1041 0
..LDL7546:
/*   1041 */	ld1w	{z0.s}, p2/z, [x2, 2, mul vl]	//  (*)
/*   1071 */	ldp	s19, s15, [x24, -8]	//  (*)
	.loc 13 1089 0
..LDL7547:
/*   1089 */	ptrue	p3.s, ALL
	.loc 13 1044 0
..LDL7548:
/*   1044 */	dup	z18.s, z18.s[0]
	.loc 13 1053 0
..LDL7549:
/*   1053 */	dup	z13.s, z16.s[0]
	.loc 13 1062 0
..LDL7550:
/*   1062 */	dup	z17.s, z17.s[0]
	.loc 13 1089 0
..LDL7551:
/*   1089 */	ld1rw	{z2.s}, p3/z, [x24]	//  (*)
	.loc 13 1071 0
..LDL7552:
/*   1071 */	dup	z16.s, z19.s[0]
	.loc 13 1080 0
..LDL7553:
/*   1080 */	dup	z15.s, z15.s[0]
	.loc 13 1046 0
..LDL7554:
/*   1046 */	fmla	z11.s, p0/m, z18.s, z14.s
	.loc 13 1048 0
..LDL7555:
/*   1048 */	fmla	z31.s, p1/m, z18.s, z3.s
	.loc 13 1117 0
..LDL7556:
/*   1117 */	add	x2, x2, x4
	.loc 13 1050 0
..LDL7557:
/*   1050 */	fmla	z10.s, p2/m, z18.s, z0.s
	.loc 13 1055 0
..LDL7558:
/*   1055 */	fmla	z30.s, p0/m, z13.s, z14.s
	.loc 13 1037 0
..LDL7559:
/*   1037 */	orr	x23, x2, 6917529027641081856
	.loc 13 1057 0
..LDL7560:
/*   1057 */	fmla	z29.s, p1/m, z13.s, z3.s
	.loc 13 1064 0
..LDL7561:
/*   1064 */	fmla	z28.s, p0/m, z17.s, z14.s
	.loc 13 1037 0
..LDL7562:
/*   1037 */	prfm	2, [x23, 2560]	//  (*)
	.loc 13 1066 0
..LDL7563:
/*   1066 */	fmla	z27.s, p1/m, z17.s, z3.s
	.loc 13 1068 0
..LDL7564:
/*   1068 */	fmla	z26.s, p2/m, z17.s, z0.s
	.loc 13 1116 0
..LDL7565:
/*   1116 */	add	x26, x24, 24
	.loc 13 1073 0
..LDL7566:
/*   1073 */	fmla	z9.s, p0/m, z16.s, z14.s
	.loc 13 1075 0
..LDL7567:
/*   1075 */	fmla	z8.s, p1/m, z16.s, z3.s
	.loc 13 1044 0
..LDL7568:
/*   1044 */	ldr	s18, [x24, 4]	//  (*)
	.loc 13 1077 0
..LDL7569:
/*   1077 */	fmla	z12.s, p2/m, z16.s, z0.s
	.loc 13 1082 0
..LDL7570:
/*   1082 */	fmla	z25.s, p0/m, z15.s, z14.s
/*   1053 */	ldp	s16, s17, [x24, 8]	//  (*)
	.loc 13 1084 0
..LDL7571:
/*   1084 */	fmla	z24.s, p1/m, z15.s, z3.s
	.loc 13 1086 0
..LDL7572:
/*   1086 */	fmla	z7.s, p2/m, z15.s, z0.s
	.loc 13 1089 0
..LDL7573:
/*   1089 */	prfm	2, [x24, x1]	//  (*)
/*   1089 */	prfm	0, [x24, x6]	//  (*)
	.loc 13 1091 0
..LDL7574:
/*   1091 */	fmla	z6.s, p0/m, z2.s, z14.s
	.loc 13 1059 0
..LDL7575:
/*   1059 */	fmla	z5.s, p2/m, z13.s, z0.s
	.loc 13 1093 0
..LDL7576:
/*   1093 */	fmad	z3.s, p1/m, z2.s, z4.s
	.loc 13 1095 0
..LDL7577:
/*   1095 */	fmad	z2.s, p2/m, z0.s, z1.s
	.loc 13 1037 0
..LDL7578:
/*   1037 */	prfm	0, [x23, 512]	//  (*)
/*   1037 */	ld1w	{z14.s}, p0/z, [x23, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL7579:
/*   1039 */	ld1w	{z4.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1041 0
..LDL7580:
/*   1041 */	ld1w	{z0.s}, p2/z, [x2, 2, mul vl]	//  (*)
/*   1071 */	ldp	s19, s15, [x24, 16]	//  (*)
	.loc 13 1044 0
..LDL7581:
/*   1044 */	dup	z18.s, z18.s[0]
	.loc 13 1053 0
..LDL7582:
/*   1053 */	dup	z13.s, z16.s[0]
	.loc 13 1062 0
..LDL7583:
/*   1062 */	dup	z17.s, z17.s[0]
	.loc 13 1089 0
..LDL7584:
/*   1089 */	ld1rw	{z1.s}, p3/z, [x26]	//  (*)
	.loc 13 1071 0
..LDL7585:
/*   1071 */	dup	z16.s, z19.s[0]
	.loc 13 1080 0
..LDL7586:
/*   1080 */	dup	z15.s, z15.s[0]
	.loc 13 1046 0
..LDL7587:
/*   1046 */	fmla	z11.s, p0/m, z18.s, z14.s
	.loc 13 1048 0
..LDL7588:
/*   1048 */	fmla	z31.s, p1/m, z18.s, z4.s
	.loc 13 1117 0
..LDL7589:
/*   1117 */	add	x2, x2, x4
	.loc 13 1050 0
..LDL7590:
/*   1050 */	fmla	z10.s, p2/m, z18.s, z0.s
	.loc 13 1055 0
..LDL7591:
/*   1055 */	fmla	z30.s, p0/m, z13.s, z14.s
	.loc 13 1037 0
..LDL7592:
/*   1037 */	orr	x25, x2, 6917529027641081856
	.loc 13 1057 0
..LDL7593:
/*   1057 */	fmla	z29.s, p1/m, z13.s, z4.s
	.loc 13 1064 0
..LDL7594:
/*   1064 */	fmla	z28.s, p0/m, z17.s, z14.s
	.loc 13 1037 0
..LDL7595:
/*   1037 */	prfm	2, [x25, 2560]	//  (*)
	.loc 13 1066 0
..LDL7596:
/*   1066 */	fmla	z27.s, p1/m, z17.s, z4.s
	.loc 13 1068 0
..LDL7597:
/*   1068 */	fmla	z26.s, p2/m, z17.s, z0.s
	.loc 13 1116 0
..LDL7598:
/*   1116 */	add	x24, x24, 48
	.loc 13 1073 0
..LDL7599:
/*   1073 */	fmla	z9.s, p0/m, z16.s, z14.s
	.loc 13 1075 0
..LDL7600:
/*   1075 */	fmla	z8.s, p1/m, z16.s, z4.s
	.loc 13 1044 0
..LDL7601:
/*   1044 */	ldr	s18, [x24, -20]	//  (*)
	.loc 13 1039 0
..LDL7602:
/*   1039 */	add	x23, x2, 64
	.loc 13 1077 0
..LDL7603:
/*   1077 */	fmla	z12.s, p2/m, z16.s, z0.s
	.loc 13 1082 0
..LDL7604:
/*   1082 */	fmla	z25.s, p0/m, z15.s, z14.s
/*   1053 */	ldp	s16, s17, [x24, -16]	//  (*)
	.loc 13 1084 0
..LDL7605:
/*   1084 */	fmla	z24.s, p1/m, z15.s, z4.s
	.loc 13 1086 0
..LDL7606:
/*   1086 */	fmla	z7.s, p2/m, z15.s, z0.s
	.loc 13 1089 0
..LDL7607:
/*   1089 */	prfm	2, [x26, x1]	//  (*)
/*   1089 */	prfm	0, [x26, x6]	//  (*)
	.loc 13 1091 0
..LDL7608:
/*   1091 */	fmla	z6.s, p0/m, z1.s, z14.s
	.loc 13 1059 0
..LDL7609:
/*   1059 */	fmla	z5.s, p2/m, z13.s, z0.s
	.loc 13 1093 0
..LDL7610:
/*   1093 */	fmad	z4.s, p1/m, z1.s, z3.s
	.loc 13 1095 0
..LDL7611:
/*   1095 */	fmad	z1.s, p2/m, z0.s, z2.s
	.loc 13 1037 0
..LDL7612:
/*   1037 */	prfm	0, [x25, 512]	//  (*)
	.loc 13 1118 0
..LDL7613:
/*   1118 */	sub	w0, w0, 2
	.loc 13 1036 0
..LDL7614:
/*   1036 */	cmp	w0, 3
/*   1036 */	bge	.L11516
	.loc 13 1071 0
..LDL7615:
/*   1071 */	ldr	s14, [x24, -8]	//  (*)
	.loc 13 1089 0
..LDL7616:
/*   1089 */	ptrue	p3.s, ALL
	.loc 13 1053 0
..LDL7617:
/*   1053 */	dup	z13.s, z16.s[0]
	.loc 13 1118 0
..LDL7618:
/*   1118 */	sub	w0, w0, 1
	.loc 13 1080 0
..LDL7619:
/*   1080 */	ldr	s15, [x24, -4]	//  (*)
	.loc 13 1062 0
..LDL7620:
/*   1062 */	dup	z16.s, z17.s[0]
	.loc 13 1037 0
..LDL7621:
/*   1037 */	ld1w	{z0.s}, p0/z, [x25, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL7622:
/*   1039 */	ld1w	{z2.s}, p1/z, [x23, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL7623:
/*   1044 */	dup	z18.s, z18.s[0]
	.loc 13 1116 0
..LDL7624:
/*   1116 */	add	x23, x24, 24
	.loc 13 1041 0
..LDL7625:
/*   1041 */	ld1w	{z3.s}, p2/z, [x2, 2, mul vl]	//  (*)
	.loc 13 1089 0
..LDL7626:
/*   1089 */	ld1rw	{z17.s}, p3/z, [x24]	//  (*)
	.loc 13 1117 0
..LDL7627:
/*   1117 */	add	x2, x2, x4
	.loc 13 1089 0
..LDL7628:
/*   1089 */	prfm	2, [x24, x1]	//  (*)
/*   1089 */	prfm	0, [x24, x6]	//  (*)
	.loc 13 1071 0
..LDL7629:
/*   1071 */	dup	z14.s, z14.s[0]
	.loc 13 1080 0
..LDL7630:
/*   1080 */	dup	z15.s, z15.s[0]
	.loc 13 1046 0
..LDL7631:
/*   1046 */	fmla	z11.s, p0/m, z18.s, z0.s
	.loc 13 1048 0
..LDL7632:
/*   1048 */	fmla	z31.s, p1/m, z18.s, z2.s
	.loc 13 1050 0
..LDL7633:
/*   1050 */	fmla	z10.s, p2/m, z18.s, z3.s
	.loc 13 1055 0
..LDL7634:
/*   1055 */	fmla	z30.s, p0/m, z13.s, z0.s
	.loc 13 1057 0
..LDL7635:
/*   1057 */	fmla	z29.s, p1/m, z13.s, z2.s
	.loc 13 1064 0
..LDL7636:
/*   1064 */	fmla	z28.s, p0/m, z16.s, z0.s
	.loc 13 1066 0
..LDL7637:
/*   1066 */	fmla	z27.s, p1/m, z16.s, z2.s
	.loc 13 1068 0
..LDL7638:
/*   1068 */	fmla	z26.s, p2/m, z16.s, z3.s
	.loc 13 1073 0
..LDL7639:
/*   1073 */	fmla	z9.s, p0/m, z14.s, z0.s
	.loc 13 1075 0
..LDL7640:
/*   1075 */	fmla	z8.s, p1/m, z14.s, z2.s
	.loc 13 1077 0
..LDL7641:
/*   1077 */	fmla	z12.s, p2/m, z14.s, z3.s
	.loc 13 1082 0
..LDL7642:
/*   1082 */	fmla	z25.s, p0/m, z15.s, z0.s
	.loc 13 1084 0
..LDL7643:
/*   1084 */	fmla	z24.s, p1/m, z15.s, z2.s
	.loc 13 1086 0
..LDL7644:
/*   1086 */	fmla	z7.s, p2/m, z15.s, z3.s
	.loc 13 1091 0
..LDL7645:
/*   1091 */	fmla	z6.s, p0/m, z17.s, z0.s
	.loc 13 1059 0
..LDL7646:
/*   1059 */	fmla	z5.s, p2/m, z13.s, z3.s
	.loc 13 1093 0
..LDL7647:
/*   1093 */	fmla	z4.s, p1/m, z17.s, z2.s
	.loc 13 1095 0
..LDL7648:
/*   1095 */	fmla	z1.s, p2/m, z17.s, z3.s
	.loc 13 1118 0
..LDL7649:
/*   1118 */	cbz	w0, .L12159
.L12162:
	.p2align 5
.L12165:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL7650:
/*   1037 */	orr	x26, x2, 6917529027641081856
	.loc 13 1044 0
..LDL7651:
/*   1044 */	ldp	s17, s13, [x23, -20]	//  (*)
	.loc 13 1089 0
..LDL7652:
/*   1089 */	ptrue	p3.s, ALL
	.loc 13 1039 0
..LDL7653:
/*   1039 */	add	x25, x2, 64
	.loc 13 1041 0
..LDL7654:
/*   1041 */	add	x24, x2, 128
	.loc 13 1062 0
..LDL7655:
/*   1062 */	ldp	s18, s16, [x23, -12]	//  (*)
	.loc 13 1037 0
..LDL7656:
/*   1037 */	ld1w	{z2.s}, p0/z, [x26, 0, mul vl]	//  (*)
	.loc 13 1080 0
..LDL7657:
/*   1080 */	ldr	s14, [x23, -4]	//  (*)
	.loc 13 1117 0
..LDL7658:
/*   1117 */	add	x2, x2, x4
	.loc 13 1118 0
..LDL7659:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1039 0
..LDL7660:
/*   1039 */	ld1w	{z15.s}, p1/z, [x25, 0, mul vl]	//  (*)
	.loc 13 1041 0
..LDL7661:
/*   1041 */	ld1w	{z3.s}, p2/z, [x24, 0, mul vl]	//  (*)
	.loc 13 1089 0
..LDL7662:
/*   1089 */	prfm	2, [x23, x1]	//  (*)
/*   1089 */	ld1rw	{z0.s}, p3/z, [x23]	//  (*)
	.loc 13 1037 0
..LDL7663:
/*   1037 */	prfm	2, [x26, 2560]	//  (*)
	.loc 13 1089 0
..LDL7664:
/*   1089 */	prfm	0, [x23, x6]	//  (*)
	.loc 13 1116 0
..LDL7665:
/*   1116 */	add	x23, x23, 24
	.loc 13 1037 0
..LDL7666:
/*   1037 */	prfm	0, [x26, 512]	//  (*)
	.loc 13 1044 0
..LDL7667:
/*   1044 */	dup	z17.s, z17.s[0]
	.loc 13 1053 0
..LDL7668:
/*   1053 */	dup	z13.s, z13.s[0]
	.loc 13 1062 0
..LDL7669:
/*   1062 */	dup	z18.s, z18.s[0]
	.loc 13 1071 0
..LDL7670:
/*   1071 */	dup	z16.s, z16.s[0]
	.loc 13 1080 0
..LDL7671:
/*   1080 */	dup	z14.s, z14.s[0]
	.loc 13 1046 0
..LDL7672:
/*   1046 */	fmla	z11.s, p0/m, z17.s, z2.s
	.loc 13 1048 0
..LDL7673:
/*   1048 */	fmla	z31.s, p1/m, z17.s, z15.s
	.loc 13 1050 0
..LDL7674:
/*   1050 */	fmla	z10.s, p2/m, z17.s, z3.s
	.loc 13 1055 0
..LDL7675:
/*   1055 */	fmla	z30.s, p0/m, z13.s, z2.s
	.loc 13 1057 0
..LDL7676:
/*   1057 */	fmla	z29.s, p1/m, z13.s, z15.s
	.loc 13 1059 0
..LDL7677:
/*   1059 */	fmla	z5.s, p2/m, z13.s, z3.s
	.loc 13 1064 0
..LDL7678:
/*   1064 */	fmla	z28.s, p0/m, z18.s, z2.s
	.loc 13 1066 0
..LDL7679:
/*   1066 */	fmla	z27.s, p1/m, z18.s, z15.s
	.loc 13 1068 0
..LDL7680:
/*   1068 */	fmla	z26.s, p2/m, z18.s, z3.s
	.loc 13 1073 0
..LDL7681:
/*   1073 */	fmla	z9.s, p0/m, z16.s, z2.s
	.loc 13 1075 0
..LDL7682:
/*   1075 */	fmla	z8.s, p1/m, z16.s, z15.s
	.loc 13 1077 0
..LDL7683:
/*   1077 */	fmla	z12.s, p2/m, z16.s, z3.s
	.loc 13 1082 0
..LDL7684:
/*   1082 */	fmla	z25.s, p0/m, z14.s, z2.s
	.loc 13 1084 0
..LDL7685:
/*   1084 */	fmla	z24.s, p1/m, z14.s, z15.s
	.loc 13 1086 0
..LDL7686:
/*   1086 */	fmla	z7.s, p2/m, z14.s, z3.s
	.loc 13 1091 0
..LDL7687:
/*   1091 */	fmla	z6.s, p0/m, z0.s, z2.s
	.loc 13 1093 0
..LDL7688:
/*   1093 */	fmla	z4.s, p1/m, z0.s, z15.s
	.loc 13 1095 0
..LDL7689:
/*   1095 */	fmla	z1.s, p2/m, z0.s, z3.s
	.loc 13 1118 0 is_stmt 0
..LDL7690:
/*   1118 */	bne	.L12165
.L12159:
.L11518:
	.loc 13 1123 0 is_stmt 1
..LDL7691:
/*   1123 */	st1w	{z11.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL7692:
/*   1125 */	st1w	{z31.s}, p1, [x20, 0, mul vl]	//  (*)
	.loc 13 1127 0
..LDL7693:
/*   1127 */	st1w	{z10.s}, p2, [x30, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL7694:
/*   1131 */	st1w	{z30.s}, p0, [x21, 0, mul vl]	//  (*)
	.loc 13 1133 0
..LDL7695:
/*   1133 */	st1w	{z29.s}, p1, [x14, 0, mul vl]	//  (*)
	.loc 13 1135 0
..LDL7696:
/*   1135 */	st1w	{z5.s}, p2, [x15, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL7697:
/*   1139 */	st1w	{z28.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 1141 0
..LDL7698:
/*   1141 */	st1w	{z27.s}, p1, [x17, 0, mul vl]	//  (*)
	.loc 13 1143 0
..LDL7699:
/*   1143 */	st1w	{z26.s}, p2, [x18, 0, mul vl]	//  (*)
	.loc 13 1147 0
..LDL7700:
/*   1147 */	st1w	{z9.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 1149 0
..LDL7701:
/*   1149 */	st1w	{z8.s}, p1, [x12, 0, mul vl]	//  (*)
	.loc 13 1151 0
..LDL7702:
/*   1151 */	st1w	{z12.s}, p2, [x11, 0, mul vl]	//  (*)
	.loc 13 1155 0
..LDL7703:
/*   1155 */	st1w	{z25.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1157 0
..LDL7704:
/*   1157 */	st1w	{z24.s}, p1, [x9, 0, mul vl]	//  (*)
	.loc 13 1159 0
..LDL7705:
/*   1159 */	st1w	{z7.s}, p2, [x8, 0, mul vl]	//  (*)
	.loc 13 1163 0
..LDL7706:
/*   1163 */	st1w	{z6.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1165 0
..LDL7707:
/*   1165 */	st1w	{z4.s}, p1, [x5, 0, mul vl]	//  (*)
	.loc 13 1167 0
..LDL7708:
/*   1167 */	st1w	{z1.s}, p2, [x22, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL7709:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [x29, -64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 13
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D45.pchi:
	.cfi_endproc
.LFE44:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi6ELi48EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi6ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL7710:
.LFB45:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -16
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0x80,0x1,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x78,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z20, [x29, 13, mul vl]	//  (*)
	.cfi_escape 0x10,0x74,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z21, [x29, 14, mul vl]	//  (*)
	.cfi_escape 0x10,0x75,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z22, [x29, 15, mul vl]	//  (*)
	.cfi_escape 0x10,0x76,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL7711:
/*    971 */	ld1w	{z9.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL7712:
/*    987 */	add	w9, w4, w4
	.loc 13 1011 0
..LDL7713:
/*   1011 */	add	w5, w4, w4, lsl #2
	.loc 13 995 0
..LDL7714:
/*    995 */	add	w8, w9, w4
	.loc 13 1003 0
..LDL7715:
/*   1003 */	lsl	w7, w4, 2
	.loc 13 979 0
..LDL7716:
/*    979 */	sxtw	x10, w4
	.loc 13 1019 0
..LDL7717:
/*   1019 */	add	w4, w8, w8
	.loc 13 987 0
..LDL7718:
/*    987 */	sxtw	x9, w9
	.loc 13 995 0
..LDL7719:
/*    995 */	sxtw	x8, w8
	.loc 13 1003 0
..LDL7720:
/*   1003 */	sxtw	x7, w7
	.loc 13 1011 0
..LDL7721:
/*   1011 */	sxtw	x5, w5
	.loc 13 1019 0
..LDL7722:
/*   1019 */	sxtw	x4, w4
	.loc 13 979 0
..LDL7723:
/*    979 */	add	x10, x3, x10, lsl #2
/*    979 */	ld1w	{z31.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL7724:
/*    987 */	add	x9, x3, x9, lsl #2
/*    987 */	ld1w	{z25.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 995 0
..LDL7725:
/*    995 */	add	x8, x3, x8, lsl #2
/*    995 */	ld1w	{z24.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1003 0
..LDL7726:
/*   1003 */	add	x7, x3, x7, lsl #2
/*   1003 */	ld1w	{z6.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1011 0
..LDL7727:
/*   1011 */	add	x11, x3, x5, lsl #2
/*   1011 */	ld1w	{z4.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1019 0
..LDL7728:
/*   1019 */	add	x12, x3, x4, lsl #2
/*   1019 */	ld1w	{z1.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL7729:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11526
	.loc 13 1117 0 is_stmt 0
..LDL7730:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL7731:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x1, x1, 24
	.loc 13 1034 0
..LDL7732:
/*   1034 */	cmp	w0, 6
/*   1034 */	blt	.L12173
	.loc 13 1118 0
..LDL7733:
/*   1118 */	mov	x6, x1
	.loc 13 1098 0
..LDL7734:
/*   1098 */	ptrue	p1.s, ALL
	.loc 13 1037 0
..LDL7735:
/*   1037 */	orr	x13, x2, 6917529027641081856
/*   1044 */	ldp	s26, s5, [x6, -24]	//  (*)
	.loc 13 1117 0
..LDL7736:
/*   1117 */	add	x2, x2, x4
	.loc 13 1116 0
..LDL7737:
/*   1116 */	add	x5, x6, 28
/*   1062 */	ldp	s7, s0, [x6, -16]	//  (*)
	.loc 13 1037 0
..LDL7738:
/*   1037 */	orr	x14, x2, 6917529027641081856
	.loc 13 1116 0
..LDL7739:
/*   1116 */	add	x1, x6, 56
	.loc 13 1037 0
..LDL7740:
/*   1037 */	ld1w	{z10.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1080 0
..LDL7741:
/*   1080 */	ldr	s3, [x6, -8]	//  (*)
	.loc 13 1098 0
..LDL7742:
/*   1098 */	ld1rw	{z2.s}, p1/z, [x6]	//  (*)
	.loc 13 1037 0
..LDL7743:
/*   1037 */	ld1w	{z30.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1044 0
..LDL7744:
/*   1044 */	ldr	s11, [x6, 4]	//  (*)
	.loc 13 1089 0
..LDL7745:
/*   1089 */	ldr	s12, [x6, -4]	//  (*)
/*   1053 */	ldp	s14, s15, [x6, 8]	//  (*)
/*   1071 */	ldp	s16, s29, [x6, 16]	//  (*)
	.loc 13 1037 0
..LDL7746:
/*   1037 */	prfm	2, [x13, 2560]	//  (*)
/*   1037 */	prfm	0, [x13, 512]	//  (*)
	.loc 13 1044 0
..LDL7747:
/*   1044 */	dup	z13.s, z26.s[0]
	.loc 13 1037 0
..LDL7748:
/*   1037 */	prfm	2, [x14, 2560]	//  (*)
	.loc 13 1053 0
..LDL7749:
/*   1053 */	dup	z8.s, z5.s[0]
	.loc 13 1037 0
..LDL7750:
/*   1037 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 1062 0
..LDL7751:
/*   1062 */	dup	z26.s, z7.s[0]
	.loc 13 1071 0
..LDL7752:
/*   1071 */	dup	z7.s, z0.s[0]
	.loc 13 1080 0
..LDL7753:
/*   1080 */	dup	z5.s, z3.s[0]
	.p2align 5
.L11524:					// :entr:term:swpl
	.loc 13 1044 0
..LDL7754:
/*   1044 */	ldr	s21, [x1, -24]	//  (*)
	.loc 13 1117 0
..LDL7755:
/*   1117 */	add	x2, x2, x4
	.loc 13 1089 0
..LDL7756:
/*   1089 */	ldr	s0, [x5, -4]	//  (*)
/*   1089 */	dup	z3.s, z12.s[0]
	.loc 13 1044 0
..LDL7757:
/*   1044 */	dup	z27.s, z11.s[0]
	.loc 13 1046 0
..LDL7758:
/*   1046 */	fmla	z9.s, p0/m, z13.s, z10.s
	.loc 13 1037 0
..LDL7759:
/*   1037 */	orr	x13, x2, 6917529027641081856
	.loc 13 1098 0
..LDL7760:
/*   1098 */	ptrue	p1.s, ALL
	.loc 13 1053 0
..LDL7761:
/*   1053 */	ldr	s12, [x1, -20]	//  (*)
/*   1053 */	dup	z28.s, z14.s[0]
	.loc 13 1055 0
..LDL7762:
/*   1055 */	fmla	z31.s, p0/m, z8.s, z10.s
	.loc 13 1037 0
..LDL7763:
/*   1037 */	prfm	2, [x13, 2560]	//  (*)
/*   1037 */	prfm	0, [x13, 512]	//  (*)
	.loc 13 1062 0
..LDL7764:
/*   1062 */	ldr	s18, [x1, -16]	//  (*)
/*   1062 */	dup	z14.s, z15.s[0]
	.loc 13 1071 0
..LDL7765:
/*   1071 */	ldr	s20, [x1, -12]	//  (*)
/*   1071 */	dup	z13.s, z16.s[0]
	.loc 13 1064 0
..LDL7766:
/*   1064 */	fmla	z25.s, p0/m, z26.s, z10.s
	.loc 13 1098 0
..LDL7767:
/*   1098 */	ld1rw	{z15.s}, p1/z, [x5]	//  (*)
	.loc 13 1037 0
..LDL7768:
/*   1037 */	ld1w	{z11.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1073 0
..LDL7769:
/*   1073 */	fmad	z7.s, p0/m, z10.s, z24.s
	.loc 13 1080 0
..LDL7770:
/*   1080 */	ldr	s22, [x1, -8]	//  (*)
/*   1080 */	dup	z29.s, z29.s[0]
	.loc 13 1082 0
..LDL7771:
/*   1082 */	fmad	z5.s, p0/m, z10.s, z6.s
	.loc 13 1116 0
..LDL7772:
/*   1116 */	add	x13, x1, 28
	.loc 13 1091 0
..LDL7773:
/*   1091 */	fmad	z3.s, p0/m, z10.s, z4.s
	.loc 13 1098 0
..LDL7774:
/*   1098 */	prfm	2, [x6, 2560]	//  (*)
/*   1098 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1100 0
..LDL7775:
/*   1100 */	fmad	z2.s, p0/m, z10.s, z1.s
	.loc 13 1044 0
..LDL7776:
/*   1044 */	ldr	s19, [x1, 4]	//  (*)
	.loc 13 1117 0
..LDL7777:
/*   1117 */	add	x2, x2, x4
	.loc 13 1089 0
..LDL7778:
/*   1089 */	ldr	s10, [x1, -4]	//  (*)
/*   1089 */	dup	z17.s, z0.s[0]
	.loc 13 1044 0
..LDL7779:
/*   1044 */	dup	z8.s, z21.s[0]
	.loc 13 1046 0
..LDL7780:
/*   1046 */	fmad	z27.s, p0/m, z30.s, z9.s
	.loc 13 1037 0
..LDL7781:
/*   1037 */	orr	x6, x2, 6917529027641081856
	.loc 13 1053 0
..LDL7782:
/*   1053 */	ldr	s16, [x1, 8]	//  (*)
/*   1053 */	dup	z26.s, z12.s[0]
	.loc 13 1055 0
..LDL7783:
/*   1055 */	movprfx	z12.s, p0/z, z31.s
/*   1055 */	fmla	z12.s, p0/m, z28.s, z30.s
	.loc 13 1037 0
..LDL7784:
/*   1037 */	prfm	2, [x6, 2560]	//  (*)
/*   1037 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1062 0
..LDL7785:
/*   1062 */	ldr	s28, [x1, 12]	//  (*)
/*   1062 */	dup	z4.s, z18.s[0]
	.loc 13 1071 0
..LDL7786:
/*   1071 */	ldr	s18, [x1, 16]	//  (*)
/*   1071 */	dup	z24.s, z20.s[0]
	.loc 13 1064 0
..LDL7787:
/*   1064 */	fmla	z25.s, p0/m, z14.s, z30.s
	.loc 13 1098 0
..LDL7788:
/*   1098 */	ld1rw	{z1.s}, p1/z, [x1]	//  (*)
	.loc 13 1037 0
..LDL7789:
/*   1037 */	ld1w	{z0.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1073 0
..LDL7790:
/*   1073 */	fmla	z7.s, p0/m, z13.s, z30.s
	.loc 13 1080 0
..LDL7791:
/*   1080 */	ldr	s21, [x1, 20]	//  (*)
/*   1080 */	dup	z6.s, z22.s[0]
	.loc 13 1082 0
..LDL7792:
/*   1082 */	fmla	z5.s, p0/m, z29.s, z30.s
	.loc 13 1116 0
..LDL7793:
/*   1116 */	add	x6, x1, 56
	.loc 13 1091 0
..LDL7794:
/*   1091 */	fmla	z3.s, p0/m, z17.s, z30.s
	.loc 13 1098 0
..LDL7795:
/*   1098 */	prfm	2, [x5, 2560]	//  (*)
/*   1098 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 1100 0
..LDL7796:
/*   1100 */	fmla	z2.s, p0/m, z15.s, z30.s
	.loc 13 1044 0
..LDL7797:
/*   1044 */	ldr	s20, [x1, 32]	//  (*)
	.loc 13 1117 0
..LDL7798:
/*   1117 */	add	x2, x2, x4
	.loc 13 1089 0
..LDL7799:
/*   1089 */	ldr	s13, [x1, 24]	//  (*)
/*   1089 */	dup	z14.s, z10.s[0]
	.loc 13 1044 0
..LDL7800:
/*   1044 */	dup	z9.s, z19.s[0]
	.loc 13 1046 0
..LDL7801:
/*   1046 */	fmad	z8.s, p0/m, z11.s, z27.s
	.loc 13 1037 0
..LDL7802:
/*   1037 */	orr	x5, x2, 6917529027641081856
	.loc 13 1053 0
..LDL7803:
/*   1053 */	ldr	s15, [x1, 36]	//  (*)
/*   1053 */	dup	z31.s, z16.s[0]
	.loc 13 1055 0
..LDL7804:
/*   1055 */	fmad	z26.s, p0/m, z11.s, z12.s
	.loc 13 1037 0
..LDL7805:
/*   1037 */	prfm	2, [x5, 2560]	//  (*)
/*   1037 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 1062 0
..LDL7806:
/*   1062 */	ldr	s16, [x1, 40]	//  (*)
/*   1062 */	dup	z30.s, z28.s[0]
	.loc 13 1071 0
..LDL7807:
/*   1071 */	ldr	s17, [x1, 44]	//  (*)
/*   1071 */	dup	z29.s, z18.s[0]
	.loc 13 1064 0
..LDL7808:
/*   1064 */	fmla	z25.s, p0/m, z4.s, z11.s
	.loc 13 1098 0
..LDL7809:
/*   1098 */	ld1rw	{z27.s}, p1/z, [x13]	//  (*)
	.loc 13 1037 0
..LDL7810:
/*   1037 */	ld1w	{z10.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1073 0
..LDL7811:
/*   1073 */	fmad	z24.s, p0/m, z11.s, z7.s
	.loc 13 1080 0
..LDL7812:
/*   1080 */	ldr	s18, [x1, 48]	//  (*)
/*   1080 */	dup	z28.s, z21.s[0]
	.loc 13 1082 0
..LDL7813:
/*   1082 */	fmad	z6.s, p0/m, z11.s, z5.s
	.loc 13 1116 0
..LDL7814:
/*   1116 */	add	x5, x1, 84
	.loc 13 1091 0
..LDL7815:
/*   1091 */	fmla	z3.s, p0/m, z14.s, z11.s
	.loc 13 1098 0
..LDL7816:
/*   1098 */	prfm	2, [x1, 2560]	//  (*)
/*   1098 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1100 0
..LDL7817:
/*   1100 */	fmad	z1.s, p0/m, z11.s, z2.s
	.loc 13 1044 0
..LDL7818:
/*   1044 */	ldr	s11, [x1, 60]	//  (*)
	.loc 13 1117 0
..LDL7819:
/*   1117 */	add	x2, x2, x4
	.loc 13 1089 0
..LDL7820:
/*   1089 */	ldr	s12, [x1, 52]	//  (*)
/*   1089 */	dup	z4.s, z13.s[0]
	.loc 13 1044 0
..LDL7821:
/*   1044 */	dup	z13.s, z20.s[0]
	.loc 13 1046 0
..LDL7822:
/*   1046 */	fmad	z9.s, p0/m, z0.s, z8.s
	.loc 13 1037 0
..LDL7823:
/*   1037 */	orr	x14, x2, 6917529027641081856
	.loc 13 1053 0
..LDL7824:
/*   1053 */	ldr	s14, [x1, 64]	//  (*)
/*   1053 */	dup	z8.s, z15.s[0]
	.loc 13 1055 0
..LDL7825:
/*   1055 */	fmad	z31.s, p0/m, z0.s, z26.s
	.loc 13 1037 0
..LDL7826:
/*   1037 */	prfm	2, [x14, 2560]	//  (*)
/*   1037 */	prfm	0, [x14, 512]	//  (*)
	.loc 13 1062 0
..LDL7827:
/*   1062 */	ldr	s15, [x1, 68]	//  (*)
/*   1062 */	dup	z26.s, z16.s[0]
	.loc 13 1071 0
..LDL7828:
/*   1071 */	ldr	s16, [x1, 72]	//  (*)
/*   1071 */	dup	z7.s, z17.s[0]
	.loc 13 1064 0
..LDL7829:
/*   1064 */	fmla	z25.s, p0/m, z30.s, z0.s
	.loc 13 1098 0
..LDL7830:
/*   1098 */	ld1rw	{z2.s}, p1/z, [x6]	//  (*)
	.loc 13 1037 0
..LDL7831:
/*   1037 */	ld1w	{z30.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1073 0
..LDL7832:
/*   1073 */	fmla	z24.s, p0/m, z29.s, z0.s
	.loc 13 1080 0
..LDL7833:
/*   1080 */	ldr	s29, [x1, 76]	//  (*)
/*   1080 */	dup	z5.s, z18.s[0]
	.loc 13 1082 0
..LDL7834:
/*   1082 */	fmla	z6.s, p0/m, z28.s, z0.s
	.loc 13 1116 0
..LDL7835:
/*   1116 */	add	x1, x1, 112
	.loc 13 1091 0
..LDL7836:
/*   1091 */	fmad	z4.s, p0/m, z0.s, z3.s
	.loc 13 1098 0
..LDL7837:
/*   1098 */	prfm	2, [x13, 2560]	//  (*)
/*   1098 */	prfm	0, [x13, 512]	//  (*)
	.loc 13 1100 0
..LDL7838:
/*   1100 */	fmla	z1.s, p0/m, z27.s, z0.s
	.loc 13 1118 0
..LDL7839:
/*   1118 */	sub	w0, w0, 4
	.loc 13 1036 0
..LDL7840:
/*   1036 */	cmp	w0, 6
/*   1036 */	bge	.L11524
	.loc 13 1089 0
..LDL7841:
/*   1089 */	ldr	s28, [x5, -4]	//  (*)
/*   1089 */	dup	z0.s, z12.s[0]
	.loc 13 1098 0
..LDL7842:
/*   1098 */	ptrue	p1.s, ALL
	.loc 13 1064 0
..LDL7843:
/*   1064 */	fmla	z25.s, p0/m, z26.s, z10.s
	.loc 13 1117 0
..LDL7844:
/*   1117 */	add	x2, x2, x4
	.loc 13 1098 0
..LDL7845:
/*   1098 */	prfm	2, [x6, 2560]	//  (*)
	.loc 13 1073 0
..LDL7846:
/*   1073 */	fmla	z24.s, p0/m, z7.s, z10.s
	.loc 13 1082 0
..LDL7847:
/*   1082 */	fmla	z6.s, p0/m, z5.s, z10.s
	.loc 13 1046 0
..LDL7848:
/*   1046 */	fmla	z9.s, p0/m, z13.s, z10.s
	.loc 13 1118 0
..LDL7849:
/*   1118 */	sub	w0, w0, 2
	.loc 13 1098 0
..LDL7850:
/*   1098 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1100 0
..LDL7851:
/*   1100 */	fmla	z1.s, p0/m, z2.s, z10.s
	.loc 13 1055 0
..LDL7852:
/*   1055 */	fmla	z31.s, p0/m, z8.s, z10.s
	.loc 13 1098 0
..LDL7853:
/*   1098 */	ld1rw	{z3.s}, p1/z, [x5]	//  (*)
/*   1098 */	prfm	2, [x5, 2560]	//  (*)
	.loc 13 1044 0
..LDL7854:
/*   1044 */	dup	z27.s, z11.s[0]
	.loc 13 1098 0
..LDL7855:
/*   1098 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 1053 0
..LDL7856:
/*   1053 */	dup	z26.s, z14.s[0]
	.loc 13 1062 0
..LDL7857:
/*   1062 */	dup	z7.s, z15.s[0]
	.loc 13 1091 0
..LDL7858:
/*   1091 */	fmla	z4.s, p0/m, z0.s, z10.s
	.loc 13 1071 0
..LDL7859:
/*   1071 */	dup	z5.s, z16.s[0]
	.loc 13 1080 0
..LDL7860:
/*   1080 */	dup	z2.s, z29.s[0]
	.loc 13 1089 0
..LDL7861:
/*   1089 */	dup	z0.s, z28.s[0]
	.loc 13 1046 0
..LDL7862:
/*   1046 */	fmla	z9.s, p0/m, z27.s, z30.s
	.loc 13 1064 0
..LDL7863:
/*   1064 */	fmla	z25.s, p0/m, z7.s, z30.s
	.loc 13 1055 0
..LDL7864:
/*   1055 */	fmla	z31.s, p0/m, z26.s, z30.s
	.loc 13 1073 0
..LDL7865:
/*   1073 */	fmla	z24.s, p0/m, z5.s, z30.s
	.loc 13 1100 0
..LDL7866:
/*   1100 */	fmla	z1.s, p0/m, z3.s, z30.s
	.loc 13 1082 0
..LDL7867:
/*   1082 */	fmla	z6.s, p0/m, z2.s, z30.s
	.loc 13 1091 0
..LDL7868:
/*   1091 */	fmla	z4.s, p0/m, z0.s, z30.s
	.loc 13 1118 0
..LDL7869:
/*   1118 */	cbz	w0, .L12170
.L12173:
	.p2align 5
.L12176:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL7870:
/*   1037 */	orr	x5, x2, 6917529027641081856
	.loc 13 1044 0
..LDL7871:
/*   1044 */	ldp	s27, s2, [x1, -24]	//  (*)
	.loc 13 1098 0
..LDL7872:
/*   1098 */	ptrue	p1.s, ALL
	.loc 13 1062 0
..LDL7873:
/*   1062 */	ldp	s28, s7, [x1, -16]	//  (*)
	.loc 13 1117 0
..LDL7874:
/*   1117 */	add	x2, x2, x4
	.loc 13 1118 0
..LDL7875:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1080 0
..LDL7876:
/*   1080 */	ldp	s26, s0, [x1, -8]	//  (*)
	.loc 13 1037 0
..LDL7877:
/*   1037 */	ld1w	{z5.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1098 0
..LDL7878:
/*   1098 */	ld1rw	{z3.s}, p1/z, [x1]	//  (*)
/*   1098 */	prfm	2, [x1, 2560]	//  (*)
/*   1098 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1116 0
..LDL7879:
/*   1116 */	add	x1, x1, 28
	.loc 13 1037 0
..LDL7880:
/*   1037 */	prfm	2, [x5, 2560]	//  (*)
/*   1037 */	prfm	0, [x5, 512]	//  (*)
	.loc 13 1044 0
..LDL7881:
/*   1044 */	dup	z27.s, z27.s[0]
	.loc 13 1053 0
..LDL7882:
/*   1053 */	dup	z2.s, z2.s[0]
	.loc 13 1062 0
..LDL7883:
/*   1062 */	dup	z28.s, z28.s[0]
	.loc 13 1071 0
..LDL7884:
/*   1071 */	dup	z7.s, z7.s[0]
	.loc 13 1080 0
..LDL7885:
/*   1080 */	dup	z26.s, z26.s[0]
	.loc 13 1089 0
..LDL7886:
/*   1089 */	dup	z0.s, z0.s[0]
	.loc 13 1046 0
..LDL7887:
/*   1046 */	fmla	z9.s, p0/m, z27.s, z5.s
	.loc 13 1100 0
..LDL7888:
/*   1100 */	fmla	z1.s, p0/m, z3.s, z5.s
	.loc 13 1055 0
..LDL7889:
/*   1055 */	fmla	z31.s, p0/m, z2.s, z5.s
	.loc 13 1064 0
..LDL7890:
/*   1064 */	fmla	z25.s, p0/m, z28.s, z5.s
	.loc 13 1073 0
..LDL7891:
/*   1073 */	fmla	z24.s, p0/m, z7.s, z5.s
	.loc 13 1082 0
..LDL7892:
/*   1082 */	fmla	z6.s, p0/m, z26.s, z5.s
	.loc 13 1091 0
..LDL7893:
/*   1091 */	fmla	z4.s, p0/m, z0.s, z5.s
	.loc 13 1118 0 is_stmt 0
..LDL7894:
/*   1118 */	bne	.L12176
.L12170:
.L11526:
	.loc 13 1123 0 is_stmt 1
..LDL7895:
/*   1123 */	st1w	{z9.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL7896:
/*   1131 */	st1w	{z31.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL7897:
/*   1139 */	st1w	{z25.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1147 0
..LDL7898:
/*   1147 */	st1w	{z24.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1155 0
..LDL7899:
/*   1155 */	st1w	{z6.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1163 0
..LDL7900:
/*   1163 */	st1w	{z4.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1171 0
..LDL7901:
/*   1171 */	st1w	{z1.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL7902:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	z20, [x29, 13, mul vl]	//  (*)
/*    ??? */	ldr	z21, [x29, 14, mul vl]	//  (*)
/*    ??? */	ldr	z22, [x29, 15, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 16
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D46.pchi:
	.cfi_endproc
.LFE45:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL7903:
.LFB46:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -14
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xf0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x78,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z20, [x29, 13, mul vl]	//  (*)
	.cfi_escape 0x10,0x74,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL7904:
/*    971 */	ld1w	{z8.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL7905:
/*    987 */	add	w9, w4, w4
	.loc 13 1011 0
..LDL7906:
/*   1011 */	add	w5, w4, w4, lsl #2
	.loc 13 995 0
..LDL7907:
/*    995 */	add	w8, w9, w4
	.loc 13 1003 0
..LDL7908:
/*   1003 */	lsl	w7, w4, 2
	.loc 13 979 0
..LDL7909:
/*    979 */	sxtw	x16, w4
	.loc 13 1019 0
..LDL7910:
/*   1019 */	add	w4, w8, w8
	.loc 13 995 0
..LDL7911:
/*    995 */	sxtw	x12, w8
	.loc 13 1011 0
..LDL7912:
/*   1011 */	sxtw	x8, w5
	.loc 13 987 0
..LDL7913:
/*    987 */	sxtw	x14, w9
	.loc 13 1003 0
..LDL7914:
/*   1003 */	sxtw	x10, w7
	.loc 13 981 0
..LDL7915:
/*    981 */	add	x15, x16, 16
	.loc 13 1019 0
..LDL7916:
/*   1019 */	sxtw	x5, w4
	.loc 13 989 0
..LDL7917:
/*    989 */	add	x13, x14, 16
	.loc 13 997 0
..LDL7918:
/*    997 */	add	x11, x12, 16
	.loc 13 1005 0
..LDL7919:
/*   1005 */	add	x9, x10, 16
	.loc 13 1013 0
..LDL7920:
/*   1013 */	add	x7, x8, 16
	.loc 13 1021 0
..LDL7921:
/*   1021 */	add	x4, x5, 16
	.loc 13 979 0
..LDL7922:
/*    979 */	add	x16, x3, x16, lsl #2
	.loc 13 973 0
..LDL7923:
/*    973 */	add	x17, x3, 64
/*    973 */	ld1w	{z4.s}, p1/z, [x17, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL7924:
/*    981 */	add	x15, x3, x15, lsl #2
	.loc 13 979 0
..LDL7925:
/*    979 */	ld1w	{z31.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL7926:
/*    981 */	ld1w	{z1.s}, p1/z, [x15, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL7927:
/*    987 */	add	x14, x3, x14, lsl #2
/*    987 */	ld1w	{z29.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 989 0
..LDL7928:
/*    989 */	add	x13, x3, x13, lsl #2
/*    989 */	ld1w	{z6.s}, p1/z, [x13, 0, mul vl]	//  (*)
	.loc 13 995 0
..LDL7929:
/*    995 */	add	x12, x3, x12, lsl #2
/*    995 */	ld1w	{z27.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 997 0
..LDL7930:
/*    997 */	add	x11, x3, x11, lsl #2
/*    997 */	ld1w	{z13.s}, p1/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1003 0
..LDL7931:
/*   1003 */	add	x10, x3, x10, lsl #2
/*   1003 */	ld1w	{z25.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1005 0
..LDL7932:
/*   1005 */	add	x9, x3, x9, lsl #2
/*   1005 */	ld1w	{z15.s}, p1/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1011 0
..LDL7933:
/*   1011 */	add	x8, x3, x8, lsl #2
/*   1011 */	ld1w	{z7.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1013 0
..LDL7934:
/*   1013 */	add	x7, x3, x7, lsl #2
/*   1013 */	ld1w	{z11.s}, p1/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1019 0
..LDL7935:
/*   1019 */	add	x5, x3, x5, lsl #2
/*   1019 */	ld1w	{z2.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1021 0
..LDL7936:
/*   1021 */	add	x18, x3, x4, lsl #2
/*   1021 */	ld1w	{z10.s}, p1/z, [x18, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL7937:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11534
	.loc 13 1117 0 is_stmt 0
..LDL7938:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL7939:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x6, x1, 24
	.loc 13 1034 0
..LDL7940:
/*   1034 */	cmp	w0, 3
/*   1034 */	blt	.L12184
	.loc 13 1118 0
..LDL7941:
/*   1118 */	mov	x1, x6
	.loc 13 1037 0
..LDL7942:
/*   1037 */	orr	x6, x2, 6917529027641081856
	.loc 13 1118 0
..LDL7943:
/*   1118 */	mov	z3.d, z15.d
/*   1118 */	mov	z24.d, z13.d
/*   1118 */	mov	z0.d, z10.d
/*   1118 */	mov	z5.d, z11.d
	.loc 13 1039 0
..LDL7944:
/*   1039 */	ld1w	{z9.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1037 0
..LDL7945:
/*   1037 */	ld1w	{z12.s}, p0/z, [x6, 0, mul vl]	//  (*)
/*   1044 */	ldp	s17, s16, [x1, -24]	//  (*)
	.loc 13 1118 0
..LDL7946:
/*   1118 */	mov	z26.d, z6.d
/*   1118 */	mov	z28.d, z1.d
/*   1062 */	ldp	s18, s13, [x1, -16]	//  (*)
/*   1118 */	mov	z30.d, z4.d
	.loc 13 1098 0
..LDL7947:
/*   1098 */	ptrue	p2.s, ALL
/*   1080 */	ldp	s15, s14, [x1, -8]	//  (*)
	.loc 13 1037 0
..LDL7948:
/*   1037 */	prfm	2, [x6, 2560]	//  (*)
/*   1037 */	prfm	0, [x6, 512]	//  (*)
	.p2align 5
.L11532:					// :entr:term:swpl
	.loc 13 1044 0
..LDL7949:
/*   1044 */	dup	z20.s, z17.s[0]
	.loc 13 1053 0
..LDL7950:
/*   1053 */	dup	z17.s, z16.s[0]
	.loc 13 1062 0
..LDL7951:
/*   1062 */	dup	z10.s, z18.s[0]
	.loc 13 1098 0
..LDL7952:
/*   1098 */	ld1rw	{z1.s}, p2/z, [x1]	//  (*)
	.loc 13 1117 0
..LDL7953:
/*   1117 */	add	x30, x2, x4
	.loc 13 1071 0
..LDL7954:
/*   1071 */	dup	z6.s, z13.s[0]
	.loc 13 1037 0
..LDL7955:
/*   1037 */	orr	x2, x30, 6917529027641081856
	.loc 13 1080 0
..LDL7956:
/*   1080 */	dup	z4.s, z15.s[0]
	.loc 13 1037 0
..LDL7957:
/*   1037 */	prfm	2, [x2, 2560]	//  (*)
	.loc 13 1116 0
..LDL7958:
/*   1116 */	add	x6, x1, 28
	.loc 13 1089 0
..LDL7959:
/*   1089 */	dup	z13.s, z14.s[0]
	.loc 13 1037 0
..LDL7960:
/*   1037 */	prfm	0, [x2, 512]	//  (*)
	.loc 13 1044 0
..LDL7961:
/*   1044 */	ldr	s18, [x1, 4]	//  (*)
	.loc 13 1046 0
..LDL7962:
/*   1046 */	fmla	z8.s, p0/m, z20.s, z12.s
	.loc 13 1037 0
..LDL7963:
/*   1037 */	ld1w	{z11.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL7964:
/*   1053 */	ldr	s19, [x1, 8]	//  (*)
	.loc 13 1055 0
..LDL7965:
/*   1055 */	fmla	z31.s, p0/m, z17.s, z12.s
	.loc 13 1048 0
..LDL7966:
/*   1048 */	fmla	z30.s, p1/m, z20.s, z9.s
	.loc 13 1062 0
..LDL7967:
/*   1062 */	ldr	s16, [x1, 12]	//  (*)
	.loc 13 1064 0
..LDL7968:
/*   1064 */	fmla	z29.s, p0/m, z10.s, z12.s
	.loc 13 1057 0
..LDL7969:
/*   1057 */	fmla	z28.s, p1/m, z17.s, z9.s
	.loc 13 1071 0
..LDL7970:
/*   1071 */	ldr	s14, [x1, 16]	//  (*)
	.loc 13 1073 0
..LDL7971:
/*   1073 */	fmla	z27.s, p0/m, z6.s, z12.s
	.loc 13 1066 0
..LDL7972:
/*   1066 */	fmla	z26.s, p1/m, z10.s, z9.s
	.loc 13 1039 0
..LDL7973:
/*   1039 */	ld1w	{z10.s}, p1/z, [x30, 1, mul vl]	//  (*)
	.loc 13 1080 0
..LDL7974:
/*   1080 */	ldr	s15, [x1, 20]	//  (*)
	.loc 13 1082 0
..LDL7975:
/*   1082 */	fmla	z25.s, p0/m, z4.s, z12.s
	.loc 13 1075 0
..LDL7976:
/*   1075 */	fmla	z24.s, p1/m, z6.s, z9.s
	.loc 13 1089 0
..LDL7977:
/*   1089 */	ldr	s6, [x1, 24]	//  (*)
	.loc 13 1091 0
..LDL7978:
/*   1091 */	fmla	z7.s, p0/m, z13.s, z12.s
	.loc 13 1093 0
..LDL7979:
/*   1093 */	fmla	z5.s, p1/m, z13.s, z9.s
	.loc 13 1098 0
..LDL7980:
/*   1098 */	prfm	2, [x1, 2560]	//  (*)
/*   1098 */	prfm	0, [x1, 512]	//  (*)
/*   1098 */	ptrue	p2.s, ALL
	.loc 13 1084 0
..LDL7981:
/*   1084 */	fmla	z3.s, p1/m, z4.s, z9.s
	.loc 13 1100 0
..LDL7982:
/*   1100 */	fmla	z2.s, p0/m, z1.s, z12.s
	.loc 13 1102 0
..LDL7983:
/*   1102 */	fmad	z1.s, p1/m, z9.s, z0.s
	.loc 13 1044 0
..LDL7984:
/*   1044 */	dup	z18.s, z18.s[0]
	.loc 13 1053 0
..LDL7985:
/*   1053 */	dup	z13.s, z19.s[0]
	.loc 13 1062 0
..LDL7986:
/*   1062 */	dup	z9.s, z16.s[0]
	.loc 13 1098 0
..LDL7987:
/*   1098 */	ld1rw	{z0.s}, p2/z, [x6]	//  (*)
	.loc 13 1117 0
..LDL7988:
/*   1117 */	add	x2, x30, x4
	.loc 13 1071 0
..LDL7989:
/*   1071 */	dup	z14.s, z14.s[0]
	.loc 13 1037 0
..LDL7990:
/*   1037 */	orr	x30, x2, 6917529027641081856
	.loc 13 1080 0
..LDL7991:
/*   1080 */	dup	z4.s, z15.s[0]
	.loc 13 1037 0
..LDL7992:
/*   1037 */	prfm	2, [x30, 2560]	//  (*)
	.loc 13 1116 0
..LDL7993:
/*   1116 */	add	x1, x1, 56
	.loc 13 1089 0
..LDL7994:
/*   1089 */	dup	z6.s, z6.s[0]
	.loc 13 1037 0
..LDL7995:
/*   1037 */	prfm	0, [x30, 512]	//  (*)
	.loc 13 1044 0
..LDL7996:
/*   1044 */	ldr	s17, [x1, -24]	//  (*)
	.loc 13 1046 0
..LDL7997:
/*   1046 */	fmla	z8.s, p0/m, z18.s, z11.s
	.loc 13 1037 0
..LDL7998:
/*   1037 */	ld1w	{z12.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1053 0
..LDL7999:
/*   1053 */	ldr	s16, [x1, -20]	//  (*)
	.loc 13 1055 0
..LDL8000:
/*   1055 */	fmla	z31.s, p0/m, z13.s, z11.s
	.loc 13 1048 0
..LDL8001:
/*   1048 */	fmla	z30.s, p1/m, z18.s, z10.s
	.loc 13 1062 0
..LDL8002:
/*   1062 */	ldr	s18, [x1, -16]	//  (*)
	.loc 13 1064 0
..LDL8003:
/*   1064 */	fmla	z29.s, p0/m, z9.s, z11.s
	.loc 13 1057 0
..LDL8004:
/*   1057 */	fmla	z28.s, p1/m, z13.s, z10.s
	.loc 13 1071 0
..LDL8005:
/*   1071 */	ldr	s13, [x1, -12]	//  (*)
	.loc 13 1073 0
..LDL8006:
/*   1073 */	fmla	z27.s, p0/m, z14.s, z11.s
	.loc 13 1066 0
..LDL8007:
/*   1066 */	fmla	z26.s, p1/m, z9.s, z10.s
	.loc 13 1039 0
..LDL8008:
/*   1039 */	ld1w	{z9.s}, p1/z, [x2, 1, mul vl]	//  (*)
	.loc 13 1080 0
..LDL8009:
/*   1080 */	ldr	s15, [x1, -8]	//  (*)
	.loc 13 1082 0
..LDL8010:
/*   1082 */	fmla	z25.s, p0/m, z4.s, z11.s
	.loc 13 1075 0
..LDL8011:
/*   1075 */	fmla	z24.s, p1/m, z14.s, z10.s
	.loc 13 1089 0
..LDL8012:
/*   1089 */	ldr	s14, [x1, -4]	//  (*)
	.loc 13 1091 0
..LDL8013:
/*   1091 */	fmla	z7.s, p0/m, z6.s, z11.s
	.loc 13 1093 0
..LDL8014:
/*   1093 */	fmla	z5.s, p1/m, z6.s, z10.s
	.loc 13 1098 0
..LDL8015:
/*   1098 */	prfm	2, [x6, 2560]	//  (*)
/*   1098 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1084 0
..LDL8016:
/*   1084 */	fmla	z3.s, p1/m, z4.s, z10.s
	.loc 13 1100 0
..LDL8017:
/*   1100 */	fmla	z2.s, p0/m, z0.s, z11.s
	.loc 13 1102 0
..LDL8018:
/*   1102 */	fmad	z0.s, p1/m, z10.s, z1.s
	.loc 13 1118 0
..LDL8019:
/*   1118 */	sub	w0, w0, 2
	.loc 13 1036 0
..LDL8020:
/*   1036 */	cmp	w0, 3
/*   1036 */	bge	.L11532
	.loc 13 1044 0
..LDL8021:
/*   1044 */	dup	z4.s, z17.s[0]
	.loc 13 1098 0
..LDL8022:
/*   1098 */	ld1rw	{z10.s}, p2/z, [x1]	//  (*)
	.loc 13 1117 0
..LDL8023:
/*   1117 */	add	x2, x2, x4
	.loc 13 1098 0
..LDL8024:
/*   1098 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 1053 0
..LDL8025:
/*   1053 */	dup	z1.s, z16.s[0]
	.loc 13 1116 0
..LDL8026:
/*   1116 */	add	x6, x1, 28
	.loc 13 1098 0
..LDL8027:
/*   1098 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1118 0
..LDL8028:
/*   1118 */	sub	w0, w0, 1
	.loc 13 1062 0
..LDL8029:
/*   1062 */	dup	z6.s, z18.s[0]
	.loc 13 1071 0
..LDL8030:
/*   1071 */	dup	z13.s, z13.s[0]
	.loc 13 1080 0
..LDL8031:
/*   1080 */	dup	z15.s, z15.s[0]
	.loc 13 1089 0
..LDL8032:
/*   1089 */	dup	z11.s, z14.s[0]
	.loc 13 1046 0
..LDL8033:
/*   1046 */	fmla	z8.s, p0/m, z4.s, z12.s
	.loc 13 1048 0
..LDL8034:
/*   1048 */	fmad	z4.s, p1/m, z9.s, z30.s
	.loc 13 1055 0
..LDL8035:
/*   1055 */	fmla	z31.s, p0/m, z1.s, z12.s
	.loc 13 1057 0
..LDL8036:
/*   1057 */	fmad	z1.s, p1/m, z9.s, z28.s
	.loc 13 1064 0
..LDL8037:
/*   1064 */	fmla	z29.s, p0/m, z6.s, z12.s
	.loc 13 1066 0
..LDL8038:
/*   1066 */	fmad	z6.s, p1/m, z9.s, z26.s
	.loc 13 1073 0
..LDL8039:
/*   1073 */	fmla	z27.s, p0/m, z13.s, z12.s
	.loc 13 1075 0
..LDL8040:
/*   1075 */	fmad	z13.s, p1/m, z9.s, z24.s
	.loc 13 1082 0
..LDL8041:
/*   1082 */	fmla	z25.s, p0/m, z15.s, z12.s
	.loc 13 1084 0
..LDL8042:
/*   1084 */	fmad	z15.s, p1/m, z9.s, z3.s
	.loc 13 1091 0
..LDL8043:
/*   1091 */	fmla	z7.s, p0/m, z11.s, z12.s
	.loc 13 1100 0
..LDL8044:
/*   1100 */	fmla	z2.s, p0/m, z10.s, z12.s
	.loc 13 1093 0
..LDL8045:
/*   1093 */	fmad	z11.s, p1/m, z9.s, z5.s
	.loc 13 1102 0
..LDL8046:
/*   1102 */	fmad	z10.s, p1/m, z9.s, z0.s
	.loc 13 1118 0
..LDL8047:
/*   1118 */	cbz	w0, .L12181
.L12184:
	.p2align 5
.L12187:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL8048:
/*   1037 */	orr	x1, x2, 6917529027641081856
	.loc 13 1044 0
..LDL8049:
/*   1044 */	ldp	s30, s0, [x6, -24]	//  (*)
	.loc 13 1098 0
..LDL8050:
/*   1098 */	ptrue	p2.s, ALL
	.loc 13 1039 0
..LDL8051:
/*   1039 */	add	x30, x2, 64
	.loc 13 1062 0
..LDL8052:
/*   1062 */	ldp	s28, s5, [x6, -16]	//  (*)
	.loc 13 1117 0
..LDL8053:
/*   1117 */	add	x2, x2, x4
	.loc 13 1080 0
..LDL8054:
/*   1080 */	ldp	s12, s26, [x6, -8]	//  (*)
	.loc 13 1118 0
..LDL8055:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1037 0
..LDL8056:
/*   1037 */	ld1w	{z3.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL8057:
/*   1039 */	ld1w	{z24.s}, p1/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1098 0
..LDL8058:
/*   1098 */	prfm	2, [x6, 2560]	//  (*)
/*   1098 */	ld1rw	{z9.s}, p2/z, [x6]	//  (*)
	.loc 13 1037 0
..LDL8059:
/*   1037 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 1098 0
..LDL8060:
/*   1098 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1116 0
..LDL8061:
/*   1116 */	add	x6, x6, 28
	.loc 13 1037 0
..LDL8062:
/*   1037 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1044 0
..LDL8063:
/*   1044 */	dup	z30.s, z30.s[0]
	.loc 13 1053 0
..LDL8064:
/*   1053 */	dup	z0.s, z0.s[0]
	.loc 13 1062 0
..LDL8065:
/*   1062 */	dup	z28.s, z28.s[0]
	.loc 13 1071 0
..LDL8066:
/*   1071 */	dup	z5.s, z5.s[0]
	.loc 13 1080 0
..LDL8067:
/*   1080 */	dup	z12.s, z12.s[0]
	.loc 13 1089 0
..LDL8068:
/*   1089 */	dup	z26.s, z26.s[0]
	.loc 13 1046 0
..LDL8069:
/*   1046 */	fmla	z8.s, p0/m, z30.s, z3.s
	.loc 13 1048 0
..LDL8070:
/*   1048 */	fmla	z4.s, p1/m, z30.s, z24.s
	.loc 13 1055 0
..LDL8071:
/*   1055 */	fmla	z31.s, p0/m, z0.s, z3.s
	.loc 13 1057 0
..LDL8072:
/*   1057 */	fmla	z1.s, p1/m, z0.s, z24.s
	.loc 13 1064 0
..LDL8073:
/*   1064 */	fmla	z29.s, p0/m, z28.s, z3.s
	.loc 13 1066 0
..LDL8074:
/*   1066 */	fmla	z6.s, p1/m, z28.s, z24.s
	.loc 13 1073 0
..LDL8075:
/*   1073 */	fmla	z27.s, p0/m, z5.s, z3.s
	.loc 13 1075 0
..LDL8076:
/*   1075 */	fmla	z13.s, p1/m, z5.s, z24.s
	.loc 13 1082 0
..LDL8077:
/*   1082 */	fmla	z25.s, p0/m, z12.s, z3.s
	.loc 13 1084 0
..LDL8078:
/*   1084 */	fmla	z15.s, p1/m, z12.s, z24.s
	.loc 13 1091 0
..LDL8079:
/*   1091 */	fmla	z7.s, p0/m, z26.s, z3.s
	.loc 13 1093 0
..LDL8080:
/*   1093 */	fmla	z11.s, p1/m, z26.s, z24.s
	.loc 13 1100 0
..LDL8081:
/*   1100 */	fmla	z2.s, p0/m, z9.s, z3.s
	.loc 13 1102 0
..LDL8082:
/*   1102 */	fmla	z10.s, p1/m, z9.s, z24.s
	.loc 13 1118 0 is_stmt 0
..LDL8083:
/*   1118 */	bne	.L12187
.L12181:
.L11534:
	.loc 13 1123 0 is_stmt 1
..LDL8084:
/*   1123 */	st1w	{z8.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL8085:
/*   1125 */	st1w	{z4.s}, p1, [x17, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL8086:
/*   1131 */	st1w	{z31.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 1133 0
..LDL8087:
/*   1133 */	st1w	{z1.s}, p1, [x15, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL8088:
/*   1139 */	st1w	{z29.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1141 0
..LDL8089:
/*   1141 */	st1w	{z6.s}, p1, [x13, 0, mul vl]	//  (*)
	.loc 13 1147 0
..LDL8090:
/*   1147 */	st1w	{z27.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1149 0
..LDL8091:
/*   1149 */	st1w	{z13.s}, p1, [x11, 0, mul vl]	//  (*)
	.loc 13 1155 0
..LDL8092:
/*   1155 */	st1w	{z25.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1157 0
..LDL8093:
/*   1157 */	st1w	{z15.s}, p1, [x9, 0, mul vl]	//  (*)
	.loc 13 1163 0
..LDL8094:
/*   1163 */	st1w	{z7.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1165 0
..LDL8095:
/*   1165 */	st1w	{z11.s}, p1, [x7, 0, mul vl]	//  (*)
	.loc 13 1171 0
..LDL8096:
/*   1171 */	st1w	{z2.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1173 0
..LDL8097:
/*   1173 */	st1w	{z10.s}, p1, [x18, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL8098:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	z20, [x29, 13, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 14
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D47.pchi:
	.cfi_endproc
.LFE46:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi7ELi48EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi7ELi48EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi7ELi48EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi7ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi7ELi48EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi7ELi48EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL8099:
.LFB47:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -16
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0x80,0x1,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 80
/*    ??? */	stp	x25, x26, [x29, -64]	//  (*)
	.cfi_escape 0x10,0x19,0xb,0x11,0x40,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1a,0xb,0x11,0x48,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x50,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x18,0xb,0x11,0x58,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	x27, [x29, -72]	//  (*)
	.cfi_escape 0x10,0x1b,0xc,0x11,0xb8,0x7f,0x22,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z20, [x29, 13, mul vl]	//  (*)
	.cfi_escape 0x10,0x74,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z21, [x29, 14, mul vl]	//  (*)
	.cfi_escape 0x10,0x75,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z22, [x29, 15, mul vl]	//  (*)
	.cfi_escape 0x10,0x76,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL8100:
/*    971 */	ld1w	{z9.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL8101:
/*    987 */	add	w9, w4, w4
	.loc 13 1011 0
..LDL8102:
/*   1011 */	add	w5, w4, w4, lsl #2
	.loc 13 995 0
..LDL8103:
/*    995 */	add	w8, w9, w4
	.loc 13 1003 0
..LDL8104:
/*   1003 */	lsl	w7, w4, 2
	.loc 13 979 0
..LDL8105:
/*    979 */	sxtw	x22, w4
	.loc 13 1019 0
..LDL8106:
/*   1019 */	add	w4, w8, w8
	.loc 13 987 0
..LDL8107:
/*    987 */	sxtw	x14, w9
	.loc 13 1003 0
..LDL8108:
/*   1003 */	sxtw	x15, w7
	.loc 13 995 0
..LDL8109:
/*    995 */	sxtw	x18, w8
	.loc 13 1011 0
..LDL8110:
/*   1011 */	sxtw	x10, w5
	.loc 13 981 0
..LDL8111:
/*    981 */	add	x21, x22, 16
	.loc 13 1019 0
..LDL8112:
/*   1019 */	sxtw	x7, w4
	.loc 13 983 0
..LDL8113:
/*    983 */	add	x13, x22, 32
	.loc 13 989 0
..LDL8114:
/*    989 */	add	x16, x14, 16
	.loc 13 991 0
..LDL8115:
/*    991 */	add	x17, x14, 32
	.loc 13 997 0
..LDL8116:
/*    997 */	add	x30, x18, 16
	.loc 13 999 0
..LDL8117:
/*    999 */	add	x20, x18, 32
	.loc 13 1005 0
..LDL8118:
/*   1005 */	add	x12, x15, 16
	.loc 13 1007 0
..LDL8119:
/*   1007 */	add	x11, x15, 32
	.loc 13 1013 0
..LDL8120:
/*   1013 */	add	x9, x10, 16
	.loc 13 1015 0
..LDL8121:
/*   1015 */	add	x8, x10, 32
	.loc 13 1021 0
..LDL8122:
/*   1021 */	add	x5, x7, 16
	.loc 13 1023 0
..LDL8123:
/*   1023 */	add	x4, x7, 32
	.loc 13 979 0
..LDL8124:
/*    979 */	add	x22, x3, x22, lsl #2
	.loc 13 973 0
..LDL8125:
/*    973 */	add	x24, x3, 64
	.loc 13 975 0
..LDL8126:
/*    975 */	add	x23, x3, 128
	.loc 13 973 0
..LDL8127:
/*    973 */	ld1w	{z2.s}, p1/z, [x24, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL8128:
/*    981 */	add	x21, x3, x21, lsl #2
	.loc 13 975 0
..LDL8129:
/*    975 */	ld1w	{z21.s}, p2/z, [x23, 0, mul vl]	//  (*)
	.loc 13 979 0
..LDL8130:
/*    979 */	ld1w	{z4.s}, p0/z, [x22, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL8131:
/*    981 */	ld1w	{z5.s}, p1/z, [x21, 0, mul vl]	//  (*)
	.loc 13 983 0
..LDL8132:
/*    983 */	add	x13, x3, x13, lsl #2
/*    983 */	ld1w	{z22.s}, p2/z, [x13, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL8133:
/*    987 */	add	x14, x3, x14, lsl #2
/*    987 */	ld1w	{z6.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 989 0
..LDL8134:
/*    989 */	add	x16, x3, x16, lsl #2
/*    989 */	ld1w	{z10.s}, p1/z, [x16, 0, mul vl]	//  (*)
	.loc 13 991 0
..LDL8135:
/*    991 */	add	x17, x3, x17, lsl #2
/*    991 */	ld1w	{z20.s}, p2/z, [x17, 0, mul vl]	//  (*)
	.loc 13 995 0
..LDL8136:
/*    995 */	add	x18, x3, x18, lsl #2
/*    995 */	ld1w	{z25.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 13 997 0
..LDL8137:
/*    997 */	add	x30, x3, x30, lsl #2
/*    997 */	ld1w	{z26.s}, p1/z, [x30, 0, mul vl]	//  (*)
	.loc 13 999 0
..LDL8138:
/*    999 */	add	x20, x3, x20, lsl #2
/*    999 */	ld1w	{z27.s}, p2/z, [x20, 0, mul vl]	//  (*)
	.loc 13 1003 0
..LDL8139:
/*   1003 */	add	x15, x3, x15, lsl #2
/*   1003 */	ld1w	{z28.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1005 0
..LDL8140:
/*   1005 */	add	x12, x3, x12, lsl #2
/*   1005 */	ld1w	{z29.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1007 0
..LDL8141:
/*   1007 */	add	x11, x3, x11, lsl #2
/*   1007 */	ld1w	{z18.s}, p2/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1011 0
..LDL8142:
/*   1011 */	add	x10, x3, x10, lsl #2
/*   1011 */	ld1w	{z31.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1013 0
..LDL8143:
/*   1013 */	add	x9, x3, x9, lsl #2
/*   1013 */	ld1w	{z8.s}, p1/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1015 0
..LDL8144:
/*   1015 */	add	x8, x3, x8, lsl #2
/*   1015 */	ld1w	{z17.s}, p2/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1019 0
..LDL8145:
/*   1019 */	add	x7, x3, x7, lsl #2
/*   1019 */	ld1w	{z16.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1021 0
..LDL8146:
/*   1021 */	add	x5, x3, x5, lsl #2
/*   1021 */	ld1w	{z15.s}, p1/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1023 0
..LDL8147:
/*   1023 */	add	x25, x3, x4, lsl #2
/*   1023 */	ld1w	{z13.s}, p2/z, [x25, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL8148:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11542
	.loc 13 1117 0 is_stmt 0
..LDL8149:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL8150:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x1, x1, 24
	.p2align 5
.L11540:					// :entr:term
	.loc 13 1037 0 is_stmt 1
..LDL8151:
/*   1037 */	orr	x26, x2, 6917529027641081856
	.loc 13 1044 0
..LDL8152:
/*   1044 */	ldp	s0, s1, [x1, -24]	//  (*)
	.loc 13 1098 0
..LDL8153:
/*   1098 */	ptrue	p3.s, ALL
	.loc 13 1039 0
..LDL8154:
/*   1039 */	add	x6, x2, 64
	.loc 13 1041 0
..LDL8155:
/*   1041 */	add	x27, x2, 128
	.loc 13 1062 0
..LDL8156:
/*   1062 */	ldp	s19, s7, [x1, -16]	//  (*)
	.loc 13 1080 0
..LDL8157:
/*   1080 */	ldp	s3, s30, [x1, -8]	//  (*)
	.loc 13 1117 0
..LDL8158:
/*   1117 */	add	x2, x2, x4
	.loc 13 1118 0
..LDL8159:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1037 0
..LDL8160:
/*   1037 */	ld1w	{z11.s}, p0/z, [x26, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL8161:
/*   1039 */	ld1w	{z24.s}, p1/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1041 0
..LDL8162:
/*   1041 */	ld1w	{z12.s}, p2/z, [x27, 0, mul vl]	//  (*)
	.loc 13 1098 0
..LDL8163:
/*   1098 */	ld1rw	{z14.s}, p3/z, [x1]	//  (*)
/*   1098 */	prfm	2, [x1, 2560]	//  (*)
/*   1098 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1116 0
..LDL8164:
/*   1116 */	add	x1, x1, 28
	.loc 13 1037 0
..LDL8165:
/*   1037 */	prfm	2, [x26, 2560]	//  (*)
/*   1037 */	prfm	0, [x26, 512]	//  (*)
	.loc 13 1044 0
..LDL8166:
/*   1044 */	dup	z0.s, z0.s[0]
	.loc 13 1053 0
..LDL8167:
/*   1053 */	dup	z1.s, z1.s[0]
	.loc 13 1062 0
..LDL8168:
/*   1062 */	dup	z19.s, z19.s[0]
	.loc 13 1071 0
..LDL8169:
/*   1071 */	dup	z7.s, z7.s[0]
	.loc 13 1080 0
..LDL8170:
/*   1080 */	dup	z3.s, z3.s[0]
	.loc 13 1089 0
..LDL8171:
/*   1089 */	dup	z30.s, z30.s[0]
	.loc 13 1046 0
..LDL8172:
/*   1046 */	fmla	z9.s, p0/m, z0.s, z11.s
	.loc 13 1048 0
..LDL8173:
/*   1048 */	fmla	z2.s, p1/m, z0.s, z24.s
	.loc 13 1050 0
..LDL8174:
/*   1050 */	fmla	z21.s, p2/m, z0.s, z12.s
	.loc 13 1055 0
..LDL8175:
/*   1055 */	fmla	z4.s, p0/m, z1.s, z11.s
	.loc 13 1057 0
..LDL8176:
/*   1057 */	fmla	z5.s, p1/m, z1.s, z24.s
	.loc 13 1059 0
..LDL8177:
/*   1059 */	fmla	z22.s, p2/m, z1.s, z12.s
	.loc 13 1064 0
..LDL8178:
/*   1064 */	fmla	z6.s, p0/m, z19.s, z11.s
	.loc 13 1066 0
..LDL8179:
/*   1066 */	fmla	z10.s, p1/m, z19.s, z24.s
	.loc 13 1068 0
..LDL8180:
/*   1068 */	fmla	z20.s, p2/m, z19.s, z12.s
	.loc 13 1073 0
..LDL8181:
/*   1073 */	fmla	z25.s, p0/m, z7.s, z11.s
	.loc 13 1075 0
..LDL8182:
/*   1075 */	fmla	z26.s, p1/m, z7.s, z24.s
	.loc 13 1077 0
..LDL8183:
/*   1077 */	fmla	z27.s, p2/m, z7.s, z12.s
	.loc 13 1082 0
..LDL8184:
/*   1082 */	fmla	z28.s, p0/m, z3.s, z11.s
	.loc 13 1084 0
..LDL8185:
/*   1084 */	fmla	z29.s, p1/m, z3.s, z24.s
	.loc 13 1086 0
..LDL8186:
/*   1086 */	fmla	z18.s, p2/m, z3.s, z12.s
	.loc 13 1091 0
..LDL8187:
/*   1091 */	fmla	z31.s, p0/m, z30.s, z11.s
	.loc 13 1093 0
..LDL8188:
/*   1093 */	fmla	z8.s, p1/m, z30.s, z24.s
	.loc 13 1095 0
..LDL8189:
/*   1095 */	fmla	z17.s, p2/m, z30.s, z12.s
	.loc 13 1100 0
..LDL8190:
/*   1100 */	fmla	z16.s, p0/m, z14.s, z11.s
	.loc 13 1102 0
..LDL8191:
/*   1102 */	fmla	z15.s, p1/m, z14.s, z24.s
	.loc 13 1104 0
..LDL8192:
/*   1104 */	fmla	z13.s, p2/m, z14.s, z12.s
	.loc 13 1118 0 is_stmt 0
..LDL8193:
/*   1118 */	bne	.L11540
.L11542:
	.loc 13 1123 0 is_stmt 1
..LDL8194:
/*   1123 */	st1w	{z9.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL8195:
/*   1125 */	st1w	{z2.s}, p1, [x24, 0, mul vl]	//  (*)
	.loc 13 1127 0
..LDL8196:
/*   1127 */	st1w	{z21.s}, p2, [x23, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL8197:
/*   1131 */	st1w	{z4.s}, p0, [x22, 0, mul vl]	//  (*)
	.loc 13 1133 0
..LDL8198:
/*   1133 */	st1w	{z5.s}, p1, [x21, 0, mul vl]	//  (*)
	.loc 13 1135 0
..LDL8199:
/*   1135 */	st1w	{z22.s}, p2, [x13, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL8200:
/*   1139 */	st1w	{z6.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1141 0
..LDL8201:
/*   1141 */	st1w	{z10.s}, p1, [x16, 0, mul vl]	//  (*)
	.loc 13 1143 0
..LDL8202:
/*   1143 */	st1w	{z20.s}, p2, [x17, 0, mul vl]	//  (*)
	.loc 13 1147 0
..LDL8203:
/*   1147 */	st1w	{z25.s}, p0, [x18, 0, mul vl]	//  (*)
	.loc 13 1149 0
..LDL8204:
/*   1149 */	st1w	{z26.s}, p1, [x30, 0, mul vl]	//  (*)
	.loc 13 1151 0
..LDL8205:
/*   1151 */	st1w	{z27.s}, p2, [x20, 0, mul vl]	//  (*)
	.loc 13 1155 0
..LDL8206:
/*   1155 */	st1w	{z28.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 1157 0
..LDL8207:
/*   1157 */	st1w	{z29.s}, p1, [x12, 0, mul vl]	//  (*)
	.loc 13 1159 0
..LDL8208:
/*   1159 */	st1w	{z18.s}, p2, [x11, 0, mul vl]	//  (*)
	.loc 13 1163 0
..LDL8209:
/*   1163 */	st1w	{z31.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1165 0
..LDL8210:
/*   1165 */	st1w	{z8.s}, p1, [x9, 0, mul vl]	//  (*)
	.loc 13 1167 0
..LDL8211:
/*   1167 */	st1w	{z17.s}, p2, [x8, 0, mul vl]	//  (*)
	.loc 13 1171 0
..LDL8212:
/*   1171 */	st1w	{z16.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1173 0
..LDL8213:
/*   1173 */	st1w	{z15.s}, p1, [x5, 0, mul vl]	//  (*)
	.loc 13 1175 0
..LDL8214:
/*   1175 */	st1w	{z13.s}, p2, [x25, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL8215:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	z20, [x29, 13, mul vl]	//  (*)
/*    ??? */	ldr	z21, [x29, 14, mul vl]	//  (*)
/*    ??? */	ldr	z22, [x29, 15, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [x29, -64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	ldr	x27, [x29, -72]	//  (*)
	.cfi_restore 27
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 16
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D48.pchi:
	.cfi_endproc
.LFE47:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi7ELi48EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi7ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL8216:
.LFB48:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -17
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0x88,0x1,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0xf8,0x7e,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0xf8,0x7e,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 16
/*    ??? */	str	x19, [x29, -8]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x78,0x22,0x11,0xf8,0x7e,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0x80,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0x88,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z20, [x29, 13, mul vl]	//  (*)
	.cfi_escape 0x10,0x74,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z21, [x29, 14, mul vl]	//  (*)
	.cfi_escape 0x10,0x75,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z22, [x29, 15, mul vl]	//  (*)
	.cfi_escape 0x10,0x76,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z23, [x29, 16, mul vl]	//  (*)
	.cfi_escape 0x10,0x77,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL8217:
/*    971 */	ld1w	{z27.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL8218:
/*    987 */	add	w10, w4, w4
	.loc 13 1011 0
..LDL8219:
/*   1011 */	add	w7, w4, w4, lsl #2
	.loc 13 995 0
..LDL8220:
/*    995 */	add	w9, w10, w4
	.loc 13 1027 0
..LDL8221:
/*   1027 */	lsl	w12, w4, 3
	.loc 13 1003 0
..LDL8222:
/*   1003 */	lsl	w8, w4, 2
	.loc 13 979 0
..LDL8223:
/*    979 */	sxtw	x11, w4
	.loc 13 1019 0
..LDL8224:
/*   1019 */	add	w5, w9, w9
	.loc 13 1027 0
..LDL8225:
/*   1027 */	sub	w4, w12, w4
	.loc 13 987 0
..LDL8226:
/*    987 */	sxtw	x10, w10
	.loc 13 995 0
..LDL8227:
/*    995 */	sxtw	x9, w9
	.loc 13 1003 0
..LDL8228:
/*   1003 */	sxtw	x8, w8
	.loc 13 1011 0
..LDL8229:
/*   1011 */	sxtw	x7, w7
	.loc 13 1019 0
..LDL8230:
/*   1019 */	sxtw	x5, w5
	.loc 13 1027 0
..LDL8231:
/*   1027 */	sxtw	x4, w4
	.loc 13 979 0
..LDL8232:
/*    979 */	add	x11, x3, x11, lsl #2
/*    979 */	ld1w	{z25.s}, p0/z, [x11, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL8233:
/*    987 */	add	x10, x3, x10, lsl #2
/*    987 */	ld1w	{z7.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 995 0
..LDL8234:
/*    995 */	add	x9, x3, x9, lsl #2
/*    995 */	ld1w	{z5.s}, p0/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1003 0
..LDL8235:
/*   1003 */	add	x8, x3, x8, lsl #2
/*   1003 */	ld1w	{z3.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1011 0
..LDL8236:
/*   1011 */	add	x7, x3, x7, lsl #2
/*   1011 */	ld1w	{z2.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1019 0
..LDL8237:
/*   1019 */	add	x5, x3, x5, lsl #2
/*   1019 */	ld1w	{z0.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1027 0
..LDL8238:
/*   1027 */	add	x12, x3, x4, lsl #2
/*   1027 */	ld1w	{z1.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL8239:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11550
	.loc 13 1117 0 is_stmt 0
..LDL8240:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL8241:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x15, x1, 28
	.loc 13 1107 0
..LDL8242:
/*   1107 */	mov	x13, 2564
/*   1107 */	mov	x6, 516
	.loc 13 1034 0
..LDL8243:
/*   1034 */	cmp	w0, 5
/*   1034 */	blt	.L12195
	.loc 13 1118 0
..LDL8244:
/*   1118 */	mov	x14, x15
	.loc 13 1107 0
..LDL8245:
/*   1107 */	ptrue	p1.s, ALL
	.loc 13 1118 0
..LDL8246:
/*   1118 */	mov	z8.d, z0.d
/*   1118 */	mov	z30.d, z2.d
	.loc 13 1037 0
..LDL8247:
/*   1037 */	orr	x16, x2, 6917529027641081856
	.loc 13 1044 0
..LDL8248:
/*   1044 */	ldr	s26, [x14, -28]	//  (*)
	.loc 13 1117 0
..LDL8249:
/*   1117 */	add	x2, x2, x4
/*   1062 */	ldp	s4, s24, [x14, -24]	//  (*)
	.loc 13 1071 0
..LDL8250:
/*   1071 */	ldr	s0, [x14, -16]	//  (*)
	.loc 13 1037 0
..LDL8251:
/*   1037 */	orr	x15, x2, 6917529027641081856
	.loc 13 1116 0
..LDL8252:
/*   1116 */	add	x1, x14, 32
	.loc 13 1080 0
..LDL8253:
/*   1080 */	ldr	s2, [x14, -12]	//  (*)
	.loc 13 1037 0
..LDL8254:
/*   1037 */	ld1w	{z11.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1089 0
..LDL8255:
/*   1089 */	ldr	s13, [x14, -8]	//  (*)
	.loc 13 1107 0
..LDL8256:
/*   1107 */	ld1rw	{z19.s}, p1/z, [x14]	//  (*)
	.loc 13 1044 0
..LDL8257:
/*   1044 */	ldr	s12, [x14, 4]	//  (*)
	.loc 13 1098 0
..LDL8258:
/*   1098 */	ldr	s14, [x14, -4]	//  (*)
	.loc 13 1053 0
..LDL8259:
/*   1053 */	ldr	s17, [x14, 8]	//  (*)
/*   1071 */	ldp	s6, s15, [x14, 12]	//  (*)
	.loc 13 1080 0
..LDL8260:
/*   1080 */	ldr	s18, [x14, 20]	//  (*)
	.loc 13 1037 0
..LDL8261:
/*   1037 */	prfm	2, [x16, 2560]	//  (*)
/*   1037 */	prfm	0, [x16, 512]	//  (*)
	.loc 13 1044 0
..LDL8262:
/*   1044 */	dup	z29.s, z26.s[0]
	.loc 13 1037 0
..LDL8263:
/*   1037 */	prfm	2, [x15, 2560]	//  (*)
/*   1037 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 1062 0
..LDL8264:
/*   1062 */	dup	z26.s, z24.s[0]
	.loc 13 1053 0
..LDL8265:
/*   1053 */	dup	z28.s, z4.s[0]
	.loc 13 1071 0
..LDL8266:
/*   1071 */	dup	z24.s, z0.s[0]
	.loc 13 1080 0
..LDL8267:
/*   1080 */	dup	z16.s, z2.s[0]
	.p2align 5
.L11548:					// :entr:term:swpl
	.loc 13 1117 0
..LDL8268:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL8269:
/*   1037 */	ld1w	{z10.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1089 0
..LDL8270:
/*   1089 */	dup	z0.s, z13.s[0]
	.loc 13 1037 0
..LDL8271:
/*   1037 */	orr	x15, x2, 6917529027641081856
	.loc 13 1089 0
..LDL8272:
/*   1089 */	ldr	s20, [x1, -8]	//  (*)
	.loc 13 1116 0
..LDL8273:
/*   1116 */	add	x16, x1, 32
	.loc 13 1098 0
..LDL8274:
/*   1098 */	dup	z13.s, z14.s[0]
	.loc 13 1044 0
..LDL8275:
/*   1044 */	ldr	s21, [x1, 4]	//  (*)
/*   1044 */	dup	z9.s, z12.s[0]
	.loc 13 1046 0
..LDL8276:
/*   1046 */	fmla	z27.s, p0/m, z29.s, z11.s
	.loc 13 1098 0
..LDL8277:
/*   1098 */	ldr	s14, [x1, -4]	//  (*)
	.loc 13 1037 0
..LDL8278:
/*   1037 */	prfm	2, [x15, 2560]	//  (*)
	.loc 13 1053 0
..LDL8279:
/*   1053 */	dup	z31.s, z17.s[0]
	.loc 13 1055 0
..LDL8280:
/*   1055 */	fmla	z25.s, p0/m, z28.s, z11.s
	.loc 13 1107 0
..LDL8281:
/*   1107 */	ptrue	p1.s, ALL
	.loc 13 1053 0
..LDL8282:
/*   1053 */	ldr	s17, [x1, 8]	//  (*)
	.loc 13 1062 0
..LDL8283:
/*   1062 */	dup	z2.s, z6.s[0]
	.loc 13 1064 0
..LDL8284:
/*   1064 */	fmla	z7.s, p0/m, z26.s, z11.s
	.loc 13 1037 0
..LDL8285:
/*   1037 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 1071 0
..LDL8286:
/*   1071 */	ldr	s22, [x1, 16]	//  (*)
/*   1071 */	dup	z6.s, z15.s[0]
	.loc 13 1073 0
..LDL8287:
/*   1073 */	movprfx	z12.s, p0/z, z5.s
/*   1073 */	fmla	z12.s, p0/m, z24.s, z11.s
	.loc 13 1062 0
..LDL8288:
/*   1062 */	ldr	s5, [x1, 12]	//  (*)
	.loc 13 1080 0
..LDL8289:
/*   1080 */	ldr	s23, [x1, 20]	//  (*)
/*   1080 */	dup	z4.s, z18.s[0]
	.loc 13 1082 0
..LDL8290:
/*   1082 */	fmad	z16.s, p0/m, z11.s, z3.s
	.loc 13 1107 0
..LDL8291:
/*   1107 */	ld1rw	{z29.s}, p1/z, [x1]	//  (*)
	.loc 13 1091 0
..LDL8292:
/*   1091 */	fmla	z30.s, p0/m, z0.s, z11.s
	.loc 13 1100 0
..LDL8293:
/*   1100 */	fmla	z8.s, p0/m, z13.s, z11.s
	.loc 13 1107 0
..LDL8294:
/*   1107 */	prfm	2, [x14, x13]	//  (*)
/*   1107 */	prfm	0, [x14, x6]	//  (*)
	.loc 13 1109 0
..LDL8295:
/*   1109 */	fmla	z1.s, p0/m, z19.s, z11.s
	.loc 13 1117 0
..LDL8296:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL8297:
/*   1037 */	ld1w	{z0.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1089 0
..LDL8298:
/*   1089 */	dup	z15.s, z20.s[0]
	.loc 13 1037 0
..LDL8299:
/*   1037 */	orr	x15, x2, 6917529027641081856
	.loc 13 1089 0
..LDL8300:
/*   1089 */	ldr	s13, [x1, 24]	//  (*)
	.loc 13 1116 0
..LDL8301:
/*   1116 */	add	x14, x1, 64
	.loc 13 1098 0
..LDL8302:
/*   1098 */	dup	z11.s, z14.s[0]
	.loc 13 1044 0
..LDL8303:
/*   1044 */	ldr	s20, [x1, 36]	//  (*)
/*   1044 */	dup	z28.s, z21.s[0]
	.loc 13 1046 0
..LDL8304:
/*   1046 */	fmla	z27.s, p0/m, z9.s, z10.s
	.loc 13 1098 0
..LDL8305:
/*   1098 */	ldr	s14, [x1, 28]	//  (*)
	.loc 13 1037 0
..LDL8306:
/*   1037 */	prfm	2, [x15, 2560]	//  (*)
	.loc 13 1053 0
..LDL8307:
/*   1053 */	dup	z26.s, z17.s[0]
	.loc 13 1055 0
..LDL8308:
/*   1055 */	fmla	z25.s, p0/m, z31.s, z10.s
	.loc 13 1053 0
..LDL8309:
/*   1053 */	ldr	s17, [x1, 40]	//  (*)
	.loc 13 1062 0
..LDL8310:
/*   1062 */	dup	z24.s, z5.s[0]
	.loc 13 1064 0
..LDL8311:
/*   1064 */	fmla	z7.s, p0/m, z2.s, z10.s
	.loc 13 1037 0
..LDL8312:
/*   1037 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 1071 0
..LDL8313:
/*   1071 */	ldr	s19, [x1, 48]	//  (*)
/*   1071 */	dup	z5.s, z22.s[0]
	.loc 13 1073 0
..LDL8314:
/*   1073 */	fmad	z6.s, p0/m, z10.s, z12.s
	.loc 13 1062 0
..LDL8315:
/*   1062 */	ldr	s18, [x1, 44]	//  (*)
	.loc 13 1080 0
..LDL8316:
/*   1080 */	ldr	s21, [x1, 52]	//  (*)
/*   1080 */	dup	z3.s, z23.s[0]
	.loc 13 1082 0
..LDL8317:
/*   1082 */	fmad	z4.s, p0/m, z10.s, z16.s
	.loc 13 1107 0
..LDL8318:
/*   1107 */	ld1rw	{z2.s}, p1/z, [x16]	//  (*)
	.loc 13 1091 0
..LDL8319:
/*   1091 */	movprfx	z31.s, p0/z, z30.s
/*   1091 */	fmla	z31.s, p0/m, z15.s, z10.s
	.loc 13 1100 0
..LDL8320:
/*   1100 */	movprfx	z9.s, p0/z, z8.s
/*   1100 */	fmla	z9.s, p0/m, z11.s, z10.s
	.loc 13 1107 0
..LDL8321:
/*   1107 */	prfm	2, [x1, x13]	//  (*)
/*   1107 */	prfm	0, [x1, x6]	//  (*)
	.loc 13 1109 0
..LDL8322:
/*   1109 */	fmla	z1.s, p0/m, z29.s, z10.s
	.loc 13 1117 0
..LDL8323:
/*   1117 */	add	x2, x2, x4
	.loc 13 1037 0
..LDL8324:
/*   1037 */	ld1w	{z11.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1089 0
..LDL8325:
/*   1089 */	dup	z30.s, z13.s[0]
	.loc 13 1037 0
..LDL8326:
/*   1037 */	orr	x15, x2, 6917529027641081856
	.loc 13 1089 0
..LDL8327:
/*   1089 */	ldr	s13, [x1, 56]	//  (*)
	.loc 13 1116 0
..LDL8328:
/*   1116 */	add	x1, x1, 96
	.loc 13 1098 0
..LDL8329:
/*   1098 */	dup	z8.s, z14.s[0]
	.loc 13 1044 0
..LDL8330:
/*   1044 */	ldr	s12, [x1, -28]	//  (*)
/*   1044 */	dup	z29.s, z20.s[0]
	.loc 13 1046 0
..LDL8331:
/*   1046 */	fmla	z27.s, p0/m, z28.s, z0.s
	.loc 13 1098 0
..LDL8332:
/*   1098 */	ldr	s14, [x14, -4]	//  (*)
	.loc 13 1037 0
..LDL8333:
/*   1037 */	prfm	2, [x15, 2560]	//  (*)
	.loc 13 1053 0
..LDL8334:
/*   1053 */	dup	z28.s, z17.s[0]
	.loc 13 1055 0
..LDL8335:
/*   1055 */	fmla	z25.s, p0/m, z26.s, z0.s
	.loc 13 1053 0
..LDL8336:
/*   1053 */	ldr	s17, [x1, -24]	//  (*)
	.loc 13 1062 0
..LDL8337:
/*   1062 */	dup	z26.s, z18.s[0]
	.loc 13 1064 0
..LDL8338:
/*   1064 */	fmla	z7.s, p0/m, z24.s, z0.s
	.loc 13 1037 0
..LDL8339:
/*   1037 */	prfm	0, [x15, 512]	//  (*)
	.loc 13 1071 0
..LDL8340:
/*   1071 */	ldr	s15, [x1, -16]	//  (*)
/*   1071 */	dup	z24.s, z19.s[0]
	.loc 13 1073 0
..LDL8341:
/*   1073 */	fmad	z5.s, p0/m, z0.s, z6.s
	.loc 13 1062 0
..LDL8342:
/*   1062 */	ldr	s6, [x1, -20]	//  (*)
	.loc 13 1080 0
..LDL8343:
/*   1080 */	ldr	s18, [x1, -12]	//  (*)
/*   1080 */	dup	z16.s, z21.s[0]
	.loc 13 1082 0
..LDL8344:
/*   1082 */	fmad	z3.s, p0/m, z0.s, z4.s
	.loc 13 1107 0
..LDL8345:
/*   1107 */	ld1rw	{z19.s}, p1/z, [x14]	//  (*)
	.loc 13 1091 0
..LDL8346:
/*   1091 */	fmad	z30.s, p0/m, z0.s, z31.s
	.loc 13 1100 0
..LDL8347:
/*   1100 */	fmad	z8.s, p0/m, z0.s, z9.s
	.loc 13 1107 0
..LDL8348:
/*   1107 */	prfm	2, [x16, x13]	//  (*)
/*   1107 */	prfm	0, [x16, x6]	//  (*)
	.loc 13 1109 0
..LDL8349:
/*   1109 */	fmla	z1.s, p0/m, z2.s, z0.s
	.loc 13 1118 0
..LDL8350:
/*   1118 */	sub	w0, w0, 3
	.loc 13 1036 0
..LDL8351:
/*   1036 */	cmp	w0, 5
/*   1036 */	bge	.L11548
	.loc 13 1089 0
..LDL8352:
/*   1089 */	ldr	s31, [x1, -8]	//  (*)
	.loc 13 1046 0
..LDL8353:
/*   1046 */	fmla	z27.s, p0/m, z29.s, z11.s
	.loc 13 1055 0
..LDL8354:
/*   1055 */	fmla	z25.s, p0/m, z28.s, z11.s
	.loc 13 1107 0
..LDL8355:
/*   1107 */	ptrue	p1.s, ALL
	.loc 13 1117 0
..LDL8356:
/*   1117 */	add	x2, x2, x4
	.loc 13 1098 0
..LDL8357:
/*   1098 */	ldr	s29, [x1, -4]	//  (*)
	.loc 13 1062 0
..LDL8358:
/*   1062 */	dup	z28.s, z6.s[0]
	.loc 13 1064 0
..LDL8359:
/*   1064 */	fmla	z7.s, p0/m, z26.s, z11.s
	.loc 13 1037 0
..LDL8360:
/*   1037 */	ld1w	{z4.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 1089 0
..LDL8361:
/*   1089 */	dup	z2.s, z13.s[0]
	.loc 13 1116 0
..LDL8362:
/*   1116 */	add	x15, x1, 32
	.loc 13 1073 0
..LDL8363:
/*   1073 */	fmla	z5.s, p0/m, z24.s, z11.s
	.loc 13 1098 0
..LDL8364:
/*   1098 */	dup	z0.s, z14.s[0]
	.loc 13 1082 0
..LDL8365:
/*   1082 */	fmla	z3.s, p0/m, z16.s, z11.s
	.loc 13 1107 0
..LDL8366:
/*   1107 */	ld1rw	{z6.s}, p1/z, [x1]	//  (*)
	.loc 13 1118 0
..LDL8367:
/*   1118 */	sub	w0, w0, 2
	.loc 13 1044 0
..LDL8368:
/*   1044 */	dup	z9.s, z12.s[0]
	.loc 13 1107 0
..LDL8369:
/*   1107 */	prfm	2, [x14, x13]	//  (*)
	.loc 13 1109 0
..LDL8370:
/*   1109 */	fmla	z1.s, p0/m, z19.s, z11.s
	.loc 13 1053 0
..LDL8371:
/*   1053 */	dup	z10.s, z17.s[0]
	.loc 13 1107 0
..LDL8372:
/*   1107 */	prfm	0, [x14, x6]	//  (*)
	.loc 13 1071 0
..LDL8373:
/*   1071 */	dup	z13.s, z15.s[0]
	.loc 13 1107 0
..LDL8374:
/*   1107 */	prfm	2, [x1, x13]	//  (*)
	.loc 13 1080 0
..LDL8375:
/*   1080 */	dup	z12.s, z18.s[0]
	.loc 13 1107 0
..LDL8376:
/*   1107 */	prfm	0, [x1, x6]	//  (*)
	.loc 13 1091 0
..LDL8377:
/*   1091 */	fmad	z2.s, p0/m, z11.s, z30.s
	.loc 13 1100 0
..LDL8378:
/*   1100 */	fmad	z0.s, p0/m, z11.s, z8.s
	.loc 13 1089 0
..LDL8379:
/*   1089 */	dup	z26.s, z31.s[0]
	.loc 13 1098 0
..LDL8380:
/*   1098 */	dup	z24.s, z29.s[0]
	.loc 13 1046 0
..LDL8381:
/*   1046 */	fmla	z27.s, p0/m, z9.s, z4.s
	.loc 13 1055 0
..LDL8382:
/*   1055 */	fmla	z25.s, p0/m, z10.s, z4.s
	.loc 13 1064 0
..LDL8383:
/*   1064 */	fmla	z7.s, p0/m, z28.s, z4.s
	.loc 13 1073 0
..LDL8384:
/*   1073 */	fmla	z5.s, p0/m, z13.s, z4.s
	.loc 13 1082 0
..LDL8385:
/*   1082 */	fmla	z3.s, p0/m, z12.s, z4.s
	.loc 13 1109 0
..LDL8386:
/*   1109 */	fmla	z1.s, p0/m, z6.s, z4.s
	.loc 13 1091 0
..LDL8387:
/*   1091 */	fmla	z2.s, p0/m, z26.s, z4.s
	.loc 13 1100 0
..LDL8388:
/*   1100 */	fmla	z0.s, p0/m, z24.s, z4.s
	.loc 13 1118 0
..LDL8389:
/*   1118 */	cbz	w0, .L12192
.L12195:
	.p2align 5
.L12198:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL8390:
/*   1037 */	orr	x1, x2, 6917529027641081856
	.loc 13 1044 0
..LDL8391:
/*   1044 */	ldp	s30, s6, [x15, -28]	//  (*)
	.loc 13 1107 0
..LDL8392:
/*   1107 */	ptrue	p1.s, ALL
	.loc 13 1062 0
..LDL8393:
/*   1062 */	ldp	s31, s8, [x15, -20]	//  (*)
	.loc 13 1117 0
..LDL8394:
/*   1117 */	add	x2, x2, x4
	.loc 13 1118 0
..LDL8395:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1080 0
..LDL8396:
/*   1080 */	ldp	s29, s26, [x15, -12]	//  (*)
	.loc 13 1037 0
..LDL8397:
/*   1037 */	ld1w	{z24.s}, p0/z, [x1, 0, mul vl]	//  (*)
	.loc 13 1098 0
..LDL8398:
/*   1098 */	ldr	s28, [x15, -4]	//  (*)
	.loc 13 1107 0
..LDL8399:
/*   1107 */	prfm	2, [x15, x13]	//  (*)
/*   1107 */	ld1rw	{z4.s}, p1/z, [x15]	//  (*)
	.loc 13 1037 0
..LDL8400:
/*   1037 */	prfm	2, [x1, 2560]	//  (*)
	.loc 13 1107 0
..LDL8401:
/*   1107 */	prfm	0, [x15, x6]	//  (*)
	.loc 13 1116 0
..LDL8402:
/*   1116 */	add	x15, x15, 32
	.loc 13 1037 0
..LDL8403:
/*   1037 */	prfm	0, [x1, 512]	//  (*)
	.loc 13 1044 0
..LDL8404:
/*   1044 */	dup	z30.s, z30.s[0]
	.loc 13 1053 0
..LDL8405:
/*   1053 */	dup	z6.s, z6.s[0]
	.loc 13 1062 0
..LDL8406:
/*   1062 */	dup	z31.s, z31.s[0]
	.loc 13 1071 0
..LDL8407:
/*   1071 */	dup	z8.s, z8.s[0]
	.loc 13 1080 0
..LDL8408:
/*   1080 */	dup	z29.s, z29.s[0]
	.loc 13 1089 0
..LDL8409:
/*   1089 */	dup	z26.s, z26.s[0]
	.loc 13 1046 0
..LDL8410:
/*   1046 */	fmla	z27.s, p0/m, z30.s, z24.s
	.loc 13 1098 0
..LDL8411:
/*   1098 */	dup	z28.s, z28.s[0]
	.loc 13 1055 0
..LDL8412:
/*   1055 */	fmla	z25.s, p0/m, z6.s, z24.s
	.loc 13 1109 0
..LDL8413:
/*   1109 */	fmla	z1.s, p0/m, z4.s, z24.s
	.loc 13 1064 0
..LDL8414:
/*   1064 */	fmla	z7.s, p0/m, z31.s, z24.s
	.loc 13 1073 0
..LDL8415:
/*   1073 */	fmla	z5.s, p0/m, z8.s, z24.s
	.loc 13 1082 0
..LDL8416:
/*   1082 */	fmla	z3.s, p0/m, z29.s, z24.s
	.loc 13 1091 0
..LDL8417:
/*   1091 */	fmla	z2.s, p0/m, z26.s, z24.s
	.loc 13 1100 0
..LDL8418:
/*   1100 */	fmla	z0.s, p0/m, z28.s, z24.s
	.loc 13 1118 0 is_stmt 0
..LDL8419:
/*   1118 */	bne	.L12198
.L12192:
.L11550:
	.loc 13 1123 0 is_stmt 1
..LDL8420:
/*   1123 */	st1w	{z27.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL8421:
/*   1131 */	st1w	{z25.s}, p0, [x11, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL8422:
/*   1139 */	st1w	{z7.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1147 0
..LDL8423:
/*   1147 */	st1w	{z5.s}, p0, [x9, 0, mul vl]	//  (*)
	.loc 13 1155 0
..LDL8424:
/*   1155 */	st1w	{z3.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1163 0
..LDL8425:
/*   1163 */	st1w	{z2.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1171 0
..LDL8426:
/*   1171 */	st1w	{z0.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1179 0
..LDL8427:
/*   1179 */	st1w	{z1.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL8428:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	z20, [x29, 13, mul vl]	//  (*)
/*    ??? */	ldr	z21, [x29, 14, mul vl]	//  (*)
/*    ??? */	ldr	z22, [x29, 15, mul vl]	//  (*)
/*    ??? */	ldr	z23, [x29, 16, mul vl]	//  (*)
/*    ??? */	ldr	x19, [x29, -8]	//  (*)
	.cfi_restore 19
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 17
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D49.pchi:
	.cfi_endproc
.LFE48:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL8429:
.LFB49:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -13
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xe8,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 48
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x50,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x18,0xb,0x11,0x58,0x22,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL8430:
/*    971 */	ld1w	{z8.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL8431:
/*    987 */	add	w10, w4, w4
	.loc 13 1011 0
..LDL8432:
/*   1011 */	add	w7, w4, w4, lsl #2
	.loc 13 995 0
..LDL8433:
/*    995 */	add	w9, w10, w4
	.loc 13 1003 0
..LDL8434:
/*   1003 */	lsl	w8, w4, 2
	.loc 13 1027 0
..LDL8435:
/*   1027 */	lsl	w11, w4, 3
	.loc 13 1019 0
..LDL8436:
/*   1019 */	add	w5, w9, w9
	.loc 13 979 0
..LDL8437:
/*    979 */	sxtw	x16, w4
	.loc 13 1003 0
..LDL8438:
/*   1003 */	sxtw	x12, w8
	.loc 13 1027 0
..LDL8439:
/*   1027 */	sub	w4, w11, w4
	.loc 13 987 0
..LDL8440:
/*    987 */	sxtw	x15, w10
	.loc 13 995 0
..LDL8441:
/*    995 */	sxtw	x14, w9
	.loc 13 1019 0
..LDL8442:
/*   1019 */	sxtw	x8, w5
	.loc 13 1011 0
..LDL8443:
/*   1011 */	sxtw	x10, w7
	.loc 13 1027 0
..LDL8444:
/*   1027 */	sxtw	x5, w4
	.loc 13 981 0
..LDL8445:
/*    981 */	add	x18, x16, 16
	.loc 13 989 0
..LDL8446:
/*    989 */	add	x17, x15, 16
	.loc 13 997 0
..LDL8447:
/*    997 */	add	x13, x14, 16
	.loc 13 1005 0
..LDL8448:
/*   1005 */	add	x11, x12, 16
	.loc 13 1013 0
..LDL8449:
/*   1013 */	add	x9, x10, 16
	.loc 13 1021 0
..LDL8450:
/*   1021 */	add	x7, x8, 16
	.loc 13 1029 0
..LDL8451:
/*   1029 */	add	x4, x5, 16
	.loc 13 979 0
..LDL8452:
/*    979 */	add	x16, x3, x16, lsl #2
	.loc 13 973 0
..LDL8453:
/*    973 */	add	x30, x3, 64
/*    973 */	ld1w	{z12.s}, p1/z, [x30, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL8454:
/*    981 */	add	x18, x3, x18, lsl #2
	.loc 13 979 0
..LDL8455:
/*    979 */	ld1w	{z31.s}, p0/z, [x16, 0, mul vl]	//  (*)
	.loc 13 981 0
..LDL8456:
/*    981 */	ld1w	{z2.s}, p1/z, [x18, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL8457:
/*    987 */	add	x15, x3, x15, lsl #2
/*    987 */	ld1w	{z28.s}, p0/z, [x15, 0, mul vl]	//  (*)
	.loc 13 989 0
..LDL8458:
/*    989 */	add	x17, x3, x17, lsl #2
/*    989 */	ld1w	{z10.s}, p1/z, [x17, 0, mul vl]	//  (*)
	.loc 13 995 0
..LDL8459:
/*    995 */	add	x14, x3, x14, lsl #2
/*    995 */	ld1w	{z27.s}, p0/z, [x14, 0, mul vl]	//  (*)
	.loc 13 997 0
..LDL8460:
/*    997 */	add	x13, x3, x13, lsl #2
/*    997 */	ld1w	{z11.s}, p1/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1003 0
..LDL8461:
/*   1003 */	add	x12, x3, x12, lsl #2
/*   1003 */	ld1w	{z26.s}, p0/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1005 0
..LDL8462:
/*   1005 */	add	x11, x3, x11, lsl #2
/*   1005 */	ld1w	{z25.s}, p1/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1011 0
..LDL8463:
/*   1011 */	add	x10, x3, x10, lsl #2
/*   1011 */	ld1w	{z24.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1013 0
..LDL8464:
/*   1013 */	add	x9, x3, x9, lsl #2
/*   1013 */	ld1w	{z18.s}, p1/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1019 0
..LDL8465:
/*   1019 */	add	x8, x3, x8, lsl #2
/*   1019 */	ld1w	{z6.s}, p0/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1021 0
..LDL8466:
/*   1021 */	add	x7, x3, x7, lsl #2
/*   1021 */	ld1w	{z16.s}, p1/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1027 0
..LDL8467:
/*   1027 */	add	x5, x3, x5, lsl #2
/*   1027 */	ld1w	{z3.s}, p0/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1029 0
..LDL8468:
/*   1029 */	add	x20, x3, x4, lsl #2
/*   1029 */	ld1w	{z1.s}, p1/z, [x20, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL8469:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11558
	.loc 13 1117 0 is_stmt 0
..LDL8470:
/*   1117 */	sbfiz	x4, x6, 2, 32
	.loc 13 1044 0
..LDL8471:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x22, x1, 28
	.loc 13 1107 0
..LDL8472:
/*   1107 */	mov	x21, 2564
/*   1107 */	mov	x1, 516
	.loc 13 1034 0
..LDL8473:
/*   1034 */	cmp	w0, 3
/*   1034 */	blt	.L12206
	.loc 13 1118 0
..LDL8474:
/*   1118 */	mov	x6, x22
/*   1118 */	mov	z5.d, z16.d
	.loc 13 1037 0
..LDL8475:
/*   1037 */	orr	x22, x2, 6917529027641081856
	.loc 13 1118 0
..LDL8476:
/*   1118 */	mov	z7.d, z18.d
	.loc 13 1053 0
..LDL8477:
/*   1053 */	ldr	s16, [x6, -24]	//  (*)
	.loc 13 1037 0
..LDL8478:
/*   1037 */	ld1w	{z0.s}, p0/z, [x22, 0, mul vl]	//  (*)
	.loc 13 1118 0
..LDL8479:
/*   1118 */	mov	z9.d, z11.d
/*   1118 */	mov	z4.d, z10.d
	.loc 13 1044 0
..LDL8480:
/*   1044 */	ldr	s17, [x6, -28]	//  (*)
	.loc 13 1062 0
..LDL8481:
/*   1062 */	ldr	s15, [x6, -20]	//  (*)
	.loc 13 1118 0
..LDL8482:
/*   1118 */	mov	z29.d, z2.d
/*   1118 */	mov	z30.d, z12.d
	.loc 13 1071 0
..LDL8483:
/*   1071 */	ldr	s14, [x6, -16]	//  (*)
	.loc 13 1037 0
..LDL8484:
/*   1037 */	prfm	2, [x22, 2560]	//  (*)
/*   1037 */	prfm	0, [x22, 512]	//  (*)
	.loc 13 1039 0
..LDL8485:
/*   1039 */	add	x22, x2, 64
	.p2align 5
.L11556:					// :entr:term:swpl
/*   1039 */	ld1w	{z10.s}, p1/z, [x22, 0, mul vl]	//  (*)
/*   1080 */	ldp	s18, s13, [x6, -12]	//  (*)
	.loc 13 1098 0
..LDL8486:
/*   1098 */	ldr	s12, [x6, -4]	//  (*)
	.loc 13 1044 0
..LDL8487:
/*   1044 */	dup	z17.s, z17.s[0]
	.loc 13 1107 0
..LDL8488:
/*   1107 */	ptrue	p2.s, ALL
	.loc 13 1053 0
..LDL8489:
/*   1053 */	dup	z16.s, z16.s[0]
	.loc 13 1062 0
..LDL8490:
/*   1062 */	dup	z11.s, z15.s[0]
	.loc 13 1071 0
..LDL8491:
/*   1071 */	dup	z15.s, z14.s[0]
	.loc 13 1107 0
..LDL8492:
/*   1107 */	ld1rw	{z2.s}, p2/z, [x6]	//  (*)
	.loc 13 1080 0
..LDL8493:
/*   1080 */	dup	z14.s, z18.s[0]
	.loc 13 1089 0
..LDL8494:
/*   1089 */	dup	z13.s, z13.s[0]
	.loc 13 1117 0
..LDL8495:
/*   1117 */	add	x22, x2, x4
	.loc 13 1098 0
..LDL8496:
/*   1098 */	dup	z12.s, z12.s[0]
	.loc 13 1037 0
..LDL8497:
/*   1037 */	orr	x2, x22, 6917529027641081856
	.loc 13 1046 0
..LDL8498:
/*   1046 */	fmla	z8.s, p0/m, z17.s, z0.s
	.loc 13 1048 0
..LDL8499:
/*   1048 */	fmla	z30.s, p1/m, z17.s, z10.s
	.loc 13 1037 0
..LDL8500:
/*   1037 */	prfm	2, [x2, 2560]	//  (*)
	.loc 13 1055 0
..LDL8501:
/*   1055 */	fmla	z31.s, p0/m, z16.s, z0.s
	.loc 13 1057 0
..LDL8502:
/*   1057 */	fmla	z29.s, p1/m, z16.s, z10.s
	.loc 13 1037 0
..LDL8503:
/*   1037 */	prfm	0, [x2, 512]	//  (*)
	.loc 13 1064 0
..LDL8504:
/*   1064 */	fmla	z28.s, p0/m, z11.s, z0.s
	.loc 13 1073 0
..LDL8505:
/*   1073 */	fmla	z27.s, p0/m, z15.s, z0.s
	.loc 13 1116 0
..LDL8506:
/*   1116 */	add	x23, x6, 32
	.loc 13 1075 0
..LDL8507:
/*   1075 */	fmla	z9.s, p1/m, z15.s, z10.s
	.loc 13 1082 0
..LDL8508:
/*   1082 */	fmla	z26.s, p0/m, z14.s, z0.s
/*   1053 */	ldp	s16, s17, [x6, 4]	//  (*)
	.loc 13 1084 0
..LDL8509:
/*   1084 */	fmla	z25.s, p1/m, z14.s, z10.s
	.loc 13 1091 0
..LDL8510:
/*   1091 */	fmla	z24.s, p0/m, z13.s, z0.s
/*   1062 */	ldp	s15, s14, [x6, 12]	//  (*)
	.loc 13 1093 0
..LDL8511:
/*   1093 */	fmla	z7.s, p1/m, z13.s, z10.s
	.loc 13 1100 0
..LDL8512:
/*   1100 */	fmla	z6.s, p0/m, z12.s, z0.s
	.loc 13 1107 0
..LDL8513:
/*   1107 */	prfm	2, [x6, x21]	//  (*)
	.loc 13 1102 0
..LDL8514:
/*   1102 */	fmla	z5.s, p1/m, z12.s, z10.s
	.loc 13 1107 0
..LDL8515:
/*   1107 */	prfm	0, [x6, x1]	//  (*)
	.loc 13 1066 0
..LDL8516:
/*   1066 */	fmla	z4.s, p1/m, z11.s, z10.s
	.loc 13 1109 0
..LDL8517:
/*   1109 */	fmla	z3.s, p0/m, z2.s, z0.s
	.loc 13 1111 0
..LDL8518:
/*   1111 */	fmad	z2.s, p1/m, z10.s, z1.s
	.loc 13 1037 0
..LDL8519:
/*   1037 */	ld1w	{z10.s}, p0/z, [x2, 0, mul vl]	//  (*)
	.loc 13 1039 0
..LDL8520:
/*   1039 */	ld1w	{z0.s}, p1/z, [x22, 1, mul vl]	//  (*)
/*   1080 */	ldp	s19, s13, [x6, 20]	//  (*)
	.loc 13 1098 0
..LDL8521:
/*   1098 */	ldr	s12, [x6, 28]	//  (*)
	.loc 13 1044 0
..LDL8522:
/*   1044 */	dup	z18.s, z16.s[0]
	.loc 13 1053 0
..LDL8523:
/*   1053 */	dup	z16.s, z17.s[0]
	.loc 13 1062 0
..LDL8524:
/*   1062 */	dup	z11.s, z15.s[0]
	.loc 13 1071 0
..LDL8525:
/*   1071 */	dup	z15.s, z14.s[0]
	.loc 13 1107 0
..LDL8526:
/*   1107 */	ld1rw	{z1.s}, p2/z, [x23]	//  (*)
	.loc 13 1080 0
..LDL8527:
/*   1080 */	dup	z14.s, z19.s[0]
	.loc 13 1089 0
..LDL8528:
/*   1089 */	dup	z13.s, z13.s[0]
	.loc 13 1117 0
..LDL8529:
/*   1117 */	add	x2, x22, x4
	.loc 13 1098 0
..LDL8530:
/*   1098 */	dup	z12.s, z12.s[0]
	.loc 13 1037 0
..LDL8531:
/*   1037 */	orr	x24, x2, 6917529027641081856
	.loc 13 1046 0
..LDL8532:
/*   1046 */	fmla	z8.s, p0/m, z18.s, z10.s
	.loc 13 1048 0
..LDL8533:
/*   1048 */	fmla	z30.s, p1/m, z18.s, z0.s
	.loc 13 1037 0
..LDL8534:
/*   1037 */	prfm	2, [x24, 2560]	//  (*)
	.loc 13 1055 0
..LDL8535:
/*   1055 */	fmla	z31.s, p0/m, z16.s, z10.s
	.loc 13 1057 0
..LDL8536:
/*   1057 */	fmla	z29.s, p1/m, z16.s, z0.s
	.loc 13 1037 0
..LDL8537:
/*   1037 */	prfm	0, [x24, 512]	//  (*)
	.loc 13 1064 0
..LDL8538:
/*   1064 */	fmla	z28.s, p0/m, z11.s, z10.s
	.loc 13 1073 0
..LDL8539:
/*   1073 */	fmla	z27.s, p0/m, z15.s, z10.s
	.loc 13 1039 0
..LDL8540:
/*   1039 */	add	x22, x2, 64
	.loc 13 1116 0
..LDL8541:
/*   1116 */	add	x6, x6, 64
	.loc 13 1075 0
..LDL8542:
/*   1075 */	fmla	z9.s, p1/m, z15.s, z0.s
	.loc 13 1082 0
..LDL8543:
/*   1082 */	fmla	z26.s, p0/m, z14.s, z10.s
/*   1053 */	ldp	s17, s16, [x6, -28]	//  (*)
	.loc 13 1084 0
..LDL8544:
/*   1084 */	fmla	z25.s, p1/m, z14.s, z0.s
	.loc 13 1091 0
..LDL8545:
/*   1091 */	fmla	z24.s, p0/m, z13.s, z10.s
/*   1062 */	ldp	s15, s14, [x6, -20]	//  (*)
	.loc 13 1093 0
..LDL8546:
/*   1093 */	fmla	z7.s, p1/m, z13.s, z0.s
	.loc 13 1100 0
..LDL8547:
/*   1100 */	fmla	z6.s, p0/m, z12.s, z10.s
	.loc 13 1107 0
..LDL8548:
/*   1107 */	prfm	2, [x23, x21]	//  (*)
	.loc 13 1102 0
..LDL8549:
/*   1102 */	fmla	z5.s, p1/m, z12.s, z0.s
	.loc 13 1107 0
..LDL8550:
/*   1107 */	prfm	0, [x23, x1]	//  (*)
	.loc 13 1066 0
..LDL8551:
/*   1066 */	fmla	z4.s, p1/m, z11.s, z0.s
	.loc 13 1109 0
..LDL8552:
/*   1109 */	fmla	z3.s, p0/m, z1.s, z10.s
	.loc 13 1111 0
..LDL8553:
/*   1111 */	fmad	z1.s, p1/m, z0.s, z2.s
	.loc 13 1037 0
..LDL8554:
/*   1037 */	ld1w	{z0.s}, p0/z, [x24, 0, mul vl]	//  (*)
	.loc 13 1118 0
..LDL8555:
/*   1118 */	sub	w0, w0, 2
	.loc 13 1036 0
..LDL8556:
/*   1036 */	cmp	w0, 3
/*   1036 */	bge	.L11556
	.loc 13 1089 0
..LDL8557:
/*   1089 */	ldr	s18, [x6, -8]	//  (*)
	.loc 13 1044 0
..LDL8558:
/*   1044 */	dup	z12.s, z17.s[0]
	.loc 13 1107 0
..LDL8559:
/*   1107 */	ptrue	p2.s, ALL
	.loc 13 1117 0
..LDL8560:
/*   1117 */	add	x2, x2, x4
	.loc 13 1080 0
..LDL8561:
/*   1080 */	ldr	s19, [x6, -12]	//  (*)
	.loc 13 1098 0
..LDL8562:
/*   1098 */	ldr	s17, [x6, -4]	//  (*)
	.loc 13 1053 0
..LDL8563:
/*   1053 */	dup	z2.s, z16.s[0]
	.loc 13 1118 0
..LDL8564:
/*   1118 */	sub	w0, w0, 1
	.loc 13 1039 0
..LDL8565:
/*   1039 */	ld1w	{z13.s}, p1/z, [x22, 0, mul vl]	//  (*)
	.loc 13 1116 0
..LDL8566:
/*   1116 */	add	x22, x6, 32
	.loc 13 1071 0
..LDL8567:
/*   1071 */	dup	z11.s, z14.s[0]
	.loc 13 1062 0
..LDL8568:
/*   1062 */	dup	z10.s, z15.s[0]
	.loc 13 1107 0
..LDL8569:
/*   1107 */	ld1rw	{z14.s}, p2/z, [x6]	//  (*)
/*   1107 */	prfm	2, [x6, x21]	//  (*)
/*   1107 */	prfm	0, [x6, x1]	//  (*)
	.loc 13 1046 0
..LDL8570:
/*   1046 */	fmla	z8.s, p0/m, z12.s, z0.s
	.loc 13 1055 0
..LDL8571:
/*   1055 */	fmla	z31.s, p0/m, z2.s, z0.s
	.loc 13 1089 0
..LDL8572:
/*   1089 */	dup	z18.s, z18.s[0]
	.loc 13 1073 0
..LDL8573:
/*   1073 */	fmla	z27.s, p0/m, z11.s, z0.s
	.loc 13 1064 0
..LDL8574:
/*   1064 */	fmla	z28.s, p0/m, z10.s, z0.s
	.loc 13 1098 0
..LDL8575:
/*   1098 */	dup	z16.s, z17.s[0]
	.loc 13 1080 0
..LDL8576:
/*   1080 */	dup	z15.s, z19.s[0]
	.loc 13 1048 0
..LDL8577:
/*   1048 */	fmad	z12.s, p1/m, z13.s, z30.s
	.loc 13 1057 0
..LDL8578:
/*   1057 */	fmad	z2.s, p1/m, z13.s, z29.s
	.loc 13 1075 0
..LDL8579:
/*   1075 */	fmad	z11.s, p1/m, z13.s, z9.s
	.loc 13 1091 0
..LDL8580:
/*   1091 */	fmla	z24.s, p0/m, z18.s, z0.s
	.loc 13 1066 0
..LDL8581:
/*   1066 */	fmad	z10.s, p1/m, z13.s, z4.s
	.loc 13 1100 0
..LDL8582:
/*   1100 */	fmla	z6.s, p0/m, z16.s, z0.s
	.loc 13 1082 0
..LDL8583:
/*   1082 */	fmla	z26.s, p0/m, z15.s, z0.s
	.loc 13 1084 0
..LDL8584:
/*   1084 */	fmla	z25.s, p1/m, z15.s, z13.s
	.loc 13 1093 0
..LDL8585:
/*   1093 */	fmad	z18.s, p1/m, z13.s, z7.s
	.loc 13 1102 0
..LDL8586:
/*   1102 */	fmad	z16.s, p1/m, z13.s, z5.s
	.loc 13 1109 0
..LDL8587:
/*   1109 */	fmla	z3.s, p0/m, z14.s, z0.s
	.loc 13 1111 0
..LDL8588:
/*   1111 */	fmla	z1.s, p1/m, z14.s, z13.s
	.loc 13 1118 0
..LDL8589:
/*   1118 */	cbz	w0, .L12203
.L12206:
	.p2align 5
.L12209:					// :entr:term:mod:swpl
	.loc 13 1037 0 is_stmt 1
..LDL8590:
/*   1037 */	orr	x6, x2, 6917529027641081856
	.loc 13 1044 0
..LDL8591:
/*   1044 */	ldp	s0, s14, [x22, -28]	//  (*)
	.loc 13 1107 0
..LDL8592:
/*   1107 */	ptrue	p2.s, ALL
	.loc 13 1039 0
..LDL8593:
/*   1039 */	add	x23, x2, 64
	.loc 13 1062 0
..LDL8594:
/*   1062 */	ldp	s13, s15, [x22, -20]	//  (*)
	.loc 13 1117 0
..LDL8595:
/*   1117 */	add	x2, x2, x4
	.loc 13 1080 0
..LDL8596:
/*   1080 */	ldp	s29, s7, [x22, -12]	//  (*)
	.loc 13 1118 0
..LDL8597:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1037 0
..LDL8598:
/*   1037 */	ld1w	{z4.s}, p0/z, [x6, 0, mul vl]	//  (*)
	.loc 13 1098 0
..LDL8599:
/*   1098 */	ldr	s5, [x22, -4]	//  (*)
	.loc 13 1039 0
..LDL8600:
/*   1039 */	ld1w	{z9.s}, p1/z, [x23, 0, mul vl]	//  (*)
	.loc 13 1107 0
..LDL8601:
/*   1107 */	ld1rw	{z30.s}, p2/z, [x22]	//  (*)
/*   1107 */	prfm	2, [x22, x21]	//  (*)
/*   1107 */	prfm	0, [x22, x1]	//  (*)
	.loc 13 1116 0
..LDL8602:
/*   1116 */	add	x22, x22, 32
	.loc 13 1037 0
..LDL8603:
/*   1037 */	prfm	2, [x6, 2560]	//  (*)
/*   1037 */	prfm	0, [x6, 512]	//  (*)
	.loc 13 1044 0
..LDL8604:
/*   1044 */	dup	z0.s, z0.s[0]
	.loc 13 1053 0
..LDL8605:
/*   1053 */	dup	z14.s, z14.s[0]
	.loc 13 1062 0
..LDL8606:
/*   1062 */	dup	z13.s, z13.s[0]
	.loc 13 1071 0
..LDL8607:
/*   1071 */	dup	z15.s, z15.s[0]
	.loc 13 1080 0
..LDL8608:
/*   1080 */	dup	z29.s, z29.s[0]
	.loc 13 1089 0
..LDL8609:
/*   1089 */	dup	z7.s, z7.s[0]
	.loc 13 1046 0
..LDL8610:
/*   1046 */	fmla	z8.s, p0/m, z0.s, z4.s
	.loc 13 1098 0
..LDL8611:
/*   1098 */	dup	z5.s, z5.s[0]
	.loc 13 1048 0
..LDL8612:
/*   1048 */	fmla	z12.s, p1/m, z0.s, z9.s
	.loc 13 1055 0
..LDL8613:
/*   1055 */	fmla	z31.s, p0/m, z14.s, z4.s
	.loc 13 1057 0
..LDL8614:
/*   1057 */	fmla	z2.s, p1/m, z14.s, z9.s
	.loc 13 1064 0
..LDL8615:
/*   1064 */	fmla	z28.s, p0/m, z13.s, z4.s
	.loc 13 1066 0
..LDL8616:
/*   1066 */	fmla	z10.s, p1/m, z13.s, z9.s
	.loc 13 1073 0
..LDL8617:
/*   1073 */	fmla	z27.s, p0/m, z15.s, z4.s
	.loc 13 1075 0
..LDL8618:
/*   1075 */	fmla	z11.s, p1/m, z15.s, z9.s
	.loc 13 1082 0
..LDL8619:
/*   1082 */	fmla	z26.s, p0/m, z29.s, z4.s
	.loc 13 1084 0
..LDL8620:
/*   1084 */	fmla	z25.s, p1/m, z29.s, z9.s
	.loc 13 1091 0
..LDL8621:
/*   1091 */	fmla	z24.s, p0/m, z7.s, z4.s
	.loc 13 1093 0
..LDL8622:
/*   1093 */	fmla	z18.s, p1/m, z7.s, z9.s
	.loc 13 1100 0
..LDL8623:
/*   1100 */	fmla	z6.s, p0/m, z5.s, z4.s
	.loc 13 1102 0
..LDL8624:
/*   1102 */	fmla	z16.s, p1/m, z5.s, z9.s
	.loc 13 1109 0
..LDL8625:
/*   1109 */	fmla	z3.s, p0/m, z30.s, z4.s
	.loc 13 1111 0
..LDL8626:
/*   1111 */	fmla	z1.s, p1/m, z30.s, z9.s
	.loc 13 1118 0 is_stmt 0
..LDL8627:
/*   1118 */	bne	.L12209
.L12203:
.L11558:
	.loc 13 1123 0 is_stmt 1
..LDL8628:
/*   1123 */	st1w	{z8.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL8629:
/*   1125 */	st1w	{z12.s}, p1, [x30, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL8630:
/*   1131 */	st1w	{z31.s}, p0, [x16, 0, mul vl]	//  (*)
	.loc 13 1133 0
..LDL8631:
/*   1133 */	st1w	{z2.s}, p1, [x18, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL8632:
/*   1139 */	st1w	{z28.s}, p0, [x15, 0, mul vl]	//  (*)
	.loc 13 1141 0
..LDL8633:
/*   1141 */	st1w	{z10.s}, p1, [x17, 0, mul vl]	//  (*)
	.loc 13 1147 0
..LDL8634:
/*   1147 */	st1w	{z27.s}, p0, [x14, 0, mul vl]	//  (*)
	.loc 13 1149 0
..LDL8635:
/*   1149 */	st1w	{z11.s}, p1, [x13, 0, mul vl]	//  (*)
	.loc 13 1155 0
..LDL8636:
/*   1155 */	st1w	{z26.s}, p0, [x12, 0, mul vl]	//  (*)
	.loc 13 1157 0
..LDL8637:
/*   1157 */	st1w	{z25.s}, p1, [x11, 0, mul vl]	//  (*)
	.loc 13 1163 0
..LDL8638:
/*   1163 */	st1w	{z24.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1165 0
..LDL8639:
/*   1165 */	st1w	{z18.s}, p1, [x9, 0, mul vl]	//  (*)
	.loc 13 1171 0
..LDL8640:
/*   1171 */	st1w	{z6.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 13 1173 0
..LDL8641:
/*   1173 */	st1w	{z16.s}, p1, [x7, 0, mul vl]	//  (*)
	.loc 13 1179 0
..LDL8642:
/*   1179 */	st1w	{z3.s}, p0, [x5, 0, mul vl]	//  (*)
	.loc 13 1181 0
..LDL8643:
/*   1181 */	st1w	{z1.s}, p1, [x20, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL8644:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 13
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D50.pchi:
	.cfi_endproc
.LFE49:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z28kernel_MxN_for_8x48_no_packaILi8ELi48EEviPfS0_S0_iiiDvbS1_S1_ $"
	.section	.text._Z28kernel_MxN_for_8x48_no_packaILi8ELi48EEviPfS0_S0_iiiDvbS1_S1_,"axG",%progbits,_Z28kernel_MxN_for_8x48_no_packaILi8ELi48EEviPfS0_S0_iiiDvbS1_S1_,comdat

	.weak	_Z28kernel_MxN_for_8x48_no_packaILi8ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.align	2
	.type	_Z28kernel_MxN_for_8x48_no_packaILi8ELi48EEviPfS0_S0_iiiDvbS1_S1_, %function
_Z28kernel_MxN_for_8x48_no_packaILi8ELi48EEviPfS0_S0_iiiDvbS1_S1_:
	.loc 13 951 0
..LDL8645:
.LFB50:
	.cfi_startproc
/*    ??? */	addvl	sp, sp, -14
/*    ??? */	stp	x29, x30, [sp]	//  (*)
/*   1185 */	add	x29, sp, 0
	.cfi_escape 0xf,0xb,0x92,0x1d,0x0,0x11,0xf0,0x0,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1d,0x8,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1e,0xb,0x11,0x8,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	sub	sp, sp, 144
/*    ??? */	stp	x19, x20, [x29, -16]	//  (*)
	.cfi_escape 0x10,0x13,0xb,0x11,0x70,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x14,0xb,0x11,0x78,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	add	x19, sp, 0
/*    ??? */	stp	x21, x22, [x29, -32]	//  (*)
	.cfi_escape 0x10,0x15,0xb,0x11,0x60,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x16,0xb,0x11,0x68,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x23, x24, [x29, -48]	//  (*)
	.cfi_escape 0x10,0x17,0xb,0x11,0x50,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x18,0xb,0x11,0x58,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x25, x26, [x29, -64]	//  (*)
	.cfi_escape 0x10,0x19,0xb,0x11,0x40,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1a,0xb,0x11,0x48,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	stp	x27, x28, [x29, -80]	//  (*)
	.cfi_escape 0x10,0x1b,0xc,0x11,0xb0,0x7f,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
	.cfi_escape 0x10,0x1c,0xc,0x11,0xb8,0x7f,0x22,0x11,0x90,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*   1185 */	and	sp, x19, -64
/*    ??? */	str	z8, [x29, 1, mul vl]	//  (*)
	.cfi_escape 0x10,0x68,0x8,0x11,0x98,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z9, [x29, 2, mul vl]	//  (*)
	.cfi_escape 0x10,0x69,0x8,0x11,0xa0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z10, [x29, 3, mul vl]	//  (*)
	.cfi_escape 0x10,0x6a,0x8,0x11,0xa8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z11, [x29, 4, mul vl]	//  (*)
	.cfi_escape 0x10,0x6b,0x8,0x11,0xb0,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z12, [x29, 5, mul vl]	//  (*)
	.cfi_escape 0x10,0x6c,0x8,0x11,0xb8,0x7f,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z13, [x29, 6, mul vl]	//  (*)
	.cfi_escape 0x10,0x6d,0x7,0x11,0x40,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z14, [x29, 7, mul vl]	//  (*)
	.cfi_escape 0x10,0x6e,0x7,0x11,0x48,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z15, [x29, 8, mul vl]	//  (*)
	.cfi_escape 0x10,0x6f,0x7,0x11,0x50,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z16, [x29, 9, mul vl]	//  (*)
	.cfi_escape 0x10,0x70,0x7,0x11,0x58,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z17, [x29, 10, mul vl]	//  (*)
	.cfi_escape 0x10,0x71,0x7,0x11,0x60,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z18, [x29, 11, mul vl]	//  (*)
	.cfi_escape 0x10,0x72,0x7,0x11,0x68,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z19, [x29, 12, mul vl]	//  (*)
	.cfi_escape 0x10,0x73,0x7,0x11,0x70,0x92,0x2e,0x0,0x1e,0x22
/*    ??? */	str	z20, [x29, 13, mul vl]	//  (*)
	.cfi_escape 0x10,0x74,0x7,0x11,0x78,0x92,0x2e,0x0,0x1e,0x22
	.loc 13 971 0
..LDL8646:
/*    971 */	ld1w	{z0.s}, p0/z, [x3, 0, mul vl]	//  (*)
	.loc 13 987 0
..LDL8647:
/*    987 */	add	w10, w4, w4
	.loc 13 979 0
..LDL8648:
/*    979 */	sxtw	x25, w4
	.loc 13 987 0
..LDL8649:
/*    987 */	sxtw	x23, w10
	.loc 13 981 0
..LDL8650:
/*    981 */	add	x24, x25, 16
	.loc 13 983 0
..LDL8651:
/*    983 */	add	x15, x25, 32
	.loc 13 991 0
..LDL8652:
/*    991 */	add	x21, x23, 32
	.loc 13 995 0
..LDL8653:
/*    995 */	add	w9, w10, w4
	.loc 13 989 0
..LDL8654:
/*    989 */	add	x22, x23, 16
	.loc 13 979 0
..LDL8655:
/*    ??? */	str	x25, [x19, 40]	//  (*)
	.loc 13 995 0
..LDL8656:
/*    995 */	sxtw	x20, w9
	.loc 13 991 0
..LDL8657:
/*    ??? */	str	x21, [x19, 8]	//  (*)
	.loc 13 997 0
..LDL8658:
/*    997 */	add	x17, x20, 16
	.loc 13 999 0
..LDL8659:
/*    999 */	add	x16, x20, 32
	.loc 13 973 0
..LDL8660:
/*    973 */	add	x21, x3, 64
	.loc 13 1011 0
..LDL8661:
/*   1011 */	add	w7, w4, w4, lsl #2
	.loc 13 981 0
..LDL8662:
/*    ??? */	str	x24, [x19, 32]	//  (*)
	.loc 13 1027 0
..LDL8663:
/*   1027 */	lsl	w11, w4, 3
	.loc 13 1003 0
..LDL8664:
/*   1003 */	lsl	w8, w4, 2
	.loc 13 987 0
..LDL8665:
/*    ??? */	str	x23, [x19, 24]	//  (*)
	.loc 13 1019 0
..LDL8666:
/*   1019 */	add	w5, w9, w9
	.loc 13 1027 0
..LDL8667:
/*   1027 */	sub	w4, w11, w4
	.loc 13 989 0
..LDL8668:
/*    ??? */	str	x22, [x19, 16]	//  (*)
	.loc 13 1011 0
..LDL8669:
/*   1011 */	sxtw	x13, w7
	.loc 13 995 0
..LDL8670:
/*    ??? */	str	x20, [x19]	//  (*)
	.loc 13 979 0
..LDL8671:
/*    979 */	add	x20, x3, x25, lsl #2
	.loc 13 1003 0
..LDL8672:
/*   1003 */	sxtw	x30, w8
	.loc 13 1019 0
..LDL8673:
/*   1019 */	sxtw	x10, w5
	.loc 13 973 0
..LDL8674:
/*    973 */	ld1w	{z1.s}, p1/z, [x21, 0, mul vl]	//  (*)
	.loc 13 1027 0
..LDL8675:
/*   1027 */	sxtw	x7, w4
	.loc 13 973 0
..LDL8676:
/*    ??? */	str	x21, [x19, 56]	//  (*)
	.loc 13 981 0
..LDL8677:
/*    981 */	add	x21, x3, x24, lsl #2
	.loc 13 1005 0
..LDL8678:
/*   1005 */	add	x14, x30, 16
	.loc 13 1007 0
..LDL8679:
/*   1007 */	add	x18, x30, 32
	.loc 13 979 0
..LDL8680:
/*    979 */	ld1w	{z3.s}, p0/z, [x20, 0, mul vl]	//  (*)
	.loc 13 1013 0
..LDL8681:
/*   1013 */	add	x12, x13, 16
	.loc 13 981 0
..LDL8682:
/*    981 */	ld1w	{z4.s}, p1/z, [x21, 0, mul vl]	//  (*)
	.loc 13 983 0
..LDL8683:
/*    983 */	add	x25, x3, x15, lsl #2
	.loc 13 1015 0
..LDL8684:
/*   1015 */	add	x11, x13, 32
	.loc 13 1021 0
..LDL8685:
/*   1021 */	add	x9, x10, 16
	.loc 13 1023 0
..LDL8686:
/*   1023 */	add	x8, x10, 32
	.loc 13 1029 0
..LDL8687:
/*   1029 */	add	x5, x7, 16
	.loc 13 983 0
..LDL8688:
/*    983 */	ld1w	{z5.s}, p2/z, [x25, 0, mul vl]	//  (*)
	.loc 13 1031 0
..LDL8689:
/*   1031 */	add	x4, x7, 32
	.loc 13 989 0
..LDL8690:
/*    ??? */	ldp	x24, x15, [x19, 8]	//  (*)
	.loc 13 995 0
..LDL8691:
/*    ??? */	ldr	x26, [x19]	//  (*)
	.loc 13 987 0
..LDL8692:
/*    987 */	add	x23, x3, x23, lsl #2
	.loc 13 975 0
..LDL8693:
/*    975 */	add	x22, x3, 128
/*    975 */	ld1w	{z2.s}, p2/z, [x22, 0, mul vl]	//  (*)
	.loc 13 989 0
..LDL8694:
/*    989 */	add	x15, x3, x15, lsl #2
	.loc 13 987 0
..LDL8695:
/*    987 */	ld1w	{z6.s}, p0/z, [x23, 0, mul vl]	//  (*)
	.loc 13 989 0
..LDL8696:
/*    989 */	ld1w	{z7.s}, p1/z, [x15, 0, mul vl]	//  (*)
	.loc 13 991 0
..LDL8697:
/*    991 */	add	x24, x3, x24, lsl #2
/*    991 */	ld1w	{z24.s}, p2/z, [x24, 0, mul vl]	//  (*)
	.loc 13 995 0
..LDL8698:
/*    995 */	add	x26, x3, x26, lsl #2
/*    995 */	ld1w	{z25.s}, p0/z, [x26, 0, mul vl]	//  (*)
	.loc 13 997 0
..LDL8699:
/*    997 */	add	x17, x3, x17, lsl #2
/*    997 */	ld1w	{z26.s}, p1/z, [x17, 0, mul vl]	//  (*)
	.loc 13 999 0
..LDL8700:
/*    999 */	add	x16, x3, x16, lsl #2
/*    999 */	ld1w	{z27.s}, p2/z, [x16, 0, mul vl]	//  (*)
	.loc 13 1003 0
..LDL8701:
/*   1003 */	add	x30, x3, x30, lsl #2
/*   1003 */	ld1w	{z28.s}, p0/z, [x30, 0, mul vl]	//  (*)
	.loc 13 1005 0
..LDL8702:
/*   1005 */	add	x14, x3, x14, lsl #2
/*   1005 */	ld1w	{z29.s}, p1/z, [x14, 0, mul vl]	//  (*)
	.loc 13 1007 0
..LDL8703:
/*   1007 */	add	x18, x3, x18, lsl #2
/*   1007 */	ld1w	{z30.s}, p2/z, [x18, 0, mul vl]	//  (*)
	.loc 13 1011 0
..LDL8704:
/*   1011 */	add	x13, x3, x13, lsl #2
/*   1011 */	ld1w	{z31.s}, p0/z, [x13, 0, mul vl]	//  (*)
	.loc 13 1013 0
..LDL8705:
/*   1013 */	add	x12, x3, x12, lsl #2
/*   1013 */	ld1w	{z8.s}, p1/z, [x12, 0, mul vl]	//  (*)
	.loc 13 1015 0
..LDL8706:
/*   1015 */	add	x11, x3, x11, lsl #2
	.loc 13 1013 0
..LDL8707:
/*    ??? */	str	x12, [x19, 48]	//  (*)
	.loc 13 1015 0
..LDL8708:
/*   1015 */	ld1w	{z9.s}, p2/z, [x11, 0, mul vl]	//  (*)
	.loc 13 1019 0
..LDL8709:
/*   1019 */	add	x10, x3, x10, lsl #2
/*   1019 */	ld1w	{z10.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 13 1021 0
..LDL8710:
/*   1021 */	add	x9, x3, x9, lsl #2
/*   1021 */	ld1w	{z11.s}, p1/z, [x9, 0, mul vl]	//  (*)
	.loc 13 1023 0
..LDL8711:
/*   1023 */	add	x8, x3, x8, lsl #2
/*   1023 */	ld1w	{z12.s}, p2/z, [x8, 0, mul vl]	//  (*)
	.loc 13 1027 0
..LDL8712:
/*   1027 */	add	x7, x3, x7, lsl #2
/*   1027 */	ld1w	{z13.s}, p0/z, [x7, 0, mul vl]	//  (*)
	.loc 13 1029 0
..LDL8713:
/*   1029 */	add	x5, x3, x5, lsl #2
/*   1029 */	ld1w	{z14.s}, p1/z, [x5, 0, mul vl]	//  (*)
	.loc 13 1031 0
..LDL8714:
/*   1031 */	add	x4, x3, x4, lsl #2
/*   1031 */	ld1w	{z15.s}, p2/z, [x4, 0, mul vl]	//  (*)
	.loc 13 1034 0
..LDL8715:
/*   1034 */	cmp	w0, 0
/*   1034 */	ble	.L11566
	.loc 13 1117 0 is_stmt 0
..LDL8716:
/*   1117 */	sbfiz	x27, x6, 2, 32
	.loc 13 1044 0
..LDL8717:
/*   1044 */	orr	x1, x1, 6917529027641081856
/*   1044 */	add	x12, x1, 28
	.loc 13 1107 0
..LDL8718:
/*   1107 */	mov	x1, 2564
/*   1107 */	mov	x6, 516
	.p2align 5
.L11564:					// :entr:term
	.loc 13 1037 0 is_stmt 1
..LDL8719:
/*   1037 */	orr	x28, x2, 6917529027641081856
	.loc 13 1044 0
..LDL8720:
/*   1044 */	ldr	s16, [x12, -28]	//  (*)
	.loc 13 1107 0
..LDL8721:
/*   1107 */	ptrue	p3.s, ALL
	.loc 13 1037 0
..LDL8722:
/*   1037 */	prfm	2, [x28, 2560]	//  (*)
/*   1037 */	ld1w	{z18.s}, p0/z, [x28, 0, mul vl]	//  (*)
	.loc 13 1118 0
..LDL8723:
/*   1118 */	subs	w0, w0, 1
	.loc 13 1037 0
..LDL8724:
/*   1037 */	prfm	0, [x28, 512]	//  (*)
	.loc 13 1039 0
..LDL8725:
/*   1039 */	add	x28, x2, 64
	.loc 13 1098 0
..LDL8726:
/*   1098 */	ldr	s20, [x12, -4]	//  (*)
	.loc 13 1039 0
..LDL8727:
/*   1039 */	ld1w	{z19.s}, p1/z, [x28, 0, mul vl]	//  (*)
	.loc 13 1041 0
..LDL8728:
/*   1041 */	add	x28, x2, 128
	.loc 13 1107 0
..LDL8729:
/*   1107 */	prfm	2, [x12, x1]	//  (*)
	.loc 13 1117 0
..LDL8730:
/*   1117 */	add	x2, x2, x27
	.loc 13 1041 0
..LDL8731:
/*   1041 */	ld1w	{z17.s}, p2/z, [x28, 0, mul vl]	//  (*)
	.loc 13 1107 0
..LDL8732:
/*   1107 */	prfm	0, [x12, x6]	//  (*)
	.loc 13 1044 0
..LDL8733:
/*   1044 */	dup	z16.s, z16.s[0]
	.loc 13 1098 0
..LDL8734:
/*   1098 */	dup	z20.s, z20.s[0]
	.loc 13 1046 0
..LDL8735:
/*   1046 */	fmla	z0.s, p0/m, z16.s, z18.s
	.loc 13 1048 0
..LDL8736:
/*   1048 */	fmla	z1.s, p1/m, z16.s, z19.s
	.loc 13 1050 0
..LDL8737:
/*   1050 */	fmla	z2.s, p2/m, z16.s, z17.s
	.loc 13 1053 0
..LDL8738:
/*   1053 */	ldr	s16, [x12, -24]	//  (*)
	.loc 13 1100 0
..LDL8739:
/*   1100 */	fmla	z10.s, p0/m, z20.s, z18.s
	.loc 13 1102 0
..LDL8740:
/*   1102 */	fmla	z11.s, p1/m, z20.s, z19.s
	.loc 13 1104 0
..LDL8741:
/*   1104 */	fmla	z12.s, p2/m, z20.s, z17.s
	.loc 13 1053 0
..LDL8742:
/*   1053 */	dup	z16.s, z16.s[0]
	.loc 13 1055 0
..LDL8743:
/*   1055 */	fmla	z3.s, p0/m, z16.s, z18.s
	.loc 13 1057 0
..LDL8744:
/*   1057 */	fmla	z4.s, p1/m, z16.s, z19.s
	.loc 13 1059 0
..LDL8745:
/*   1059 */	fmla	z5.s, p2/m, z16.s, z17.s
	.loc 13 1062 0
..LDL8746:
/*   1062 */	ldr	s16, [x12, -20]	//  (*)
/*   1062 */	dup	z16.s, z16.s[0]
	.loc 13 1064 0
..LDL8747:
/*   1064 */	fmla	z6.s, p0/m, z16.s, z18.s
	.loc 13 1066 0
..LDL8748:
/*   1066 */	fmla	z7.s, p1/m, z16.s, z19.s
	.loc 13 1068 0
..LDL8749:
/*   1068 */	fmla	z24.s, p2/m, z16.s, z17.s
	.loc 13 1071 0
..LDL8750:
/*   1071 */	ldr	s16, [x12, -16]	//  (*)
/*   1071 */	dup	z16.s, z16.s[0]
	.loc 13 1073 0
..LDL8751:
/*   1073 */	fmla	z25.s, p0/m, z16.s, z18.s
	.loc 13 1075 0
..LDL8752:
/*   1075 */	fmla	z26.s, p1/m, z16.s, z19.s
	.loc 13 1077 0
..LDL8753:
/*   1077 */	fmla	z27.s, p2/m, z16.s, z17.s
	.loc 13 1080 0
..LDL8754:
/*   1080 */	ldr	s16, [x12, -12]	//  (*)
/*   1080 */	dup	z16.s, z16.s[0]
	.loc 13 1082 0
..LDL8755:
/*   1082 */	fmla	z28.s, p0/m, z16.s, z18.s
	.loc 13 1084 0
..LDL8756:
/*   1084 */	fmla	z29.s, p1/m, z16.s, z19.s
	.loc 13 1086 0
..LDL8757:
/*   1086 */	fmla	z30.s, p2/m, z16.s, z17.s
	.loc 13 1089 0
..LDL8758:
/*   1089 */	ldr	s16, [x12, -8]	//  (*)
/*   1089 */	dup	z16.s, z16.s[0]
	.loc 13 1091 0
..LDL8759:
/*   1091 */	fmla	z31.s, p0/m, z16.s, z18.s
	.loc 13 1093 0
..LDL8760:
/*   1093 */	fmla	z8.s, p1/m, z16.s, z19.s
	.loc 13 1095 0
..LDL8761:
/*   1095 */	fmla	z9.s, p2/m, z16.s, z17.s
	.loc 13 1107 0
..LDL8762:
/*   1107 */	ld1rw	{z16.s}, p3/z, [x12]	//  (*)
	.loc 13 1116 0
..LDL8763:
/*   1116 */	add	x12, x12, 32
	.loc 13 1109 0
..LDL8764:
/*   1109 */	fmla	z13.s, p0/m, z16.s, z18.s
	.loc 13 1111 0
..LDL8765:
/*   1111 */	fmla	z14.s, p1/m, z16.s, z19.s
	.loc 13 1113 0
..LDL8766:
/*   1113 */	fmla	z15.s, p2/m, z16.s, z17.s
	.loc 13 1118 0
..LDL8767:
/*   1118 */	bne	.L11564
.L11566:
	.loc 13 1123 0
..LDL8768:
/*   1123 */	st1w	{z0.s}, p0, [x3, 0, mul vl]	//  (*)
	.loc 13 1125 0
..LDL8769:
/*    ??? */	ldr	x0, [x19, 56]	//  (*)
/*   1125 */	st1w	{z1.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 1127 0
..LDL8770:
/*   1127 */	st1w	{z2.s}, p2, [x22, 0, mul vl]	//  (*)
	.loc 13 1131 0
..LDL8771:
/*   1131 */	st1w	{z3.s}, p0, [x20, 0, mul vl]	//  (*)
	.loc 13 1133 0
..LDL8772:
/*   1133 */	st1w	{z4.s}, p1, [x21, 0, mul vl]	//  (*)
	.loc 13 1135 0
..LDL8773:
/*   1135 */	st1w	{z5.s}, p2, [x25, 0, mul vl]	//  (*)
	.loc 13 1139 0
..LDL8774:
/*   1139 */	st1w	{z6.s}, p0, [x23, 0, mul vl]	//  (*)
	.loc 13 1141 0
..LDL8775:
/*   1141 */	st1w	{z7.s}, p1, [x15, 0, mul vl]	//  (*)
	.loc 13 1143 0
..LDL8776:
/*   1143 */	st1w	{z24.s}, p2, [x24, 0, mul vl]	//  (*)
	.loc 13 1147 0
..LDL8777:
/*   1147 */	st1w	{z25.s}, p0, [x26, 0, mul vl]	//  (*)
	.loc 13 1149 0
..LDL8778:
/*   1149 */	st1w	{z26.s}, p1, [x17, 0, mul vl]	//  (*)
	.loc 13 1151 0
..LDL8779:
/*   1151 */	st1w	{z27.s}, p2, [x16, 0, mul vl]	//  (*)
	.loc 13 1155 0
..LDL8780:
/*   1155 */	st1w	{z28.s}, p0, [x30, 0, mul vl]	//  (*)
	.loc 13 1157 0
..LDL8781:
/*   1157 */	st1w	{z29.s}, p1, [x14, 0, mul vl]	//  (*)
	.loc 13 1159 0
..LDL8782:
/*   1159 */	st1w	{z30.s}, p2, [x18, 0, mul vl]	//  (*)
	.loc 13 1163 0
..LDL8783:
/*   1163 */	st1w	{z31.s}, p0, [x13, 0, mul vl]	//  (*)
	.loc 13 1165 0
..LDL8784:
/*    ??? */	ldr	x0, [x19, 48]	//  (*)
/*   1165 */	st1w	{z8.s}, p1, [x0, 0, mul vl]	//  (*)
	.loc 13 1167 0
..LDL8785:
/*   1167 */	st1w	{z9.s}, p2, [x11, 0, mul vl]	//  (*)
	.loc 13 1171 0
..LDL8786:
/*   1171 */	st1w	{z10.s}, p0, [x10, 0, mul vl]	//  (*)
	.loc 13 1173 0
..LDL8787:
/*   1173 */	st1w	{z11.s}, p1, [x9, 0, mul vl]	//  (*)
	.loc 13 1175 0
..LDL8788:
/*   1175 */	st1w	{z12.s}, p2, [x8, 0, mul vl]	//  (*)
	.loc 13 1179 0
..LDL8789:
/*   1179 */	st1w	{z13.s}, p0, [x7, 0, mul vl]	//  (*)
	.loc 13 1181 0
..LDL8790:
/*   1181 */	st1w	{z14.s}, p1, [x5, 0, mul vl]	//  (*)
	.loc 13 1183 0
..LDL8791:
/*   1183 */	st1w	{z15.s}, p2, [x4, 0, mul vl]	//  (*)
	.loc 13 1185 0
..LDL8792:
/*    ??? */	ldr	z8, [x29, 1, mul vl]	//  (*)
/*    ??? */	ldr	z9, [x29, 2, mul vl]	//  (*)
/*    ??? */	ldr	z10, [x29, 3, mul vl]	//  (*)
/*    ??? */	ldr	z11, [x29, 4, mul vl]	//  (*)
/*    ??? */	ldr	z12, [x29, 5, mul vl]	//  (*)
/*    ??? */	ldr	z13, [x29, 6, mul vl]	//  (*)
/*    ??? */	ldr	z14, [x29, 7, mul vl]	//  (*)
/*    ??? */	ldr	z15, [x29, 8, mul vl]	//  (*)
/*    ??? */	ldr	z16, [x29, 9, mul vl]	//  (*)
/*    ??? */	ldr	z17, [x29, 10, mul vl]	//  (*)
/*    ??? */	ldr	z18, [x29, 11, mul vl]	//  (*)
/*    ??? */	ldr	z19, [x29, 12, mul vl]	//  (*)
/*    ??? */	ldr	z20, [x29, 13, mul vl]	//  (*)
/*    ??? */	ldp	x19, x20, [x29, -16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [x29, -32]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldp	x23, x24, [x29, -48]	//  (*)
	.cfi_restore 23
	.cfi_restore 24
/*    ??? */	ldp	x25, x26, [x29, -64]	//  (*)
	.cfi_restore 25
	.cfi_restore 26
/*    ??? */	ldp	x27, x28, [x29, -80]	//  (*)
	.cfi_restore 27
	.cfi_restore 28
/*    ??? */	add	sp, x29, 0
/*    ??? */	ldp	x29, x30, [sp]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    ??? */	addvl	sp, sp, 14
	.cfi_def_cfa_offset 0
/*   1185 */	ret	
..D51.pchi:
	.cfi_endproc
.LFE50:
	.size	_Z28kernel_MxN_for_8x48_no_packaILi8ELi48EEviPfS0_S0_iiiDvbS1_S1_, .-_Z28kernel_MxN_for_8x48_no_packaILi8ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _Z21kernel_14x32_no_packaiPfS_S_iiii $"
	.text
	.align	2
	.global	_Z21kernel_14x32_no_packaiPfS_S_iiii
	.type	_Z21kernel_14x32_no_packaiPfS_S_iiii, %function
_Z21kernel_14x32_no_packaiPfS_S_iiii:
	.loc 13 1231 0
..LDL8793:
.LFB51:
	.cfi_startproc
/*   1185 */	sub	sp, sp, 128
	.cfi_def_cfa_offset 128
/*   1185 */	mov	w16, w4
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
	.loc 13 1241 0
..LDL8794:
/*   1241 */	add	w29, w16, w16
	.loc 13 1244 0
..LDL8795:
/*   1244 */	add	w14, w16, w16, lsl #2
	.loc 13 1242 0
..LDL8796:
/*   1242 */	add	w17, w29, w16
	.loc 13 1241 0
..LDL8797:
/*   1241 */	sxtw	x30, w29
	.loc 13 1250 0
..LDL8798:
/*   1250 */	lsl	w8, w17, 2
	.loc 13 1252 0
..LDL8799:
/*   1252 */	add	w4, w16, w17, lsl #2
	.loc 13 1243 0
..LDL8800:
/*   1243 */	lsl	w15, w16, 2
	.loc 13 1245 0
..LDL8801:
/*   1245 */	add	w10, w17, w17
	.loc 13 1242 0
..LDL8802:
/*   1242 */	sxtw	x29, w17
	.loc 13 1243 0
..LDL8803:
/*   1243 */	sxtw	x17, w15
	.loc 13 1246 0
..LDL8804:
/*   1246 */	lsl	w12, w16, 3
	.loc 13 1248 0
..LDL8805:
/*   1248 */	add	w11, w16, w16, lsl #3
	.loc 13 1249 0
..LDL8806:
/*   1249 */	add	w19, w14, w14
	.loc 13 1244 0
..LDL8807:
/*   1244 */	sxtw	x15, w14
	.loc 13 1246 0
..LDL8808:
/*   1246 */	sub	w13, w12, w16
	.loc 13 1250 0
..LDL8809:
/*   1250 */	sub	w9, w8, w16
	.loc 13 1240 0
..LDL8810:
/*   1240 */	sxtw	x18, w16
	.loc 13 1245 0
..LDL8811:
/*   1245 */	sxtw	x14, w10
	.loc 13 1246 0
..LDL8812:
/*   1246 */	sxtw	x13, w13
	.loc 13 1247 0
..LDL8813:
/*   1247 */	sxtw	x12, w12
	.loc 13 1248 0
..LDL8814:
/*   1248 */	sxtw	x11, w11
	.loc 13 1249 0
..LDL8815:
/*   1249 */	sxtw	x10, w19
	.loc 13 1250 0
..LDL8816:
/*   1250 */	sxtw	x9, w9
	.loc 13 1251 0
..LDL8817:
/*   1251 */	sxtw	x8, w8
	.loc 13 1252 0
..LDL8818:
/*   1252 */	sxtw	x4, w4
	.loc 13 1240 0
..LDL8819:
/*   1240 */	add	x18, x3, x18, lsl #2
	.loc 13 1241 0
..LDL8820:
/*   1241 */	add	x30, x3, x30, lsl #2
	.loc 13 1242 0
..LDL8821:
/*   1242 */	add	x29, x3, x29, lsl #2
	.loc 13 1243 0
..LDL8822:
/*   1243 */	add	x17, x3, x17, lsl #2
	.loc 13 1244 0
..LDL8823:
/*   1244 */	add	x15, x3, x15, lsl #2
	.loc 13 1245 0
..LDL8824:
/*   1245 */	add	x14, x3, x14, lsl #2
	.loc 13 1246 0
..LDL8825:
/*   1246 */	add	x13, x3, x13, lsl #2
	.loc 13 1247 0
..LDL8826:
/*   1247 */	add	x12, x3, x12, lsl #2
	.loc 13 1248 0
..LDL8827:
/*   1248 */	add	x11, x3, x11, lsl #2
	.loc 13 1249 0
..LDL8828:
/*   1249 */	add	x10, x3, x10, lsl #2
	.loc 13 1250 0
..LDL8829:
/*   1250 */	add	x9, x3, x9, lsl #2
	.loc 13 1251 0
..LDL8830:
/*   1251 */	add	x8, x3, x8, lsl #2
	.loc 13 1252 0
..LDL8831:
/*   1252 */	add	x19, x3, x4, lsl #2
	.loc 13 1254 0 is_stmt 0
..LDL8832:
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
prfm	pldl1keep, [x1, #256]                
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
prfm	pldl1keep, [x1, #512]                
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
prfm	pldl1keep, [x1, #768]                
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
prfm	pldl1keep, [x1, #1024]                
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

	.loc 13 1429 0 is_stmt 1
..LDL8833:
/*    ??? */	ldr	x19, [sp, 104]	//  (*)
	.cfi_restore 19
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
/*    ??? */	ldp	x29, x30, [sp, 112]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*   1429 */	add	sp, sp, 128
	.cfi_def_cfa_offset 0
/*   1429 */	ret	
..D52.pchi:
	.cfi_endproc
.LFE51:
	.size	_Z21kernel_14x32_no_packaiPfS_S_iiii, .-_Z21kernel_14x32_no_packaiPfS_S_iiii
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp _ZN5TimerD0Ev $"
	.section	.text._ZN5TimerD0Ev,"axG",%progbits,_ZN5TimerD0Ev,comdat

	.weak	_ZN5TimerD0Ev
	.align	2
	.type	_ZN5TimerD0Ev, %function
_ZN5TimerD0Ev:
	.loc 13 1430 0
..LDL8834:
.LFB52:
	.cfi_startproc
/*     71 */	adrp	x1, _ZTV5Timer+16
/*     71 */	add	x1, x1, :lo12:_ZTV5Timer+16
/*     71 */	str	x1, [x0]	//  (*)
/*   1430 */	b	_ZdlPv
..D53.pchi:
	.cfi_endproc
.LFE52:
	.size	_ZN5TimerD0Ev, .-_ZN5TimerD0Ev
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_kernel_no_packa.cpp __fjc_check_hpctag $"
	.text
	.align	2
	.type	__fjc_check_hpctag, %function
__fjc_check_hpctag:
.LFB53:
	.cfi_startproc
/*        */	mov	x0, 0
/*        */	b	__jwe_check_hpctag
..D54.pchi:
	.cfi_endproc
.LFE53:
	.size	__fjc_check_hpctag, .-__fjc_check_hpctag
	.section	.init_array,"aw"
	.align	3
	.xword		__fjc_check_hpctag
	.file 14 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/arm_sve.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "./im2col/SVE/./sve_gemm_kernel_no_packa.h"
	.file 17 "/usr/include/alloca.h"
	.file 18 "/usr/include/bits/floatn-common.h"
	.file 19 "/usr/include/bits/floatn.h"
	.file 20 "/usr/include/bits/types/locale_t.h"
	.file 21 "/usr/include/bits/types/__locale_t.h"
	.file 22 "/usr/include/sys/select.h"
	.file 23 "/usr/include/bits/types/struct_timeval.h"
	.file 24 "/usr/include/bits/types/struct_timespec.h"
	.file 25 "/usr/include/bits/types/__sigset_t.h"
	.file 26 "/usr/include/bits/stdint-intn.h"
	.file 27 "/usr/include/assert.h"
	.file 28 "/usr/include/bits/types/cookie_io_functions_t.h"
	.file 29 "/usr/include/bits/types/__fpos_t.h"
	.file 30 "/usr/include/bits/types/__fpos64_t.h"
	.file 31 "/usr/include/bits/time.h"
	.file 32 "/usr/include/bits/timex.h"
	.file 33 "/usr/include/time.h"
	.file 34 "/usr/include/bits/types/clock_t.h"
	.file 35 "/usr/include/bits/types/time_t.h"
	.file 36 "/usr/include/bits/types/struct_tm.h"
	.file 37 "/usr/include/bits/types/clockid_t.h"
	.file 38 "/usr/include/sys/types.h"
	.file 39 "/usr/include/bits/types/timer_t.h"
	.file 40 "/usr/include/bits/types/struct_itimerspec.h"
	.file 41 "/usr/include/bits/stdint-uintn.h"
	.file 42 "/usr/include/bits/types/sigset_t.h"
	.file 43 "/usr/include/bits/pthreadtypes-arch.h"
	.file 44 "/usr/include/bits/thread-shared-types.h"
	.file 45 "/usr/include/bits/pthreadtypes.h"
	.file 46 "/usr/include/bits/types/__mbstate_t.h"
	.file 47 "/usr/include/bits/types/__FILE.h"
	.file 48 "/usr/include/stdint.h"
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
	.ascii	"./im2col/SVE/sve_gemm_kernel_no_packa.cpp\0"	// DW_AT_name
	.4byte	.Ldebug_line	// DW_AT_stmt_list
	.byte	0x4	// DW_AT_language
	.ascii	"/vol0004/ra000012/a04453/FastConv\0"	// DW_AT_comp_dir
	.ascii	"ccpcom: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39)\0"	// DW_AT_producer
	.4byte	.Ldebug_ranges1	// DW_AT_ranges
	.uleb128	0x2	// DW_TAG_class_type (0x9d)
	.4byte	0x1c7	// DW_AT_sibling
	.ascii	"Timer\0"	// DW_AT_name
	.byte	0x30	// DW_AT_byte_size
	.byte	0xc	// DW_AT_decl_file
	.byte	0x43	// DW_AT_decl_line
	.uleb128	0x3	// DW_TAG_subprogram (0xab)
	.ascii	"Timer\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x46	// DW_AT_decl_line
			// DW_AT_external
	.ascii	"_ZN5TimerC1Ev\0"	// DW_AT_linkage_name
	.uleb128	0x4	// DW_TAG_subprogram (0xc3)
	.ascii	"~Timer\0"	// DW_AT_name
	.byte	0x1	// DW_AT_inline
	.byte	0xc	// DW_AT_decl_file
	.byte	0x47	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"_ZN5TimerD1Ev\0"	// DW_AT_linkage_name
	.uleb128	0x5	// DW_TAG_subprogram (0xdc)
	.8byte	_ZN5TimerD1Ev	// DW_AT_low_pc
	.8byte	..D1.pchi-_ZN5TimerD1Ev	// DW_AT_high_pc
	.4byte	0xc3	// DW_AT_abstract_origin
	.byte	0x1	// DW_AT_accessibility
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.byte	0x1	// DW_AT_virtuality
	.uleb128	0x2	// DW_AT_vtable_elem_location
	.byte	0x10	// DW_OP_constu
	.uleb128	0x0
	.ascii	"_ZN5TimerD1Ev\0"	// DW_AT_linkage_name
	.uleb128	0x6	// DW_TAG_subprogram (0x106)
	.ascii	"startBench\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x48	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"startBench\0"	// DW_AT_linkage_name
	.uleb128	0x6	// DW_TAG_subprogram (0x120)
	.ascii	"accumBench\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x49	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"accumBench\0"	// DW_AT_linkage_name
	.uleb128	0x6	// DW_TAG_subprogram (0x13a)
	.ascii	"printBench\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x4a	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"printBench\0"	// DW_AT_linkage_name
	.uleb128	0x6	// DW_TAG_subprogram (0x154)
	.ascii	"printBench\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x4b	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"printBench\0"	// DW_AT_linkage_name
	.uleb128	0x6	// DW_TAG_subprogram (0x16e)
	.ascii	"endBench\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x4c	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"endBench\0"	// DW_AT_linkage_name
	.uleb128	0x6	// DW_TAG_subprogram (0x184)
	.ascii	"endBench\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x4d	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"endBench\0"	// DW_AT_linkage_name
	.uleb128	0x6	// DW_TAG_subprogram (0x19a)
	.ascii	"endBench\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x4e	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"endBench\0"	// DW_AT_linkage_name
	.uleb128	0x6	// DW_TAG_subprogram (0x1b0)
	.ascii	"getBench\0"	// DW_AT_name
	.byte	0x1	// DW_AT_accessibility
	.byte	0xc	// DW_AT_decl_file
	.byte	0x4f	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.ascii	"getBench\0"	// DW_AT_linkage_name
	.byte	0x0	// End of children (0x9d)
	.uleb128	0x7	// DW_TAG_subprogram (0x1c7)
	.ascii	"kernel_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z21kernel_12x32_no_packaiPfS_S_iiii	// DW_AT_low_pc
	.8byte	..D2.pchi-_Z21kernel_12x32_no_packaiPfS_S_iiii	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.byte	0x12	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z21kernel_12x32_no_packaiPfS_S_iiii\0"	// DW_AT_linkage_name
	.uleb128	0x8	// DW_TAG_subprogram (0x217)
	.ascii	"kernel_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z20kernel_8x48_no_packaiPfS_S_iiii	// DW_AT_low_pc
	.8byte	..D27.pchi-_Z20kernel_8x48_no_packaiPfS_S_iiii	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x2a1	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z20kernel_8x48_no_packaiPfS_S_iiii\0"	// DW_AT_linkage_name
	.uleb128	0x8	// DW_TAG_subprogram (0x266)
	.ascii	"kernel_14x32_no_packa\0"	// DW_AT_name
	.8byte	_Z21kernel_14x32_no_packaiPfS_S_iiii	// DW_AT_low_pc
	.8byte	..D52.pchi-_Z21kernel_14x32_no_packaiPfS_S_iiii	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x4cf	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z21kernel_14x32_no_packaiPfS_S_iiii\0"	// DW_AT_linkage_name
	.uleb128	0x9	// DW_TAG_subprogram (0x2b7)
	.4byte	0x33b	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D3.pchi-_Z29kernel_MxN_for_12x32_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x332)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x2b7)
	.uleb128	0x9	// DW_TAG_subprogram (0x33b)
	.4byte	0x3bf	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D4.pchi-_Z29kernel_MxN_for_12x32_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x3b6)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x33b)
	.uleb128	0x9	// DW_TAG_subprogram (0x3bf)
	.4byte	0x443	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D5.pchi-_Z29kernel_MxN_for_12x32_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x43a)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x3bf)
	.uleb128	0x9	// DW_TAG_subprogram (0x443)
	.4byte	0x4c7	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D6.pchi-_Z29kernel_MxN_for_12x32_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x4be)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x443)
	.uleb128	0x9	// DW_TAG_subprogram (0x4c7)
	.4byte	0x54b	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D7.pchi-_Z29kernel_MxN_for_12x32_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x542)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x4c7)
	.uleb128	0x9	// DW_TAG_subprogram (0x54b)
	.4byte	0x5cf	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D8.pchi-_Z29kernel_MxN_for_12x32_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x5c6)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x54b)
	.uleb128	0x9	// DW_TAG_subprogram (0x5cf)
	.4byte	0x653	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D9.pchi-_Z29kernel_MxN_for_12x32_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x64a)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x5cf)
	.uleb128	0x9	// DW_TAG_subprogram (0x653)
	.4byte	0x6d7	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D10.pchi-_Z29kernel_MxN_for_12x32_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x6ce)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x653)
	.uleb128	0x9	// DW_TAG_subprogram (0x6d7)
	.4byte	0x75b	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D11.pchi-_Z29kernel_MxN_for_12x32_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x752)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x6d7)
	.uleb128	0x9	// DW_TAG_subprogram (0x75b)
	.4byte	0x7df	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D12.pchi-_Z29kernel_MxN_for_12x32_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x7d6)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x75b)
	.uleb128	0x9	// DW_TAG_subprogram (0x7df)
	.4byte	0x863	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D13.pchi-_Z29kernel_MxN_for_12x32_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x85a)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x7df)
	.uleb128	0x9	// DW_TAG_subprogram (0x863)
	.4byte	0x8e7	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D14.pchi-_Z29kernel_MxN_for_12x32_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x8de)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x863)
	.uleb128	0x9	// DW_TAG_subprogram (0x8e7)
	.4byte	0x96b	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D15.pchi-_Z29kernel_MxN_for_12x32_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x962)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x8e7)
	.uleb128	0x9	// DW_TAG_subprogram (0x96b)
	.4byte	0x9ef	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D16.pchi-_Z29kernel_MxN_for_12x32_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x9e6)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x96b)
	.uleb128	0x9	// DW_TAG_subprogram (0x9ef)
	.4byte	0xa73	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D17.pchi-_Z29kernel_MxN_for_12x32_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0xa6a)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x9ef)
	.uleb128	0x9	// DW_TAG_subprogram (0xa73)
	.4byte	0xaf7	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D18.pchi-_Z29kernel_MxN_for_12x32_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0xaee)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xa73)
	.uleb128	0x9	// DW_TAG_subprogram (0xaf7)
	.4byte	0xb7b	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi9ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D19.pchi-_Z29kernel_MxN_for_12x32_no_packaILi9ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi9ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0xb72)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xaf7)
	.uleb128	0x9	// DW_TAG_subprogram (0xb7b)
	.4byte	0xbff	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi9ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D20.pchi-_Z29kernel_MxN_for_12x32_no_packaILi9ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi9ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0xbf6)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xb7b)
	.uleb128	0x9	// DW_TAG_subprogram (0xbff)
	.4byte	0xc84	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi10ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D21.pchi-_Z29kernel_MxN_for_12x32_no_packaILi10ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi10ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0xc7b)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xbff)
	.uleb128	0x9	// DW_TAG_subprogram (0xc84)
	.4byte	0xd09	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi10ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D22.pchi-_Z29kernel_MxN_for_12x32_no_packaILi10ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi10ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0xd00)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xc84)
	.uleb128	0x9	// DW_TAG_subprogram (0xd09)
	.4byte	0xd8e	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi11ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D23.pchi-_Z29kernel_MxN_for_12x32_no_packaILi11ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi11ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0xd85)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xd09)
	.uleb128	0x9	// DW_TAG_subprogram (0xd8e)
	.4byte	0xe13	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi11ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D24.pchi-_Z29kernel_MxN_for_12x32_no_packaILi11ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi11ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0xe0a)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xd8e)
	.uleb128	0x9	// DW_TAG_subprogram (0xe13)
	.4byte	0xe98	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi12ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D25.pchi-_Z29kernel_MxN_for_12x32_no_packaILi12ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi12ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0xe8f)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xe13)
	.uleb128	0x9	// DW_TAG_subprogram (0xe98)
	.4byte	0xf1d	// DW_AT_sibling
	.ascii	"kernel_MxN_for_12x32_no_packa\0"	// DW_AT_name
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi12ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D26.pchi-_Z29kernel_MxN_for_12x32_no_packaILi12ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x161	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z29kernel_MxN_for_12x32_no_packaILi12ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0xf14)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x1c3	// DW_AT_FJ_loop_start_line
	.2byte	0x221	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xe98)
	.uleb128	0x9	// DW_TAG_subprogram (0xf1d)
	.4byte	0xf9f	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D28.pchi-_Z28kernel_MxN_for_8x48_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0xf96)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xf1d)
	.uleb128	0x9	// DW_TAG_subprogram (0xf9f)
	.4byte	0x1021	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D29.pchi-_Z28kernel_MxN_for_8x48_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x1018)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xf9f)
	.uleb128	0x9	// DW_TAG_subprogram (0x1021)
	.4byte	0x10a3	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi1ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D30.pchi-_Z28kernel_MxN_for_8x48_no_packaILi1ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi1ELi48EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x109a)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x1021)
	.uleb128	0x9	// DW_TAG_subprogram (0x10a3)
	.4byte	0x1125	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D31.pchi-_Z28kernel_MxN_for_8x48_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x111c)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x10a3)
	.uleb128	0x9	// DW_TAG_subprogram (0x1125)
	.4byte	0x11a7	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D32.pchi-_Z28kernel_MxN_for_8x48_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x119e)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x1125)
	.uleb128	0x9	// DW_TAG_subprogram (0x11a7)
	.4byte	0x1229	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi2ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D33.pchi-_Z28kernel_MxN_for_8x48_no_packaILi2ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi2ELi48EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x1220)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x11a7)
	.uleb128	0x9	// DW_TAG_subprogram (0x1229)
	.4byte	0x12ab	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D34.pchi-_Z28kernel_MxN_for_8x48_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x12a2)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x1229)
	.uleb128	0x9	// DW_TAG_subprogram (0x12ab)
	.4byte	0x132d	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D35.pchi-_Z28kernel_MxN_for_8x48_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x1324)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x12ab)
	.uleb128	0x9	// DW_TAG_subprogram (0x132d)
	.4byte	0x13af	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi3ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D36.pchi-_Z28kernel_MxN_for_8x48_no_packaILi3ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi3ELi48EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x13a6)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x132d)
	.uleb128	0x9	// DW_TAG_subprogram (0x13af)
	.4byte	0x1431	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D37.pchi-_Z28kernel_MxN_for_8x48_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x1428)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x13af)
	.uleb128	0x9	// DW_TAG_subprogram (0x1431)
	.4byte	0x14b3	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D38.pchi-_Z28kernel_MxN_for_8x48_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x14aa)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x1431)
	.uleb128	0x9	// DW_TAG_subprogram (0x14b3)
	.4byte	0x1535	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi4ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D39.pchi-_Z28kernel_MxN_for_8x48_no_packaILi4ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi4ELi48EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x152c)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x14b3)
	.uleb128	0x9	// DW_TAG_subprogram (0x1535)
	.4byte	0x15b7	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D40.pchi-_Z28kernel_MxN_for_8x48_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x15ae)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x1535)
	.uleb128	0x9	// DW_TAG_subprogram (0x15b7)
	.4byte	0x1639	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D41.pchi-_Z28kernel_MxN_for_8x48_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x1630)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x15b7)
	.uleb128	0x9	// DW_TAG_subprogram (0x1639)
	.4byte	0x16bb	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi5ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D42.pchi-_Z28kernel_MxN_for_8x48_no_packaILi5ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi5ELi48EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x16b2)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x1639)
	.uleb128	0x9	// DW_TAG_subprogram (0x16bb)
	.4byte	0x173d	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D43.pchi-_Z28kernel_MxN_for_8x48_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x1734)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x16bb)
	.uleb128	0x9	// DW_TAG_subprogram (0x173d)
	.4byte	0x17bf	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D44.pchi-_Z28kernel_MxN_for_8x48_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x17b6)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x173d)
	.uleb128	0x9	// DW_TAG_subprogram (0x17bf)
	.4byte	0x1841	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi6ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D45.pchi-_Z28kernel_MxN_for_8x48_no_packaILi6ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi6ELi48EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x1838)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x17bf)
	.uleb128	0x9	// DW_TAG_subprogram (0x1841)
	.4byte	0x18c3	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D46.pchi-_Z28kernel_MxN_for_8x48_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x18ba)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x1841)
	.uleb128	0x9	// DW_TAG_subprogram (0x18c3)
	.4byte	0x1945	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D47.pchi-_Z28kernel_MxN_for_8x48_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x193c)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x18c3)
	.uleb128	0x9	// DW_TAG_subprogram (0x1945)
	.4byte	0x19c7	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi7ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D48.pchi-_Z28kernel_MxN_for_8x48_no_packaILi7ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi7ELi48EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x19be)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x1945)
	.uleb128	0x9	// DW_TAG_subprogram (0x19c7)
	.4byte	0x1a49	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D49.pchi-_Z28kernel_MxN_for_8x48_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x1a40)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x19c7)
	.uleb128	0x9	// DW_TAG_subprogram (0x1a49)
	.4byte	0x1acb	// DW_AT_sibling
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D50.pchi-_Z28kernel_MxN_for_8x48_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x1ac2)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x1a49)
	.uleb128	0xb	// DW_TAG_subprogram (0x1acb)
	.ascii	"kernel_MxN_for_8x48_no_packa\0"	// DW_AT_name
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi8ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_low_pc
	.8byte	..D51.pchi-_Z28kernel_MxN_for_8x48_no_packaILi8ELi48EEviPfS0_S0_iiiDvbS1_S1_	// DW_AT_high_pc
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x3b7	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z28kernel_MxN_for_8x48_no_packaILi8ELi48EEviPfS0_S0_iiiDvbS1_S1_\0"	// DW_AT_linkage_name
	.uleb128	0xa	// DW_TAG_FJ_loop (0x1b40)
	.byte	0xd	// DW_AT_decl_file
	.2byte	0x40a	// DW_AT_FJ_loop_start_line
	.2byte	0x45e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x1acb)
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
	.8byte	_Z21kernel_12x32_no_packaiPfS_S_iiii
	.8byte	..D2.pchi
	.8byte	_Z20kernel_8x48_no_packaiPfS_S_iiii
	.8byte	..D27.pchi
	.8byte	_Z21kernel_14x32_no_packaiPfS_S_iiii
	.8byte	..D52.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D3.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D4.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D5.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D6.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D7.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D8.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D9.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D10.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D11.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D12.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D13.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D14.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D15.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D16.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D17.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D18.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi9ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D19.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi9ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D20.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi10ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D21.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi10ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D22.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi11ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D23.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi11ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D24.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi12ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D25.pchi
	.8byte	_Z29kernel_MxN_for_12x32_no_packaILi12ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D26.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D28.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D29.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi1ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D30.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D31.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D32.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi2ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D33.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D34.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D35.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi3ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D36.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D37.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D38.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi4ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D39.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D40.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D41.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi5ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D42.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D43.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D44.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi6ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D45.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D46.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D47.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi7ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D48.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D49.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D50.pchi
	.8byte	_Z28kernel_MxN_for_8x48_no_packaILi8ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.8byte	..D51.pchi
	.8byte	0x0
	.8byte	0x0
	.section	.rodata
	.global	kernel_MxN_for_8x48_no_packa_func_tab
	.align	3
kernel_MxN_for_8x48_no_packa_func_tab:
	.type	kernel_MxN_for_8x48_no_packa_func_tab, %object
	.size	kernel_MxN_for_8x48_no_packa_func_tab, 192
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi1ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi2ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi3ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi4ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi5ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi6ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi7ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z28kernel_MxN_for_8x48_no_packaILi8ELi48EEviPfS0_S0_iiiDvbS1_S1_
	.section	.rodata
	.global	kernel_MxN_for_12x32_no_packa_func_tab
	.align	3
kernel_MxN_for_12x32_no_packa_func_tab:
	.type	kernel_MxN_for_12x32_no_packa_func_tab, %object
	.size	kernel_MxN_for_12x32_no_packa_func_tab, 192
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi1ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi1ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi2ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi2ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi3ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi3ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi4ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi4ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi5ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi5ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi6ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi6ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi7ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi7ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi8ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi8ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi9ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi9ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi10ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi10ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi11ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi11ELi32EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi12ELi16EEviPfS0_S0_iiiDvbS1_S1_
	.xword	_Z29kernel_MxN_for_12x32_no_packaILi12ELi32EEviPfS0_S0_iiiDvbS1_S1_
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
