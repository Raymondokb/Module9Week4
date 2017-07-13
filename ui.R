#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Choose your method of machine learning algorithm"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Percentage of training data (%):",
                   min = 50,
                   max = 98,
                   value = 70),
      #to choose one of the machine learning algorithms
      radioButtons("dist_alg", "Model type:",
                   c("Linear Method" = "lda",
                     "Classification Tree" = "rpart",
                     "Random Forest" = "rf"
                     ))
      ),
    # Show a plot of the generated distribution
    mainPanel(
      #Table output of calculation matrix
       column(12,
              dataTableOutput('table')),
       h3("Accuracy of machine learning algorithm"),
       #Accuracy of % of training data and model type
       textOutput('Accuracy'),
       plotOutput("distPlot")
    )
  )
))
