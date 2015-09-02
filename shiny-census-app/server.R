library(shiny)
library(maps)
library(mapproj)
source("helpers.R")

counties <- readRDS("data/counties.rds")

shinyServer(function(input, output) {
  output$map <- renderPlot({
    data <- switch(
      input$var,
      "percent white" = list(counties$white, "red", "% whites"),
      "percent black" = list(counties$black, "black", "% blacks"),
      "percent hispanic" = list(counties$hispanic, "darkgreen", "% hispanics"),
      "percent asian" = list(counties$asian, "darkorange", "% asians")
    )
    
    data$min <- input$range[1]
    data$max <- input$range[2]
    
    do.call(percent_map, data)
  })
})