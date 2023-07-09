#!/bin/bash
#SBATCH -J cryofire
#SBATCH --partition=gpu
#SBATCH --gres=gpu:A40:1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=50G
#SBATCH --nodelist=compute-0-12

source /home/tsatler/anaconda3/etc/profile.d/conda.sh
conda activate cryofire

python ../src/commands/train.py empiar10180_100k > /home/tsatler/cryo/cryofire/logs/empiar10180_A40_b32_100k/log_run.log