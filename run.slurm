#!/bin/bash
##SBATCH --account=cs678fl22
#SBATCH --job-name=llm_finetune
#SBATCH --partition=gpuq
#SBATCH --qos=gpu
#SBATCH --gres=gpu:A100.80gb:1
#SBATCH -N 2
#SBATCH --ntasks-per-node=12

#SBATCH --mem=150GB
#SBATCH --time=0-08:30:00

## Slurm can send you updates via email
#SBATCH --mail-type=BEGIN,END,FAIL         # ALL,NONE,BEGIN,END,FAIL,REQUEUE,..
#SBATCH --mail-user=fansari4@gmu.edu     # Put your GMU email address here

#SBATCH --output=/scratch/%u/mnist.%j.out
#SBATCH --error=/scratch/%u/mnist.%j.err


## load modules
module load gnu12
module load python/3.12.1-33
module load cuda/12.6.3


python fine_tune_llama_1b_summarization1.py