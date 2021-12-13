#!/bin/bash

rm -r ./profiling/result/ ./profiling/tmp*
mkdir ./profiling/result

export OMP_NUM_THREADS=1

for ((i=1; i<=${1}; i++))
do
	fapp -C -d ./profiling/tmp$i -Icpupa -Hevent=pa$i ./main
done


for ((i=1; i<=${1}; i++))
do
	fapppx -A -d ./profiling/tmp$i -Icpupa,nompi -tcsv -o ./profiling/result/pa${i}.csv
done
