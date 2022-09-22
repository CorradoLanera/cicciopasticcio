
# Here below put your main project's functions ---------------------
#' Import data
#'
#' Function to import the data
#' @param .data_path (chr) path to the raw data to import
#'
#' @return a tibble
import_data <- function(.data_path) {
  file.path(.data_path) |>
    normalizePath() |>
    readr::read_csv(show_col_types = FALSE)
}


preprocess <- function(db) {
  tibble::as_tibble(db)
}

#' Do what matters
#'
#'Do relevant computation only (but...test them!)
#'
#' @param db (data.frame) data source for the relevant computation
#'
#' @return (num) our super amazing result
#' @export
#'
#' @examples
#' relevant_computation(mtcars)
relevant_computation <- function(db) {
  2 * length(db) + 1
}
