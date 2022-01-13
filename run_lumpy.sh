#!/bin/sh
#SBATCH --time=70:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --account=usubio-kp
#SBATCH --partition=usubio-kp
#SBATCH --job-name=lumpy
#SBATCH --mail-type=ALL
#SBATCH --mail-user=samridhi.chaturvedi@gmail.com

module load samtools
module load python/2.7
module load sambamba

cd /uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Variantcalling/lumpy/

/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Programs/lumpy-sv/bin/lumpy \
    -mw 4 \
    -tt 0 \
    -pe id:anna,bam_file:/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/anna.discordants.sorted.bam,histo_file:/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/anna.lib1.histo,mean:327,stdev:172,read_length:101,min_non_overlap:101,discordant_z:5,back_distance:10,weight:1,min_mapping_threshold:20 \
    -pe id:sierra,bam_file:/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/sierra.discordants.sorted.bam,histo_file:/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/sierra.lib1.histo,mean:337,stdev:179,read_length:101,min_non_overlap:101,discordant_z:5,back_distance:10,weight:1,min_mapping_threshold:20 \
    -pe id:idas,bam_file:/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/idas.discordants.sorted.bam,histo_file:/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/idas.lib1.histo,mean:305,stdev:169,read_length:101,min_non_overlap:101,discordant_z:5,back_distance:10,weight:1,min_mapping_threshold:20 \
    -pe id:warner,bam_file:/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/warner.discordants.sorted.bam,histo_file:/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/warner.lib1.histo,mean:324,stdev:175,read_length:101,min_non_overlap:101,discordant_z:5,back_distance:10,weight:1,min_mapping_threshold:20 \
    -pe id:melissa,bam_file:/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/melissa.discordants.sorted.bam,histo_file:/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/melissa.lib1.histo,mean:333,stdev:177,read_length:101,min_non_overlap:101,discordant_z:5,back_distance:10,weight:1,min_mapping_threshold:20 \
    -sr id:anna,bam_file:/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/anna.splitters.sorted.bam,back_distance:10,weight:1,min_mapping_threshold:20 \
    -sr id:sierra,bam_file:/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/sierra.splitters.sorted.bam,back_distance:10,weight:1,min_mapping_threshold:20 \
    -sr id:idas,bam_file:/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/idas.splitters.sorted.bam,back_distance:10,weight:1,min_mapping_threshold:20 \
    -sr id:warner,bam_file:/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/warner.splitters.sorted.bam,back_distance:10,weight:1,min_mapping_threshold:20 \
    -sr id:melissa,bam_file:/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/melissa.splitters.sorted.bam,back_distance:10,weight:1,min_mapping_threshold:20 \
    > lumpy_merged.vcf




