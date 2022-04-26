#! /bin/bash -l

#BATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=12
#SBATCH --job-name=qorts_dc
#SBATCH --time=24:00:00   # HH/MM/SS
#SBATCH --mem=36G   # memory requested, units available: K,M,G,T

spack load fastqc

project_dir=/athena/angsd/scratch/svk4001/final_project/bulk_fastqs
cd $project_dir/NK_cells
 
for i in $(ls -d */)
        do
                echo $i
		fastqc $project_dir/NK_cells/"$i"*_1.fastq.gz --extract -o $project_dir/fastqcs -t 6
		fastqc $project_dir/NK_cells/"$i"*_2.fastq.gz --extract -o $project_dir/fastqcs -t 6
		echo --------
	done
		
