#' SNPs and Peaks by Chromosome
#'
#' @description save snp.info, peak.info for each chromosome
#'    as "data/chipseq_\code{chr}.RData"
#' @param chrs Character vector of chromosomes names
#' @param snps SNP information dataframe
#' @param peaks Peak information dataframe
#' @keywords data
#' @export

snp_peak_bychr <- function(chrs, snps, peaks) {
    for (chr in chrs) {
        peak.info = subset(peaks, Chr == chr)
        snp.info = subset(snps, Chr == chr)
        save(peak.info, snp.info, file = paste("data/chipseq/chipseq_", chr, ".RData", sep = ""))
    }
}
