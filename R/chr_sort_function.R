#' Chromosome Sort
#'
#'@description Sort chromosomes in ascending order
#'
#' @param Chr character vector of chromosome names
#'
#' @return A character vector, sorted in ascending order of chromosome number
#' @keywords chromosome sort
#' @export
#'
#' @examples
#' Chr=c("chr3","chr7","chr6","chr2")
#' chr_sort(Chr)
chr_sort = function(Chr) {
    as.numeric(substring(Chr, 4))
}
