#!/bin/bash

rm -r ./profiling/result/ ./profiling/tmp*
mkdir ./profiling/result

export OMP_NUM_THREADS=1

for ((i=1; i<=${1}; i++))
do
	fapp -C -d ./profiling/tmp$i -Icpupa -Hevent=pa$i ./winograd_dev -ic 128 -oc 256 -is 56 56 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1000 -t 1
done


for ((i=1; i<=${1}; i++))
do
	fapppx -A -d ./profiling/tmp$i -Icpupa,nompi -tcsv -o ./profiling/result/pa${i}.csv
done
