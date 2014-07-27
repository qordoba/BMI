shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("BMICalculator"),
    sidebarPanel(
      numericInput('weight', 'Weight in Kg', 90, min = 40, max = 300, step = 1),
      numericInput('height', 'height in m', 1.8, min = 1.2, max = 2.2, step = 0.01),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      verbatimTextOutput("inputValue2"),
      h4('Which resulted in a calculation of '),
      verbatimTextOutput("BMI")
    )
  )
)