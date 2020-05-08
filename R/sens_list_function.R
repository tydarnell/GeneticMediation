#' Sensitivity List
#'
#' @description Sensitivity analysis list
#' @param res 
#'
#' @export

sens_list=function(res){
  sens.list=vector(mode="list")
  for (i in 1:length(res)) {
    ans=tryCatch(expr = {sens_summary(res,i)},error=function(e){})
    sens.list[[i]]=ans
  }
  sens.list
}