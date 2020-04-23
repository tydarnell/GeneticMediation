#' Clean Data
#'
#' Clean snp.info and peak.info data and save as RData file
#' @param snp.info SNP information dataframe
#' @param peak.info Peak annotation dataframe
#' @keywords peak SNP clean data
#' @export
#' @examples
#' clean_data_function()

clean_data = function(snp.info, peak.info) {
    snp.info = subset(snp.info, select = c(V1, V2, V4, V6, V7))
    colnames(snp.info) = c("Chr", "snp.loc", "snp.name", "start", "end")
    colnames(peak.info) = c("DomainID", "Chr", "start", "end", "Width", "Classification", "MedianCount", 
        "DetectedInNumSamples")
    peak.info$Chr = paste("chr", peak.info$Chr, sep = "")
    save(snp.info, peak.info, file = "data/chipseq.RData")
}
