#' Match All Chromosomes
#'
#' @description Match SNPs and Peaks in all chromosomes,
#' save as "data/matches.csv"
#' @param snp.info SNP information
#' @param peak.info Peak information
#' @param chrs character vector of chromosome names
#' @keywords match peak SNP
#' @export

match_all <- function(snp.info, peak.info, chrs) {
    match.list = vector(mode = "list")
    for (chr in chrs) {
        snps = subset(snp.info, Chr == chr)
        peaks = subset(peak.info, Chr == chr)
        chr_match = match_chr(snps, peaks)
        match.list[[chr]] = chr_match
    }
    matches = data.table::rbindlist(match.list, idcol = "Chr")
    readr::write_csv(matches,"data/matches.csv")
}
