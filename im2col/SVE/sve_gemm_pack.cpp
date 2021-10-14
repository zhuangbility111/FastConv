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
    float* aPtr = A, *packAPtr = packA;
    
    // 每次处理一个panel
    for (int i = 0; i < M; i += mc)
    {
        // 确定一个Penel的高度
        int m_len = min(mc, M - i);
        int remainRowStart = m_len - m_len % ROW_BATCH;
        // 对panel内部进行packing，每次对panel内部的 ROW_BATCH 行进行处理
        int m = 0;
        for (; m < remainRowStart; m += ROW_BATCH)
        {
            aPtr = A + (i + m) * lda;
            // 每次处理panel内部的 ROW_BATCH 行1列
            for (int k = 0; k < kc_adjust; k++)
            {
                int aPtrIdx = 0;
                for (int j = 0; j < ROW_BATCH; j++)
                {
                    packAPtr[j] = aPtr[aPtrIdx];
                    aPtrIdx += lda;
                }
                packAPtr += ROW_BATCH;
                aPtr++;
            }
        }

        aPtr = A + (i + remainRowStart) * lda;
        // 如果剩余不足 ROW_BATCH 行，直接处理
        int remainRow = m_len - remainRowStart;
        // 每次处理panel内部的1列
        for (int k = 0; k < kc_adjust; k++)
        {
            int aPtrIdx = 0;
            for (int j = 0; j < remainRow; j++)
            {
                packAPtr[j] = aPtr[aPtrIdx];
                aPtrIdx += lda;
            }
            packAPtr += remainRow;
            aPtr++;
        } 
    }
}

// 对 kc x nc 做 COL_BATCH 列的packing
void pack_b_v2_12x32(int kc_adjust, int nc_adjust, float *B, int ldb, float *packB, const int ROW_BATCH, const int COL_BATCH)
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

