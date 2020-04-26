#' SNP-Peak-Gene Mediation Data Prep
#'
#' @description Prepare a chromosome SNP-Peak-Gene data for mediation analysis data
#' and save as "data/gene.res/res_\code{chr}.RData"
#' @param chr chromosome name
#' @param med.data gene mediation data
#' @param matches SNP-Peak-Gene matches dataframe
#' @param mediator.path path to mediator folder with mediation_chr#_new.RData files
#' @keywords data
#' @export

med.res_spg <- function(chr, med.data, matches,mediator.path) {
    load(paste(mediator.path,"/mediation_", chr, "_new.RData", sep = ""))
    n = ncol(SNP.pc.data)
    SNP.name = colnames(SNP.pc.data)[-c(1, (n - 4):n)]
    med.res.data = med.data
    for (j in SNP.name) {
        med.res.data[, j] = stats::lm(med.res.data[, j] ~ med.data$PC1 + med.data$PC2 + med.data$PC3)$res
    }
    save(med.res.data, matches, file = paste("data/gene.res/res_", chr, ".RData", sep = ""))
}
