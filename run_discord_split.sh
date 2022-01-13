#!/bin/sh
#SBATCH --time=300:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --account=usubio-kp
#SBATCH --partition=usubio-kp
#SBATCH --job-name=samtools
#SBATCH --mail-type=ALL
#SBATCH --mail-user=samridhi.chaturvedi@gmail.com

module load samtools

cd /uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/


perl wrap_qsub_slurm_discord_split.pl *_3kb_1.fastq.gz.bam



