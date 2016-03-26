library(shiny)
data(women)


height_list<-women$height

shinyServer(function(input, output){
  #Drop-down selection list for height
  output$choose_height <- renderUI({
    selectInput("height", "Height Choice", as.list(height_list))
  })
  
  output$inp_height <- renderText({
    dat<- subset(women, height == input$height)
    paste("Height:", dat$height)
  })
  
  output$inp_weight <- renderText({
    dat<- subset(women, height == input$height)
    paste("Weight:", dat$weight)
  })
  
  output$calc_bmi <- renderText({
    dat<- subset(women, height == input$height)
    bmi<-(dat$weight * 0.45)/((dat$height * .025)^2)
    paste("Calculated standard BMI", bmi)
  })
  
})