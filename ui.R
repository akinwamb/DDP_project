
######################################
###### Shiny Application - ui.R ######
######################################

## The application create a histogram of gas mileage
## from the mtcars dataset and put a slider to allow
## the application users guess the mean

library(shiny)

shinyUI(pageWithSidebar(
   headerPanel("Gas Mileage Plot"),
   sidebarPanel(
    sliderInput('mu', 'Guess at the mean',value = 20, min = 10, max = 35, step = 0.03,)
   ),
   mainPanel(
    plotOutput('newHist')
   )
))