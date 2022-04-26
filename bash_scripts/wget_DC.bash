#! /bin/bash -l

#BATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=wget
#SBATCH --time=00:12:00   # HH/MM/SS
#SBATCH --mem=1G   # memory requested, units available: K,M,G,T

sample=DZQV_mDC_rep4
dir=./DC/$sample
mkdir -p $dir
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/003/SRR6298283/SRR6298283_1.fastq.gz -O $dir/"$sample"_1.fastq.gz -o $dir/"$sample"_1.log
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/003/SRR6298283/SRR6298283_2.fastq.gz -O $dir/"$sample"_2.fastq.gz -o $dir/"$sample"_2.log

sample=925L_mDC_rep2
dir=./DC/$sample
mkdir -p $dir
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/002/SRR6298312/SRR6298312_1.fastq.gz -O $dir/"$sample"_1.fastq.gz -o $dir/"$sample"_1.log
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/002/SRR6298312/SRR6298312_2.fastq.gz -O $dir/"$sample"_2.fastq.gz -o $dir/"$sample"_2.log

sample=9JD4_mDC_rep1
dir=./DC/$sample
mkdir -p $dir
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/001/SRR6298341/SRR6298341_1.fastq.gz -O $dir/"$sample"_1.fastq.gz -o $dir/"$sample"_1.log
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/001/SRR6298341/SRR6298341_2.fastq.gz -O $dir/"$sample"_2.fastq.gz -o $dir/"$sample"_2.log

sample=G4YW_mDC_rep3
dir=./DC/$sample
mkdir -p $dir
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/005/SRR6298375/SRR6298375_1.fastq.gz -O $dir/"$sample"_1.fastq.gz -o $dir/"$sample"_1.log
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/005/SRR6298375/SRR6298375_2.fastq.gz -O $dir/"$sample"_2.fastq.gz -o $dir/"$sample"_2.log
