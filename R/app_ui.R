#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @import bslib
#' @noRd
app_ui <- function(request) {
  bootstrapPage(
    theme = bs_theme(version = 5),
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    page_navbar(
      title = "tally",
      nav_panel(
        title = "Session info",
        textInput(
          inputId = "technician",
          label = "Technician name"
        ),
        dateInput(
          inputId = "entry_date",
          label = "Date"
        ),
        textInput(
          inputId = "pond_code",
          label = "Pond Name"
        ),
      ),
      nav_panel(
        title = "Species codes",
        h1("Species codes"),
        fileInput(
          inputId = "species_codes",
          label = "Add your species codes",
          multiple = FALSE,
          accept = c(
            "text/csv",
            "text/comma-separated-values",
            ".csv"
          )
        ),
        tableOutput(outputId = "tbl_species_codes")
      ),
      nav_panel(
        title = "Data Input",
        # golem::golem_welcome_page() # Remove this line to start building your UI
        h1("Data Input"),
        h2("Data entry"),
        textInput(
          inputId = "raw_data",
          label = "Enter counts",
          updateOn = "change"
        ),
        tableOutput(outputId = "tbl_counts"),
        br(),
        downloadButton("downloadCounts", "Download Counts")
      ),
      nav_panel(
        title = "Vignette"
      ),
      nav_panel(
        title = "Acknowledgements",
        verbatimTextOutput(outputId = "citation")
      ),
      footer = card_footer(input_dark_mode())
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "tally"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
