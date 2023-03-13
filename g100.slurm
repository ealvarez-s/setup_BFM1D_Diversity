#!/bin/bash

#SBATCH --job-name=BOUS_1yn
#SBATCH -N 1 -n 1
#SBATCH --time=03:00:00
#SBATCH --mem=10gb
#SBATCH --account=OGS21_PRACE_P
###SBATCH --account=tra21_seamless
###SBATCH --account=IscrB_3DSBM
#SBATCH --partition=g100_usr_prod
###SBATCH --qos=g100_qos_dbg
###SBATCH --nodes=2

####module load vtune/oneapi-2022
cd $SLURM_SUBMIT_DIR

####conda activate seamless-bb-r
export LD_LIBRARY_PATH=/g100/home/userexternal/ealvarez/.conda/envs/seamless-bb-r/lib:$LD_LIBRARY_PATH

date
###perf record -g ./gotm.xx
###vtune -collect hotspots --target-duration-type veryshort ./gotm.xx
./gotm.xx 
date
