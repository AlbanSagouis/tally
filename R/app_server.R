#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @importFrom utils citation
#' @importFrom utils installed.packages
#' @importFrom readr read_delim
#' @importFrom readr write_csv
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic

  ## Species codes
  species_codes <- eventReactive(
    input$species_codes,
    read_delim(
      file = input$species_codes$datapath,
      col_types = "ci",
      show_col_types = FALSE,
    )
  )
  output$tbl_species_codes <- renderTable(species_codes())

  ## Counts
  output$tbl_counts <- renderTable(expr = tally(input$raw_data))

  ## Download counts
  output$downloadCounts <- downloadHandler(
    filename = function() {
      paste0(
        paste(
          "counts",
          input$pond_code,
          input$technician,
          input$entry_date,
          sep = "_"
        ),
        ".csv"
      )
    },
    content = function(fname) {
      write_csv(x = tally(input$raw_data), file = fname)
    },
    contentType = "text/csv"
  )

  ## Acknowledgements
  output$citation <- renderPrint(citation(package = "tally"))
  output$version <- renderText(paste(
    "tally version ",
    installed.packages()["tally", "Version"]
  ))
}
