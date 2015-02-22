library(shiny)
library(caret)
data(mtcars)
modFit <- train(mpg ~ ., data=mtcars)
shinyServer(
  function(input, output) { 
    output$prediction <- renderPrint ({
      cyl = input$cyl
      disp = input$disp
      hp = input$hp
      drat = input$drat
      wt = input$wt
      qsec = input$qsec
      vs = input$vs
      am = input$am
      gear = input$gear
      carb = input$carb
      predict(modFit,data.frame(cyl, disp, hp, drat, wt, qsec, vs,am,gear,carb))})
  }
)