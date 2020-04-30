#' Last to First
#'
#' @description Make the last column the first column in a dataframe
#' @param df  dataframe
#' @keywords helper 
#' @export

last_to_first <- function(df) {
    df[, c(ncol(df), 1:ncol(df) - 1)]
}
