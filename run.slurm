#!/bin/bash
##SBATCH --account=cs678fl22
#SBATCH --job-name=mnist
#SBATCH --partition=gpuq
#SBATCH --qos=gpu
#SBATCH --gres=gpu:A100.80gb:1
#SBATCH -N 1
#SBATCH --ntasks-per-node=12

#SBATCH --mem=150GB
#SBATCH --time=0-00:30:00

## Slurm can send you updates via email
#SBATCH --mail-type=BEGIN,END,FAIL         # ALL,NONE,BEGIN,END,FAIL,REQUEUE,..
#SBATCH --mail-user=fansari4@gmu.edu     # Put your GMU email address here

#SBATCH --output=/scratch/%u/mnist.%j.out
#SBATCH --error=/scratch/%u/mnist.%j.err


## load modules
module load gnu10
module load python


python main.py