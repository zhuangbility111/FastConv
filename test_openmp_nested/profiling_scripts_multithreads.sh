#!/bin/bash

rm -r ./profiling/result/ ./profiling/tmp*
mkdir ./profiling/result

export GOMP_CPU_AFFINITY="12-59"
export OMP_NUM_THREADS=48
export XOS_MMM_L_PAGING_POLICY=demand:demand:demand

for ((i=1; i<=${1}; i++))
do
	numactl -C 12-59 -m 4-7 fapp -C -d ./profiling/tmp$i -Icpupa -Hevent=pa$i ./main
done


for ((i=1; i<=${1}; i++))
do
	fapppx -A -d ./profiling/tmp$i -Icpupa,nompi -tcsv -o ./profiling/result/pa${i}.csv
done
