#' Significant SNP-Peak-Gene
#'
#' @description Returns summary of mediation results for a chr with significant results
#' @param chr chromosome name
#' @keywords mediation spg
#' @export

sig_chr_spg=function(chr){
  load(paste0("data/spg.res/res_",chr,".RData"))
  sig_chr=data.table::fread(paste0("results/sig_",chr,".csv"))
  res=vector(mode="list")
  size=dim(sig_chr[1])
  for (row in seq_len(size)) {
    res[[row]]=summary(mediation_spg(med.res.data,match_row =matches[row,]))
  }
  res
}
