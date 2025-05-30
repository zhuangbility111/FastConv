..text.b:
	.ident	"$Options: Fujitsu C/C++ Compiler 4.7.0 (Nov 10 2021 09:30:56) --preinclude /opt/FJSVxtclanga/tcsds-1.2.34/bin/../lib/fcc.pre --gcc -Dunix -Dlinux -D__FUJITSU -D__FCC_major__=4 -D__FCC_minor__=7 -D__FCC_patchlevel__=0 -D__FCC_version__=\"4.7.0\" -D__aarch64__ -D__unix -D_OPENMP=201107 -D__fcc_version__=0x800 -D__fcc_version=800 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__ARM_FEATURE_SVE -D__FP_FAST_FMA -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -D__LIBC_6B -D__LP64__ -D_LP64 --K=omp --K=noocl -D_REENTRANT -D__MT__ --zmode=64 --sys_include=/opt/FJSVxtclanga/tcsds-1.2.34/bin/../include --K=opt main_test_numa.c -- -ncmdname=fcc -zcfc=target_sve -O2 -O3 -x- -Komitfp,mfunc,eval,fp_relaxed,fz,fast_matmul,fp_contract,ilfunc,simd_packed_promotion,openmp,threadsafe,zfill -Klargepage main_test_numa.s $"
	.file	"main_test_numa.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.7.0 (Nov 10 2021 09:30:56) main_test_numa.c mysecond $"
	.text
	.align	2
	.global	mysecond
	.type	mysecond, %function
mysecond:
	.file 1 "/usr/include/stdlib.h"
	.file 2 "/usr/include/bits/byteswap.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/uintn-identity.h"
	.file 5 "/usr/include/bits/stdlib-bsearch.h"
	.file 6 "/opt/FJSVxtclanga/tcsds-1.2.34/bin/../include/stddef.h"
	.file 7 "/usr/include/bits/stdlib-float.h"
	.file 8 "/usr/include/bits/stdio.h"
	.file 9 "/opt/FJSVxtclanga/tcsds-1.2.34/bin/../include/stdarg.h"
	.file 10 "/usr/include/bits/types/FILE.h"
	.file 11 "/usr/include/bits/types/struct_FILE.h"
	.file 12 "main_test_numa.c"
	.loc 12 12 0
..LDL1:
.LFB0:
	.cfi_startproc
/*     12 */	sub	sp, sp, 32
	.cfi_def_cfa_offset 32
/*    ??? */	stp	x19, x30, [sp, 8]	//  (*)
	.cfi_offset 30, -16
	.cfi_offset 19, -24
/*    ??? */	sub	sp, sp, 32
	.cfi_def_cfa_offset 64
	.loc 12 24 0
..LDL2:
/*     24 */	add	x19, sp, 16
/*     24 */	sub	x1, x19, 8
/*     24 */	mov	x0, x19
/*     24 */	bl	gettimeofday
	.loc 12 25 0
..LDL3:
/*     25 */	ldp	x0, x1, [x19]	//  "tp"
/*     25 */	adrp	x2, .LCP1
/*     25 */	ldr	d2, [x2, :lo12:.LCP1]	//  1.000000e-06
/*     25 */	scvtf	d0, x0
/*     25 */	scvtf	d1, x1
/*     25 */	fmadd	d0, d1, d2, d0
	.loc 12 26 0
..LDL4:
/*    ??? */	add	sp, sp, 32
	.cfi_def_cfa_offset 32
/*    ??? */	ldp	x19, x30, [sp, 8]	//  (*)
	.cfi_restore 19
	.cfi_restore 30
/*     26 */	add	sp, sp, 32
	.cfi_def_cfa_offset 0
/*     26 */	ret	
..D1.pchi:
	.cfi_endproc
.LFE0:
	.size	mysecond, .-mysecond
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.7.0 (Nov 10 2021 09:30:56) main_test_numa.c main $"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	.loc 12 35 0
..LDL5:
.LFB1:
	.cfi_startproc
/*     69 */	sub	sp, sp, 48
	.cfi_def_cfa_offset 48
/*    ??? */	str	x30, [sp, 32]	//  (*)
	.cfi_offset 30, -16
/*    ??? */	stp	x19, x20, [sp, 16]	//  (*)
	.cfi_offset 19, -32
	.cfi_offset 20, -24
/*    ??? */	str	x21, [sp, 8]	//  (*)
	.cfi_offset 21, -40
/*    ??? */	str	d8, [sp]	//  (*)
	.cfi_offset 72, -48
/*    ??? */	sub	sp, sp, 80
	.cfi_def_cfa_offset 128
	.loc 12 40 0
