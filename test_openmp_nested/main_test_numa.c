#include <omp.h>
#include <stdio.h>
#include <time.h>
#include <sys/time.h>
#include <sys/mman.h>
#include "fj_tool/fapp.h"
#include <assert.h>
#include <arm_sve.h>

static double get_time(struct timespec *start, struct timespec *end) {
    return end->tv_sec - start->tv_sec + (end->tv_nsec - start->tv_nsec) * 1e-9;
}

// #define matrix_size 200000000
// #define matrix_size 28901376
#define matrix_size 3612672
// #define matrix_size 1806336
#define DATA_TYPE float
#define PAGE_SIZE 2097152 

void check_page_location(DATA_TYPE* array, size_t n_pages) 
{
	int status[n_pages];
    void* pages[n_pages];
    for (size_t i = 0; i < n_pages; i++)
        pages[i] = &((char*)array)[i * PAGE_SIZE];
    if (0 != move_pages(0, n_pages, pages, NULL, status, 0)) 
        printf("failed to inquiry pages because errno \n");
    for (size_t i = 0; i < n_pages; i++) {
        printf("array : page_in_nodes = %d\n", status[i]);
    }
}

double mysecond()
{
/* struct timeval { long        tv_sec;
            long        tv_usec;        };

struct timezone { int   tz_minuteswest;
             int        tz_dsttime;      };     */

        struct timeval tp; 
        struct timezone tzp;
        int i;

        i = gettimeofday(&tp,&tzp);
        return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
}

/*
    static DATA_TYPE a[matrix_size];
    static DATA_TYPE b[matrix_size];
    static DATA_TYPE c[matrix_size];
*/

double test_bandwidth(int round)
{
    double t0, t1;
    DATA_TYPE* a = (DATA_TYPE*)malloc(sizeof(DATA_TYPE) * matrix_size);
    DATA_TYPE* b = (DATA_TYPE*)malloc(sizeof(DATA_TYPE) * matrix_size);
    DATA_TYPE* c = (DATA_TYPE*)malloc(sizeof(DATA_TYPE) * matrix_size);

    // #pragma omp parallel for schedule(static)
    for (ssize_t i = 0; i < (ssize_t)matrix_size; i++) {
        a[i] = 1.0;
        b[i] = 2.0;
    }

    #pragma omp parallel for schedule(static)
    for (ssize_t i = 0; i < (ssize_t)matrix_size; i++) {
        c[i] = 0.0;
    }

    size_t n_pages = (sizeof(DATA_TYPE) * matrix_size + (PAGE_SIZE - 1)) / PAGE_SIZE;
	check_page_location(a, n_pages);

	printf("-------------------------\n");
	check_page_location(c, n_pages);

	DATA_TYPE scalar = 2.0;
/*
    #pragma omp parallel for schedule(static)
    for (ssize_t i = 0; i < (ssize_t)matrix_size; i++) {
        // c[i] = a[i] + b[i];
        c[i] = scalar * a[i];
    }
*/
    assert(matrix_size % 48 == 0);
    ssize_t step = matrix_size / 48;
    ssize_t width = 256;
    ssize_t height = step / width;
    ssize_t col_batch = 64;
    int c_step = height * col_batch;
    svbool_t pg_all = svptrue_b32();
    t0 = mysecond();
/*
    #pragma omp parallel for schedule(static)
    for (ssize_t i = 0; i < (ssize_t)matrix_size; i++) {
        // c[i] = a[i] + b[i];
        c[i] = scalar * b[i];
    }
*/

    #pragma omp parallel for schedule(static)
    for (ssize_t i = 0; i < (ssize_t)matrix_size; i += step) {
        DATA_TYPE* b_copy = &(b[i]);
        // DATA_TYPE* c_copy = (DATA_TYPE*)malloc(sizeof(DATA_TYPE) * step);
        DATA_TYPE* c_copy = &(c[i]);
        for (ssize_t k = 0; k < height; k++) {
            b_copy = &(b[i]) + width * k;
            c_copy = &(c[i]) + col_batch * k; 
            for (ssize_t j = 0; j < width; j += col_batch) {
                // svst1_f32(pg_all, c_copy + j * height , svld1_f32(pg_all, b_copy + j));
                // svst1_f32(pg_all, c_copy + j * height + 16, svld1_f32(pg_all, b_copy + j + 16));
                // svst1_f32(pg_all, c_copy + j * height + 32, svld1_f32(pg_all, b_copy + j + 32));
                // svst1_f32(pg_all, c_copy + j * height + 48, svld1_f32(pg_all, b_copy + j + 48));
                svst1_f32(pg_all, c_copy, svld1_f32(pg_all, b_copy));
                svst1_f32(pg_all, c_copy + 16, svld1_f32(pg_all, b_copy + 16));
                svst1_f32(pg_all, c_copy + 32, svld1_f32(pg_all, b_copy + 32));
                svst1_f32(pg_all, c_copy + 48, svld1_f32(pg_all, b_copy + 48));

                b_copy += col_batch;
                c_copy += c_step;
            }
            
        }
        // free(c_copy);
    }

/*
    #pragma omp parallel for schedule(static)
    for (ssize_t i = 0; i < (ssize_t)matrix_size; i += step) {
        DATA_TYPE* b_copy = &(b[i]);
        // DATA_TYPE* c_copy = (DATA_TYPE*)malloc(sizeof(DATA_TYPE) * step);
        DATA_TYPE* c_copy = &(c[i]);
        for (ssize_t j = 0; j < width; j += 64) {
            b_copy = &(b[i]) + j; 
            c_copy = &(c[i]) + j * height;
            for (ssize_t k = 0; k < height; k++) {
                svst1_f32(pg_all, c_copy, svld1_f32(pg_all, b_copy));
                svst1_f32(pg_all, c_copy + 16, svld1_f32(pg_all, b_copy + 16));
                svst1_f32(pg_all, c_copy + 32, svld1_f32(pg_all, b_copy + 32));
                svst1_f32(pg_all, c_copy + 48, svld1_f32(pg_all, b_copy + 48));
                b_copy += width;
                c_copy += 64;
            }
        }
        // free(c_copy);
    }
*/
	t1 = mysecond();

    free(a);
    free(b);
    free(c);
	
	double time_used = t1 - t0;
	double volume = 2.0 * (double)matrix_size * (double)sizeof(DATA_TYPE) / 1000000.0;
	double bandwidth = volume / time_used;

	printf("round %d elapsed time = %lf ms\n", round, time_used * 1000.0);
    printf("round %d bandwidth = %lf MB/s\n", round, bandwidth);

    return time_used;
}

