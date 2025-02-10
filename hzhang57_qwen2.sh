#!/bin/bash
export CUDA_VISIBLE_DEVICES=0

### Qwen2.5-VL-7B
#torchrun --nproc-per-node=1 --master_port 29700 run.py --data RealWorldQA  --model Qwen2.5-VL-7B --verbose
torchrun --nproc-per-node=1 --master_port 29700 run.py --data MMStar  --model Qwen2.5-VL-7B --verbose
#torchrun --nproc-per-node=1 --master_port 29700 run.py --data AI2D_TEST  --model Qwen2.5-VL-7B --verbose
#torchrun --nproc-per-node=1 --master_port 29700 run.py --data SEEDBench_IMG  --model Qwen2.5-VL-7B --verbose
#torchrun --nproc-per-node=1 --master_port 28759 run.py --data Video-MME_8frame  --model Qwen2.5-VL-7B --verbose

