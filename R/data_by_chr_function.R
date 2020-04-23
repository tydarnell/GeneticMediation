#' Data by Chromosome
#'
#' Make RData file containing snp.info, peak.info for each chromosome
#' @param chrs Character vector of chromosomes names with Peak-SNP matches
#' @param snps SNP information dataframe
#' @param peaks Peak information dataframe
#' @keywords Peak SNP data chromosome
#' @export
#' @examples
#' data_by_chr_function()

data_by_chr = function(chrs, snps, peaks) {
    for (chr in chrs) {
        peak.info = subset(peaks, Chr == chr)
        snp.info = subset(snps, Chr == chr)
        save(peak.info, snp.info, file = paste("data/chipseq_", chr, ".RData", sep = ""))
    }
}