int main() {
    struct timespec start, end;
    double time_used = 0.0;
	double t0, t1;
    int iter = 10;

/*
    double* a = (double*)mmap(NULL, sizeof(double) * matrix_size, PROT_READ | PROT_WRITE, MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);;
    double* b = (double*)mmap(NULL, sizeof(double) * matrix_size, PROT_READ | PROT_WRITE, MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);;
    double* c = (double*)mmap(NULL, sizeof(double) * matrix_size, PROT_READ | PROT_WRITE, MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);;
*/
/*
	#pragma omp parallel for schedule(static)
    for (size_t i = 0; i < (size_t)matrix_size; i++) {
        c[i] = a[i] + 5.0f * b[i];
	}
  */  
/*
	for (int n = 0; n < 10; n++) {
    	#pragma omp parallel for schedule(static)
    	for (ssize_t i = 0; i < (ssize_t)matrix_size; i++) {
        	c[i] = a[i] + b[i];
    	}
	}
*/
	

    // clock_gettime(CLOCK_MONOTONIC_RAW, &start);
//	fapp_start("bar",1,0);
	
//	fapp_stop("bar",1,0);
    // clock_gettime(CLOCK_MONOTONIC_RAW, &end);
    // time_used = get_time(&start, &end);
/*
	for (size_t i = 0; i < (size_t)matrix_size; i++) 
		total += c[i];

	printf("total = %lf\n", total);
*/
    for (int i = 0; i < iter; i++) {
        printf(" ------------- round %d ----------------\n", i);
        time_used += test_bandwidth(i);
    }
	double volume = 2.0 * (double)matrix_size * (double)sizeof(DATA_TYPE) * (double)iter / 1000000.0;
	double bandwidth = volume / time_used;

    printf("elapsed time = %lf s\n", time_used);
    printf("bandwidth = %lf MB/s\n", bandwidth);

}
