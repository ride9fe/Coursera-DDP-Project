library(shiny)
library(UsingR)
# data(galton)

shinyServer(
  function(input, output) {
    output$newchart <- renderPlot({
    Published <- c(4, 5, 8)
    plot(Published, type="o", col="blue", ylim=c(0,20), ann=FALSE)
    title(main="Actual Dividends vs Published Dividends", col.main="blue", font.main=4)
    title(xlab="Year", col.lab=rgb(0,0.5,0))
    title(ylab="Percentage", col.lab=rgb(0,0.5,0))
    
          id1 <- (0.1/input$id1)*100
          id2 <- (0.15/input$id2)*100
          id3 <- (0.2/input$id3)*100
#           id4 <- (0.1/input$id1)*100
#           id5 <- (0.1/input$id1)*100
    
          Real <- c(id1, id2, id3)
          lines(Real, type="o", pch=22, lty=5, col="red")
    
    # Create a legend at (1, -1.2) that is slightly smaller 
    # (cex) and uses the same line colors and points used by 
    # the actual plots
    legend(1, 20, c("Published","Real"), cex=1, 
           col=c("blue","red"), pch=21:22, lty=1:2);     
          
          
    })
    
  }
)

#     output$newchart <- renderPlot({
#       
#       # hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
#       id1 <- input$id1
#       id2 <- input$id2
#       Real <- c(id1, id2, 5, 6, 8)
#       lines(Real, type="o", pch=22, lty=2, col="red")
#       
#       
#       lines(c(mu, mu), c(0, 200),col="red",lwd=5)
#       mse <- mean((galton$child - mu)^2)
#       text(63, 150, paste("mu = ", mu))
#     text(63, 140, paste("MSE = ", round(mse, 2)))
# 
# 
# 
# 
# shinyServer(
#   function(input, output) {
#     output$newHist <- renderPlot({
#       hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
#       mu <- input$mu
#       lines(c(mu, mu), c(0, 200),col="blue",lwd=5)
#       mse <- mean((galton$child - mu)^2)
#       text(63, 150, paste("mu = ", mu))
#       text(63, 140, paste("MSE = ", round(mse, 2)))
#     })
#     
#   }
# )