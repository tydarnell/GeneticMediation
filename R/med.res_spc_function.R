#' SNP-Peak-Clinical Mediation Data Prep
#' 
#' @description Prepare a chromosome of SNP-Peak-Clinical data for mediation analysis
#' and save as "data/med.res/res_\code{chr}.RData"
#' @param chr chromosome name
#' @param all_matches dataframe of SNP-Peak matches for all chromosomes
#' @param mediator.path path to mediator folder with mediation_chr#_new.RData files
#' @keywords data prep
#' @export

med.res_spc <- function(chr,all_matches,mediator.path) {
    load(paste(mediator.path,"/mediation_", chr, "_new.RData", sep = ""))
    n <- ncol(SNP.pc.data)
    SNP.name <- colnames(SNP.pc.data)[-c(1, (n - 4):n)]
    med.data = data_prep_spc(chr)
    med.res.data <- med.data
    for (j in SNP.name) {
        med.res.data[, j] <- stats::lm(med.res.data[, j] ~ med.data$PC1 +
                                           med.data$PC2 + med.data$PC3)$res
    }
    matches = subset(all_matches, Chr == chr, select = c(snp.name, peak.name))
    save(med.res.data, matches, file = paste("data/med.res/res_", chr, ".RData", sep = ""))
}
