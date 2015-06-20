lionprob <- function(date) {
  liondate <- as.Date("1999-06-15")
  t <- as.numeric(date-liondate)/365
  p <- 1/(1+exp(0.2*(t-5)))*100
  p <- round(p,digits=2)
  paste(p,"%")
}

shinyServer(
  function(input, output) {
    output$odate <- renderPrint({input$date})
    output$prob <- renderPrint({lionprob(input$date)})
  }
)