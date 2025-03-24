#!/bin/bash
export CUDA_VISIBLE_DEVICES=4


## MiniCPM-v2.6
torchrun --nproc-per-node=1 --master_port 29701 run.py --data RealWorldQA  --model MiniCPM-V-2_6 --verbose
torchrun --nproc-per-node=1 --master_port 29701 run.py --data MMStar  --model MiniCPM-V-2_6 --verbose
torchrun --nproc-per-node=1 --master_port 29701 run.py --data AI2D_TEST  --model MiniCPM-V-2_6 --verbose
torchrun --nproc-per-node=1 --master_port 29701 run.py --data SEEDBench_IMG  --model MiniCPM-V-2_6 --verbose
torchrun --nproc-per-node=1 --master_port 29990 run.py --data Video-MME_8frame  --model MiniCPM-V-2_6 --verbose

