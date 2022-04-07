#' The app user interface
#' @param input,output,session Internal parameter for {shiny}
#' @noRd

app_server = function(input, output, session) {

    output$iconPlot <- shiny::renderPlot({

      plot_data <- data.frame(x = 1,
                              y = 1,
                              label = input$icon_choice)
      # plot
      ggplot2::ggplot() +
        ggplot2::geom_text(data = plot_data,
                  mapping = ggplot2::aes(
                    x = x,
                    y = y,
                    label = label),
                  family='fontawesome-webfont',
                  size = 50) +
        ggplot2::theme_void()

    })
}
