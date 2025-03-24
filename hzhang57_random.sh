#!/bin/bash
export CUDA_VISIBLE_DEVICES=0

### ViLA1.5-3b
#torchrun --nproc-per-node=1 --master_port 28735 run.py --data RealWorldQA  --model VILA1.5-3b --verbose
#torchrun --nproc-per-node=1 --master_port 28735 run.py --data MMStar  --model VILA1.5-3b --verbose
#torchrun --nproc-per-node=1 --master_port 28735 run.py --data AI2D_TEST  --model VILA1.5-3b --verbose
#torchrun --nproc-per-node=1 --master_port 28735 run.py --data SEEDBench_IMG  --model VILA1.5-3b --verbose
torchrun --nproc-per-node=1 --master_port 28759 run.py --data Video-MME_8frame  --model VILA1.5-3b --verbose

