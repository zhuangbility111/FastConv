#!/bin/bash
#PJM -L "node=1"        
#PJM -L "rscgrp=small"         
#PJM -L "elapse=12:00:00"
#PJM -S                        

make clean
make
./winograd_dev -ic 3 -oc 64 -is 224 224 -ks 7 7 -ip 3 -s 2 2 -a im2col -tn tuning -i 1 -t 1
