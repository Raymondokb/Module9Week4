#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
suppressMessages(library(kernlab));
suppressMessages(library(caret));
suppressMessages(library(rpart));
suppressMessages(library(rattle));
suppressMessages(library(randomForest))
suppressMessages(library(e1071))

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    #Using iris dataset
    set.seed(1)
    data(iris)
    
    #get Input from radiobuton
    alg_type <- input$dist_alg

    #Machine learning algorithms x3 (lm, rpart, randomForest)
    control <- trainControl(method = "cv", number = 5)
    
    index_train <- createDataPartition(iris$Species, p = input$bins/100, list=FALSE)
    training1 <- iris[index_train, ]
    testing1 <- iris[-index_train, ]
    
    modFit_alg <- train(Species ~., data=training1, method=alg_type)
    predict_alg <- predict(modFit_alg, testing1)
    conf_alg <- confusionMatrix(testing1$Species, predict_alg)
    matrix_table <- confusionMatrix(testing1$Species, predict_alg)$table
    accuracy_alg <- conf_alg$overall[1]
    #Output the accuracy, and matrix table of accuracy
    output$table <- renderDataTable(matrix_table)
    #Output the numeric accuracy
    output$Accuracy <- renderText(paste(round(accuracy_alg * 100,4), "%",sep=""))
  })
})
