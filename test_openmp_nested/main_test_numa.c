#include <omp.h>
#include <stdio.h>
#include <time.h>
#include "fj_tool/fapp.h"

static double get_time(struct timespec *start, struct timespec *end) {
    return end->tv_sec - start->tv_sec + (end->tv_nsec - start->tv_nsec) * 1e-9;
}

#define matrix_size 14000000

int main() {
    struct timespec start, end;
    double time_used = 0.0;
    float* a = (float*)malloc(sizeof(float) * matrix_size);
    float* b = (float*)malloc(sizeof(float) * matrix_size);
    float* c = (float*)malloc(sizeof(float) * matrix_size);

    #pragma omp parallel for schedule(static) 
    for (size_t i = 0; i < (size_t)matrix_size; i++) {
        a[i] = i * 2.0 / 1.1;
        b[i] = i / 2.0 * 1.23;
        c[i] = 0;
    }
    
    clock_gettime(CLOCK_MONOTONIC_RAW, &start);
	fapp_start("bar",1,0);
	for (int n = 0; n < 10000; n++) {
    	#pragma omp parallel for schedule(static)
    	for (size_t i = 0; i < (size_t)matrix_size; i++) {
        	c[i] = a[i] + 1.25 * b[i];
    	}
	}
	fapp_stop("bar",1,0);
    clock_gettime(CLOCK_MONOTONIC_RAW, &end);
    time_used = get_time(&start, &end);

    printf("elapsed time = %lf\n", time_used);

    free(a);
    free(b);
    free(c);

}
