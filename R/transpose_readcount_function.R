#' Transpose Readcount
#'
#' Transpose ChIP-seq Reacount dataframe and match project id
#' @param readcount ChIP-seq readcount dataframe
#' @keywords transpose readcount
#' @export
#' @examples
#' transpose_readcount_function()

transpose_readcount = function(readcount) {
    projid = as.numeric(colnames(readcount)[-1])
    colnames(readcount) = c("DomainID", projid)
    peaks = readcount$DomainID
    readcount.t = data.frame(t(readcount))[-1, ]
    readcount.t$projid = projid
    readcount.t = last_to_first(readcount.t)
    colnames(readcount.t) = c("projid", peaks)
    readcount.t
}
