#' Sum Zero
#'
#' @description Get names of columns that have a sum of zero
#' @param df dataframe
#' @keywords helper
#' @export

sum_zero=function(df){
  names(which(colSums(df)==0))
}