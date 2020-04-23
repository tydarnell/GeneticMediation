#' Gene Results Prep
#'
#' Mediation analysis gene data prep for a chromosome
#' @param chr chromosome name
#' @param med.data gene mediation data
#' @param matches gene matches dataframe
#' @keywords gene mediation data prep
#' @export
#' @examples
#' gene_res_function()

gene_res = function(chr, med.data, matches) {
    load(paste("mediator/mediation_", chr, "_new.RData", sep = ""))
    n <- ncol(SNP.pc.data)
    SNP.name <- colnames(SNP.pc.data)[-c(1, (n - 4):n)]
    med.res.data <- med.data
    for (j in SNP.name) {
        med.res.data[, j] <- lm(med.res.data[, j] ~ med.data$PC1 + med.data$PC2 + med.data$PC3)$res
    }
    save(med.res.data, matches, file = paste("data/gene.res/res_", chr, ".RData", sep = ""))
}
