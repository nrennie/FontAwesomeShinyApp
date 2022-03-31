#' The app user interface
#' @param request Interanl parameter for {shiny}
#' @noRd

app_ui = function(request) {
  # Define UI for app that draws a histogram ----
  shiny::fluidPage(

    # App title ----
    shiny::titlePanel("Hello Shiny!"),

    # Sidebar layout with input and output definitions ----
    shiny::sidebarLayout(

      # Sidebar panel for inputs ----
      shiny::sidebarPanel(

      ),

      # Main panel for displaying outputs ----
      shiny::mainPanel(

        # Output: Histogram ----
        shiny::plotOutput(outputId = "distPlot")

      )
    )
  )
}
