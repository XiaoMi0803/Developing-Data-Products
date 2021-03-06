---
title       : Developing Data Products Course Project
subtitle    : Predicting Vehicle MPG
author      : Y. Guo
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Application description

This application allows drivers to enter some information about their vehicles, and then, they will be able to make predictions for their vehicles' MPG. 



--- .class #id 

## Source

The data used come from the datasets library. 


```r
library(shiny)
library(datasets)
data(mtcars)
head(mtcars,3)
```

```
##                mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4     21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag 21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710    22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
```

--- .class #id 


## The Code


```r
library(caret)
modFit <- train(mpg ~ ., data=mtcars)
```

Fit the data into a linear regression model. This model has a R-squared value of 86.9%, which is very good. We will use this linear regression model to predict the MPG.

--- .class #id 

## Shiny App Intructions

* Insert the values on the left
* Click "Submit" Button!
* You will see the prediction of the MPG on the right

The app can be accessed at:
https://xiaomi0803.shinyapps.io/App-1/
Note: It might turns grey in some machines. If so, try a different machine.






