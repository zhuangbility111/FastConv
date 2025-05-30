echo "-----------thead 12-----------------"
# iterations0=1
# OMP_NUM_THREADS=12 numactl -C 12-23 -m 4 ./winograd_dev -ic 128 -oc 32 -is 56 56 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations0
# OMP_NUM_THREADS=12 numactl -C 12-23 -m 4 ./winograd_dev -ic 128 -oc 32 -is 28 28 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations0
# OMP_NUM_THREADS=12 numactl -C 12-23 -m 4 ./winograd_dev -ic 128 -oc 32 -is 14 14 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations0
# OMP_NUM_THREADS=12 numactl -C 12-23 -m 4 ./winograd_dev -ic 128 -oc 32 -is 7 7 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations0
# OMP_NUM_THREADS=12 numactl -C 12-23 -m 4 ./winograd_dev -ic 192 -oc 64 -is 35 35 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations0
# OMP_NUM_THREADS=12 numactl -C 12-23 -m 4 ./winograd_dev -ic 32 -oc 64 -is 147 147 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations0
# OMP_NUM_THREADS=12 numactl -C 12-23 -m 4 ./winograd_dev -ic 256 -oc 64 -is 35 35 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations0
# OMP_NUM_THREADS=12 numactl -C 12-23 -m 4 ./winograd_dev -ic 64 -oc 80 -is 73 73 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations0
# OMP_NUM_THREADS=12 numactl -C 12-23 -m 4 ./winograd_dev -ic 2048 -oc 384 -is 8 8 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations0
# OMP_NUM_THREADS=12 numactl -C 12-23 -m 4 ./winograd_dev -ic 96 -oc 96 -is 35 35 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations0
# OMP_NUM_THREADS=12 numactl -C 12-23 -m 4 ./winograd_dev -ic 768 -oc 192 -is 17 17 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations0
# OMP_NUM_THREADS=12 numactl -C 12-23 -m 4 ./winograd_dev -ic 288 -oc 64 -is 35 35 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations0

echo "-----------thead 48-----------------"
iterations1=100
OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 128 -oc 32 -is 56 56 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations1
OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 128 -oc 32 -is 28 28 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations1
OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 128 -oc 32 -is 14 14 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations1
OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 128 -oc 32 -is 7 7 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations1
OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 192 -oc 64 -is 35 35 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations1
OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 32 -oc 64 -is 147 147 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations1
OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 256 -oc 64 -is 35 35 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations1
OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 64 -oc 80 -is 73 73 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations1
OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 2048 -oc 384 -is 8 8 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations1
OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 96 -oc 96 -is 35 35 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations1
OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 768 -oc 192 -is 17 17 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations1
OMP_NUM_THREADS=48 numactl -C 12-59  -m 4-7 ./winograd_dev -ic 288 -oc 64 -is 35 35 -ks 3 3 -ip 1 -a im2col -tn tuning -i $iterations1
