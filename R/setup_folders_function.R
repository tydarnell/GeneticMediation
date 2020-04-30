#' Setup Folders
#'
#' @description Creates data, data/mediator, results folders
#' @keywords setup
#' @export

setup_folders=function(){
  make_folder("data")
  make_folder("data/mediator")
  make_folder("results")
}
