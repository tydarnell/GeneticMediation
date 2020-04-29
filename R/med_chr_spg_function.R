#' SNP-Peak-Gene Mediation Table Chromosome
#'
#' @description Create a SNP-Peak-Gene mediation table for a chromosome
#' @param chr chromosome name
#' @param gene_matches list of peak-SNP matches for each gene
#' @param covar covariates string, separate covariates with +
#' @param simulations number of simulations to run
#' @keywords mediation table
#' @export

med_chr_spg <-  function(chr, gene_matches,covar, simulations) {
    res.list = vector(mode = "list")
    for (i in seq_along(matches_by_gene)) {
        ans = data.table::rbindlist(apply(gene_matches[[i]], 1, med_table_spg,
                                          med.res.data = med.res.data, covar=covar, simulations = simulations))
        res.list[[i]] = ans
    }
    results = data.table::rbindlist(res.list, idcol = "Chr")
    results
}
