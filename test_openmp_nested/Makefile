all:
#	frt -KSVE main.f -SSL2
#	frt -KSVE -Kopenmp main_multithread.f -SSL2
#	fcc -Kfast,openmp -Nfjomplib main.c -o main
#	fcc -O3 -Kfast,zfill -Ksimd_reg_size=512 -fopenmp -Kopenmp -Nfjomplib main_test_numa.c -o main
	fcc -Kfast,openmp,zfill main_test_numa.c -lnuma -o main


