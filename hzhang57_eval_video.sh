#!/bin/bash
export CUDA_VISIBLE_DEVICES=6
### DeepSeek-Vl2-Tiny
torchrun --nproc-per-node=1 --master_port 29990 run.py --data Video-MME_8frame  --model deepseek_vl2_tiny --verbose
torchrun --nproc-per-node=1 --master_port 29990 run.py --data Video-MME_64frame  --model deepseek_vl2_tiny --verbose
torchrun --nproc-per-node=1 --master_port 29990 run.py --data Video-MME_1fps  --model deepseek_vl2_tiny --verbose

torchrun --nproc-per-node=1 run.py --data LongVideoBench_8frame  --model deepseek_vl2_tiny --verbose
torchrun --nproc-per-node=1 run.py --data LongVideoBench_64frame  --model deepseek_vl2_tiny --verbose
torchrun --nproc-per-node=1 run.py --data LongVideoBench_1fps  --model deepseek_vl2_tiny --verbose

### DeepSeek-Vl2 small
torchrun --nproc-per-node=1 --master_port 29990 run.py --data Video-MME_8frame  --model deepseek_vl2_small --verbose
torchrun --nproc-per-node=1 --master_port 29990 run.py --data Video-MME_64frame  --model deepseek_vl2_small --verbose
torchrun --nproc-per-node=1 --master_port 29990 run.py --data Video-MME_1fps  --model deepseek_vl2_small --verbose

torchrun --nproc-per-node=1 run.py --data LongVideoBench_8frame  --model deepseek_vl2_small --verbose
torchrun --nproc-per-node=1 run.py --data LongVideoBench_64frame  --model deepseek_vl2_small --verbose
torchrun --nproc-per-node=1 run.py --data LongVideoBench_1fps  --model deepseek_vl2_small --verbose

### DeepSeek-Vl2
torchrun --nproc-per-node=1 --master_port 29990 run.py --data Video-MME_8frame  --model deepseek_vl2 --verbose
torchrun --nproc-per-node=1 --master_port 29990 run.py --data Video-MME_64frame  --model deepseek_vl2 --verbose
torchrun --nproc-per-node=1 --master_port 29990 run.py --data Video-MME_1fps  --model deepseek_vl2 --verbose

torchrun --nproc-per-node=1 --master_port 29990 run.py --data LongVideoBench_8frame  --model deepseek_vl2 --verbose
torchrun --nproc-per-node=1 --master_port 29990 run.py --data LongVideoBench_64frame  --model deepseek_vl2 --verbose
torchrun --nproc-per-node=1 --master_port 29990 run.py --data LongVideoBench_1fps  --model deepseek_vl2 --verbose

### MiniCPM-v2.6
torchrun --nproc-per-node=1 --master_port 29990 run.py --data Video-MME_8frame  --model MiniCPM-V-2_6 --verbose
torchrun --nproc-per-node=1 --master_port 29990 run.py --data Video-MME_64frame  --model MiniCPM-V-2_6 --verbose
torchrun --nproc-per-node=1 --master_port 29990 run.py --data Video-MME_1fps  --model MiniCPM-V-2_6 --verbose

torchrun --nproc-per-node=1 --master_port 29990 run.py --data LongVideoBench_8frame  --model MiniCPM-V-2_6 --verbose
torchrun --nproc-per-node=1 --master_port 29990 run.py --data LongVideoBench_64frame  --model MiniCPM-V-2_6 --verbose
torchrun --nproc-per-node=1 --master_port 29990 run.py --data LongVideoBench_1fps  --model MiniCPM-V-2_6 --verbose


