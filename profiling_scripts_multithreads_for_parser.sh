#!/bin/bash

# export GOMP_CPU_AFFINITY="12-23"
# export OMP_NUM_THREADS=12
# export GOMP_CPU_AFFINITY="12-59"
export OMP_NUM_THREADS=48
# export XOS_MMM_L_PAGING_POLICY=demand:demand:demand

rm -r ./xls-parser/tmp*

for i in `seq 1 17`; do
    numactl -C 12-59 -m 4-7 fapp -C -d ./xls-parser/tmp${i} -Icpupa,nompi -Hevent=pa${i} ./winograd_dev -ic 64 -oc 64 -is 224 224 -ks 3 3 -ip 1 -a im2col -tn tuning -i 100
    fapp -A -d ./xls-parser/tmp${i} -Icpupa -txml -o ./xls-parser/result_interleave/pa${i}.xml
done

# for ((i=1; i<=${1}; i++))
# do
# 	# numactl -C 12-59  -m 4-7 fapp -C -d ./profiling/tmp$i -Icpupa -Hevent=pa$i ./winograd_dev -ic 256 -oc 480 -is 32 32 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1000
# 	fapp -C -d ./profiling/tmp$i -Icpupa -Hevent=pa$i ./winograd_dev -ic 64 -oc 64 -is 224 224 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1000 
# done


# for ((i=1; i<=${1}; i++))
# do
# 	fapppx -A -d ./profiling/tmp$i -Icpupa,nompi -tcsv -o ./profiling/result/pa${i}.csv
# done
