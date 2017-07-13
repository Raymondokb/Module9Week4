
library(shiny)
# 
# shinyServer(
#      function(input, output) {
#           output$text1 <- renderText({input$text1})
#           output$text2 <- renderText({input$text2})
#           output$text3 <- renderText({
#                ##input$goButton
#                ##isolate(paste(input$text1, input$text2))
#                
#                if(input$goButton ==0) "You have not pressed the button"
#                else if (input$goButton==1) "you pressed it once"
#                else paste("You've pressed it ", input$goButton, " times")
#           })
#      }
# )


########################################################33

# #reactive expressions
# #delayed reactivity with a button
# #submitButton("submit1") #halts reactivityt until submit button is clicked
# 
# shinyServer(function(input, output) {
#      x <- reactive({as.numeric(input$text1) + 100})
#      output$text1 <- renderText({x()    })
#      output$text2 <- renderText({x() + as.numeric(input$text2)})
# }
# )

########################################################33

# shinyServer(function(input, output) {
# 
#      output$text1 = renderText(input$slider2)
#      output$text1a = renderText(input$slider2a)
# })


########################################################33
# shinyServer(function(input, output) {
#      output$plot1 <- renderPlot({
#           set.seed(2016-05-25)
#           number_of_points <- input$numeric
#           minX <- input$sliderX[1]
#           maxX <- input$sliderX[2]
#           minY <- input$sliderY[1]
#           maxY <- input$sliderY[2]
#           dataX <- runif(number_of_points, minX, maxX)
#           dataY <- runif(number_of_points, minY, maxY)
#           xlab <- ifelse(input$show_xlab, "X Axis", "")
#           ylab <- ifelse(input$show_ylab, "Y Axis", "")
#           main <- ifelse(input$show_title, "Title", "")
#           plot(dataX, dataY, xlab=xlab, ylab=ylab,main=main,main,
#                xlim=c(-100,100),ylim=c(-100,100))
#      })
# })

###################################
# library(shiny)
# 
# shinyServer(function(input, output) {
#      
#           output$text1 = renderText(input$slider2 +10)
# })

######################################################3
# library(shiny)
# shinyServer(
#      function(input, output){
#           
#      }
# )
##############################################3
# 
# #
# # This is the server logic of a Shiny web application. You can run the 
# # application by clicking 'Run App' above.
# #
# # Find out more about building applications with Shiny here:
# # 
# #    http://shiny.rstudio.com/
# #
# 
# library(shiny)
# 
# # Define server logic required to draw a histogram
# shinyServer(function(input, output) {
#    
#   output$distPlot <- renderPlot({
#     
#     # generate bins based on input$bins from ui.R
#     x    <- faithful[, 2] 
#     bins <- seq(min(x), max(x), length.out = input$bins + 1)
#     
#     # draw the histogram with the specified number of bins
#     hist(x, breaks = bins, col = 'darkgray', border = 'white')
#     
#   })
#   
# })
