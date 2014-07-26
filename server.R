BMI  <- function(weight, height) weight / (height^2)
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$weight})
    output$inputValue2 <- renderPrint({input$height})
    output$BMI <- renderPrint({BMI(input$weight, input$height)})
  }
)