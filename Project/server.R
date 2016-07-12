shinyServer(function(input,output){
  output$'Sensitivity of weight' <- renderPlot({
    calburnbase1 <- 8*input$Height+2*(150-input$Waist)
    calburn1 <- calburnbase1 + 50:200
    plot(calburn1, 50:200, xlab = "Weight cm", ylab = "Calory burn kcal")
  })
  output$'Sensitivity of waist' <- renderPlot({
    calburnbase2 <- 8*input$Height+5*input$Weight
    calburn2 <- calburnbase2 + 50:150
    plot(calburn2, 50:150, xlab = "Waist cm", ylab = "Calory burn kcal")
  })
    temp <- reactive({8*as.numeric(input$Height)+5*as.numeric(input$Weight)+2*(150-as.numeric(input$Waist))})
    output$'Your basal metabolic rate' <- renderText({temp()})
  
})