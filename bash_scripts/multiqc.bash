#! /bin/bash -l

#BATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=12
#SBATCH --job-name=multiqc
#SBATCH --time=24:00:00   # HH/MM/SS
#SBATCH --mem=36G   # memory requested, units available: K,M,G,T

spack load -r py-multiqc

project_dir=/athena/angsd/scratch/svk4001/final_project/bulk_fastqs
cd $project_dir/fastqcs
 
multiqc .	
