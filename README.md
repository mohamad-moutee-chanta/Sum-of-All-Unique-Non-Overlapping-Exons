### Sum of All Unique Non-Overlapping Exons Per Gene 🧬

RNA-seq studies ,when performed in large-scale, the conversion of raw reads to counts of the read can be computationally expensive. As a result, Researchers often rely on the count matrices that have been pre-computed and are stored in the publicly accessible repositories like GEO. Normalization and integration of these datasets require precise information of the gene length but it is know that Genes can have multiple transcripts and this issue should be addressed. Current script uses exon coordinates to derive gene lengths which are used to normalize gene-level analyses in transcriptomic analysis. The resultant gene length can be used directly in the normalizations (such as TPM and FPKM) of the count data of RNA-seq as a result of publicly sourced data.

#### Method
1) Create a Database Object from the GTF File. 

2) Group and Extract the Exons by Genes.

3) Merge the Overlapping Exons.

4) Sum the Exons Width to Obtain the Sum of All Unique Non-Overlapping Exons
