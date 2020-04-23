#' Gene Mediation Table
#'
#' Create a mediation table for one match in the gene data
#' @param med_dat gene mediation data
#' @param match_row row in match dataframe: col1 SNP, col2 peak, col3 gene
#' @param simulations number of simulations to run
#' @keywords mediation table
#' @export
#' @examples
#' gene_mediation_table_function()

gene_mediation_table = function(med_dat, match_row, simulations) {
    a = match_row[1]
    m = match_row[2]
    gene = match_row[3]
    covar <- "+age+membership+PC1+PC2+PC3"
    fm1 <- paste(m, "~", a, covar, sep = " ")
    med.fit <- lm(fm1, data = med_dat)
    fm2 <- paste(gene, "~", m, "+", a, covar, sep = " ")
    out.fit <- lm(fm2, data = med_dat)
    med.out <- mediation::mediate(med.fit, out.fit, treat = a, mediator = m, sims = simulations)
    out = data.frame(med = m, causal = a, Y = gene, ineffect = med.out$d.avg, in.p = med.out$d.avg.p, 
        dieffect = med.out$z.avg, di.p = med.out$z.avg.p, AinMvA.coef = coef(med.fit)[a], AinMvA.p = summary(med.fit)[[4]][a, 
            4], coef.A = coef(out.fit)[a], pA = summary(out.fit)[[4]][a, 4], coef.M = coef(out.fit)[m], 
        pM = summary(out.fit)[[4]][m, 4])
    return(out)
}


