#!/bin/bash
##SBATCH --account=cs678fl22
#SBATCH --job-name=mnist
#SBATCH --partition=gpuq
#SBATCH --qos=gpu
#SBATCH --gres=gpu:A100.80gb:1
#SBATCH -N 1
#SBATCH --ntasks-per-node=12

#SBATCH --mem=150GB
#SBATCH --time=0-12:00:00


#SBATCH --output=mnist.%j.out
#SBATCH --error=mnist.%j.err


## load modules
module load gnu10
module load python


python main.py