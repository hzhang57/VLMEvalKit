#!/bin/bash
export CUDA_VISIBLE_DEVICES=7

### DeepSeek-Vl2-Tiny
#torchrun --nproc-per-node=1 --master_port 29700 run.py --data RealWorldQA  --model deepseek_vl2_tiny --verbose
#torchrun --nproc-per-node=1 --master_port 29700 run.py --data MMStar  --model deepseek_vl2_tiny --verbose
#torchrun --nproc-per-node=1 --master_port 29700 run.py --data AI2D_TEST  --model deepseek_vl2_tiny --verbose
#torchrun --nproc-per-node=1 --master_port 29700 run.py --data SEEDBench_IMG  --model deepseek_vl2_tiny --verbose

### DeepSeek-Vl2-Tiny
torchrun --nproc-per-node=1 --master_port 29700 run.py --data RealWorldQA  --model deepseek_vl2_small --verbose
torchrun --nproc-per-node=1 --master_port 29700 run.py --data MMStar  --model deepseek_vl2_small --verbose
torchrun --nproc-per-node=1 --master_port 29700 run.py --data AI2D_TEST  --model deepseek_vl2_small --verbose
torchrun --nproc-per-node=1 --master_port 29700 run.py --data SEEDBench_IMG  --model deepseek_vl2_small --verbose

### DeepSeek-Vl2
torchrun --nproc-per-node=1 --master_port 29700 run.py --data RealWorldQA  --model deepseek_vl2 --verbose
torchrun --nproc-per-node=1 --master_port 29700 run.py --data MMStar  --model deepseek_vl2 --verbose
torchrun --nproc-per-node=1 --master_port 29700 run.py --data AI2D_TEST  --model deepseek_vl2 --verbose
torchrun --nproc-per-node=1 --master_port 29700 run.py --data SEEDBench_IMG  --model deepseek_vl2 --verbose

### MiniCPM-v2.6
#torchrun --nproc-per-node=1 --master_port 29700 run.py --data RealWorldQA  --model MiniCPM-V-2_6 --verbose
#torchrun --nproc-per-node=1 --master_port 29700 run.py --data MMStar  --model MiniCPM-V-2_6 --verbose
#torchrun --nproc-per-node=1 --master_port 29700 run.py --data AI2D_TEST  --model MiniCPM-V-2_6 --verbose
#torchrun --nproc-per-node=1 --master_port 29700 run.py --data SEEDBench_IMG  --model MiniCPM-V-2_6 --verbose

