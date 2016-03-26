
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#


shinyUI(pageWithSidebar(
  
  headerPanel("Choose a height (in inches) to calculate standard BMI"),
  
  sidebarPanel(
    uiOutput("choose_height")
  ),
  
  mainPanel(
      h4('Developing Data Products Project'),
      strong('Summary'),
      p("For my Developing Data Products course project I developed an shiny app that utilizes the women dataset."),
      strong('Application Purpose.'),
      p("The purpose of this application is to calculate the standard Body Mass Index (BMI) for women for each height (in inches) the user chooses from the available heights in the women dataset. After choosing a height, the application will display the associated height and weight from the dataset along with the calculated BMI."),
      strong('Viewing and Running the App'),
      p("The shiny application can be run from here"),
      a("http://sjlewis75.shinyapps.io/DataProductsProject/"),
      p("The list is defaulted to the first element in the drop down list and the associated height, weight and BMI are displayed. As the user selects different values from the drop down list, the associated height, weight and calculated BMI are displayed. BMI is calculated using a standard algorithm."),
      p("The source code and more detailed instructions can be found at github."),
      a("http://www.github.com/sjlewis75/DataProductsProject/"),
      tags$br(),
      tags$br(),
      
      textOutput("inp_height"),
      textOutput("inp_weight"),
      textOutput("calc_bmi")
  )
))