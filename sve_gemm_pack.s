..text.b:
	.ident	"$Options: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) --preinclude /opt/FJSVxtclanga/tcsds-1.2.33/bin/../lib/FCC.pre --g++ --c++11 -D__STRICT_ANSI__ -D__FUJITSU -D__FCC_major__=4 -D__FCC_minor__=6 -D__FCC_patchlevel__=1 -D__FCC_version__=\"4.6.1\" -D__aarch64__ -D__unix -D_OPENMP=201107 -D__PRAGMA_REDEFINE_EXTNAME -D__FCC_VERSION=800 -D__USER_LABEL_PREFIX__= -D__OPTIMIZE__ -D__ARM_ARCH=8 -D__ARM_FEATURE_SVE -D__FP_FAST_FMA -D__ELF__ -D__linux -Asystem(unix) -D__LIBC_6B -D_LP64 -D__LP64__ -I/vol0004/ra000012/a04453/FastConv --K=omp --K=noocl -D_REENTRANT -D__MT__ --zmode=64 --sys_include=/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371 --sys_include=/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include --K=opt --exceptions ./im2col/SVE/sve_gemm_pack.cpp -- -ncmdname=FCC -zobe=cplus -zcfc=target_sve -O3 -x- -Komitfp,mfunc,eval,fp_relaxed,fz,fast_matmul,fp_contract,ilfunc,simd_packed_promotion -Kopenmp,threadsafe -Nlibomp -Kprefetch_cache_level=all -Kprefetch_sequential=soft -Kprefetch_line=2 -Kprefetch_line_L2=10 -Kzfill=9 -Kswp -Klargepage sve_gemm_pack.s $"
	.file	"sve_gemm_pack.cpp"
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_pack.cpp _Z9pack_a_v2iiPfiS_iiiii $"
	.text
	.align	2
	.global	_Z9pack_a_v2iiPfiS_iiiii
	.type	_Z9pack_a_v2iiPfiS_iiiii, %function
_Z9pack_a_v2iiPfiS_iiiii:
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
	.file 12 "/usr/include/wchar.h"
	.file 13 "/usr/include/bits/types/wint_t.h"
	.file 14 "/usr/include/bits/types/mbstate_t.h"
	.file 15 "/usr/include/bits/types/__mbstate_t.h"
	.file 16 "/usr/include/string.h"
	.file 17 "/usr/include/strings.h"
	.file 18 "/usr/include/ctype.h"
	.file 19 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/__config_fujitsu"
	.file 20 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/cwchar"
	.file 21 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/type_traits"
	.file 22 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/cstdlib"
	.file 23 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/exception"
	.file 24 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/cstddef"
	.file 25 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/typeinfo"
	.file 26 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/new"
	.file 27 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/iterator"
	.file 28 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/tuple"
	.file 29 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/atomic"
	.file 30 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/memory"
	.file 31 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/algorithm"
	.file 32 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/stdexcept"
	.file 33 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/iosfwd"
	.file 34 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/string"
	.file 35 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/__bit_reference"
	.file 36 "/usr/include/pthread.h"
	.file 37 "/usr/include/bits/pthreadtypes.h"
	.file 38 "./im2col/SVE/sve_gemm_pack.cpp"
	.loc 38 13 0
..LDL1:
.LFB0:
	.cfi_startproc
/*     13 */	sub	sp, sp, 64
	.cfi_def_cfa_offset 64
/*    ??? */	stp	x29, x30, [sp, 48]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    ??? */	stp	x19, x20, [sp, 32]	//  (*)
	.cfi_offset 19, -32
	.cfi_offset 20, -24
/*    ??? */	stp	x21, x22, [sp, 16]	//  (*)
	.cfi_offset 21, -48
	.cfi_offset 22, -40
/*    ??? */	str	x23, [sp, 8]	//  (*)
	.cfi_offset 23, -56
/*    ??? */	sub	sp, sp, 64
	.cfi_def_cfa_offset 128
/*     13 */	ldr	w9, [sp, 128]	//  (*)
	.loc 38 18 0
..LDL2:
/*     18 */	cmp	w0, 0
/*     18 */	ble	.L379
/*     18 */	mov	w10, 0
	.loc 38 37 0 is_stmt 0
..LDL3:
/*     37 */	sbfiz	x6, x9, 2, 32
	.loc 38 34 0
..LDL4:
/*     34 */	sxtw	x13, w3
/*     34 */	mov	x11, 2564
/*     34 */	mov	x12, 516
.L351:					// :entr
	.loc 38 21 0 is_stmt 1
..LDL5:
/*     21 */	sub	w7, w0, w10
	.loc 38 24 0
..LDL6:
/*     24 */	mov	w15, 0
	.loc 38 21 0
..LDL7:
/*     21 */	cmp	w7, w5
/*     21 */	csel	w14, w7, w5, le
	.loc 38 22 0
..LDL8:
/*     22 */	sdiv	w7, w14, w9
/*     22 */	msub	w7, w7, w9, w14
/*     22 */	sub	w8, w14, w7
	.loc 38 25 0
..LDL9:
/*     25 */	cmp	w8, 0
/*     25 */	ble	.L366
.L354:					// :entr
	.loc 38 27 0
..LDL10:
/*     27 */	add	w7, w15, w10
/*     27 */	mul	w7, w7, w3
/*     27 */	sxtw	x7, w7
/*     27 */	add	x18, x2, x7, lsl #2
	.loc 38 29 0
..LDL11:
/*     29 */	cmp	w1, 0
/*     29 */	ble	.L364
/*     29 */	mov	x17, 0
/*     29 */	mov	w30, w1
.L357:					// :entr
	.loc 38 32 0
..LDL12:
/*     32 */	cmp	w9, 0
/*     32 */	ble	.L362
	.loc 38 34 0 is_stmt 0
..LDL13:
/*     34 */	mov	x7, x17
	.loc 38 32 0
..LDL14:
/*     32 */	sub	w21, w9, 4
	.loc 38 34 0
..LDL15:
/*     34 */	add	x29, x7, x18
/*     34 */	mov	x20, 0
	.loc 38 32 0
..LDL16:
/*     32 */	cmp	w21, 0
/*     32 */	mov	x16, 0
/*     32 */	blt	.L381
	.loc 38 34 0
..LDL17:
/*     34 */	orr	x7, x4, 6917529027641081856
/*     34 */	mov	x16, 0
/*     34 */	add	x19, x7, 12
	.p2align 5
.L360:					// :entr:term:body
	.loc 38 34 0 is_stmt 1
