#! /bin/bash -l

#BATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=wget
#SBATCH --time=00:12:00   # HH/MM/SS
#SBATCH --mem=1G   # memory requested, units available: K,M,G,T

sample=DZQV_Neutrophils_rep4
dir=./Neutrophils/$sample
mkdir -p $dir
#echo $dir/"$sample"_1.fastq.gz
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/004/SRR6298284/SRR6298284_1.fastq.gz -O $dir/"$sample"_1.fastq.gz -o $dir/"$sample"_1.log
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/004/SRR6298284/SRR6298284_2.fastq.gz -O $dir/"$sample"_2.fastq.gz -o $dir/"$sample"_2.log

sample=925L_Neutrophils_rep2
dir=./Neutrophils/$sample
mkdir -p $dir
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/003/SRR6298313/SRR6298313_1.fastq.gz -O $dir/"$sample"_1.fastq.gz -o $dir/"$sample"_1.log
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/003/SRR6298313/SRR6298313_2.fastq.gz -O $dir/"$sample"_2.fastq.gz -o $dir/"$sample"_2.log

sample=9JD4_Neutrophils_rep1
dir=./Neutrophils/$sample
mkdir -p $dir
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/002/SRR6298342/SRR6298342_1.fastq.gz -O $dir/"$sample"_1.fastq.gz -o $dir/"$sample"_1.log
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/002/SRR6298342/SRR6298342_2.fastq.gz -O $dir/"$sample"_2.fastq.gz -o $dir/"$sample"_2.log

sample=G4YW_Neutrophils_rep3
dir=./Neutrophils/$sample
mkdir -p $dir
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/006/SRR6298376/SRR6298376_1.fastq.gz -O $dir/"$sample"_1.fastq.gz -o $dir/"$sample"_1.log
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/006/SRR6298376/SRR6298376_2.fastq.gz -O $dir/"$sample"_2.fastq.gz -o $dir/"$sample"_2.log

sample=DZQV_NK_rep4
dir=./NK_cells/$sample
mkdir -p $dir
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/001/SRR6298281/SRR6298281_1.fastq.gz -O $dir/"$sample"_1.fastq.gz -o $dir/"$sample"_1.log
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/001/SRR6298281/SRR6298281_2.fastq.gz -O $dir/"$sample"_2.fastq.gz -o $dir/"$sample"_2.log

sample=925L_NK_rep2
dir=./NK_cells/$sample
mkdir -p $dir
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/000/SRR6298310/SRR6298310_1.fastq.gz -O $dir/"$sample"_1.fastq.gz -o $dir/"$sample"_1.log
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/000/SRR6298310/SRR6298310_2.fastq.gz -O $dir/"$sample"_2.fastq.gz -o $dir/"$sample"_2.log

sample=9JD4_NK_rep1
dir=./NK_cells/$sample
mkdir -p $dir
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/009/SRR6298339/SRR6298339_1.fastq.gz -O $dir/"$sample"_1.fastq.gz -o $dir/"$sample"_1.log
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/009/SRR6298339/SRR6298339_2.fastq.gz -O $dir/"$sample"_2.fastq.gz -o $dir/"$sample"_2.log

sample=G4YW_NK_rep3
dir=./NK_cells/$sample
mkdir -p $dir
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/003/SRR6298373/SRR6298373_1.fastq.gz -O $dir/"$sample"_1.fastq.gz -o $dir/"$sample"_1.log
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR629/003/SRR6298373/SRR6298373_2.fastq.gz -O $dir/"$sample"_2.fastq.gz -o $dir/"$sample"_2.log
