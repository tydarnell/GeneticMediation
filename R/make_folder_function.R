#' Make Folder
#'
#' @description Make a folder only if the folder does not already exist
#' @param path path for new folder
#' @keywords folder
#' @export

make_folder <- function(path) {
    invisible(ifelse(!dir.exists(file.path(path)), dir.create(file.path(path)), FALSE))
}
