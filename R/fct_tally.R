#' tally
#'
#' @description counts all symbols entered in the Shiny app
#'
#' @returns A data.frame with counts
#'
#' @noRd
tally <- function(input) {
  as.data.frame(
    base::table(
      base::strsplit(x = input, split = "", fixed = FALSE, perl = TRUE),
      dnn = c("Species")
    )
  )
}
