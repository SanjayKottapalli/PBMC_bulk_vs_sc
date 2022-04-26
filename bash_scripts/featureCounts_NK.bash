#! /bin/bash -l

#BATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=12
#SBATCH --job-name=featurecounts
#SBATCH --time=24:00:00   # HH/MM/SS
#SBATCH --mem=36G   # memory requested, units available: K,M,G,T

spack load subread

genome_dir=/athena/angsd/scratch/svk4001/final_project/human_ref/refdata-gex-GRCh38-2020-A/genes

project_dir=/athena/angsd/scratch/svk4001/final_project/bulk_fastqs/NK_cells
cd $project_dir
for i in $(ls -d */)
        do
                echo $i
		featureCounts -p -a $genome_dir/genes.gtf \
		-o $project_dir/"$i""${i%/*}"_featCounts.txt \
		-g gene_name \
		$project_dir/"$i"*.bam
		echo --------
	done


