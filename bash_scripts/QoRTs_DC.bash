#! /bin/bash -l

#BATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=12
#SBATCH --job-name=qorts_dc
#SBATCH --time=24:00:00   # HH/MM/SS
#SBATCH --mem=36G   # memory requested, units available: K,M,G,T

spack load qorts

genome_dir=/athena/angsd/scratch/svk4001/final_project/human_ref/refdata-gex-GRCh38-2020-A
project_dir=/athena/angsd/scratch/svk4001/final_project/bulk_fastqs/DC

for i in $(ls -d */)
        do
                echo $i
				QoRTs QC --generatePlots \
				$project_dir/"$i"*.bam \
				$genome_dir/genes/genes.gtf \
				$project_dir/"$i"
				echo --------
		done
		
