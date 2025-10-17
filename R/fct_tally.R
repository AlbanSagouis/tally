#' tally
#'
#' @description counts key strokes entered in the Shiny app
#'
#' @returns A data.frame with counts
#'
#' @noRd
tally <- function(input) {
  # checkmate::assert_character(input)

  values <- base::strsplit(x = input, split = "", fixed = FALSE, perl = TRUE)
  values <- base::table(values, dnn = c("Species"))
  as.data.frame(values)
}
