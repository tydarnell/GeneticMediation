#' Clean Data
#'
#' @description Clean snp.info, peak.info data and save as data/chipseq.RData
#' @param snp.path  path to SNP information dataframe
#' @param peak.path path to Peak annotation dataframe
#' @keywords dataprep spc
#' @export

clean_data <- function(snp.path, peak.path) {
    snp.info=data.table::fread(snp.path)
    peak.info=data.table::fread(peak.path)
    snp.info = subset(snp.info, select = c(V1, V2, V4, V6, V7))
    colnames(snp.info) = c("Chr", "snp.loc", "snp.name", "start", "end")
    colnames(peak.info) = c("DomainID", "Chr", "start", "end", "Width", "Classification", "MedianCount", 
        "DetectedInNumSamples")
    peak.info$Chr = paste("chr", peak.info$Chr, sep = "")
    save(snp.info, peak.info, file = "data/chipseq.RData")
}
