#' Chromosome Sort
#'
#'@description Return the numeric chromosome number, useful for sorting chromosomes
#'
#' @param Chr character vector of chromosome names
#'
#' @return A numeric vector of chromosome numbers
#' @keywords chromosome sort
#' @export
#'
#' @examples
#' chr_sort(Chr)
chr_sort = function(Chr) {
    as.numeric(substring(Chr, 4))
}
