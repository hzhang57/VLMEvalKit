#!/bin/bash
export CUDA_VISIBLE_DEVICES=1

## DeepSeek-Vl2-Tiny
torchrun --nproc-per-node=1 --master_port 24354 run.py --data RealWorldQA  --model deepseek_vl2_tiny --verbose
torchrun --nproc-per-node=1 --master_port 24354 run.py --data MMStar  --model deepseek_vl2_tiny --verbose
torchrun --nproc-per-node=1 --master_port 24354 run.py --data AI2D_TEST  --model deepseek_vl2_tiny --verbose
torchrun --nproc-per-node=1 --master_port 28759 run.py --data SEEDBench_IMG  --model deepseek_vl2_tiny --verbose
torchrun --nproc-per-node=1 --master_port 28759 run.py --data Video-MME_8frame  --model deepseek_vl2_tiny --verbose
#
### DeepSeek-Vl2-Tiny
torchrun --nproc-per-node=1 --master_port 24354 run.py --data RealWorldQA  --model deepseek_vl2_small --verbose
torchrun --nproc-per-node=1 --master_port 24354 run.py --data MMStar  --model deepseek_vl2_small --verbose
torchrun --nproc-per-node=1 --master_port 24354 run.py --data AI2D_TEST  --model deepseek_vl2_small --verbose
torchrun --nproc-per-node=1 --master_port 28759 run.py --data SEEDBench_IMG  --model deepseek_vl2_small --verbose
torchrun --nproc-per-node=1 --master_port 28759 run.py --data Video-MME_8frame  --model deepseek_vl2_small --verbose
#
### DeepSeek-Vl2
torchrun --nproc-per-node=1 --master_port 24354 run.py --data RealWorldQA  --model deepseek_vl2 --verbose
torchrun --nproc-per-node=1 --master_port 24354 run.py --data MMStar  --model deepseek_vl2 --verbose
torchrun --nproc-per-node=1 --master_port 24354 run.py --data AI2D_TEST  --model deepseek_vl2 --verbose
torchrun --nproc-per-node=1 --master_port 28759 run.py --data SEEDBench_IMG  --model deepseek_vl2 --verbose
torchrun --nproc-per-node=1 --master_port 28759 run.py --data Video-MME_8frame  --model deepseek_vl2 --verbose

