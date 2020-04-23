#' Last to First
#'
#' Make the last column the first column
#' @param df  dataframe
#' @keywords last first column 
#' @export
#' @examples
#' last_to_first_function()

last_to_first = function(df) {
    df[, c(ncol(df), 1:ncol(df) - 1)]
}