..LDL6:
/*     40 */	mov	x20, 1599995904
/*     40 */	movk	x20, 4096, lsl #0
/*     40 */	mov	x0, x20
/*     40 */	bl	malloc
/*     40 */	add	x19, sp, 8
/*     40 */	str	x0, [x19, 16]
/*     41 */	mov	x0, x20
/*     41 */	bl	malloc
/*     41 */	str	x0, [x19, 8]
	.loc 12 42 0
..LDL7:
/*     42 */	mov	x0, x20
/*     42 */	bl	malloc
/*     42 */	str	x0, [x19]
	.loc 12 49 0 is_stmt 0
..LDL8:
/*     49 */	mov	x2, 0
/*     49 */	adrp	x0, main._OMP_1
/*     49 */	mov	x1, x19
/*     49 */	add	x0, x0, :lo12:main._OMP_1
/*     49 */	bl	__mpc_opar
	.loc 12 24 0 is_stmt 1
..LDL9:
/*     24 */	add	x0, x19, 40
/*     24 */	add	x1, x19, 24
/*     24 */	bl	gettimeofday
	.loc 12 25 0
..LDL10:
/*     25 */	ldp	x0, x1, [x19, 40]	//  "tp"
	.loc 12 65 0
..LDL11:
/*     65 */	mov	w20, 0
	.loc 12 25 0
..LDL12:
/*     25 */	adrp	x2, .LCP1
	.loc 12 65 0
..LDL13:
	.loc 12 66 0 is_stmt 0
..LDL14:
/*     66 */	adrp	x3, main._OMP_2
	.loc 12 25 0 is_stmt 1
..LDL15:
/*     25 */	ldr	d1, [x2, :lo12:.LCP1]	//  1.000000e-06
	.loc 12 65 0
..LDL16:
	.loc 12 66 0 is_stmt 0
..LDL17:
/*     66 */	add	x21, x3, :lo12:main._OMP_2
	.loc 12 25 0 is_stmt 1
..LDL18:
/*     25 */	scvtf	d0, x0
/*     25 */	scvtf	d2, x1
/*     25 */	fmadd	d8, d2, d1, d0
	.p2align 5
.L173:					// :entr:term
	.loc 12 66 0 is_stmt 0
..LDL19:
/*     66 */	mov	x2, 0
/*     66 */	mov	x0, x21
/*     66 */	mov	x1, x19
/*     66 */	bl	__mpc_opar
	.loc 12 70 0 is_stmt 1
..LDL20:
/*     70 */	add	w20, w20, 1
/*     70 */	cmp	w20, 10
/*     70 */	blt	.L173
	.loc 12 24 0
..LDL21:
/*     24 */	add	x0, x19, 56
/*     24 */	add	x1, x19, 32
/*     24 */	bl	gettimeofday
	.loc 12 25 0
..LDL22:
/*     25 */	ldp	x2, x1, [x19, 56]	//  "tp"
	.loc 12 83 0
..LDL23:
/*     83 */	fmov	d2, 1.000000e+00
	.loc 12 75 0
..LDL24:
/*     75 */	adrp	x0, .LCP1
	.loc 12 83 0
..LDL25:
/*     83 */	adrp	x3, .LCP2
	.loc 12 75 0
..LDL26:
/*     75 */	ldr	d4, [x0, :lo12:.LCP1]	//  1.000000e-06
	.loc 12 83 0
..LDL27:
/*     83 */	ldr	d1, [x3, :lo12:.LCP2]	//  4.800000e+04
	.loc 12 85 0
..LDL28:
/*     85 */	adrp	x0, .LR.2
/*     85 */	add	x0, x0, :lo12:.LR.2
	.loc 12 25 0
..LDL29:
/*     25 */	scvtf	d3, x2
/*     25 */	scvtf	d0, x1
	.loc 12 75 0
..LDL30:
/*     75 */	fmadd	d0, d0, d4, d3
/*     75 */	fsub	d0, d0, d8
	.loc 12 83 0
..LDL31:
/*     83 */	frecpe	d3, d0
/*     83 */	fmsub	d2, d0, d3, d2
/*     83 */	fmul	d3, d1, d3
/*     83 */	fmadd	d4, d2, d2, d2
/*     83 */	fmul	d1, d2, d2
/*     83 */	fmadd	d4, d4, d3, d3
/*     83 */	fmadd	d1, d1, d1, d2
/*     83 */	fmadd	d8, d1, d4, d3
/*     85 */	bl	printf
	.loc 12 86 0
..LDL32:
/*     86 */	adrp	x0, .LR.1
/*     86 */	fmov	d0, d8
/*     86 */	add	x0, x0, :lo12:.LR.1
/*     86 */	bl	printf
/*     86 */	mov	w0, 0
	.loc 12 93 0
