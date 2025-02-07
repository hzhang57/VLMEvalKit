#torchrun --nproc-per-node=1 run.py --data RealWorldQA --model deepseek_vl2_tiny --verbose
#torchrun --nproc-per-node=1 run.py --data MMMU_DEV_VAL --model deepseek_vl2_tiny --verbose
#torchrun --nproc-per-node=1 run.py --data MMStar --model deepseek_vl2_tiny --verbose
#torchrun --nproc-per-node=1 run.py --data AI2D_TEST  --model deepseek_vl2_tiny --verbose
#torchrun --nproc-per-node=1 run.py --data MMBench_TEST_EN  --model deepseek_vl2_tiny --verbose
#torchrun --nproc-per-node=1 run.py --data SEEDBench_IMG  --model deepseek_vl2_tiny --verbose
#torchrun --nproc-per-node=1 run.py --data Video-MME_8frame  --model deepseek_vl2_tiny --verbose
#torchrun --nproc-per-node=1 run.py --data MVBench_8frame  --model deepseek_vl2_tiny --verbose
#torchrun --nproc-per-node=1 run.py --data LongVideoBench_8frame_subs  --model deepseek_vl2_small --verbose
#torchrun --nproc-per-node=1 run.py --data LongVideoBench_8frame_subs  --model MiniCPM-V-2_6 --verbose
#torchrun --nproc-per-node=1 run.py --data Video-MME_8frame  --model MiniCPM-V-2_6 --verbose
torchrun --nproc-per-node=1 run.py --data Video-MME_64frame  --model MiniCPM-V-2_6 --verbose


#torchrun --nproc-per-node=1 run.py --data MMBench_Video_8frame_nopack  --model deepseek_vl2_tiny --verbose
#
#torchrun --nproc-per-node=1 run.py --data MLVU_8frame  --model deepseek_vl2_tiny --verbose ##openended

