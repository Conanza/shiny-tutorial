shinyUI(fluidPage(
  titlePanel("Census App"),
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with info from the 2010 US Census."),
      selectInput(
        inputId = "var",
        label = "Choose a variable to display",
        choices = list(
          "percent white",
          "percent black",
          "percent hispanic",
          "percent asian"
        ),
        selected = "percent white"
      ),
      sliderInput(
        inputId = "range",
        label = "Range of Interest:",
        min = 0,
        max = 100,
        value = c(0, 100),
        ticks = FALSE
      )
    ),
    mainPanel(
      plotOutput(outputId = "map")
    )  
  )
))