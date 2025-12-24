#Sum of All Unique non-Overlapping Exons 

library(GenomicFeatures)
library(rtracklayer)
library(txdbmaker)

GTF <- "Homo_sapiens.GRCh38.110.gtf" # Enter your specific GTF file name
txdb <- makeTxDbFromGFF(GTF, format ="gtf") # Creata a Database from GTF
exons_by_genes <- exonsBy(txdb, by ="gene") # To extract the coordinates of the exons

Gene_Length <- sapply(exons_by_genes, function(gr){
  sum(width(reduce(gr)))
}) 
