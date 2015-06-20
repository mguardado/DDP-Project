shinyUI(pageWithSidebar(
  headerPanel("Probability you have watched the Lion King"),
  sidebarPanel(
    h4('The intention of this app is to determine the probability'),
    h4('that you have watched the movie "The Lion King" based on your birthday'),
    h4('So, lets do this!, tell us when is your birthday :)'),
    dateInput("date", "Date you were born", value="1980-01-01", startview="decade"),
    submitButton('Submit')
  ),
  mainPanel(h4('This is the date you entered'),
            h4('Your birthday'),
            verbatimTextOutput("odate"),
            h4('And here is the probability you have watched the movie "The Lion King", given your birth date'),
            verbatimTextOutput("prob")
  )
))