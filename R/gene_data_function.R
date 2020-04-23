#' Gene Data Prep
#'
#' Gene data prep for a chromosome
#' @param chr chromosome name
#' @keywords gene data prep
#' @export
#' @examples
#' gene_data_function()

gene_data = function(chr) {
    load(paste("mediator/mediation_", chr, "_new.RData", sep = ""))
    load(paste("data/peak.data_", chr, ".RData", sep = ""))
    SNP.cov.data <- merge(SNP.pc.data, phenotype.data[, c("projid", "plaq_n_sqr")], by = "projid", 
        all = F)
    disease.data <- phenotype.data[, c("projid", "plaq_n_sqr")]
    genes = unique(subset(genebysnp, Chr == chr)$gene)
    n.gene <- length(colnames(gene.data))
    gene.name <- colnames(gene.data)[-c(n.gene - 1, n.gene)]
    colnames(gene.data)[-c(n.gene - 1, n.gene)] <- paste("g", gene.name, sep = "")
    gene.med = gene.data[, c("projid", "Phase", genes)]
    med.data <- Reduce(function(x, y) merge(x, y, all = F, by = "projid"), list(SNP.cov.data, peak.data, 
        gene.med, disease.data))
    med.data <- unique(med.data)
    med.data$membership <- factor(med.data$membership)
    med.data
}


