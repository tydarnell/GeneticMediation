#' Sensitivity Summary
#'
#' @description Sensitivity Analysis Summary
#' @param res mediation results dataframe
#' @param i row index of dataframe
#'
#' @export

sens_summary=function(res,i){
  summary(mediation::medsens(res[[i]]))
}