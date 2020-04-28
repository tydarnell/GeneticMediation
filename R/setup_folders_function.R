#' Setup Folders
#'
#' @description Creates data, data/mediator, results folders
#' @keywords setup folder
#' @export

setup_folders=function(){
  make_folder("data")
  make_folder("data/mediator")
  make_folder("results")
}
