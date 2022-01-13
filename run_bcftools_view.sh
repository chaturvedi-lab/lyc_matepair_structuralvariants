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

for i in *.bam.bcf; do bcftools view $i > ${i}.vcf; done

mv dellyanna_3kb_1.fastq.gz.sorted.bam.bcf.vcf anna.vcf
mv dellyidas_3kb_1.fastq.gz.sorted.bam.bcf.vcf idas.vcf
mv dellysierra_3kb_1.fastq.gz.sorted.bam.bcf.vcf sierra.vcf
mv dellywarner_3kb_1.fastq.gz.sorted.bam.bcf.vcf warner.vcf
mv dellymelissa_3kb_1.fastq.gz.sorted.bam.bcf.vcf melissa.vcf



