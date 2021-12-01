echo "-----------thead 1-----------------"
# GOMP_CPU_AFFINITY="12" OMP_NUM_THREADS=1 numactl -N 4 -m 4 ./winograd_dev -ic 3 -oc 64 -is 224 224 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12" OMP_NUM_THREADS=1 numactl -N 4 -m 4 ./winograd_dev -ic 64 -oc 64 -is 224 224 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12" OMP_NUM_THREADS=1 numactl -N 4 -m 4 ./winograd_dev -ic 64 -oc 128 -is 112 112 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12" OMP_NUM_THREADS=1 numactl -N 4 -m 4 ./winograd_dev -ic 128 -oc 128 -is 112 112 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12" OMP_NUM_THREADS=1 numactl -N 4 -m 4 ./winograd_dev -ic 128 -oc 256 -is 56 56 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12" OMP_NUM_THREADS=1 numactl -N 4 -m 4 ./winograd_dev -ic 256 -oc 256 -is 56 56 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12" OMP_NUM_THREADS=1 numactl -N 4 -m 4 ./winograd_dev -ic 256 -oc 512 -is 28 28 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12" OMP_NUM_THREADS=1 numactl -N 4 -m 4 ./winograd_dev -ic 512 -oc 512 -is 28 28 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12" OMP_NUM_THREADS=1 numactl -N 4 -m 4 ./winograd_dev -ic 512 -oc 512 -is 14 14 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1

# echo "-----------thead 2-----------------"
# GOMP_CPU_AFFINITY="12-13" OMP_NUM_THREADS=2 numactl -N 4 -m 4 ./winograd_dev -ic 3 -oc 64 -is 224 224 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-13" OMP_NUM_THREADS=2 numactl -N 4 -m 4 ./winograd_dev -ic 64 -oc 64 -is 224 224 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-13" OMP_NUM_THREADS=2 numactl -N 4 -m 4 ./winograd_dev -ic 64 -oc 128 -is 112 112 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-13" OMP_NUM_THREADS=2 numactl -N 4 -m 4 ./winograd_dev -ic 128 -oc 128 -is 112 112 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-13" OMP_NUM_THREADS=2 numactl -N 4 -m 4 ./winograd_dev -ic 128 -oc 256 -is 56 56 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-13" OMP_NUM_THREADS=2 numactl -N 4 -m 4 ./winograd_dev -ic 256 -oc 256 -is 56 56 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-13" OMP_NUM_THREADS=2 numactl -N 4 -m 4 ./winograd_dev -ic 256 -oc 512 -is 28 28 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-13" OMP_NUM_THREADS=2 numactl -N 4 -m 4 ./winograd_dev -ic 512 -oc 512 -is 28 28 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-13" OMP_NUM_THREADS=2 numactl -N 4 -m 4 ./winograd_dev -ic 512 -oc 512 -is 14 14 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
 
# echo "-----------thead 4-----------------"
# GOMP_CPU_AFFINITY="12-15" OMP_NUM_THREADS=4 numactl -N 4 -m 4 ./winograd_dev -ic 3 -oc 64 -is 224 224 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-15" OMP_NUM_THREADS=4 numactl -N 4 -m 4 ./winograd_dev -ic 64 -oc 64 -is 224 224 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-15" OMP_NUM_THREADS=4 numactl -N 4 -m 4 ./winograd_dev -ic 64 -oc 128 -is 112 112 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-15" OMP_NUM_THREADS=4 numactl -N 4 -m 4 ./winograd_dev -ic 128 -oc 128 -is 112 112 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-15" OMP_NUM_THREADS=4 numactl -N 4 -m 4 ./winograd_dev -ic 128 -oc 256 -is 56 56 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-15" OMP_NUM_THREADS=4 numactl -N 4 -m 4 ./winograd_dev -ic 256 -oc 256 -is 56 56 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-15" OMP_NUM_THREADS=4 numactl -N 4 -m 4 ./winograd_dev -ic 256 -oc 512 -is 28 28 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-15" OMP_NUM_THREADS=4 numactl -N 4 -m 4 ./winograd_dev -ic 512 -oc 512 -is 28 28 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-15" OMP_NUM_THREADS=4 numactl -N 4 -m 4 ./winograd_dev -ic 512 -oc 512 -is 14 14 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
 
