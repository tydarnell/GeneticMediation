#' Transpose Readcount
#'
#' @description Read in and transpose ChIP-seq Readcount dataframe and match project id
#' @param readcount.path ChIP-seq readcount dataframe file path
#' @keywords transpose readcount
#' @export

transpose_readcount <- function(readcount.path) {
    readcount=suppressWarnings(data.table::fread(readcount.path))
    projid = as.numeric(colnames(readcount)[-1])
    colnames(readcount) = c("DomainID", projid)
    peaks = readcount$DomainID
    readcount.t = data.frame(t(readcount))[-1, ]
    readcount.t$projid = projid
    readcount.t = last_to_first(readcount.t)
    colnames(readcount.t) = c("projid", peaks)
    rownames(readcount.t)=NULL
    readcount.t
}
