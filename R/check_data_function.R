#' Check Data
#'
#' @description Checks if the data is in the data folder
#' @keywords setup
#' @export

check_data=function(){
  data_list=c("H3K9acDomains.csv", "ReadCounts.csv","snps.txt","JulyselGeneBySNP.1030.RData" )
  test=file_test(op = "-f",paste0("data/",data_list))
  names(test)=data_list
  test
}

