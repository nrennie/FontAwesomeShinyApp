#' The app user interface
#' @param input,output,session Interanl parameter for {shiny}
#' @noRd

app_server = function(input, output, session) {
  # Define server logic required to draw a histogram ----

    # Histogram of the Old Faithful Geyser Data ----
    # with requested number of bins
    # This expression that generates a histogram is wrapped in a call
    # to renderPlot to indicate that:
    #
    # 1. It is "reactive" and therefore should be automatically
    #    re-executed when inputs (input$bins) change
    # 2. Its output type is a plot
    output$distPlot <- shiny::renderPlot({

      plot_data <- expand.grid(x = rep(1:10), y = rep(1:10))
      plot_data$label = "\uf007"
      # plot
      ggplot2::ggplot() +
        ggplot2::geom_text(data = plot_data,
                  mapping = ggplot2::aes(
                    x = x,
                    y = y,
                    label = label),
                  family='fontawesome-webfont',
                  size = 6) +
        ggplot2::theme_void()

    })
}
