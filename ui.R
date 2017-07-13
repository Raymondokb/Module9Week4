
library(shiny)
# 
# shinyUI(pageWithSidebar(
#      headerPanel("Hello Shiny!"),
#      sidebarPanel(
#           textInput(inputId="text1", label = "Input Text1"),
#           textInput(inputId="text2", label  ="Input Text2"),
#           actionButton("goButton", "Go!")
#      ),
#      mainPanel(
#           p('Output text1'),
#           textOutput('text1'),
#           p('Output text2'),
#           textOutput('text2'),
#           p('Output text3'),
#           textOutput('text3')
#      )
# ))

########################################################33
# 
# shinyUI(pageWithSidebar(
#      headerPanel("Hello Shiny!"),
#      sidebarPanel(
#           textInput(inputId="text1", label = "Input Text1"),
#           textInput(inputId="text2", label = "Input Text2")
#      ),
#      mainPanel(
#           p('Output text1'),
#           textOutput('text1'),
#           p('Output text2'),
#           textOutput('text2')
#      )
# ))


########################################################33

# shinyUI(fluidPage(
#      titlePanel("Slider App"),
#      sidebarLayout(
#           sidebarPanel(
#                h1("Move slider!"),
#                sliderInput("slider2", "slide me!", 0,100,0),
#                h1("Move another slider"),
#                sliderInput("slider2a", "aa", 0,50,25)
#           ),
#           mainPanel(
#                h3("Slider vALUE: "),
#                textOutput("text1"),
#                h3("Another one: "),
#                textOutput("text1a")
#           )
#      )
# ))

############################################################3
# 
# shinyUI(fluidPage(
#      titlePanel("Plot Random Numbers"),
#      sidebarLayout(
#           sidebarPanel(
#                numericInput("numeric","How Many Random Numbers SHould be Plotted?",
#                             value-1000,min=1,max=1000,step=1),
#                sliderInput("sliderX","Pick Minimum and Maximum X Values",
#                            -100, 100,value= c(-50,50)),
#                sliderInput('sliderY',"Pick Minimum and Maximum Y Values",
#                            -100, 100,value= c(-50,50)),
#                checkboxInput("show_xlab","Show/Hide  X Axis Label", TRUE),
#                checkboxInput("show_ylab","Show/Hide Y Axis Label",  TRUE),
#                checkboxInput("show_title","Show/Hide Title")
#           ),
#      mainPanel(
#           h3("Graph of Random Points"),
#           plotOutput("plot1")
#           )
#      )
# ))



######################################################

# library(shiny)
# 
# shinyUI(fluidPage(
#      titlePanel("Slider APp"),
#      sidebarLayout(
#           sidebarPanel(
#                h1("Move the slider!"),
#                sliderInput("slider2","Slide Me!", 0 , 100, 0)
#           ),
#      mainPanel(
#           h3("Slider value"),
#           textOutput("text1")
#      )     
#      )
# ))


#####################################################3
# library(shiny)
# 
# 
# shinyUI(fluidPage(
#      titlePanel("HTML Tags"),
#      sidebarLayout(
#           sidebarPanel(
#                h1("H1 text"),
#                h2("H2 text"),
#                h3("H3 text"),
#                em("Emphasized text")
#           ),
#           mainPanel(
#                h3("Main Panel Text"),
#                code("Some code!")
#           )
#      )
# 
# ))
##########################################################
#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
# 
# library(shiny)
# 
# # Define UI for application that draws a histogram
# shinyUI(fluidPage(
#   
#   # Application title
#   titlePanel("Old Faithful Geyser Data"),
#   
#   # Sidebar with a slider input for number of bins 
#   sidebarLayout(
#     sidebarPanel(
#        sliderInput("bins",
#                    "Number of bins:",
#                    min = 1,
#                    max = 50,
#                    value = 30)
#     ),
#     
#     # Show a plot of the generated distribution
#     mainPanel(
#        plotOutput("distPlot")
#     )
#   )
# ))
