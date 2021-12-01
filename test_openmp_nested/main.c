#include <omp.h>
#include <stdio.h>
void report_num_threads(int level) {

    // #pragma omp single
    {
        if (level == 3)
            printf("Level %d: tid = %d, number of threads in the team - %d\n", level, omp_get_thread_num(), omp_get_num_threads());
    }

}

void packA(int k) {
    #pragma omp parallel for num_threads(12) 
    for (int m = 0; m < 12; m++) {
        printf("packA: k = %d, m = %d, tid = %d, num threads in team = %d, os core = %d\n", k, m, omp_get_thread_num(), omp_get_num_threads(), sched_getcpu());
    }
}

void packB(int k, int n) {
    #pragma omp parallel for num_threads(4)
    for (int m = 0; m < 4; m++) {
        // printf("packB: k = %d, n = %d, m = %d, tid = %d, num threads in team = %d, os core = %d\n", k, n, m, omp_get_thread_num(), omp_get_num_threads(), sched_getcpu());
    }
}

void calculate(int k, int n, int mr) {
    printf("compute: k = %d, n = %d, mr = %d, tid = %d, num threads in team = %d, os core = %d\n", k, n, mr, omp_get_thread_num(), omp_get_num_threads(), sched_getcpu());
}

int main()
{
    omp_set_dynamic(0);
    omp_set_nested(1);
    // int num = 2;
    // #pragma omp parallel num_threads(num)
    // {
    //     report_num_threads(1);
    //     #pragma omp parallel num_threads(num)
    //     {
    //         report_num_threads(2);
    //         #pragma omp parallel num_threads(num)
    //         {
    //             report_num_threads(3);
    //         }
    //     }
    // }
    int num_nodes = 1;
    int num_outsides = 3;
    int num_insides = 4;

    // #pragma omp parallel for num_threads(num_nodes) proc_bind(spread)
    for (int k = 0; k < 1; k++) {
        packA(k);
        #pragma omp parallel for num_threads(num_outsides) proc_bind(spread)
        for (int n = 0; n < 3; n++) {
			printf("tid = %d, num threads in team = %d, os core = %d\n", omp_get_thread_num(), omp_get_num_threads(), sched_getcpu());
            packB(k, n);
            #pragma omp parallel for num_threads(num_insides) proc_bind(close)
            for (int mr = 0; mr < 4; mr++) {
                calculate(k, n, mr);
            }
        }

    }    


    return(0);
}
