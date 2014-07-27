
######################################
#### Shiny Application - server.R ####
######################################

## The application create a histogram of gas mileage
## from the mtcars dataset and put a slider to allow
## the application users guess the mean

library(shiny)
data(mtcars)

shinyServer(
  function(input, output) {
   output$newHist <- renderPlot({
    hist(mtcars$mpg, xlab='Gas Mileage', col='lightgray',main='Histogram of MPG')
    mu <- input$mu
    lines(c(mu, mu), c(0, 200),col="green",lwd=3)
    mse <- mean((mtcars$mpg - mu)^2)
    text(25, 12, paste("mu = ", mu))
    text(25, 11, paste("MSE = ", round(mse, 2)))
    })
  }
)