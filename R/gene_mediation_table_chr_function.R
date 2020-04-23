#' Gene Mediation Table Chromosome
#'
#' Create a mediation table for an entire chromosome of gene data
#' @param chr chromosome name
#' @param matches_by_gene list of peak-SNP for each gene
#' @param simulations number of simulations to run
#' @keywords gene mediation table
#' @export
#' @examples
#' gene_mediation_table_chr_function()

gene_mediation_table_chr = function(chr, matches_by_gene, simulations) {
    res.list = vector(mode = "list")
    for (i in seq_along(matches_by_gene)) {
        ans = rbindlist(apply(matches_by_gene[[i]], 1, gene_mediation_table, med_dat = med.res.data, 
            simulations = simulations))
        res.list[[i]] = ans
    }
    results = data.table::rbindlist(res.list, idcol = "Chr")
    results
}
