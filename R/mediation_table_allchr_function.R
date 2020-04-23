#' Mediation Table all Chromosomes
#'
#' Create a table of mediation results for a character vector of chromosome names
#' @param chrs character vector of chromosome names
#' @param folderpath path to mediation results folder
#' @param covar covariates character variable, separate covariates with +
#' @param outcome outcome variable string
#' @param simulations number of simulations to run
#' @keywords mediation table
#' @export
#' @examples
#' mediation_table_allchr_function()

mediation_table_allchr = function(chrs, folderpath, covar, outcome, simulations) {
    all.list = vector(mode = "list", length = length(chrs))
    for (chr in chrs) {
        load(paste(folderpath, "res_", chr, ".RData", sep = ""))
        med_dat = med.res.data
        ans = mediation_table_chr(matches, med_dat, covar, outcome, simulations)
        all.list[[chr]] = ans
    }
    data.table::rbindlist(all.list, idcol = "Chr")
}