# echo "-----------thead 8-----------------"
# GOMP_CPU_AFFINITY="12-19" OMP_NUM_THREADS=8 numactl -N 4 -m 4 ./winograd_dev -ic 3 -oc 64 -is 224 224 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-19" OMP_NUM_THREADS=8 numactl -N 4 -m 4 ./winograd_dev -ic 64 -oc 64 -is 224 224 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-19" OMP_NUM_THREADS=8 numactl -N 4 -m 4 ./winograd_dev -ic 64 -oc 128 -is 112 112 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-19" OMP_NUM_THREADS=8 numactl -N 4 -m 4 ./winograd_dev -ic 128 -oc 128 -is 112 112 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-19" OMP_NUM_THREADS=8 numactl -N 4 -m 4 ./winograd_dev -ic 128 -oc 256 -is 56 56 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-19" OMP_NUM_THREADS=8 numactl -N 4 -m 4 ./winograd_dev -ic 256 -oc 256 -is 56 56 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-19" OMP_NUM_THREADS=8 numactl -N 4 -m 4 ./winograd_dev -ic 256 -oc 512 -is 28 28 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-19" OMP_NUM_THREADS=8 numactl -N 4 -m 4 ./winograd_dev -ic 512 -oc 512 -is 28 28 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-19" OMP_NUM_THREADS=8 numactl -N 4 -m 4 ./winograd_dev -ic 512 -oc 512 -is 14 14 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1

echo "-----------thead 12-----------------"
# GOMP_CPU_AFFINITY="12-23" OMP_NUM_THREADS=12 numactl -N 4 -m 4 ./winograd_dev -ic 3 -oc 64 -is 224 224 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-23" OMP_NUM_THREADS=12 numactl -N 4 -m 4 ./winograd_dev -ic 64 -oc 64 -is 224 224 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-23" OMP_NUM_THREADS=12 numactl -N 4 -m 4 ./winograd_dev -ic 64 -oc 128 -is 112 112 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-23" OMP_NUM_THREADS=12 numactl -N 4 -m 4 ./winograd_dev -ic 128 -oc 128 -is 112 112 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-23" OMP_NUM_THREADS=12 numactl -N 4 -m 4 ./winograd_dev -ic 128 -oc 256 -is 56 56 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-23" OMP_NUM_THREADS=12 numactl -N 4 -m 4 ./winograd_dev -ic 256 -oc 256 -is 56 56 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-23" OMP_NUM_THREADS=12 numactl -N 4 -m 4 ./winograd_dev -ic 256 -oc 512 -is 28 28 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-23" OMP_NUM_THREADS=12 numactl -N 4 -m 4 ./winograd_dev -ic 512 -oc 512 -is 28 28 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-23" OMP_NUM_THREADS=12 numactl -N 4 -m 4 ./winograd_dev -ic 512 -oc 512 -is 14 14 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1

echo "-----------thead 48-----------------"
# GOMP_CPU_AFFINITY="12-59" OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 3 -oc 64 -is 224 224 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-59" OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 64 -oc 64 -is 224 224 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-59" OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 64 -oc 128 -is 112 112 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-59" OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 128 -oc 128 -is 112 112 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1 
# GOMP_CPU_AFFINITY="12-59" OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 128 -oc 256 -is 56 56 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
# GOMP_CPU_AFFINITY="12-59" OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 256 -oc 256 -is 56 56 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
GOMP_CPU_AFFINITY="12-59" OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 256 -oc 512 -is 28 28 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
GOMP_CPU_AFFINITY="12-59" OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 512 -oc 512 -is 28 28 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
GOMP_CPU_AFFINITY="12-59" OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 512 -oc 512 -is 14 14 -ks 3 3 -ip 1 -a im2col -tn tuning -i 1
