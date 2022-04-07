#' The app user interface
#' @param request Internal parameter for {shiny}
#' @noRd

app_ui = function(request) {
  shiny::fluidPage(

    shiny::titlePanel("Font Awesome"),

    shiny::sidebarLayout(

      shiny::sidebarPanel(
        shiny::selectInput("icon_choice", "Choose an icon:",
                    c("User" = "\uf007",
                      "Check" = "\uf00c",
                      "Warning" = "\uf071"))
      ),

      shiny::mainPanel(
        shiny::plotOutput(outputId = "iconPlot")
      )
    )
  )
}
