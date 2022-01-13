#!/bin/sh -f
#SBATCH --time=90:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=20
#SBATCH --account=usubio-kp
#SBATCH --partition=usubio-kp
#SBATCH --job-name=delly
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=samridhi.chaturvedi@gmail.com

    echo ------------------------------------------------------
    echo -n 'Job is running on node '; cat $SLURM_JOB_NODELIST
    echo ------------------------------------------------------
    echo SLURM: job identifier is $SLURM_JOBID
    echo SLURM: job name is $SLURM_JOB_NAME
    echo ------------------------------------------------------

module load gcc
module load gsl
module load hdf5
module load bwa
cd /uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Alignments/
/uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Programs/delly/src/delly call -g /uufs/chpc.utah.edu/common/home/gompert-group3/data/LmelGenome/Lmel_dovetailPacBio_genome.fasta -v /uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Variantcalling/delly/sites.bcf -o /uufs/chpc.utah.edu/common/home/gompert-group1/data/lycaeides/lyc_sv/Variantcalling/dellywarner_3kb_1.fastq.gz.sorted.bam.geno.bcf warner_3kb_1.fastq.gz.sorted.bam

early()
{
 echo ' '
 echo ' ############ WARNING:  EARLY TERMINATION ############# '
 echo ' '
}
exit
