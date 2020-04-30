#' Match SNPs Peaks All Chromosomes
#'
#' @description Match SNPs and Peaks in all chromosomes and 
#'   return dataframe of matches
#' @param snp.info SNP information
#' @param peak.info Peak information
#' @param chrs character vector of chromosome names
#' @keywords match
#' @export

match_all <- function(snp.info, peak.info, chrs) {
    match.list = vector(mode = "list")
    for (chr in chrs) {
        snps = subset(snp.info, Chr == chr)
        peaks = subset(peak.info, Chr == chr)
        chr_match = match_snp_peak(snps, peaks)
        match.list[[chr]] = chr_match
    }
    matches = data.table::rbindlist(match.list, idcol = "Chr")
    matches$snp.name=as.character(matches$snp.name)
    matches$peak.name=as.character(matches$peak.name)
    matches
}
