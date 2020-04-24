#' SNP-Peak-Clinical Data Prep Helper
#'
#' @description Helper function for SNP-Peak-Clinical mediation data. 
#' Combine projid, SNPs, PCs, membership, age, gender, peaks, and outcome data for a chromosome
#' @param chr chromosome name
#' @keywords data
#' @export

data_prep_spc <- function(chr) {
    load(paste("mediator/mediation_", chr, "_new.RData", sep = ""))
    load(paste("data/peak.data_", chr, ".RData", sep = ""))
    SNP.cov.data = merge(SNP.pc.data, phenotype.data[, c("projid", "gender")], by = "projid", all = F)
    disease.data = phenotype.data[, c("projid", "plaq_n_sqr")]
    
    med.data = Reduce(function(x, y) merge(x, y, all = F, by = "projid"), list(SNP.cov.data, peak.data, 
        disease.data))
    med.data = unique(med.data)
    med.data$membership = factor(med.data$membership)
    med.data$gender = factor(med.data$gender)
    med.data
}
