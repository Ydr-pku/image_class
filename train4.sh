#!/bin/bash
#SBATCH -o job.%j.out
#SBATCH --partition=GPU
#SBATCH --qos=low
#SBATCH -J myFirstGPUJob
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=6
#SBATCH --gres=gpu:1
#SBATCH --time=120:00:00

cd
module load anaconda/3-2020.02     
source activate myEnvPython
python3 /nfs-share/home/1901111241/image_class/train.py