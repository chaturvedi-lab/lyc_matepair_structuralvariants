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
module load bcftools

cd /uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Variantcalling/delly/

bcftools merge -m id -O b -o delly_merged.bcf dellyanna_3kb_1.fastq.gz.sorted.bam.geno.bcf dellysierra_3kb_1.fastq.gz.sorted.bam.geno.bcf dellyidas_3kb_1.fastq.gz.sorted.bam.geno.bcf dellywarner_3kb_1.fastq.gz.sorted.bam.geno.bcf dellymelissa_3kb_1.fastq.gz.sorted.bam.geno.bcf

bcftools view delly_merged.bcf > delly_merged.vcf





