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
  titlePanel("N-Gram Prediction Algorithm 2.0"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
                h3("N-Gram Predictor"),
                textInput("word1", "Enter phrase (all lower case)", "") #,
                #textInput("word2", "Enter second Word (all lower case)", ""),
                # 
                # h3("3-Gram Predictor"),
                # textInput("word2", "Enter first word (all lower case)", ""),
                # textInput("word3", "Enter second Word (all lower case)", "")),
                
    ),
                
    # Show a plot of the generated distribution
    mainPanel(
            
        h3("N-Gram Prediction:"),
       #plotOutput("distPlot"),
       h4(textOutput("bigram1")),
       #plot graph
       h3("Probability Graph"),
       plotOutput("distPlot1") #,

       #  h3("3-Gram prediction:"),
       # #plotOutput("trigram1"),
       # h4(textOutput("trigram1")),
       # #plot graph
       # h3("Probability Graph"),
       # plotOutput("distPlot2")
    )
  )
  
  
))
