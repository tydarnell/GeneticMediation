#' Mediation Result Data Save
#'
#' Save Mediation analysis data and matches for each chromosome
#' @param chrs character vector of chromosome names
#' @param all_matches dataframe of peak-SNP matches for all chromosomes
#' @keywords mediation result data save
#' @export
#' @examples
#' med_res_data_save_function()

med_res_data_save = function(chrs, all_matches) {
    for (chr in chrs) {
        med.res.data = med_res_data(chr)
        matches = subset(all_matches, Chr == chr, select = c(snp.name, peak.name))
        save(med.res.data, matches, file = paste("data/med.res/res_", chr, ".RData", sep = ""))
    }
}
