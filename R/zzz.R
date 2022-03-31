.onLoad <- function(libname, pkgname) {
  sysfonts::font_add(family = "fontawesome-webfont",
                     regular = system.file("app", "www", "fonts", "fontawesome-webfont.ttf",
                                           package = 'FontAwesomeShinyApp'))
  showtext::showtext_auto()
}





