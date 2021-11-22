#include <stdlib.h>
#include <assert.h>
#include <stdio.h>
#include <omp.h>
#include "../../utility/common.h"

#include <arm_sve.h>

#define min(i, j) ((i) < (j) ? (i): (j))
// #define __ARM_ASM

// 对 M x kc 做8行packing
void pack_a_v2(int M, int kc_adjust, float* A, int lda, float* packA, int mc, int kc, int nc, const int ROW_BATCH, const int COL_BATCH) 
{
    // 每次处理一个panel
    for (int i = 0; i < M; i += mc)
    {
        // 确定一个Penel的高度
        int m_len = min(mc, M - i);
        // 对panel内部进行packing，每次对panel内部的 ROW_BATCH 行进行处理
    	#pragma omp for schedule(static)
        for (int m = 0; m < m_len; m += ROW_BATCH)
        {
            int remain_row = min(m_len - m, ROW_BATCH);
            float *a_ptr = A + (i + m) * lda;
            float *packA_ptr = packA + (i + m) * kc_adjust;
            // 每次处理panel内部的 ROW_BATCH 行1列
            for (int k = 0; k < kc_adjust; k++)
            {
				// printf("tid = %d, m = %d\n", omp_get_thread_num(), m);
                int a_ptr_idx = 0;
                for (int j = 0; j < remain_row; j++)
                {
                    packA_ptr[j] = a_ptr[a_ptr_idx];
                    a_ptr_idx += lda;
                }
                packA_ptr += remain_row;
                a_ptr++;
            }
        }

		// #pragma omp single
		// {

        // aPtr = A + (i + remain_row_start) * lda;
        // // 如果剩余不足 ROW_BATCH 行，直接处理
        // int remain_row = m_len - remain_row_start;
        // // 每次处理panel内部的1列
        // for (int k = 0; k < kc_adjust; k++)
        // {
        //     int aPtrIdx = 0;
        //     for (int j = 0; j < remain_row; j++)
        //     {
        //         packAPtr[j] = aPtr[aPtrIdx];
        //         aPtrIdx += lda;
        //     }
        //     packAPtr += remain_row;
        //     aPtr++;
        // } 
		// }
    }
}

void pack_a_v2_multithread(int mc_adjust, int kc_adjust, float* A, int lda, float* packA, int mc, int kc, int nc,
                            int mc_from, int mc_to, const int ROW_BATCH, const int COL_BATCH) 
{
    for (int m = mc_from; m < mc_to; m += ROW_BATCH)
    {
        int remain_row = min(mc_to - m, ROW_BATCH);
        float *a_ptr = A + m * lda;
        float *packA_ptr = packA + m * kc_adjust;
        //    printf("tid = %d, m = %d\n", omp_get_thread_num(), m);
        // 每次处理panel内部的 ROW_BATCH 行1列
        for (int k = 0; k < kc_adjust; k++)
        {
            int a_ptr_idx = 0;
            for (int j = 0; j < remain_row; j++)
            {
                packA_ptr[j] = a_ptr[a_ptr_idx];
                a_ptr_idx += lda;
            }
            packA_ptr += remain_row;
            a_ptr++;
        }
    }
}

// 对 kc x nc 做 COL_BATCH 列的packing
void pack_b_v2_12x32(int kc_adjust, int nc_adjust, float *B, int ldb, float *packB, const int ROW_BATCH, const int COL_BATCH)
{
    float *BPtr, *packBPtr;
    int remainColStart = nc_adjust - nc_adjust % COL_BATCH;

    // printf("tid = %d, nc_adjust = %d\n", omp_get_thread_num(), nc_adjust);

    // 每次处理B的一行
    // #pragma omp for schedule(static) private(BPtr, packBPtr)
    for (int k = 0; k < kc_adjust; k++) {
        BPtr = B + ldb * k;
        packBPtr = packB + COL_BATCH * k;
        int step = COL_BATCH * kc_adjust;

        svbool_t pg_all = svptrue_b32();

        // 在B的一行中一次拷贝 COL_BATCH 个元素
        int j = 0;
        for (; j < remainColStart; j += COL_BATCH) {

#ifdef __ARM_ASM

#else
            svfloat32_t a0, a1;

            a0 = svld1_f32(pg_all, BPtr);
            a1 = svld1_f32(pg_all, BPtr + 16);
            svst1_f32(pg_all, packBPtr,      a0);
            svst1_f32(pg_all, packBPtr + 16, a1);
#endif
            BPtr += COL_BATCH;
            packBPtr += step;
        }

        // 如果B的一行中还剩余几个（不足8个），直接拷贝，其他值直接设为0（相当于不足8个填充为8个）
        if (j < nc_adjust) {
            int remain = nc_adjust - j;
            packBPtr = packB + j * kc_adjust + COL_BATCH * k;
            for (int i = 0; i < remain; i++) {
                packBPtr[i] = BPtr[i];
                // printf("_b_%f\n", BPtr[i]);
                // *packBPtr = *BPtr;
                // packBPtr++;
                // BPtr++;
            }

            for (int i = remain; i < COL_BATCH; i++) {
                packBPtr[i] = 0.0f;
                // *packBPtr = 0.0f;
                // packBPtr++;
            }
        }
    }
}

