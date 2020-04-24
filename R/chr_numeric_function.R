#' Chromosome Numeric
#'
#' @description Convert chromosome names from character to numeric.
#' Useful when sorting a dataframe by chromosome number.
#' @param Chr a character column or vector of chromosome names
#' @keywords chromosome numeric
#' @export

chr_numeric <- function(Chr) {
    as.numeric(substring(Chr, 4))
}
