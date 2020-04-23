#' Mediation Result Data Prep
#'
#' Mediation analysis data prep for a chromosome
#' @param chr chromosome name
#' @keywords mediation data prep
#' @export
#' @examples
#' med_res_data_function()

med_res_data = function(chr) {
    load(paste("mediator/mediation_", chr, "_new.RData", sep = ""))
    n <- ncol(SNP.pc.data)
    SNP.name <- colnames(SNP.pc.data)[-c(1, (n - 4):n)]
    med.data = med_data_prep(chr)
    med.res.data <- med.data
    for (j in SNP.name) {
        med.res.data[, j] <- lm(med.res.data[, j] ~ med.data$PC1 + med.data$PC2 + med.data$PC3)$res
    }
    med.res.data
}
