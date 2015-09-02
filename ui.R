shinyUI(fluidPage(
  titlePanel(h1("censusVis")),
  sidebarLayout(
    sidebarPanel(
      helpText(
        "Create demographic maps with with information from the 2010 US Census."
      ),
      selectInput(
        inputId = "ethnicity",
        label = "Choose a variable to display",
        choices = list(
          "percent white", 
          "percent black", 
          "percent hispanic", 
          "percent asian"
        ),
        selected = "percent asian"
      ),
      sliderInput(
        inputId = "interest",
        label = "Range of interest:",
        min = 0,
        max = 100,
        value = c(0, 100),
        ticks = FALSE
      )
    ),
    mainPanel()
  )
  
  
))