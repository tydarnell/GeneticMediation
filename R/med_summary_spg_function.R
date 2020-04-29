#' Mediation Summary SNP-Peak-Gene 
#'
#' @description Mediation summary for one SNP-Peak-Gene match
#' @param med.res.data gene mediation data
#' @param match_row row in match dataframe: col1 SNP, col2 Peak, col3 Gene
#' @param simulations number of simulations, 1000 by default
#' @keywords mediation summary
#' @export

med_summary_spg <- function(med.res.data, match_row, simulations=1000) {
  names(match_row)=NULL
  covar = "age+membership+PC1+PC2+PC3"
  a = match_row[1]
  m = match_row[2]
  gene = match_row[3]
  fm1 <- paste(m, "~", a, "+", covar, sep = " ")
  med.fit <- stats::lm(fm1, data = med.res.data)
  fm2 <- paste(gene, "~", m, "+", a, "+", covar, sep = " ")
  out.fit <- stats::lm(fm2, data = med.res.data)
  med.out <- mediation::mediate(med.fit, out.fit, treat = a, mediator = m, sims = simulations)
  summary(med.out)
}
