library(shiny)

shinyServer(function(input, output) {
  output$text1 <- renderText({
    paste(
      "the min of the range is", input$range[1],
      "the max of the range is", input$range[2]
    )
  })
  
  output$text2 <- renderText(
    {
      paste("you've selected the var", input$var)
    }
  )
})