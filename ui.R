shinyUI(fluidPage(
  titlePanel("Linear Regression Demo"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Provide input values for regression model."),
      
      selectInput("var", 
                  label = "Choose Linear or Logistic Regression to display",
                  choices = c("Linear Regression", "Logistic Regression"),
                  selected = "Linear Regressioin"),
      
      textInput("inputA", label = h3("Input A (comma delimited numeric)"), 
                value = "1, 2, 3"),
      textInput("inputB", label = h3("Input B (comma delimited numeric"), 
                value = "1.1, 2.2, 3.3"),
      submitButton("Submit")

      ),
    
    mainPanel(
      textOutput("txtPlot"),
      plotOutput("lmPlot")
    )
  )
))