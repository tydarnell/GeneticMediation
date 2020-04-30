#' Make Folder
#'
#' @description Make a folder only if the folder does not already exist
#' @param path folder path
#' @keywords helper
#' @export

make_folder <- function(path) {
    invisible(ifelse(!dir.exists(file.path(path)), dir.create(file.path(path)), FALSE))
}
