#!/bin/bash

#SBATCH --job-name=topicModeling
#SBATCH --output %j.out.txt
#SBATCH --error %j.out.txt
#SBATCH --time=24:00:00
#SBATCH --qos=batch
#SBATCH --nodes=8
#SBATCH --ntasks=8
#SBATCH --cpus-per-task=24
#SBATCH --mem 128000mb

# source ~/miniconda3/bin/activate
date
source ~/.bashrc

conda activate finra

# trade_SV_BoW
srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_SV_BoW small 50  &
srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_SV_BoW small 100  &
srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_SV_BoW small 200  &
srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_SV_BoW small 300  &
wait

# trade_vol_BoW
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW small 50  &
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW large 50  &
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW small 100  &
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW large 100  &
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW small 200  &
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW large 200  &
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW small 300  &
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW large 300  &

# trade_vol_BoW_norm
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW_norm small 50  &
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW_norm large 50  &
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW_norm small 100  &
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW_norm large 100  &
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW_norm small 200  &
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW_norm large 200  &
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW_norm small 300  &
#srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py trade_vol_BoW_norm large 300  &
#wait

# Dc_v4
# srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py Dc_v4 na 50  &
# srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py Dc_v4 na 75  &
# srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py Dc_v4 na 100  &
# srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py Dc_v4 na 150  &
# srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py Dc_v4 na 200  &
# srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py Dc_v4 na 250  &
# srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py Dc_v4 na 300  &
# srun --nodes=1 --ntasks=1 --exclusive python ~/FINRA_TRACE/TopicModeling/compute_lda.py Dc_v4 na 350  &
# wait
# 
date
