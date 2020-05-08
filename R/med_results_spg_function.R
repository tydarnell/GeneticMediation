#' Mediation Results SNP-Peak-Gene
#'
#' @description Obtain Mediation Results for Sensitivity Analysis
#' @param med.res.data mediation data
#' @param match_row row of SNP-Peak-Gene matches

#' @export

med_results_spg <- function(med.res.data, match_row) {
  match_row=purrr::as_vector(match_row)
  covar = "age+membership+PC1+PC2+PC3"
  a = match_row[1]
  m = match_row[2]
  gene = match_row[3]
  fm1 <- paste(m, "~", a, "+", covar, sep = " ")
  med.fit <- stats::lm(fm1, data = med.res.data)
  fm2 <- paste(gene, "~", m, "+", a, "+", covar, sep = " ")
  out.fit <- stats::lm(fm2, data = med.res.data)
  med.out <- mediation::mediate(med.fit, out.fit, treat = a, mediator = m, sims =1000)
  med.out
}