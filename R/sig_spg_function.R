#' Significant SNP-Peak-Gene
#'
#' @description Returns summary of mediation results for a row in significant data frame
#' @param sig_dat significant results dataframe
#' @param position row in data frame
#' @keywords mediation spg
#' @export

sig_spg=function(sig_dat,row){
  chr_index=sig_dat[position,]$Chr
  load(paste0("data/spg.res/res_chr",chr_index,".RData"))
  res=mediation_spg(med.res.data,match_row =matches[row,])
  summary(res)
}
