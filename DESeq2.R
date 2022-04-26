library("DESeq2")

cts <- as.matrix(read.csv("./bulk_counts.csv",sep=",", row.names=1))
coldata <- read.csv("./colData.csv", row.names=1)
colnames(cts) = rownames(coldata)

if(TRUE) {
  dds <- DESeqDataSetFromMatrix(countData = cts,
                                colData = coldata,
                                design = ~ cell_type)
  
  dds <- DESeq(dds)
}
res <- results(dds, name="cell_type_NK_vs_DC")
res <- lfcShrink(dds, coef="cell_type_NK_vs_DC", type="apeglm")
rld <- assay(rlog(dds, blind=FALSE))
write.csv(rld,"rld.csv")
write.csv(res,"results_de.csv")
