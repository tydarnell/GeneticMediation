#' Mediation Table
#'
#' Create a mediation table for one peak-SNP match
#' @param med.res.data mediation data
#' @param match_row row in match dataframe, should have 2 columns
#' @param covar covariates character variable, separate covariates with +
#' @param outcome outcome character variable
#' @param simulations number of simulations to run
#' @keywords mediation table
#' @export
#' @examples
#' mediation_table_function()

mediation_table = function(med.res.data, match_row, covar, outcome, simulations) {
    a = match_row[1]
    m = match_row[2]
    fm1 <- paste(m, "~", a, "+", covar, sep = " ")
    med.fit <- lm(fm1, data = med.res.data)
    fm2 <- paste(outcome, "~", m, "+", a, "+", covar, sep = " ")
    out.fit <- lm(fm2, data = med.res.data)
    med.out <- mediation::mediate(med.fit, out.fit, treat = a, mediator = m, sims = simulations)
    out = data.frame(med = m, causal = a, Y = outcome, ineffect = med.out$d.avg, in.p = med.out$d.avg.p, 
        dieffect = med.out$z.avg, di.p = med.out$z.avg.p, AinMvA.coef = coef(med.fit)[a], AinMvA.p = summary(med.fit)[[4]][a, 
            4], coef.A = coef(out.fit)[a], pA = summary(out.fit)[[4]][a, 4], coef.M = coef(out.fit)[m], 
        pM = summary(out.fit)[[4]][m, 4])
    return(out)
}
