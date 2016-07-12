#2016-07-07 Developing data products 
#Author Field

shinyUI(
  fluidPage(
    headerPanel("How to burn your calories effectively"),
    sidebarPanel(
      numericInput('Weight','Weight kg',70, min = 50, max = 200, step = 1),
      numericInput('Height','Height cm',170, min = 50, max = 250, step = 1),
      numericInput('Waist','Waist cm',80, min = 50, max = 150, step = 1)
    ),
    mainPanel(
      h2('Your basal metabolic rate'),
      verbatimTextOutput("Your basal metabolic rate"),
      h3('Sensitivity analysis of your weight'),
      plotOutput('Sensitivity of weight'),
      h3('Sensitivity analysis of your waist'),
      plotOutput('Sensitivity of waist')

    )
  )
)