library(shiny)
library(caret)
shinyUI (
  pageWithSidebar (
    headerPanel ("Predict Your Vehicle's MPG"),
    sidebarPanel (
      numericInput('cyl', 'Number of Cylinders', 6, min = 4, max= 8, step = 1),
      numericInput('disp', 'Displacement (cu.in.)', 190, min = 70, max= 480, step = 10),
      numericInput('hp', 'Gross horsepower', 100, min = 50, max= 350, step = 10),
      numericInput('drat', 'Rear axle ratio', 4, min = 2, max= 5, step = 0.5),
      numericInput('wt', 'Weight (lb/1000)', 3, min = 1, max= 6, step = 0.5),
      numericInput('qsec', '1/4 mile time', 17, min = 10, max= 25, step = 1),
      numericInput('vs', 'V/S', 0.2, min = 0, max= 1, step = 0.05),
      numericInput('am', 'Transmission (0 = automatic, 1 = manual)', 0, min = 0, max= 1, step = 1),
      numericInput('gear', 'Number of forward gears', 4, min = 3, max= 5, step = 1),
      numericInput('carb', 'Number of carburetors', 2, min = 1, max= 8, step = 1),
      submitButton('Submit')
    ),
    mainPanel (
      h2 ('Illustrating Prediction:'),
      h4 ('According to the values you entered'), 
      h4 ('Your Vehicle\'s Predicted MPG:'),
      textOutput("prediction")
    )
  )
)