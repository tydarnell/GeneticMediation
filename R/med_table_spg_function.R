#' SNP-Peak-Gene Mediation Table
#'
#' @description Create a mediation table for one SNP-Peak-Gene match
#' @param med_dat gene mediation data
#' @param match_row row in match dataframe: col1 SNP, col2 Peak, col3 Gene
#' @param simulations number of simulations to run
#' @keywords mediation table
#' @export

med_table_spg <- function(med_dat, match_row, simulations) {
    a = match_row[1]
    m = match_row[2]
    gene = match_row[3]
    covar <- "+age+membership+PC1+PC2+PC3"
    fm1 <- paste(m, "~", a, covar, sep = " ")
    med.fit <- stats::lm(fm1, data = med_dat)
    fm2 <- paste(gene, "~", m, "+", a, covar, sep = " ")
    out.fit <- stats::lm(fm2, data = med_dat)
    med.out <- mediation::mediate(med.fit, out.fit, treat = a, mediator = m, sims = simulations)
    out = data.frame(med = m, causal = a, Y = gene, ineffect = med.out$d.avg, in.p = med.out$d.avg.p, 
        dieffect = med.out$z.avg, di.p = med.out$z.avg.p, AinMvA.coef = stats::coef(med.fit)[a], 
        AinMvA.p = summary(med.fit)[[4]][a,4], coef.A = stats::coef(out.fit)[a], 
        pA = summary(out.fit)[[4]][a, 4], coef.M = stats::coef(out.fit)[m],
        pM = summary(out.fit)[[4]][m, 4])
    out
}


