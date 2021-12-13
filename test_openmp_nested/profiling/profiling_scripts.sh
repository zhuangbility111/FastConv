#!/bin/bash

for ((i=1; i<=${1}; i++))
do
	fapp -C -d ./tmp$i -Icpupa -Hevent=pa$i ../winograd_dev -ic 3 -oc 64 -is 224 224 -ks 7 7 -ip 3 -s 2 2 -a im2col -tn tuning -i 1 -t 1	
done


for ((i=1; i<=${1}; i++))
do
	fapppx -A -d ./tmp$i -Icpupa,nompi -tcsv -o pa${i}.csv
done
