#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @importFrom utils citation
#' @importFrom utils write.csv
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic

  # values$tbl_counts <- tally(input$raw_data)
  output$tbl_counts <- renderTable(expr = tally(input$raw_data))

  output$citation <- renderPrint(citation(package = "tally"))

  ## Download counts
  output$downloadCounts <- downloadHandler(
    filename = function() {
      paste("counts_.csv", sep = "") # will receive session number XXXXXXXXXXXXXX
    },
    content = function(fname) {
      write.csv(tally(input$raw_data), file = fname)
    },
    contentType = "text/csv"
  )
}
