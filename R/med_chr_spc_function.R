#' SNP-Peak-Clinical Mediation Table Chromosome
#'
#' @description Create SNP-Peak-Clinical mediation table for SNP-Peak matches in a chromosome
#' @param matches SNP-Peak matches dataframe for a chromosome
#' @param med.res.data mediation data
#' @param covar covariates string, separate covariates with +
#' @param simulations number of simulations to run
#' @keywords mediation spc
#' @export

med_chr_spc <- function(matches, med.res.data, covar, simulations) {
    data.table::rbindlist(apply(matches, 1, med_table_spc, med.res.data = med.res.data, covar = covar, 
                                simulations = simulations))
}
