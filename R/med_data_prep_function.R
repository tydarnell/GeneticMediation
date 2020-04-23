#' Mediation Data Prep
#'
#' Combine projid, SNPs, PCs, membership, age, gender, peaks, and outcome data for a chromosome
#' @param chr chromosome name
#' @keywords mediation data prep
#' @export
#' @examples
#' med_data_prep_function()

med_data_prep = function(chr) {
    load(paste("mediator/mediation_", chr, "_new.RData", sep = ""))
    load(paste("data/peak.data_", chr, ".RData", sep = ""))
    SNP.cov.data <- merge(SNP.pc.data, phenotype.data[, c("projid", "gender")], by = "projid", all = F)
    disease.data <- phenotype.data[, c("projid", "plaq_n_sqr")]
    
    med.data <- Reduce(function(x, y) merge(x, y, all = F, by = "projid"), list(SNP.cov.data, peak.data, 
        disease.data))
    med.data <- unique(med.data)
    med.data$membership <- factor(med.data$membership)
    med.data$gender <- factor(med.data$gender)
    med.data
}
