library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Real Dividend Yield Chart"),
  sidebarPanel(
    #h5(' Documentation: This app tracks the real dividend yield in percentage of stock A. In financial reports, the annual dividend yield is expressed as the dividend per current share price.'),
    h3('Share price for stock A'),
    h5('Published Dividend Yield is shown in blue based on the following stock price'),
    h4('Year 1 = $2.50'),
    h4('Year 2 = $3.00'),
    h4('Year 3 = $2.50'),
    h1('------------------'),
    h3('Your Entry Price:'),
    h5('Real Dividend Yield is shown in red based on your entry price'),
    numericInput('id1', 'Entry Price for Year 1 ($)', 2.5, min = 1, max = 5, step = 1),
    numericInput('id2', 'Entry Price for Year 2 ($)', 3, min = 1, max = 5, step = 1),
    numericInput('id3', 'Entry Price for Year 3 ($)', 2.5, min = 1, max = 5, step = 1)
    
#     numericInput('id4', 'Entry Price for Year 4 ($)', 0, min = 1, max = 5, step = 1),
#     numericInput('id5', 'Entry Price for Year 5 ($)', 0, min = 1, max = 5, step = 1)
    #sliderInput('mu', 'Guess at the mean',value = 70, min = 62, max = 74, step = 0.05,)
  ),
  mainPanel(
    h4(' Instructions for this ShinyApp (Documentation)'),
    h5(' This app tracks the real dividend yield in percentage of stock A. In financial reports, the annual dividend yield is expressed as the dividend per current share price (for the year in our case).'),
    h5(' However, when investors buy a stock, the entry price was not the current price that the financial report uses and thus the dividend yield does not reflect the real dividend of the investor.'),
    h5(' This chart aims to show investors his/her real dividend yield based on the entry price which the investors buy the stock. Note that the stock price fluctuated between $1 - $5 and thus the input value could be in this range '),
    h5(' It can be shown that depending on the entry price, the real dividend yield could be lower than the published price. Thus investor is advised to exercise due diligence when purchasing stock that has high dividend yield.'),
    
    plotOutput('newchart')
  )
))
