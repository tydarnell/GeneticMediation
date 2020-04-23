#' Mediation Table Chromosome
#'
#' Create a table of mediation results for all peak-SNP matches in a chromosome
#' @param matches SNP-peak matches dataframe for a chromosome
#' @param med.res.data mediation data
#' @param covar covariates string, separate covariates with +
#' @param outcome outcome character variable
#' @param simulations number of simulations to run
#' @keywords mediation table
#' @export
#' @examples
#' mediation_table_chr_function()

mediation_table_chr = function(matches, med.res.data, covar, outcome, simulations) {
    data.table::rbindlist(apply(matches, 1, mediation_table, med.res.data = med.res.data, covar = covar, 
        outcome = outcome, simulations = simulations))
}
