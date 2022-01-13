#!/bin/sh
#SBATCH --time=300:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --account=usubio-kp
#SBATCH --partition=usubio-kp
#SBATCH --job-name=bwamem
#SBATCH --mail-type=ALL
#SBATCH --mail-user=samridhi.chaturvedi@gmail.com

module load bwa
module load perl

cd /uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Variantcalling/delly/


/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Programs/delly/src/delly merge -o sites.bcf dellyanna_3kb_1.fastq.gz.sorted.bam.bcf dellymelissa_3kb_1.fastq.gz.sorted.bam.bcf dellywarner_3kb_1.fastq.gz.sorted.bam.bcf dellyidas_3kb_1.fastq.gz.sorted.bam.bcf dellysierra_3kb_1.fastq.gz.sorted.bam.bcf