..LDL33:
/*    ??? */	add	sp, sp, 80
	.cfi_def_cfa_offset 48
/*    ??? */	ldp	x19, x20, [sp, 16]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldr	d8, [sp]	//  (*)
	.cfi_restore 72
/*    ??? */	ldr	x21, [sp, 8]	//  (*)
	.cfi_restore 21
/*    ??? */	ldr	x30, [sp, 32]	//  (*)
	.cfi_restore 30
/*     93 */	add	sp, sp, 48
	.cfi_def_cfa_offset 0
/*     93 */	ret	
..D2.pchi:
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.7.0 (Nov 10 2021 09:30:56) main_test_numa.c main._OMP_1 $"
	.text
	.align	2
	.type	main._OMP_1, %function
main._OMP_1:
	.loc 12 49 0
..LDL34:
.LFB2:
	.cfi_startproc
/*    ??? */	str	x30, [sp, -16]!	//  (*)
	.cfi_def_cfa_offset 16
	.cfi_offset 30, -16
/*    ??? */	sub	sp, sp, 48
	.cfi_def_cfa_offset 64
/*     26 */	str	x1, [sp, 32]
/*     26 */	str	x2, [sp, 24]
/*     26 */	str	x3, [sp, 16]
/*     26 */	str	x4, [sp, 8]
	.loc 12 49 0 is_stmt 0
..LDL35:
	.loc 12 49 0 is_stmt 0
..LDL36:
	.loc 12 50 0 is_stmt 1
..LDL37:
/*     50 */	add	x3, sp, 32
/*     50 */	mov	x4, 199950336
/*     50 */	ldr	x5, [x3]
/*     50 */	ldr	x2, [x3, -8]
/*     50 */	movk	x4, 49664, lsl #0
/*     50 */	udiv	x1, x4, x5
/*     50 */	msub	x4, x5, x1, x4
/*     50 */	cbnz	x4, .L179
/*     50 */	mul	x4, x2, x1
/*     50 */	b	.L182
.L179:
/*     50 */	cmp	x2, x4
/*     50 */	bcc	.L181
/*     50 */	madd	x4, x2, x1, x4
/*     50 */	b	.L182
.L181:
/*     50 */	add	x1, x1, 1
/*     50 */	mul	x4, x2, x1
.L182:
/*     50 */	sub	x2, x1, 1
/*     50 */	add	x2, x2, x4
/*     50 */	cbz	x1, .L187
/*     50 */	sub	x1, x2, x4
/*     50 */	cmp	x4, x2
/*     50 */	add	x1, x1, 1
/*     50 */	csinc	x1, x1, xzr, ls
/*     50 */	cmp	x1, 2
/*     50 */	bcc	.L190
	.loc 12 51 0 is_stmt 0
..LDL38:
/*     51 */	mov	x5, 4607182418800017408
	.loc 12 52 0
..LDL39:
/*     52 */	mov	x2, 4611686018427387904
	.loc 12 50 0
..LDL40:
/*     50 */	cmp	x1, 8
/*     50 */	bcc	.L238
	.loc 12 51 0
..LDL41:
/*     51 */	ldr	x6, [x0, 16]	//  "a"
/*     51 */	add	x7, x4, 1
	.loc 12 54 0
..LDL42:
/*     54 */	sub	x1, x1, 4
	.loc 12 51 0