..LDL18:
/*     34 */	ldr	s0, [x29, x16, lsl #2]	//  (*)
	.loc 38 35 0
..LDL19:
/*     35 */	add	x7, x16, x13
	.loc 38 36 0 is_stmt 0
..LDL20:
/*     36 */	add	x20, x20, 4
	.loc 38 35 0
..LDL21:
/*     35 */	add	x23, x7, x13
	.loc 38 36 0
..LDL22:
/*     36 */	subs	w21, w21, 4
	.loc 38 35 0
..LDL23:
/*     35 */	add	x22, x23, x13
/*     35 */	add	x16, x22, x13
	.loc 38 34 0 is_stmt 1
..LDL24:
/*     34 */	str	s0, [x19, -12]	//  (*)
/*     34 */	ldr	s0, [x29, x7, lsl #2]	//  (*)
/*     34 */	str	s0, [x19, -8]	//  (*)
/*     34 */	ldr	s0, [x29, x23, lsl #2]	//  (*)
/*     34 */	str	s0, [x19, -4]	//  (*)
/*     34 */	prfm	18, [x19, x11]	//  (*)
/*     34 */	ldr	s0, [x29, x22, lsl #2]	//  (*)
/*     34 */	prfm	16, [x19, x12]	//  (*)
/*     34 */	str	s0, [x19]	//  (*)
	.loc 38 36 0 is_stmt 0
..LDL25:
/*     36 */	add	x19, x19, 16
/*     36 */	bpl	.L360
.L381:
	.loc 38 32 0 is_stmt 1
..LDL26:
/*     32 */	adds	w21, w21, 3
/*     32 */	bmi	.L362
	.loc 38 34 0 is_stmt 0
..LDL27:
/*     34 */	orr	x19, x4, 6917529027641081856
/*     34 */	lsl	x7, x20, 2
/*     34 */	add	x7, x19, x7
	.p2align 5
.L389:					// :entr:term:mod
	.loc 38 34 0 is_stmt 1
..LDL28:
/*     34 */	prfm	18, [x7, 2560]	//  (*)
/*     34 */	ldr	s0, [x29, x16, lsl #2]	//  (*)
	.loc 38 35 0
..LDL29:
/*     35 */	add	x16, x16, x13
	.loc 38 36 0 is_stmt 0
..LDL30:
/*     36 */	subs	w21, w21, 1
	.loc 38 34 0 is_stmt 1
..LDL31:
/*     34 */	prfm	16, [x7, 512]	//  (*)
/*     34 */	str	s0, [x7]	//  (*)
	.loc 38 36 0 is_stmt 0
..LDL32:
/*     36 */	add	x7, x7, 4
/*     36 */	bpl	.L389
.L362:					// :term
	.loc 38 37 0 is_stmt 1
..LDL33:
/*     37 */	add	x4, x4, x6
	.loc 38 38 0
..LDL34:
/*     38 */	add	x17, x17, 4
	.loc 38 39 0 is_stmt 0
..LDL35:
/*     39 */	subs	w30, w30, 1
/*     39 */	bne	.L357
.L364:					// :term
	.loc 38 40 0 is_stmt 1
..LDL36:
/*     40 */	add	w15, w15, w9
/*     40 */	cmp	w15, w8
/*     40 */	blt	.L354
.L366:
	.loc 38 42 0
..LDL37:
/*     42 */	add	w7, w8, w10
	.loc 38 44 0
..LDL38:
/*     44 */	sub	w16, w14, w8
	.loc 38 42 0
..LDL39:
/*     42 */	mul	w7, w7, w3
/*     42 */	sxtw	x7, w7
/*     42 */	add	x17, x2, x7, lsl #2
	.loc 38 46 0
..LDL40:
/*     46 */	cmp	w1, 0
/*     46 */	ble	.L376
/*     46 */	mov	x15, 0
	.loc 38 54 0 is_stmt 0
..LDL41:
/*     54 */	sbfiz	x7, x16, 2, 32
/*     54 */	mov	w18, w1
.L369:					// :entr
	.loc 38 49 0 is_stmt 1
..LDL42:
/*     49 */	cmp	w16, 0
/*     49 */	ble	.L374
	.loc 38 51 0 is_stmt 0
..LDL43:
/*     51 */	mov	x8, x15
	.loc 38 49 0
..LDL44:
/*     49 */	sub	w22, w16, 4
	.loc 38 51 0
..LDL45:
/*     51 */	add	x14, x8, x17
/*     51 */	mov	x30, 0
	.loc 38 49 0
..LDL46:
/*     49 */	cmp	w22, 0
/*     49 */	mov	x29, 0
/*     49 */	blt	.L391
	.loc 38 51 0
..LDL47:
/*     51 */	orr	x8, x4, 6917529027641081856
/*     51 */	mov	x29, 0
/*     51 */	add	x8, x8, 12
	.p2align 5
.L372:					// :entr:term:body
	.loc 38 51 0 is_stmt 1
..LDL48:
/*     51 */	ldr	s0, [x14, x29, lsl #2]	//  (*)
	.loc 38 52 0
..LDL49:
/*     52 */	add	x21, x29, x13
	.loc 38 53 0 is_stmt 0
..LDL50:
/*     53 */	add	x30, x30, 4
	.loc 38 52 0
..LDL51:
/*     52 */	add	x20, x21, x13
	.loc 38 53 0
..LDL52:
/*     53 */	subs	w22, w22, 4
	.loc 38 52 0
..LDL53:
/*     52 */	add	x19, x20, x13
/*     52 */	add	x29, x19, x13
	.loc 38 51 0 is_stmt 1
..LDL54:
/*     51 */	str	s0, [x8, -12]	//  (*)
/*     51 */	ldr	s0, [x14, x21, lsl #2]	//  (*)
/*     51 */	str	s0, [x8, -8]	//  (*)
/*     51 */	ldr	s0, [x14, x20, lsl #2]	//  (*)
/*     51 */	str	s0, [x8, -4]	//  (*)
/*     51 */	prfm	18, [x8, x11]	//  (*)
/*     51 */	ldr	s0, [x14, x19, lsl #2]	//  (*)
/*     51 */	prfm	16, [x8, x12]	//  (*)
/*     51 */	str	s0, [x8]	//  (*)
	.loc 38 53 0 is_stmt 0
..LDL55:
/*     53 */	add	x8, x8, 16
/*     53 */	bpl	.L372
.L391:
	.loc 38 49 0 is_stmt 1
..LDL56:
/*     49 */	adds	w20, w22, 3
/*     49 */	bmi	.L374
	.loc 38 51 0 is_stmt 0
..LDL57:
/*     51 */	orr	x19, x4, 6917529027641081856
/*     51 */	lsl	x8, x30, 2
/*     51 */	add	x8, x19, x8
	.p2align 5
.L399:					// :entr:term:mod
	.loc 38 51 0 is_stmt 1
..LDL58:
/*     51 */	prfm	18, [x8, 2560]	//  (*)
/*     51 */	ldr	s0, [x14, x29, lsl #2]	//  (*)
	.loc 38 52 0
..LDL59:
/*     52 */	add	x29, x29, x13
	.loc 38 53 0 is_stmt 0
..LDL60:
/*     53 */	subs	w20, w20, 1
	.loc 38 51 0 is_stmt 1
..LDL61:
/*     51 */	prfm	16, [x8, 512]	//  (*)
/*     51 */	str	s0, [x8]	//  (*)
	.loc 38 53 0 is_stmt 0
..LDL62:
/*     53 */	add	x8, x8, 4
/*     53 */	bpl	.L399
.L374:					// :term
	.loc 38 54 0 is_stmt 1
..LDL63:
/*     54 */	add	x4, x4, x7
	.loc 38 55 0
..LDL64:
/*     55 */	add	x15, x15, 4
	.loc 38 56 0 is_stmt 0
..LDL65:
/*     56 */	subs	w18, w18, 1
/*     56 */	bne	.L369
.L376:					// :term
	.loc 38 57 0 is_stmt 1
..LDL66:
/*     57 */	add	w10, w10, w5
/*     57 */	cmp	w10, w0
/*     57 */	blt	.L351
.L379:					// :epi:term
	.loc 38 58 0
..LDL67:
/*    ??? */	add	sp, sp, 64
	.cfi_def_cfa_offset 64
/*    ??? */	ldp	x19, x20, [sp, 32]	//  (*)
	.cfi_restore 19
	.cfi_restore 20
/*    ??? */	ldp	x21, x22, [sp, 16]	//  (*)
	.cfi_restore 21
	.cfi_restore 22
/*    ??? */	ldr	x23, [sp, 8]	//  (*)
	.cfi_restore 23
/*    ??? */	ldp	x29, x30, [sp, 48]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*     58 */	add	sp, sp, 64
	.cfi_def_cfa_offset 0
/*     58 */	ret	
..D1.pchi:
	.cfi_endproc
.LFE0:
	.size	_Z9pack_a_v2iiPfiS_iiiii, .-_Z9pack_a_v2iiPfiS_iiiii
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_pack.cpp _Z15pack_b_v2_12x32iiPfiS_ii $"
	.text
	.align	2
	.global	_Z15pack_b_v2_12x32iiPfiS_ii
	.type	_Z15pack_b_v2_12x32iiPfiS_ii, %function
_Z15pack_b_v2_12x32iiPfiS_ii:
	.loc 38 61 0
..LDL68:
.LFB1:
	.cfi_startproc
/*     58 */	sub	sp, sp, 64
	.cfi_def_cfa_offset 64
/*    ??? */	stp	x29, x30, [sp, 48]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	.loc 38 64 0
..LDL69:
/*     64 */	sdiv	w5, w1, w6
/*     64 */	msub	w5, w5, w6, w1
/*     64 */	sub	w14, w1, w5
	.loc 38 67 0
..LDL70:
/*     67 */	cmp	w0, 0
/*     67 */	ble	.L427
	.loc 38 70 0 is_stmt 0
..LDL71:
/*     70 */	mul	w5, w0, w6
	.loc 38 72 0
..LDL72:
/*     72 */	ptrue	p0.s, ALL
	.loc 38 88 0
..LDL73:
/*     88 */	sbfiz	x7, x6, 2, 32
	.loc 38 105 0
..LDL74:
/*    105 */	fmov	z0.s, 0.000000e+00
	.loc 38 67 0
..LDL75:
/*     67 */	mov	w15, 0
	.loc 38 97 0
..LDL76:
/*     97 */	mov	x12, 2564
/*     97 */	mov	x13, 516
	.loc 38 89 0
..LDL77:
/*     89 */	mov	w11, w0
/*     89 */	sbfiz	x5, x5, 2, 32
.L404:					// :entr
	.loc 38 68 0 is_stmt 1
..LDL78:
/*     68 */	mul	w9, w15, w3
	.loc 38 75 0
..LDL79:
/*     75 */	mov	w16, 0
	.loc 38 69 0
..LDL80:
/*     69 */	mul	w8, w15, w6
	.loc 38 68 0
..LDL81:
/*     68 */	sxtw	x9, w9
	.loc 38 69 0
..LDL82:
/*     69 */	sxtw	x8, w8
	.loc 38 68 0
..LDL83:
/*     68 */	add	x17, x2, x9, lsl #2
	.loc 38 69 0
..LDL84:
/*     69 */	add	x9, x4, x8, lsl #2
	.loc 38 76 0
..LDL85:
/*     76 */	cmp	w14, 0
/*     76 */	ble	.L409
	.p2align 5
.L407:					// :entr:term
	.loc 38 83 0
..LDL86:
/*     83 */	orr	x10, x17, 6917529027641081856
	.loc 38 84 0
..LDL87:
/*     84 */	add	x18, x17, 64
	.loc 38 83 0
..LDL88:
/*     83 */	ld1w	{z2.s}, p0/z, [x10, 0, mul vl]	//  (*)
	.loc 38 84 0
..LDL89:
/*     84 */	ld1w	{z1.s}, p0/z, [x18, 0, mul vl]	//  (*)
	.loc 38 85 0
..LDL90:
/*     85 */	orr	x29, x9, 6917529027641081856
	.loc 38 86 0
..LDL91:
/*     86 */	add	x18, x9, 64
	.loc 38 83 0
..LDL92:
/*     83 */	prfm	2, [x10, 2560]	//  (*)
/*     83 */	prfm	0, [x10, 512]	//  (*)
	.loc 38 88 0
..LDL93:
/*     88 */	add	x17, x17, x7
	.loc 38 90 0
..LDL94:
/*     90 */	add	w16, w16, w6
	.loc 38 85 0
..LDL95:
/*     85 */	prfm	18, [x29, 2560]	//  (*)
/*     85 */	prfm	16, [x29, 512]	//  (*)
	.loc 38 89 0
..LDL96:
/*     89 */	add	x9, x9, x5
	.loc 38 90 0
..LDL97:
/*     90 */	cmp	w16, w14
	.loc 38 85 0
..LDL98:
/*     85 */	st1w	{z2.s}, p0, [x29, 0, mul vl]	//  (*)
	.loc 38 86 0
..LDL99:
/*     86 */	st1w	{z1.s}, p0, [x18, 0, mul vl]	//  (*)
	.loc 38 90 0 is_stmt 0
..LDL100:
/*     90 */	blt	.L407
.L409:
	.loc 38 93 0 is_stmt 1
..LDL101:
/*     93 */	cmp	w16, w1
/*     93 */	bge	.L424
	.loc 38 94 0
..LDL102:
/*     94 */	sub	w10, w1, w16
	.loc 38 95 0
..LDL103:
/*     95 */	mul	w9, w16, w0
/*     95 */	sxtw	x9, w9
/*     95 */	add	x9, x4, x9, lsl #2
/*     95 */	add	x16, x9, x8, lsl #2
	.loc 38 96 0
..LDL104:
/*     96 */	cmp	w10, 0
/*     96 */	ble	.L415
	.loc 38 97 0 is_stmt 0
..LDL105:
/*     97 */	mov	x8, 0
	.loc 38 96 0
..LDL106:
/*     96 */	subs	w9, w10, 4
/*     96 */	bmi	.L429
	.loc 38 97 0
..LDL107:
/*     97 */	orr	x29, x17, 6917529027641081856
/*     97 */	orr	x18, x16, 6917529027641081856
/*     97 */	add	x29, x29, 12
/*     97 */	add	x18, x18, 12
	.p2align 5
.L413:					// :entr:term:body
	.loc 38 97 0 is_stmt 1
..LDL108:
/*     97 */	ldr	s1, [x29, -12]	//  (*)
	.loc 38 102 0 is_stmt 0
..LDL109:
/*    102 */	add	x8, x8, 4
/*    102 */	subs	w9, w9, 4
	.loc 38 97 0
..LDL110:
/*     97 */	str	s1, [x18, -12]	//  (*)
/*     97 */	ldr	s1, [x29, -8]	//  (*)
/*     97 */	str	s1, [x18, -8]	//  (*)
/*     97 */	ldr	s1, [x29, -4]	//  (*)
/*     97 */	str	s1, [x18, -4]	//  (*)
/*     97 */	prfm	2, [x29, x12]	//  (*)
/*     97 */	ldr	s1, [x29]	//  (*)
/*     97 */	prfm	0, [x29, x13]	//  (*)
/*     97 */	prfm	18, [x18, x12]	//  (*)
	.loc 38 102 0
..LDL111:
/*    102 */	add	x29, x29, 16
	.loc 38 97 0
..LDL112:
/*     97 */	prfm	16, [x18, x13]	//  (*)
/*     97 */	str	s1, [x18]	//  (*)
	.loc 38 102 0
..LDL113:
/*    102 */	add	x18, x18, 16
/*    102 */	bpl	.L413
.L429:
	.loc 38 96 0 is_stmt 1
..LDL114:
/*     96 */	adds	w9, w9, 3
/*     96 */	bmi	.L415
	.loc 38 97 0 is_stmt 0
..LDL115:
/*     97 */	orr	x17, x17, 6917529027641081856
/*     97 */	lsl	x8, x8, 2
/*     97 */	orr	x18, x16, 6917529027641081856
/*     97 */	add	x17, x17, x8
/*     97 */	add	x8, x18, x8
	.p2align 5
.L437:					// :entr:term:mod
	.loc 38 97 0 is_stmt 1
..LDL116:
/*     97 */	prfm	2, [x17, 2560]	//  (*)
/*     97 */	ldr	s1, [x17]	//  (*)
	.loc 38 102 0 is_stmt 0
..LDL117:
/*    102 */	subs	w9, w9, 1
	.loc 38 97 0
..LDL118:
/*     97 */	prfm	0, [x17, 512]	//  (*)
/*     97 */	prfm	18, [x8, 2560]	//  (*)
	.loc 38 102 0
..LDL119:
/*    102 */	add	x17, x17, 4
	.loc 38 97 0
..LDL120:
/*     97 */	prfm	16, [x8, 512]	//  (*)
/*     97 */	str	s1, [x8]	//  (*)
	.loc 38 102 0
..LDL121:
/*    102 */	add	x8, x8, 4
/*    102 */	bpl	.L437
.L415:
	.loc 38 104 0 is_stmt 1
..LDL122:
/*    104 */	sub	w8, w6, w10
/*    104 */	cmp	w8, 0
/*    104 */	csel	w8, w8, wzr, ge
/*    104 */	cmp	w10, w6
/*    104 */	bge	.L424
	.loc 38 105 0 is_stmt 0
..LDL123:
/*    105 */	sxtw	x18, w10
	.loc 38 104 0
..LDL124:
/*    104 */	asr	w9, w8, 3
/*    104 */	add	w9, w8, w9, lsr #28
/*    104 */	asr	w29, w9, 4
/*    104 */	sub	w17, w8, w29, lsl #4
/*    104 */	cbz	w29, .L420
/*    104 */	sub	w9, w29, 4
/*    104 */	mov	x10, x18
/*    104 */	cmp	w9, 0
/*    104 */	blt	.L439
	.loc 38 105 0
..LDL125:
/*    105 */	orr	x30, x16, 6917529027641081856
/*    105 */	lsl	x8, x18, 2
/*    105 */	add	x8, x8, 192
	.loc 38 104 0
..LDL126:
/*    104 */	cmp	w9, 8
	.loc 38 105 0
..LDL127:
/*    105 */	add	x30, x30, x8
	.loc 38 104 0
..LDL128:
/*    104 */	blt	.L561
	.loc 38 108 0
..LDL129:
/*    108 */	mov	x8, x30
	.loc 38 105 0
..LDL130:
/*    105 */	prfm	18, [x8, 2624]	//  (*)
/*    105 */	prfm	16, [x8, 576]	//  (*)
	.p2align 5
.L418:					// :entr:term:body:swpl
/*    105 */	st1w	{z0.s}, p0, [x8, -3, mul vl]	//  (*)
/*    105 */	prfm	18, [x8, 2880]	//  (*)
/*    105 */	prfm	16, [x8, 832]	//  (*)
/*    105 */	st1w	{z0.s}, p0, [x8, -1, mul vl]	//  (*)
/*    105 */	st1w	{z0.s}, p0, [x8, -2, mul vl]	//  (*)
/*    105 */	st1w	{z0.s}, p0, [x8, 0, mul vl]	//  (*)
/*    105 */	st1w	{z0.s}, p0, [x8, 1, mul vl]	//  (*)
	.loc 38 108 0
..LDL131:
/*    108 */	add	x8, x8, 512
	.loc 38 105 0
..LDL132:
/*    105 */	prfm	18, [x8, 2624]	//  (*)
/*    105 */	prfm	16, [x8, 576]	//  (*)
/*    105 */	st1w	{z0.s}, p0, [x8, -5, mul vl]	//  (*)
/*    105 */	st1w	{z0.s}, p0, [x8, -6, mul vl]	//  (*)
/*    105 */	add	x10, x10, 128
/*    105 */	st1w	{z0.s}, p0, [x8, -4, mul vl]	//  (*)
	.loc 38 108 0
..LDL133:
/*    108 */	sub	w9, w9, 8
	.loc 38 105 0
..LDL134:
/*    105 */	cmp	w9, 8
/*    105 */	bge	.L418
/*    105 */	st1w	{z0.s}, p0, [x8, -3, mul vl]	//  (*)
	.loc 38 108 0
..LDL135:
/*    108 */	add	x30, x8, 256
/*    108 */	sub	w9, w9, 4
	.loc 38 105 0
..LDL136:
/*    105 */	st1w	{z0.s}, p0, [x8, -1, mul vl]	//  (*)
/*    105 */	add	x10, x10, 64
	.loc 38 108 0
..LDL137:
/*    108 */	cmp	w9, 0
	.loc 38 105 0
..LDL138:
/*    105 */	st1w	{z0.s}, p0, [x8, -2, mul vl]	//  (*)
/*    105 */	st1w	{z0.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 38 108 0
..LDL139:
/*    108 */	blt	.L558
.L561:
	.p2align 5
.L564:					// :entr:term:mod:swpl
	.loc 38 105 0 is_stmt 1
..LDL140:
/*    105 */	st1w	{z0.s}, p0, [x30, -3, mul vl]	//  (*)
/*    105 */	add	x10, x10, 64
	.loc 38 108 0 is_stmt 0
..LDL141:
/*    108 */	subs	w9, w9, 4
	.loc 38 105 0
..LDL142:
/*    105 */	st1w	{z0.s}, p0, [x30, -2, mul vl]	//  (*)
/*    105 */	st1w	{z0.s}, p0, [x30, -1, mul vl]	//  (*)
/*    105 */	st1w	{z0.s}, p0, [x30, 0, mul vl]	//  (*)
/*    105 */	prfm	18, [x30, 2624]	//  (*)
/*    105 */	prfm	16, [x30, 576]	//  (*)
	.loc 38 108 0
..LDL143:
/*    108 */	add	x30, x30, 256
/*    108 */	bpl	.L564
.L558:
.L439:
	.loc 38 104 0 is_stmt 1
..LDL144:
/*    104 */	adds	w9, w9, 3
/*    104 */	bmi	.L420
	.loc 38 105 0 is_stmt 0
..LDL145:
/*    105 */	orr	x30, x16, 6917529027641081856
/*    105 */	lsl	x8, x10, 2
/*    105 */	add	x8, x30, x8
	.p2align 5
.L447:					// :entr:term:mod
	.loc 38 105 0 is_stmt 1
..LDL146:
/*    105 */	prfm	18, [x8, 2624]	//  (*)
/*    105 */	fmov	z1.s, 0.000000e+00
	.loc 38 108 0 is_stmt 0
..LDL147:
/*    108 */	subs	w9, w9, 1
	.loc 38 105 0
..LDL148:
/*    105 */	prfm	16, [x8, 576]	//  (*)
/*    105 */	st1w	{z1.s}, p0, [x8, 0, mul vl]	//  (*)
	.loc 38 108 0
..LDL149:
/*    108 */	add	x8, x8, 64
	.loc 38 105 0
..LDL150:
/*    105 */	bpl	.L447
.L420:
	.loc 38 104 0 is_stmt 1
..LDL151:
/*    104 */	sbfiz	x8, x29, 4, 32
/*    104 */	add	x8, x8, x18
/*    104 */	cbz	w17, .L424
	.loc 38 105 0 is_stmt 0
..LDL152:
/*    105 */	whilelt	p1.s, wzr, w17
	.loc 38 105 0 is_stmt 1
..LDL153:
/*    105 */	st1w	{z0.s}, p1, [x16, x8, lsl #2]	//  (*)
.L424:					// :term
	.loc 38 110 0
..LDL154:
/*    110 */	add	w15, w15, 1
/*    110 */	subs	w11, w11, 1
/*    110 */	bne	.L404
.L427:					// :epi:term
	.loc 38 111 0
..LDL155:
/*    ??? */	ldp	x29, x30, [sp, 48]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    111 */	add	sp, sp, 64
	.cfi_def_cfa_offset 0
/*    111 */	ret	
..D2.pchi:
	.cfi_endproc
.LFE1:
	.size	_Z15pack_b_v2_12x32iiPfiS_ii, .-_Z15pack_b_v2_12x32iiPfiS_ii
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_pack.cpp _Z14pack_b_v2_4x64iiPfiS_ii $"
	.text
	.align	2
	.global	_Z14pack_b_v2_4x64iiPfiS_ii
	.type	_Z14pack_b_v2_4x64iiPfiS_ii, %function
_Z14pack_b_v2_4x64iiPfiS_ii:
	.loc 38 113 0
..LDL156:
.LFB2:
	.cfi_startproc
/*    111 */	sub	sp, sp, 64
	.cfi_def_cfa_offset 64
/*    ??? */	stp	x29, x30, [sp, 48]	//  (*)
	.cfi_offset 29, -16
	.cfi_offset 30, -8
/*    ??? */	str	x19, [sp, 40]	//  (*)
	.cfi_offset 19, -24
	.loc 38 116 0
..LDL157:
/*    116 */	sdiv	w5, w1, w6
/*    116 */	msub	w5, w5, w6, w1
/*    116 */	sub	w14, w1, w5
	.loc 38 119 0
..LDL158:
/*    119 */	cmp	w0, 0
/*    119 */	ble	.L475
	.loc 38 122 0 is_stmt 0
..LDL159:
/*    122 */	mul	w5, w0, w6
	.loc 38 124 0
..LDL160:
/*    124 */	ptrue	p1.s, ALL
	.loc 38 144 0
..LDL161:
/*    144 */	sbfiz	x7, x6, 2, 32
	.loc 38 161 0
..LDL162:
/*    161 */	fmov	z2.s, 0.000000e+00
	.loc 38 119 0
..LDL163:
/*    119 */	mov	w15, 0
	.loc 38 153 0
..LDL164:
/*    153 */	mov	x12, 2564
/*    153 */	mov	x13, 516
	.loc 38 145 0
..LDL165:
/*    145 */	mov	w11, w0
/*    145 */	sbfiz	x5, x5, 2, 32
.L452:					// :entr
	.loc 38 120 0 is_stmt 1
..LDL166:
/*    120 */	mul	w9, w15, w3
	.loc 38 127 0
..LDL167:
/*    127 */	mov	w16, 0
	.loc 38 121 0
..LDL168:
/*    121 */	mul	w8, w15, w6
	.loc 38 120 0
..LDL169:
/*    120 */	sxtw	x9, w9
	.loc 38 121 0
..LDL170:
/*    121 */	sxtw	x8, w8
	.loc 38 120 0
..LDL171:
/*    120 */	add	x10, x2, x9, lsl #2
	.loc 38 121 0
..LDL172:
/*    121 */	add	x9, x4, x8, lsl #2
	.loc 38 128 0
..LDL173:
/*    128 */	cmp	w14, 0
/*    128 */	ble	.L457
	.p2align 5
.L455:					// :entr:term
	.loc 38 134 0
..LDL174:
/*    134 */	orr	x17, x10, 6917529027641081856
	.loc 38 135 0
..LDL175:
/*    135 */	add	x29, x10, 64
	.loc 38 136 0
..LDL176:
/*    136 */	add	x18, x10, 128
	.loc 38 137 0
..LDL177:
/*    137 */	add	x30, x10, 192
	.loc 38 135 0
..LDL178:
/*    135 */	ld1w	{z3.s}, p1/z, [x29, 0, mul vl]	//  (*)
	.loc 38 134 0
..LDL179:
/*    134 */	ld1w	{z4.s}, p1/z, [x17, 0, mul vl]	//  (*)
	.loc 38 136 0
..LDL180:
/*    136 */	ld1w	{z1.s}, p1/z, [x18, 0, mul vl]	//  (*)
	.loc 38 138 0
..LDL181:
/*    138 */	orr	x29, x9, 6917529027641081856
	.loc 38 139 0
..LDL182:
/*    139 */	add	x18, x9, 64
	.loc 38 134 0
..LDL183:
/*    134 */	prfm	2, [x17, 2560]	//  (*)
	.loc 38 137 0
..LDL184:
/*    137 */	ld1w	{z0.s}, p1/z, [x30, 0, mul vl]	//  (*)
	.loc 38 140 0
..LDL185:
/*    140 */	add	x19, x9, 128
	.loc 38 141 0
..LDL186:
/*    141 */	add	x30, x9, 192
	.loc 38 134 0
..LDL187:
/*    134 */	prfm	0, [x17, 512]	//  (*)
	.loc 38 138 0
..LDL188:
/*    138 */	prfm	18, [x29, 2560]	//  (*)
	.loc 38 144 0
..LDL189:
/*    144 */	add	x10, x10, x7
	.loc 38 146 0
..LDL190:
/*    146 */	add	w16, w16, w6
	.loc 38 138 0
..LDL191:
/*    138 */	prfm	16, [x29, 512]	//  (*)
	.loc 38 145 0
..LDL192:
/*    145 */	add	x9, x9, x5
	.loc 38 146 0
..LDL193:
/*    146 */	cmp	w16, w14
	.loc 38 138 0
..LDL194:
/*    138 */	st1w	{z4.s}, p1, [x29, 0, mul vl]	//  (*)
	.loc 38 139 0
..LDL195:
/*    139 */	st1w	{z3.s}, p1, [x18, 0, mul vl]	//  (*)
	.loc 38 140 0
..LDL196:
/*    140 */	st1w	{z1.s}, p1, [x19, 0, mul vl]	//  (*)
	.loc 38 141 0
..LDL197:
/*    141 */	st1w	{z0.s}, p1, [x30, 0, mul vl]	//  (*)
	.loc 38 146 0 is_stmt 0
..LDL198:
/*    146 */	blt	.L455
.L457:
	.loc 38 149 0 is_stmt 1
..LDL199:
/*    149 */	cmp	w16, w1
/*    149 */	bge	.L472
	.loc 38 150 0
..LDL200:
/*    150 */	sub	w17, w1, w16
	.loc 38 151 0
..LDL201:
/*    151 */	mul	w9, w16, w0
/*    151 */	sxtw	x9, w9
/*    151 */	add	x9, x4, x9, lsl #2
/*    151 */	add	x16, x9, x8, lsl #2
	.loc 38 152 0
..LDL202:
/*    152 */	cmp	w17, 0
/*    152 */	ble	.L463
	.loc 38 153 0 is_stmt 0
..LDL203:
/*    153 */	mov	x8, 0
	.loc 38 152 0
..LDL204:
/*    152 */	subs	w9, w17, 4
/*    152 */	bmi	.L477
	.loc 38 153 0
..LDL205:
/*    153 */	orr	x29, x10, 6917529027641081856
/*    153 */	orr	x18, x16, 6917529027641081856
/*    153 */	add	x29, x29, 12
/*    153 */	add	x18, x18, 12
	.p2align 5
.L461:					// :entr:term:body
	.loc 38 153 0 is_stmt 1
..LDL206:
/*    153 */	ldr	s0, [x29, -12]	//  (*)
	.loc 38 158 0 is_stmt 0
..LDL207:
/*    158 */	add	x8, x8, 4
/*    158 */	subs	w9, w9, 4
	.loc 38 153 0
..LDL208:
/*    153 */	str	s0, [x18, -12]	//  (*)
/*    153 */	ldr	s0, [x29, -8]	//  (*)
/*    153 */	str	s0, [x18, -8]	//  (*)
/*    153 */	ldr	s0, [x29, -4]	//  (*)
/*    153 */	str	s0, [x18, -4]	//  (*)
/*    153 */	prfm	2, [x29, x12]	//  (*)
/*    153 */	ldr	s0, [x29]	//  (*)
/*    153 */	prfm	0, [x29, x13]	//  (*)
/*    153 */	prfm	18, [x18, x12]	//  (*)
	.loc 38 158 0
..LDL209:
/*    158 */	add	x29, x29, 16
	.loc 38 153 0
..LDL210:
/*    153 */	prfm	16, [x18, x13]	//  (*)
/*    153 */	str	s0, [x18]	//  (*)
	.loc 38 158 0
..LDL211:
/*    158 */	add	x18, x18, 16
/*    158 */	bpl	.L461
.L477:
	.loc 38 152 0 is_stmt 1
..LDL212:
/*    152 */	adds	w9, w9, 3
/*    152 */	bmi	.L463
	.loc 38 153 0 is_stmt 0
..LDL213:
/*    153 */	orr	x18, x10, 6917529027641081856
/*    153 */	lsl	x8, x8, 2
/*    153 */	orr	x10, x16, 6917529027641081856
/*    153 */	add	x18, x18, x8
/*    153 */	add	x8, x10, x8
	.p2align 5
.L485:					// :entr:term:mod
	.loc 38 153 0 is_stmt 1
..LDL214:
/*    153 */	prfm	2, [x18, 2560]	//  (*)
/*    153 */	ldr	s0, [x18]	//  (*)
	.loc 38 158 0 is_stmt 0
..LDL215:
/*    158 */	subs	w9, w9, 1
	.loc 38 153 0
..LDL216:
/*    153 */	prfm	0, [x18, 512]	//  (*)
/*    153 */	prfm	18, [x8, 2560]	//  (*)
	.loc 38 158 0
..LDL217:
/*    158 */	add	x18, x18, 4
	.loc 38 153 0
..LDL218:
/*    153 */	prfm	16, [x8, 512]	//  (*)
/*    153 */	str	s0, [x8]	//  (*)
	.loc 38 158 0
..LDL219:
/*    158 */	add	x8, x8, 4
/*    158 */	bpl	.L485
.L463:
	.loc 38 160 0 is_stmt 1
..LDL220:
/*    160 */	sub	w8, w6, w17
/*    160 */	cmp	w8, 0
/*    160 */	csel	w8, w8, wzr, ge
/*    160 */	cmp	w17, w6
/*    160 */	bge	.L472
	.loc 38 161 0 is_stmt 0
..LDL221:
/*    161 */	sxtw	x18, w17
	.loc 38 160 0
..LDL222:
/*    160 */	asr	w9, w8, 3
/*    160 */	add	w9, w8, w9, lsr #28
/*    160 */	asr	w29, w9, 4
/*    160 */	sub	w17, w8, w29, lsl #4
/*    160 */	cbz	w29, .L468
/*    160 */	sub	w9, w29, 4
/*    160 */	mov	x10, x18
/*    160 */	cmp	w9, 0
/*    160 */	blt	.L487
	.loc 38 161 0
..LDL223:
/*    161 */	orr	x30, x16, 6917529027641081856
/*    161 */	lsl	x8, x18, 2
/*    161 */	add	x8, x8, 192
	.loc 38 160 0
..LDL224:
/*    160 */	cmp	w9, 8
	.loc 38 161 0
..LDL225:
/*    161 */	add	x8, x30, x8
	.loc 38 160 0
..LDL226:
/*    160 */	blt	.L572
	.loc 38 164 0
..LDL227:
/*    164 */	mov	x30, x8
	.loc 38 161 0
..LDL228:
/*    161 */	prfm	18, [x30, 2624]	//  (*)
/*    161 */	prfm	16, [x30, 576]	//  (*)
	.p2align 5
.L466:					// :entr:term:body:swpl
/*    161 */	st1w	{z2.s}, p1, [x30, -3, mul vl]	//  (*)
/*    161 */	prfm	18, [x30, 2880]	//  (*)
/*    161 */	prfm	16, [x30, 832]	//  (*)
/*    161 */	st1w	{z2.s}, p1, [x30, -1, mul vl]	//  (*)
/*    161 */	st1w	{z2.s}, p1, [x30, -2, mul vl]	//  (*)
/*    161 */	st1w	{z2.s}, p1, [x30, 0, mul vl]	//  (*)
/*    161 */	st1w	{z2.s}, p1, [x30, 1, mul vl]	//  (*)
	.loc 38 164 0
..LDL229:
/*    164 */	add	x30, x30, 512
	.loc 38 161 0
..LDL230:
/*    161 */	prfm	18, [x30, 2624]	//  (*)
/*    161 */	prfm	16, [x30, 576]	//  (*)
/*    161 */	st1w	{z2.s}, p1, [x30, -5, mul vl]	//  (*)
/*    161 */	st1w	{z2.s}, p1, [x30, -6, mul vl]	//  (*)
/*    161 */	add	x10, x10, 128
/*    161 */	st1w	{z2.s}, p1, [x30, -4, mul vl]	//  (*)
	.loc 38 164 0
..LDL231:
/*    164 */	sub	w9, w9, 8
	.loc 38 161 0
..LDL232:
/*    161 */	cmp	w9, 8
/*    161 */	bge	.L466
/*    161 */	st1w	{z2.s}, p1, [x30, -3, mul vl]	//  (*)
	.loc 38 164 0
..LDL233:
/*    164 */	add	x8, x30, 256
/*    164 */	sub	w9, w9, 4
	.loc 38 161 0
..LDL234:
/*    161 */	st1w	{z2.s}, p1, [x30, -1, mul vl]	//  (*)
/*    161 */	add	x10, x10, 64
	.loc 38 164 0
..LDL235:
/*    164 */	cmp	w9, 0
	.loc 38 161 0
..LDL236:
/*    161 */	st1w	{z2.s}, p1, [x30, -2, mul vl]	//  (*)
/*    161 */	st1w	{z2.s}, p1, [x30, 0, mul vl]	//  (*)
	.loc 38 164 0
..LDL237:
/*    164 */	blt	.L569
.L572:
	.p2align 5
.L575:					// :entr:term:mod:swpl
	.loc 38 161 0 is_stmt 1
..LDL238:
/*    161 */	st1w	{z2.s}, p1, [x8, -3, mul vl]	//  (*)
/*    161 */	add	x10, x10, 64
	.loc 38 164 0 is_stmt 0
..LDL239:
/*    164 */	subs	w9, w9, 4
	.loc 38 161 0
..LDL240:
/*    161 */	st1w	{z2.s}, p1, [x8, -2, mul vl]	//  (*)
/*    161 */	st1w	{z2.s}, p1, [x8, -1, mul vl]	//  (*)
/*    161 */	st1w	{z2.s}, p1, [x8, 0, mul vl]	//  (*)
/*    161 */	prfm	18, [x8, 2624]	//  (*)
/*    161 */	prfm	16, [x8, 576]	//  (*)
	.loc 38 164 0
..LDL241:
/*    164 */	add	x8, x8, 256
/*    164 */	bpl	.L575
.L569:
.L487:
	.loc 38 160 0 is_stmt 1
..LDL242:
/*    160 */	adds	w30, w9, 3
/*    160 */	bmi	.L468
	.loc 38 161 0 is_stmt 0
..LDL243:
/*    161 */	orr	x9, x16, 6917529027641081856
/*    161 */	lsl	x8, x10, 2
/*    161 */	add	x8, x9, x8
	.p2align 5
.L495:					// :entr:term:mod
	.loc 38 161 0 is_stmt 1
..LDL244:
/*    161 */	prfm	18, [x8, 2624]	//  (*)
/*    161 */	fmov	z0.s, 0.000000e+00
	.loc 38 164 0 is_stmt 0
..LDL245:
/*    164 */	subs	w30, w30, 1
	.loc 38 161 0
..LDL246:
/*    161 */	prfm	16, [x8, 576]	//  (*)
/*    161 */	st1w	{z0.s}, p1, [x8, 0, mul vl]	//  (*)
	.loc 38 164 0
..LDL247:
/*    164 */	add	x8, x8, 64
	.loc 38 161 0
..LDL248:
/*    161 */	bpl	.L495
.L468:
	.loc 38 160 0 is_stmt 1
..LDL249:
/*    160 */	sbfiz	x8, x29, 4, 32
/*    160 */	add	x8, x8, x18
/*    160 */	cbz	w17, .L472
	.loc 38 161 0 is_stmt 0
..LDL250:
/*    161 */	whilelt	p0.s, wzr, w17
	.loc 38 161 0 is_stmt 1
..LDL251:
/*    161 */	st1w	{z2.s}, p0, [x16, x8, lsl #2]	//  (*)
.L472:					// :term
	.loc 38 166 0
..LDL252:
/*    166 */	add	w15, w15, 1
/*    166 */	subs	w11, w11, 1
/*    166 */	bne	.L452
.L475:					// :epi:term
	.loc 38 167 0
..LDL253:
/*    ??? */	ldr	x19, [sp, 40]	//  (*)
	.cfi_restore 19
/*    ??? */	ldp	x29, x30, [sp, 48]	//  (*)
	.cfi_restore 29
	.cfi_restore 30
/*    167 */	add	sp, sp, 64
	.cfi_def_cfa_offset 0
/*    167 */	ret	
..D3.pchi:
	.cfi_endproc
.LFE2:
	.size	_Z14pack_b_v2_4x64iiPfiS_ii, .-_Z14pack_b_v2_4x64iiPfiS_ii
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_pack.cpp __sti___17_sve_gemm_pack_cpp_46afb505 $"
	.text
	.align	2
	.type	__sti___17_sve_gemm_pack_cpp_46afb505, %function
__sti___17_sve_gemm_pack_cpp_46afb505:
	.loc 38 169 0
..LDL254:
.LFB3:
	.cfi_startproc
/*    169 */	ret	
..D4.pchi:
	.cfi_endproc
.LFE3:
	.size	__sti___17_sve_gemm_pack_cpp_46afb505, .-__sti___17_sve_gemm_pack_cpp_46afb505
	.section	.init_array,"aw"
	.align	3
	.xword		__sti___17_sve_gemm_pack_cpp_46afb505
	.ident	"$Compiler: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39) ./im2col/SVE/sve_gemm_pack.cpp __fjc_check_hpctag $"
	.text
	.align	2
	.type	__fjc_check_hpctag, %function
__fjc_check_hpctag:
.LFB4:
	.cfi_startproc
/*        */	mov	x0, 0
/*        */	b	__jwe_check_hpctag
..D5.pchi:
	.cfi_endproc
.LFE4:
	.size	__fjc_check_hpctag, .-__fjc_check_hpctag
	.section	.init_array,"aw"
	.align	3
	.xword		__fjc_check_hpctag
	.file 39 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/arm_sve.h"
	.file 40 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/limits"
	.file 41 "/usr/include/stdint.h"
	.file 42 "/usr/include/stdio.h"
	.file 43 "/usr/include/alloca.h"
	.file 44 "/usr/include/bits/floatn-common.h"
	.file 45 "/usr/include/bits/floatn.h"
	.file 46 "/usr/include/bits/types/locale_t.h"
	.file 47 "/usr/include/bits/types/__locale_t.h"
	.file 48 "/usr/include/sys/select.h"
	.file 49 "/usr/include/bits/types/struct_timeval.h"
	.file 50 "/usr/include/bits/types/struct_timespec.h"
	.file 51 "/usr/include/bits/types/__sigset_t.h"
	.file 52 "/usr/include/bits/stdint-intn.h"
	.file 53 "/usr/include/assert.h"
	.file 54 "/usr/include/bits/types/cookie_io_functions_t.h"
	.file 55 "/usr/include/bits/types/__fpos_t.h"
	.file 56 "/usr/include/bits/types/__fpos64_t.h"
	.file 57 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/omp.h"
	.file 58 "/usr/include/bits/types/__FILE.h"
	.file 59 "/usr/include/bits/types/struct_tm.h"
	.file 60 "/usr/include/bits/wctype-wchar.h"
	.file 61 "/usr/include/wctype.h"
	.file 62 "/usr/include/bits/sched.h"
	.file 63 "/usr/include/bits/cpu-set.h"
	.file 64 "/usr/include/sched.h"
	.file 65 "/usr/include/bits/types/struct_sched_param.h"
	.file 66 "/usr/include/bits/time.h"
	.file 67 "/usr/include/bits/timex.h"
	.file 68 "/usr/include/time.h"
	.file 69 "/usr/include/bits/types/clock_t.h"
	.file 70 "/usr/include/bits/types/time_t.h"
	.file 71 "/usr/include/bits/types/clockid_t.h"
	.file 72 "/usr/include/sys/types.h"
	.file 73 "/usr/include/bits/types/timer_t.h"
	.file 74 "/usr/include/bits/types/struct_itimerspec.h"
	.file 75 "./im2col/SVE/../../utility/common.h"
	.file 76 "/usr/include/bits/stdint-uintn.h"
	.file 77 "/usr/include/bits/types/sigset_t.h"
	.file 78 "/usr/include/bits/pthreadtypes-arch.h"
	.file 79 "/usr/include/bits/thread-shared-types.h"
	.file 80 "/usr/include/bits/setjmp.h"
	.file 81 "/opt/FJSVxtclanga/tcsds-1.2.33/bin/../include/libc++/v371/vector"
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
	.ascii	"./im2col/SVE/sve_gemm_pack.cpp\0"	// DW_AT_name
	.4byte	.Ldebug_line	// DW_AT_stmt_list
	.byte	0x4	// DW_AT_language
	.ascii	"/vol0004/ra000012/a04453/FastConv\0"	// DW_AT_comp_dir
	.ascii	"ccpcom: Fujitsu C/C++ Compiler 4.6.1 (Aug 12 2021 18:42:39)\0"	// DW_AT_producer
	.4byte	.Ldebug_ranges1	// DW_AT_ranges
	.uleb128	0x2	// DW_TAG_subprogram (0x92)
	.4byte	0xf3	// DW_AT_sibling
	.ascii	"pack_a_v2\0"	// DW_AT_name
	.8byte	_Z9pack_a_v2iiPfiS_iiiii	// DW_AT_low_pc
	.8byte	..D1.pchi-_Z9pack_a_v2iiPfiS_iiiii	// DW_AT_high_pc
	.byte	0x26	// DW_AT_decl_file
	.byte	0xd	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z9pack_a_v2iiPfiS_iiiii\0"	// DW_AT_linkage_name
	.uleb128	0x3	// DW_TAG_FJ_loop (0xce)
	.byte	0x26	// DW_AT_decl_file
	.byte	0x31	// DW_AT_FJ_loop_start_line
	.byte	0x35	// DW_AT_FJ_loop_end_line
	.byte	0x3	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x3	// DW_TAG_FJ_loop (0xd4)
	.byte	0x26	// DW_AT_decl_file
	.byte	0x2e	// DW_AT_FJ_loop_start_line
	.byte	0x38	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x3	// DW_TAG_FJ_loop (0xda)
	.byte	0x26	// DW_AT_decl_file
	.byte	0x20	// DW_AT_FJ_loop_start_line
	.byte	0x24	// DW_AT_FJ_loop_end_line
	.byte	0x4	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x3	// DW_TAG_FJ_loop (0xe0)
	.byte	0x26	// DW_AT_decl_file
	.byte	0x1d	// DW_AT_FJ_loop_start_line
	.byte	0x27	// DW_AT_FJ_loop_end_line
	.byte	0x3	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x3	// DW_TAG_FJ_loop (0xe6)
	.byte	0x26	// DW_AT_decl_file
	.byte	0x19	// DW_AT_FJ_loop_start_line
	.byte	0x28	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x3	// DW_TAG_FJ_loop (0xec)
	.byte	0x26	// DW_AT_decl_file
	.byte	0x12	// DW_AT_FJ_loop_start_line
	.byte	0x39	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x92)
	.uleb128	0x2	// DW_TAG_subprogram (0xf3)
	.4byte	0x152	// DW_AT_sibling
	.ascii	"pack_b_v2_12x32\0"	// DW_AT_name
	.8byte	_Z15pack_b_v2_12x32iiPfiS_ii	// DW_AT_low_pc
	.8byte	..D2.pchi-_Z15pack_b_v2_12x32iiPfiS_ii	// DW_AT_high_pc
	.byte	0x26	// DW_AT_decl_file
	.byte	0x3d	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z15pack_b_v2_12x32iiPfiS_ii\0"	// DW_AT_linkage_name
	.uleb128	0x3	// DW_TAG_FJ_loop (0x139)
	.byte	0x26	// DW_AT_decl_file
	.byte	0x68	// DW_AT_FJ_loop_start_line
	.byte	0x6c	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x3	// DW_TAG_FJ_loop (0x13f)
	.byte	0x26	// DW_AT_decl_file
	.byte	0x60	// DW_AT_FJ_loop_start_line
	.byte	0x66	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x3	// DW_TAG_FJ_loop (0x145)
	.byte	0x26	// DW_AT_decl_file
	.byte	0x4c	// DW_AT_FJ_loop_start_line
	.byte	0x5a	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x3	// DW_TAG_FJ_loop (0x14b)
	.byte	0x26	// DW_AT_decl_file
	.byte	0x43	// DW_AT_FJ_loop_start_line
	.byte	0x6e	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0xf3)
	.uleb128	0x4	// DW_TAG_subprogram (0x152)
	.ascii	"pack_b_v2_4x64\0"	// DW_AT_name
	.8byte	_Z14pack_b_v2_4x64iiPfiS_ii	// DW_AT_low_pc
	.8byte	..D3.pchi-_Z14pack_b_v2_4x64iiPfiS_ii	// DW_AT_high_pc
	.byte	0x26	// DW_AT_decl_file
	.byte	0x71	// DW_AT_decl_line
			// DW_AT_external
	.uleb128	0x1	// DW_AT_frame_base
	.byte	0x9c	// DW_OP_call_frame_cfa
	.ascii	"_Z14pack_b_v2_4x64iiPfiS_ii\0"	// DW_AT_linkage_name
	.uleb128	0x3	// DW_TAG_FJ_loop (0x192)
	.byte	0x26	// DW_AT_decl_file
	.byte	0xa0	// DW_AT_FJ_loop_start_line
	.byte	0xa4	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x3	// DW_TAG_FJ_loop (0x198)
	.byte	0x26	// DW_AT_decl_file
	.byte	0x98	// DW_AT_FJ_loop_start_line
	.byte	0x9e	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x3	// DW_TAG_FJ_loop (0x19e)
	.byte	0x26	// DW_AT_decl_file
	.byte	0x80	// DW_AT_FJ_loop_start_line
	.byte	0x92	// DW_AT_FJ_loop_end_line
	.byte	0x2	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.uleb128	0x3	// DW_TAG_FJ_loop (0x1a4)
	.byte	0x26	// DW_AT_decl_file
	.byte	0x77	// DW_AT_FJ_loop_start_line
	.byte	0xa6	// DW_AT_FJ_loop_end_line
	.byte	0x1	// DW_AT_FJ_loop_nest_level
	.byte	0x5	// DW_AT_FJ_loop_type
	.byte	0x0	// End of children (0x152)
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
	.uleb128	0xb	// DW_FORM_data1
	.uleb128	0x3f	// DW_AT_external
	.uleb128	0x19	// DW_FORM_flag_present
	.uleb128	0x40	// DW_AT_frame_base
	.uleb128	0x18	// DW_FORM_exprloc
	.uleb128	0x6e	// DW_AT_linkage_name
	.uleb128	0x8	// DW_FORM_string
	.byte	0x0
	.byte	0x0
	.uleb128	0x3	// Abbreviation code
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
	.8byte	_Z9pack_a_v2iiPfiS_iiiii
	.8byte	..D1.pchi
	.8byte	_Z15pack_b_v2_12x32iiPfiS_ii
	.8byte	..D2.pchi
	.8byte	_Z14pack_b_v2_4x64iiPfiS_ii
	.8byte	..D3.pchi
	.8byte	0x0
	.8byte	0x0
	.section	.note.GNU-stack,"",%progbits
	.section	.fj.compile_info, "e"
	.ascii	"C++::trad-libc++"
