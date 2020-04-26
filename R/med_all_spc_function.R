#' SNP-Peak-Clinical Mediation Table
#'
#' @description Create a table of SNP-Peak-Clinical mediation results
#'  for all chromosomes
#' @param chrs character vector of chromosome names
#' @param covar covariates string, each covariate separated by +
#' @param simulations number of simulations to run
#' @keywords mediation table
#' @export

med_all_spc <- function(chrs, covar, simulations) {
    all.list = vector(mode = "list", length = length(chrs))
    for (chr in chrs) {
        load(paste("data/spc.res/res_", chr, ".RData", sep = ""))
        med_dat = med.res.data
        ans = med_chr_spc(matches, med_dat, covar, simulations)
        all.list[[chr]] = ans
    }
    data.table::rbindlist(all.list, idcol = "Chr")
}