..LDL43:
/*     51 */	str	x5, [x6, x4, lsl #3]	//  (*)
	.loc 12 52 0
..LDL44:
/*     52 */	ldr	x6, [x0, 8]	//  "b"
/*     52 */	str	x2, [x6, x4, lsl #3]	//  (*)
	.loc 12 53 0
..LDL45:
/*     53 */	ldr	x6, [x0]	//  "c"
/*     53 */	str	xzr, [x6, x4, lsl #3]	//  (*)
	.loc 12 51 0
..LDL46:
/*     51 */	ldr	x6, [x0, 16]	//  "a"
/*     51 */	str	x5, [x6, x7, lsl #3]	//  (*)
	.loc 12 52 0
..LDL47:
/*     52 */	ldr	x6, [x0, 8]	//  "b"
/*     52 */	str	x2, [x6, x7, lsl #3]	//  (*)
	.loc 12 53 0
..LDL48:
/*     53 */	ldr	x6, [x0]	//  "c"
/*     53 */	str	xzr, [x6, x7, lsl #3]	//  (*)
	.loc 12 51 0
..LDL49:
/*     51 */	ldr	x6, [x0, 16]	//  "a"
	.p2align 5
.L185:					// :entr:term:body:swpl
	.loc 12 54 0
..LDL50:
/*     54 */	add	x7, x4, 2
	.loc 12 51 0
..LDL51:
/*     51 */	str	x5, [x6, x7, lsl #3]	//  (*)
	.loc 12 52 0
..LDL52:
/*     52 */	ldr	x6, [x0, 8]	//  "b"
/*     52 */	str	x2, [x6, x7, lsl #3]	//  (*)
	.loc 12 53 0
..LDL53:
/*     53 */	ldr	x6, [x0]	//  "c"
/*     53 */	str	xzr, [x6, x7, lsl #3]	//  (*)
	.loc 12 51 0
..LDL54:
/*     51 */	ldr	x6, [x0, 16]	//  "a"
/*     51 */	add	x7, x4, 3
/*     51 */	str	x5, [x6, x7, lsl #3]	//  (*)
	.loc 12 52 0
..LDL55:
/*     52 */	ldr	x6, [x0, 8]	//  "b"
/*     52 */	str	x2, [x6, x7, lsl #3]	//  (*)
	.loc 12 53 0
..LDL56:
/*     53 */	ldr	x6, [x0]	//  "c"
/*     53 */	str	xzr, [x6, x7, lsl #3]	//  (*)
	.loc 12 51 0
..LDL57:
/*     51 */	ldr	x6, [x0, 16]	//  "a"
	.loc 12 54 0
..LDL58:
/*     54 */	add	x4, x4, 4
	.loc 12 51 0
..LDL59:
/*     51 */	str	x5, [x6, x4, lsl #3]	//  (*)
	.loc 12 52 0
..LDL60:
/*     52 */	ldr	x6, [x0, 8]	//  "b"
/*     52 */	str	x2, [x6, x4, lsl #3]	//  (*)
	.loc 12 53 0
..LDL61:
/*     53 */	ldr	x6, [x0]	//  "c"
/*     53 */	str	xzr, [x6, x4, lsl #3]	//  (*)
	.loc 12 51 0
..LDL62:
/*     51 */	ldr	x7, [x0, 16]	//  "a"
/*     51 */	add	x6, x4, 1
/*     51 */	str	x5, [x7, x6, lsl #3]	//  (*)
	.loc 12 52 0
..LDL63:
/*     52 */	ldr	x7, [x0, 8]	//  "b"
/*     52 */	str	x2, [x7, x6, lsl #3]	//  (*)
	.loc 12 53 0
..LDL64:
/*     53 */	ldr	x7, [x0]	//  "c"
/*     53 */	str	xzr, [x7, x6, lsl #3]	//  (*)
	.loc 12 54 0
..LDL65:
/*     54 */	sub	x1, x1, 4
	.loc 12 51 0
..LDL66:
/*     51 */	ldr	x6, [x0, 16]	//  "a"
	.loc 12 54 0
..LDL67:
/*     54 */	cmp	x1, 4
/*     54 */	bcs	.L185
/*     54 */	add	x7, x4, 2
/*     54 */	cmp	x1, 2
	.loc 12 51 0
..LDL68:
/*     51 */	str	x5, [x6, x7, lsl #3]	//  (*)
	.loc 12 52 0
..LDL69:
/*     52 */	ldr	x6, [x0, 8]	//  "b"
/*     52 */	str	x2, [x6, x7, lsl #3]	//  (*)
	.loc 12 53 0
..LDL70:
/*     53 */	ldr	x6, [x0]	//  "c"
/*     53 */	str	xzr, [x6, x7, lsl #3]	//  (*)
	.loc 12 51 0
..LDL71:
/*     51 */	add	x7, x4, 3
	.loc 12 54 0
..LDL72:
/*     54 */	add	x4, x4, 4
	.loc 12 51 0
..LDL73:
/*     51 */	ldr	x6, [x0, 16]	//  "a"
/*     51 */	str	x5, [x6, x7, lsl #3]	//  (*)
	.loc 12 52 0
..LDL74:
/*     52 */	ldr	x6, [x0, 8]	//  "b"
/*     52 */	str	x2, [x6, x7, lsl #3]	//  (*)
	.loc 12 53 0
..LDL75:
/*     53 */	ldr	x6, [x0]	//  "c"
/*     53 */	str	xzr, [x6, x7, lsl #3]	//  (*)
	.loc 12 54 0
..LDL76:
/*     54 */	bcc	.L235
.L238:
	.p2align 5
.L241:					// :entr:term:mod:swpl
	.loc 12 51 0 is_stmt 1
..LDL77:
/*     51 */	ldr	x6, [x0, 16]	//  "a"
	.loc 12 54 0 is_stmt 0
..LDL78:
/*     54 */	sub	x1, x1, 2
/*     54 */	cmp	x1, 2
	.loc 12 51 0
..LDL79:
/*     51 */	str	x5, [x6, x4, lsl #3]	//  (*)
	.loc 12 52 0 is_stmt 1
..LDL80:
/*     52 */	ldr	x6, [x0, 8]	//  "b"
/*     52 */	str	x2, [x6, x4, lsl #3]	//  (*)
	.loc 12 53 0
..LDL81:
/*     53 */	ldr	x6, [x0]	//  "c"
/*     53 */	str	xzr, [x6, x4, lsl #3]	//  (*)
	.loc 12 51 0
..LDL82:
/*     51 */	add	x6, x4, 1
	.loc 12 54 0 is_stmt 0
..LDL83:
/*     54 */	add	x4, x4, 2
	.loc 12 51 0
..LDL84:
/*     51 */	ldr	x7, [x0, 16]	//  "a"
/*     51 */	str	x5, [x7, x6, lsl #3]	//  (*)
	.loc 12 52 0 is_stmt 1
..LDL85:
/*     52 */	ldr	x7, [x0, 8]	//  "b"
/*     52 */	str	x2, [x7, x6, lsl #3]	//  (*)
	.loc 12 53 0
..LDL86:
/*     53 */	ldr	x7, [x0]	//  "c"
/*     53 */	str	xzr, [x7, x6, lsl #3]	//  (*)
	.loc 12 54 0 is_stmt 0
..LDL87:
/*     54 */	bcs	.L241
.L235:
.L190:
	.loc 12 50 0 is_stmt 1
..LDL88:
/*     50 */	cbz	x1, .L187
	.loc 12 51 0 is_stmt 0
..LDL89:
/*     51 */	mov	x2, 4607182418800017408
	.loc 12 52 0
..LDL90:
/*     52 */	mov	x5, 4611686018427387904
	.p2align 5
.L196:					// :entr:term:mod
	.loc 12 51 0 is_stmt 1
..LDL91:
/*     51 */	ldr	x6, [x0, 16]	//  "a"
	.loc 12 54 0 is_stmt 0
..LDL92:
/*     54 */	sub	x1, x1, 1
	.loc 12 51 0
..LDL93:
/*     51 */	str	x2, [x6, x4, lsl #3]	//  (*)
	.loc 12 52 0 is_stmt 1
..LDL94:
/*     52 */	ldr	x6, [x0, 8]	//  "b"
/*     52 */	str	x5, [x6, x4, lsl #3]	//  (*)
	.loc 12 53 0
..LDL95:
/*     53 */	ldr	x6, [x0]	//  "c"
/*     53 */	str	xzr, [x6, x4, lsl #3]	//  (*)
	.loc 12 54 0 is_stmt 0
..LDL96:
/*     54 */	add	x4, x4, 1
/*     54 */	cbnz	x1, .L196
.L187:
/*     54 */	ldr	x0, [x3, -16]
/*     54 */	bl	__mpc_obar
	.loc 12 54 0 is_stmt 1
..LDL97:
/*    ??? */	add	sp, sp, 48
	.cfi_def_cfa_offset 16
/*    ??? */	ldr	x30, [sp], 16	//  (*)
	.cfi_restore 30
	.cfi_def_cfa_offset 0
/*     54 */	ret	
..D3.pchi:
	.cfi_endproc
.LFE2:
	.size	main._OMP_1, .-main._OMP_1
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.7.0 (Nov 10 2021 09:30:56) main_test_numa.c main._OMP_2 $"
	.text
	.align	2
	.type	main._OMP_2, %function
main._OMP_2:
	.loc 12 66 0
..LDL98:
.LFB3:
	.cfi_startproc
/*    ??? */	str	x30, [sp, -16]!	//  (*)
	.cfi_def_cfa_offset 16
	.cfi_offset 30, -16
/*    ??? */	sub	sp, sp, 48
	.cfi_def_cfa_offset 64
/*     54 */	str	x1, [sp, 32]
/*     54 */	str	x2, [sp, 24]
/*     54 */	str	x3, [sp, 16]
/*     54 */	str	x4, [sp, 8]
	.loc 12 66 0 is_stmt 0
..LDL99:
	.loc 12 66 0 is_stmt 0
..LDL100:
	.loc 12 67 0 is_stmt 1
..LDL101:
/*     67 */	add	x4, sp, 32
/*     67 */	mov	x5, 199950336
/*     67 */	ldr	x2, [x4]
/*     67 */	ldr	x3, [x4, -8]
/*     67 */	movk	x5, 49664, lsl #0
/*     67 */	udiv	x1, x5, x2
/*     67 */	msub	x2, x2, x1, x5
/*     67 */	cbnz	x2, .L200
/*     67 */	mul	x3, x3, x1
/*     67 */	b	.L203
.L200:
/*     67 */	cmp	x3, x2
/*     67 */	bcc	.L202
/*     67 */	madd	x3, x3, x1, x2
/*     67 */	b	.L203
.L202:
/*     67 */	add	x1, x1, 1
/*     67 */	mul	x3, x3, x1
.L203:
/*     67 */	sub	x2, x1, 1
/*     67 */	add	x2, x2, x3
/*     67 */	cbz	x1, .L208
/*     67 */	sub	x1, x2, x3
/*     67 */	cmp	x3, x2
/*     67 */	add	x1, x1, 1
/*     67 */	csinc	x5, x1, xzr, ls
/*     67 */	cmp	x5, 2
/*     67 */	bcc	.L211
	.p2align 5
.L206:					// :entr:term:body
	.loc 12 68 0
..LDL102:
/*     68 */	ldr	x6, [x0, 16]	//  "a"
/*     68 */	ldr	x2, [x0, 8]	//  "b"
/*     68 */	add	x1, x3, 1
	.loc 12 69 0 is_stmt 0
..LDL103:
/*     69 */	sub	x5, x5, 2
	.loc 12 68 0
..LDL104:
/*     68 */	ldr	x7, [x0]	//  "c"
	.loc 12 69 0
..LDL105:
/*     69 */	cmp	x5, 2
	.loc 12 68 0
..LDL106:
/*     68 */	ldr	d0, [x6, x3, lsl #3]	//  (*)
/*     68 */	ldr	d1, [x2, x3, lsl #3]	//  (*)
/*     68 */	fadd	d0, d0, d1
/*     68 */	str	d0, [x7, x3, lsl #3]	//  (*)
	.loc 12 69 0
..LDL107:
/*     69 */	add	x3, x3, 2
	.loc 12 68 0
..LDL108:
/*     68 */	ldr	x2, [x0, 16]	//  "a"
/*     68 */	ldr	x7, [x0, 8]	//  "b"
/*     68 */	ldr	x6, [x0]	//  "c"
/*     68 */	ldr	d1, [x2, x1, lsl #3]	//  (*)
/*     68 */	ldr	d0, [x7, x1, lsl #3]	//  (*)
/*     68 */	fadd	d0, d1, d0
/*     68 */	str	d0, [x6, x1, lsl #3]	//  (*)
	.loc 12 69 0
..LDL109:
/*     69 */	bcs	.L206
.L211:
	.loc 12 67 0 is_stmt 1
..LDL110:
/*     67 */	cbz	x5, .L208
	.p2align 5
.L217:					// :entr:term:mod
	.loc 12 68 0
..LDL111:
/*     68 */	ldr	x2, [x0, 16]	//  "a"
/*     68 */	ldr	x6, [x0, 8]	//  "b"
	.loc 12 69 0 is_stmt 0
..LDL112:
/*     69 */	sub	x5, x5, 1
	.loc 12 68 0
..LDL113:
/*     68 */	ldr	x1, [x0]	//  "c"
/*     68 */	ldr	d1, [x2, x3, lsl #3]	//  (*)
/*     68 */	ldr	d0, [x6, x3, lsl #3]	//  (*)
/*     68 */	fadd	d0, d1, d0
/*     68 */	str	d0, [x1, x3, lsl #3]	//  (*)
	.loc 12 69 0
..LDL114:
/*     69 */	add	x3, x3, 1
/*     69 */	cbnz	x5, .L217
.L208:
/*     69 */	ldr	x0, [x4, -16]
/*     69 */	bl	__mpc_obar
	.loc 12 69 0 is_stmt 1
..LDL115:
/*    ??? */	add	sp, sp, 48
	.cfi_def_cfa_offset 16
/*    ??? */	ldr	x30, [sp], 16	//  (*)
	.cfi_restore 30
	.cfi_def_cfa_offset 0
/*     69 */	ret	
..D4.pchi:
	.cfi_endproc
.LFE3:
	.size	main._OMP_2, .-main._OMP_2
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LCP1:
	.word	0xa0b5ed8d,0x3eb0c6f7
	.align	3
.LCP2:
	.word	0,0x40e77000
	.global	__jwe_xnrtrap
	.data
	.align	3
	.type	__jwe_xnrtrap, %object
__jwe_xnrtrap:
	.xword	0
	.size	__jwe_xnrtrap,.-__jwe_xnrtrap
	.file 13 "/usr/include/bits/types/struct_timespec.h"
	.file 14 "/usr/include/bits/types/struct_timeval.h"
	.file 15 "/usr/include/sys/time.h"
	.file 16 "/usr/include/stdio.h"
	.file 17 "/usr/include/alloca.h"
	.file 18 "/opt/FJSVxtclanga/tcsds-1.2.34/bin/../include/omp.h"
	.file 19 "/usr/include/sys/select.h"
	.file 20 "/usr/include/bits/types/__sigset_t.h"
	.file 21 "/usr/include/bits/stdint-intn.h"
	.file 22 "/usr/include/bits/types/__fpos_t.h"
	.file 23 "/usr/include/time.h"
	.file 24 "/usr/include/bits/types/clock_t.h"
	.file 25 "/usr/include/bits/types/time_t.h"
	.file 26 "/usr/include/bits/types/struct_tm.h"
	.file 27 "/usr/include/bits/types/locale_t.h"
	.file 28 "/usr/include/bits/types/__locale_t.h"
	.file 29 "/usr/include/bits/types/clockid_t.h"
	.file 30 "/usr/include/sys/types.h"
	.file 31 "/usr/include/bits/types/timer_t.h"
	.file 32 "/usr/include/bits/types/struct_itimerspec.h"
	.file 33 "/usr/include/sys/mman.h"
	.file 34 "/opt/FJSVxtclanga/tcsds-1.2.34/bin/../include/fj_tool/fapp.h"
	.file 35 "/usr/include/bits/floatn.h"
	.file 36 "/usr/include/bits/floatn-common.h"
	.file 37 "/usr/include/bits/types/sigset_t.h"
	.file 38 "/usr/include/bits/pthreadtypes-arch.h"
	.file 39 "/usr/include/bits/thread-shared-types.h"
	.file 40 "/usr/include/bits/pthreadtypes.h"
	.file 41 "/usr/include/bits/types/__mbstate_t.h"
	.file 42 "/usr/include/bits/types/__fpos64_t.h"
	.file 43 "/usr/include/bits/types/__FILE.h"
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
	.ascii	"main_test_numa.c\0"	// DW_AT_name
	.4byte	.Ldebug_line	// DW_AT_stmt_list
	.8byte	..text.b	// DW_AT_low_pc
	.8byte	..text.e-..text.b	// DW_AT_high_pc
	.byte	0xc	// DW_AT_language
	.ascii	"/vol0004/ra000012/a04453/FastConv/test_openmp_nested\0"	// DW_AT_comp_dir
	.ascii	"ccpcom: Fujitsu C/C++ Compiler 4.7.0 (Nov 10 2021 09:30:56)\0"	// DW_AT_producer
	.uleb128	0x2	// DW_TAG_subprogram (0xa3)
	.ascii	"mysecond\0"	// DW_AT_name
	.byte	0x1	// DW_AT_inline
	.byte	0xc	// DW_AT_decl_file
	.byte	0xc	// DW_AT_decl_line
			// DW_AT_declaration
			// DW_AT_external
	.uleb128	0x3	// DW_TAG_subprogram (0xb0)
	.8byte	mysecond	// DW_AT_low_pc
	.8byte	..D1.pchi-mysecond	// DW_AT_high_pc
	.4byte	0xa3	// DW_AT_abstract_origin
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x4	// DW_TAG_subprogram (0xc7)
	.ascii	"main\0"	// DW_AT_name
	.8byte	main	// DW_AT_low_pc
	.8byte	..D2.pchi-main	// DW_AT_high_pc
	.byte	0xc	// DW_AT_decl_file
	.byte	0x23	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x5	// DW_TAG_FJ_loop (0xe1)
	.byte	0xc	// DW_AT_decl_file
	.byte	0x41	// DW_AT_FJ_loop_start_line
	.byte	0x46	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x6	// DW_TAG_subprogram (0xe7)
	.4byte	0x111	// DW_AT_sibling
	.ascii	"main._OMP_1\0"	// DW_AT_name
	.8byte	main._OMP_1	// DW_AT_low_pc
	.8byte	..D3.pchi-main._OMP_1	// DW_AT_high_pc
			// DW_AT_artificial
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x5	// DW_TAG_FJ_loop (0x10a)
	.byte	0xc	// DW_AT_decl_file
	.byte	0x32	// DW_AT_FJ_loop_start_line
	.byte	0x36	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xe7)
	.uleb128	0x6	// DW_TAG_subprogram (0x111)
	.4byte	0x13b	// DW_AT_sibling
	.ascii	"main._OMP_2\0"	// DW_AT_name
	.8byte	main._OMP_2	// DW_AT_low_pc
	.8byte	..D4.pchi-main._OMP_2	// DW_AT_high_pc
			// DW_AT_artificial
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.uleb128	0x5	// DW_TAG_FJ_loop (0x134)
	.byte	0xc	// DW_AT_decl_file
	.byte	0x43	// DW_AT_FJ_loop_start_line
	.byte	0x45	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x111)
	.uleb128	0x7	// DW_TAG_inlined_subroutine (0x13b)
	.4byte	0xa3	// DW_AT_abstract_origin
	.4byte	.Ldebug_ranges1	// DW_AT_ranges
	.byte	0xc	// DW_AT_call_file
	.byte	0x40	// DW_AT_call_line
	.uleb128	0x7	// DW_TAG_inlined_subroutine (0x146)
	.4byte	0xa3	// DW_AT_abstract_origin
	.4byte	.Ldebug_ranges1	// DW_AT_ranges
	.byte	0xc	// DW_AT_call_file
	.byte	0x47	// DW_AT_call_line
	.byte	0x0	// End of children (0xc7)
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
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
	.uleb128	0x12	// DW_AT_high_pc
	.uleb128	0x7	// DW_FORM_data8
	.uleb128	0x13	// DW_AT_language
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x1b	// DW_AT_comp_dir
	.uleb128	0x8	// DW_FORM_string
	.uleb128	0x25	// DW_AT_producer
	.uleb128	0x8	// DW_FORM_string
	.byte	0x0
	.byte	0x0
	.uleb128	0x2	// Abbreviation code
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
	.byte	0x0
	.byte	0x0
	.uleb128	0x3	// Abbreviation code
	.uleb128	0x2e	// DW_TAG_subprogram
	.byte	0x0	// DW_CHILDREN_no
	.uleb128	0x11	// DW_AT_low_pc
	.uleb128	0x1	// DW_FORM_addr
	.uleb128	0x12	// DW_AT_high_pc
	.uleb128	0x7	// DW_FORM_data8
	.uleb128	0x31	// DW_AT_abstract_origin
	.uleb128	0x13	// DW_FORM_ref4
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.byte	0x0
	.byte	0x0
	.uleb128	0x4	// Abbreviation code
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
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3f	// DW_AT_external
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.byte	0x0
	.byte	0x0
	.uleb128	0x5	// Abbreviation code
	.uleb128	0xf000	// DW_TAG_FJ_loop
	.byte	0x0	// DW_CHILDREN_no
	.uleb128	0x3a	// DW_AT_decl_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3300	// DW_AT_FJ_loop_start_line
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3301	// DW_AT_FJ_loop_end_line
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3302	// DW_AT_FJ_loop_nest_level
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3303	// DW_AT_FJ_loop_type
	.uleb128	0xb	// DW_FORM_data1
	.byte	0x0
	.byte	0x0
	.uleb128	0x6	// Abbreviation code
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
	.uleb128	0x34	// DW_AT_artificial
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.byte	0x0
	.byte	0x0
	.uleb128	0x7	// Abbreviation code
	.uleb128	0x1d	// DW_TAG_inlined_subroutine
	.byte	0x0	// DW_CHILDREN_no
	.uleb128	0x31	// DW_AT_abstract_origin
	.uleb128	0x13	// DW_FORM_ref4
	.uleb128	0x55	// DW_AT_ranges
	.uleb128	0x17	// DW_FORM_sec_offset
	.uleb128	0x58	// DW_AT_call_file
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x59	// DW_AT_call_line
	.uleb128	0xb	// DW_FORM_data1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_line
.Ldebug_line:
	.section	.debug_ranges
.Ldebug_ranges1:
	.8byte	0xffffffffffffffff	// Base addr selection entry ID
	.8byte	0x0
	.8byte	..LDL9
	.8byte	..LDL11
	.8byte	..LDL12
	.8byte	..LDL13
	.8byte	..LDL15
	.8byte	..LDL16
	.8byte	..LDL18
	.8byte	..LDL19
	.8byte	..LDL21
	.8byte	..LDL23
	.8byte	..LDL29
	.8byte	..LDL30
	.8byte	0x0
	.8byte	0x0
	.section	.rodata
	.align	3
.LR.1:
	.ascii "bandwidth\040=\040%lf\040MB/s\012\000"
	.type	.LR.1, %object
	.size	.LR.1,.-.LR.1
	.section	.rodata
	.align	3
.LR.2:
	.ascii "elapsed\040time\040=\040%lf\040s\012\000"
	.type	.LR.2, %object
	.size	.LR.2,.-.LR.2
	.section	.note.GNU-stack,"",%progbits
	.section	.fj.compile_info, "e"
	.ascii	"C::trad"
