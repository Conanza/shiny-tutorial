library(shiny)

shinyUI(fluidPage(
  titlePanel(h1(strong("It's So Shiny"))),

  sidebarLayout(
    sidebarPanel(
      h3(strong("Installation")),
      p("Shiny is available on CRAN, so you can install it in the usual way from your R console:"),
      code('install.packages("shiny")'),
      br(),
      br(),
      br(),
      br(),
      div(img(src = "bigorb.png", height = 50, width = 50), "shiny is a product of", a("RStudio", href="https://www.rstudio.com/"))
    ),
    
    mainPanel(
      h1(strong("Introducing Shiny")),
      p("Shiny is a new package from RStudio that makes it", em("incredibly"), "easy to build interactive web applications with R."),
      br(),
      p("For an intro and examples, visit the", a("Shiny Homepage", href="http://shiny.rstudio.com/")),
      h2(strong("Features")),
      tags$ul(
        tags$li("Build useful webapps with only a few lines of code -- no JavaScript required. :("),
        tags$li("Shiny apps are automatically live")
      )
    )
  )
))
