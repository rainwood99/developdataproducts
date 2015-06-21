# server.R

shinyServer(function(input, output) {
  
  output$lmPlot <- renderPlot({
    inputA <- as.numeric(strsplit(input$inputA, ",")[[1]])
    inputB <- as.numeric(strsplit(input$inputB, ",")[[1]])
    
    if (input$var == "Linear Regression")
    {
      fit <- lm(inputA ~ inputB)
      plot(inputA, inputB)
      abline(coef(fit), col='red')
    }
    else if (input$var == "Logistic Regression")
    {
      fit <- glm(inputA ~ inputB)
      plot(inputA, inputB)
      abline(coef(fit), col='green')
    }
    else {
      fit <- lm(inputA ~ inputB)
      plot(inputA, inputB)
      abline(coef(fit), col='red')
    }
    
    

  })
  
  output$txtPlot = renderText({
    test <- input$var
    test
    
  })
}
)
