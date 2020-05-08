#' Significant SNP-Peak-Gene
#'
#' @description Obtain mediation results for significant SPG match for a chromosome as a list.
#'  This is needed for sensitivity analysis
#' @param chr 
#' @param sig_matches 
#' @export

sig_spg <-  function(chr,sig_matches) {
  sig=subset(sig_matches,Chr==chr,select = -Chr)
  load(paste0("data/spg.res/res_",chr,".RData"))
  res.list = vector(mode = "list")
  size=dim(sig)[1]
  for (i in seq_len(size)) {
    row=purrr::as_vector(sig[i,])
    ans=med_results_spg(med.res.data,row)
    res.list[[i]] = ans
  }
  res.list
}