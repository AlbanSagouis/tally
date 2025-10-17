#' tally
#'
#' @description counts key strokes entered in the Shiny app
#'
#' @returns A data.frame with counts
#'
#' @noRd
tally <- function(input) {
  # checkmate::assert_character(input)

  base::strsplit(x = input, split = "", fixed = FALSE, perl = TRUE) |>
    base::table(dnn = c("Species"))
}
