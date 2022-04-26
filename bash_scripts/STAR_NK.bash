#! /bin/bash -l

#BATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=20
#SBATCH --job-name=STAR_NK
#SBATCH --time=24:00:00   # HH/MM/SS
#SBATCH --mem=64G   # memory requested, units available: K,M,G,T

spack load star@2.6.1a

genome_dir=/athena/angsd/scratch/svk4001/final_project/human_ref/refdata-gex-GRCh38-2020-A/star
STAR --genomeLoad LoadAndExit --genomeDir $genome_dir

project_dir=/athena/angsd/scratch/svk4001/final_project/bulk_fastqs/NK_cells
cd $project_dir
for i in $(ls -d */)
	do 
		echo $i
		STAR --genomeDir $genome_dir \
		--genomeLoad LoadAndKeep \
		--limitBAMsortRAM 11000000000 \
		--readFilesIn $project_dir/"$i"*_1.fastq.gz $project_dir/"$i"*_2.fastq.gz \
		--runThreadN 20 \
		--outFileNamePrefix $project_dir/$i \
		--outSAMtype BAM SortedByCoordinate \
		--readFilesCommand gunzip -c
		echo --------
	done
STAR --genomeLoad Remove --genomeDir $genome_dir

