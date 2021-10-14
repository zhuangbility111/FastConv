#!/bin/bash

rm -r ./profiling/result/ ./profiling/tmp*
mkdir ./profiling/result

for ((i=1; i<=${1}; i++))
do
	fapp -C -d ./profiling/tmp$i -Icpupa -Hevent=pa$i ./winograd_dev -ic 3 -oc 64 -is 224 224 -ks 7 7 -ip 3 -s 2 2 -a im2col -tn tuning -i 1000 -t 1
done


for ((i=1; i<=${1}; i++))
do
	fapppx -A -d ./profiling/tmp$i -Icpupa,nompi -tcsv -o ./profiling/result/pa${i}.csv
done
