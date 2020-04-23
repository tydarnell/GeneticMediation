#' Make Folder
#'
#' Make a folder only if the folder does not exist
#' @param path path for new folder
#' @keywords folder
#' @export
#' @examples
#' make_folder_function()

make_folder = function(path) {
    invisible(ifelse(!dir.exists(file.path(path)), dir.create(file.path(path)), FALSE))
}
