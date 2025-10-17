#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
  output$tbl_counts <- renderTable(expr = tally(input$raw_data))
  output$citation <- renderPrint(utils::citation(package = "tally"))
}
