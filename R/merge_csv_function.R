#' Merge CSV
#'
#' @description merge multiple csv files into a single dataframe
#' @param path path to folder containing csv files
#' @keywords helper
#' @export

merge_csv = function(path){
  filenames=list.files(path=path, full.names=TRUE)
  res=data.table::rbindlist(lapply(filenames, data.table::fread),idcol = "Chr")
  res[,-2]
}