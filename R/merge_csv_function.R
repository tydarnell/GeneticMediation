#' Merge CSV
#'
#' @description merge multiple csv files into a single dataframe
#' @param path path to folder containing csv files
#' @keywords merge csv
#' @export

merge_csv = function(path){
  filenames=list.files(path=path, full.names=TRUE)
  data.table::rbindlist(lapply(filenames, data.table::fread),fill = T)
}