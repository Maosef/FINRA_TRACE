#!/bin/bash

#SBATCH --job-name=topicModeling
#SBATCH --output main.out.%j
#SBATCH --error main.out.%j
#SBATCH --time=24:00:00
#SBATCH --qos=batch
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=32
#SBATCH --mem 32gb

export MKL_NUM_THREADS=1
export NUMEXPR_NUM_THREADS=1
export OMP_NUM_THREADS=1

source ~/miniconda3/bin/activate

export MKL_NUM_THREADS=1
export NUMEXPR_NUM_THREADS=1
export OMP_NUM_THREADS=1

srun --nodes=1 --exclusive python ~/FINRA_TRACE/TopicModeling/main_argument.py matrix_1 matrix_1 matrix_1 100
srun --nodes=1 --exclusive python ~/FINRA_TRACE/TopicModeling/main_argument.py matrix_1 matrix_1 matrix_1 250
srun --nodes=1 --exclusive python ~/FINRA_TRACE/TopicModeling/main_argument.py matrix_1 matrix_1 matrix_1 500
srun --nodes=1 --exclusive python ~/FINRA_TRACE/TopicModeling/main_argument.py matrix_1 matrix_1 matrix_1 750