void pack_b_v2_12x32_multithread(int kc_adjust, int nc_adjust, float *B, int ldb, float *packB,
                                int kc_from, int kc_to, const int ROW_BATCH, const int COL_BATCH) {
    // int nc_step = nc_to - nc_from;
    // int remain_col_start = nc_to - nc_step % COL_BATCH;
    int remain_col_start = nc_adjust - nc_adjust % COL_BATCH;
    float *B_ptr, *packB_ptr;
    svbool_t pg_all = svptrue_b32();
    // for (int n = nc_from; n < remain_col_start; n += COL_BATCH) {
    for (int n = 0; n < remain_col_start; n += COL_BATCH) {
        // B_ptr = B + n;
        // packB_ptr = packB + n * kc_adjust;
        B_ptr = B + kc_from * ldb + n;
        packB_ptr = packB + n * kc_adjust + COL_BATCH * kc_from;
        // for (int k = 0; k < kc_adjust; k++) {
        for (int k = kc_from; k < kc_to; k++) {
            svst1_f32(pg_all, packB_ptr,      svld1_f32(pg_all, B_ptr));
            svst1_f32(pg_all, packB_ptr + 16, svld1_f32(pg_all, B_ptr + 16));
            packB_ptr += COL_BATCH;
            B_ptr += ldb;
        }
    }

    // if (remain_col_start < nc_to) {
    if (remain_col_start < nc_adjust) {
        // int remain = nc_to - remain_col_start;
        // B_ptr = B + remain_col_start;
        // packB_ptr = packB + remain_col_start * kc_adjust;
        int remain = nc_adjust - remain_col_start;
        B_ptr = B + kc_from * ldb + remain_col_start;
        packB_ptr = packB + remain_col_start * kc_adjust + remain * kc_from;
        // printf("packB inner pid = %d, remain_col_start = %d, remain = %d\n", omp_get_thread_num(), remain_col_start, remain);
        // for (int k = 0; k < kc_adjust; k++) {
        for (int k = kc_from; k < kc_to; k++) {
            for (int i = 0; i < remain; i++)
                packB_ptr[i] = B_ptr[i];

            packB_ptr += remain;
            B_ptr += ldb;
        }
    }
}

void pack_b_v2_4x64(int kc_adjust, int nc_adjust, float *B, int ldb, float *packB, const int ROW_BATCH, const int COL_BATCH)
{
    float *BPtr, *packBPtr;
    int remainColStart = nc_adjust - nc_adjust % COL_BATCH;

    // 每次处理B的一行
    for (int k = 0; k < kc_adjust; k++) {
        BPtr = B + ldb * k;
        packBPtr = packB + COL_BATCH * k;
        int step = COL_BATCH * kc_adjust;

        svbool_t pg_all = svptrue_b32();

        // 在B的一行中一次拷贝 COL_BATCH 个元素
        int j = 0;
        for (; j < remainColStart; j += COL_BATCH) {

#ifdef __ARM_ASM
#else
            svfloat32_t a0, a1, a2, a3;

            a0 = svld1_f32(pg_all, BPtr);
            a1 = svld1_f32(pg_all, BPtr + 16);
            a2 = svld1_f32(pg_all, BPtr + 32);
            a3 = svld1_f32(pg_all, BPtr + 48);
            svst1_f32(pg_all, packBPtr,      a0);
            svst1_f32(pg_all, packBPtr + 16, a1);
            svst1_f32(pg_all, packBPtr + 32, a2);
            svst1_f32(pg_all, packBPtr + 48, a3);

#endif
            BPtr += COL_BATCH;
            packBPtr += step;
        }

        // 如果B的一行中还剩余几个（不足8个），直接拷贝，其他值直接设为0（相当于不足8个填充为8个）
        if (j < nc_adjust) {
            int remain = nc_adjust - j;
            packBPtr = packB + j * kc_adjust + COL_BATCH * k;
            for (int i = 0; i < remain; i++) {
                packBPtr[i] = BPtr[i];
                // printf("_b_%f\n", BPtr[i]);
                // *packBPtr = *BPtr;
                // packBPtr++;
                // BPtr++;
            }

            for (int i = remain; i < COL_BATCH; i++) {
                packBPtr[i] = 0.0f;
                // *packBPtr = 0.0f;
                // packBPtr++;
            }
        }
    }
}

void pack_b_v2_8x48(int kc_adjust, int nc_adjust, float *B, int ldb, float *packB, const int ROW_BATCH, const int COL_BATCH)
{
    float *BPtr, *packBPtr;
    int remainColStart = nc_adjust - nc_adjust % COL_BATCH;

    // 每次处理B的一行
    for (int k = 0; k < kc_adjust; k++) {
        BPtr = B + ldb * k;
        packBPtr = packB + COL_BATCH * k;
        int step = COL_BATCH * kc_adjust;

        svbool_t pg_all = svptrue_b32();

        // 在B的一行中一次拷贝 COL_BATCH 个元素
        int j = 0;
        for (; j < remainColStart; j += COL_BATCH) {

#ifdef __ARM_ASM
#else
            svfloat32_t a0, a1, a2, a3;

            a0 = svld1_f32(pg_all, BPtr);
            a1 = svld1_f32(pg_all, BPtr + 16);
            a2 = svld1_f32(pg_all, BPtr + 32);
            svst1_f32(pg_all, packBPtr,      a0);
            svst1_f32(pg_all, packBPtr + 16, a1);
            svst1_f32(pg_all, packBPtr + 32, a2);

#endif
            BPtr += COL_BATCH;
            packBPtr += step;
        }

        // 如果B的一行中还剩余几个（不足8个），直接拷贝，其他值直接设为0（相当于不足8个填充为8个）
        if (j < nc_adjust) {
            int remain = nc_adjust - j;
            packBPtr = packB + j * kc_adjust + COL_BATCH * k;
            for (int i = 0; i < remain; i++) {
                packBPtr[i] = BPtr[i];
            }

            for (int i = remain; i < COL_BATCH; i++) {
                packBPtr[i] = 0.0f;
            }
        }
    }
}
