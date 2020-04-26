#' Match SNPs and Peaks
#'
#' @description Match SNPs and Peaks in a chromosome
#' @param snp.info SNP information for chr
#' @param peak.info Peak information chr
#' @keywords match peak SNP
#' @export

match_snp_peak <- function(snp.info, peak.info) {
    peak.ir = IRanges::IRanges(start = peak.info$start, end = peak.info$end, names = peak.info$DomainID)
    snp.ir = IRanges::IRanges(start = snp.info$start, end = snp.info$end, names = snp.info$snp.name)
    ov = IRanges::findOverlapPairs(snp.ir, peak.ir)
    match = as.data.frame(ov)
    matches = data.frame(snp.name = match$first.names, peak.name = match$second.names)
    matches
}
