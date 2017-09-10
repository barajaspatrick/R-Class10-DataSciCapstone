
library(shiny);
shinyServer(function(input, output) {
        
##============================================================================
## Predict Bigrams
        
library(stringr);library(pryr); library(tidyr);
        
output$bigram1 <- reactive({

        bigrams <- read.table("bigrams.txt", sep = ",")
        
        ##testp <- "the quick brown fox jumps over the lazy"
        phrase1 <- as.character(input$word1); print(input$word1)
        ## there is room to do a punctuation and number removal here
        phrase1 <- strsplit(phrase1, " "); print(phrase1)
        phrase1 <- phrase1[[1]]
        phrase1 <- phrase1[length(phrase1)]
        
        if (phrase1 %in% bigrams$word1 == TRUE){
                bigrams <- subset(bigrams, as.character(bigrams$word1) == as.character(phrase1))
                bigrams$word2 <- as.character(bigrams$word2)
                temp1 <- bigrams$word2[1]
                print(temp1)
        }
        else{
                stop("No Match In Database")
        }
})

##================================================================================================
output$distPlot1 <- renderPlot({
        
        bigrams <- read.table("bigrams.txt", sep = ",")
        
        ##testp <- "the quick brown fox jumps over the lazy"
        
        ##testp <- "the quick brown fox jumps over the lazy"
        phrase1 <- as.character(input$word1); print(input$word1)
        ## there is room to do a punctuation and number removal here
        phrase1 <- strsplit(phrase1, " "); print(phrase1)
        phrase1 <- phrase1[[1]]
        phrase1 <- phrase1[length(phrase1)]
        
        ########
        
        ## bigrams <- read.table("bigrams.txt", sep = ",")
        
        if (phrase1 %in% bigrams$word1 == TRUE){
                
                bigrams <- subset(bigrams, bigrams$word1 == as.character(phrase1))
                bigrams$word2 <- as.character(bigrams$word2)
                
                barplot(bigrams$freq[1:5]/sum(as.numeric(bigrams$freq)), names = bigrams$word2[1:5],
                col = "lightblue", main = "Word Probability, and Alternatives",
                ylab = "Word Probability %")
        }
        else{
                stop("No Match In Database")
        }
        
})
##=============================================================================
# Predict Trigrams

# output$trigram1 <- reactive({
#         trigrams <- read.table("trigrams.txt", sep = ",")
#         
#         if (input$word2 %in% trigrams$word1 == TRUE){
#                 trigrams <- subset(trigrams, trigrams$word1 == as.character(input$word2))
#         }
#         else{
#                 stop("No Match In Database")
#         }
#         if (input$word3 %in% trigrams$word3 == TRUE){
#                 trigrams <- subset(trigrams, trigrams$word2 == as.character(input$word2))
#                 trigrams$word3 <- as.character(trigrams$word3)
#                 trigrams <- trigrams$word3[1]
#                 print(trigrams)
#         }
#         else{
#                 stop("No Match In Database")
#         }
#         })
# 
# output$distPlot2 <- renderPlot({
#         
#         trigrams <- read.table("trigrams.txt", sep = ",")
#         
#         if (input$word2 %in% trigrams$word1 == TRUE){
#                 trigrams <- subset(trigrams, trigrams$word1 == as.character(input$word2))
#         }
#         else{
#                 stop("No Match In Database")
#         }
#         if (input$word3 %in% trigrams$word3 == TRUE){
#                 trigrams <- subset(trigrams, trigrams$word2 == as.character(input$word2))
#                 trigrams$word3 <- as.character(trigrams$word3)
#                 
#                 barplot(trigrams$freq[1:5]/sum(as.numeric(trigrams$freq)), names = trigrams$word3[1:5],
#                         col = "lightblue", main = "Word Probability",
#                         ylab = "Word Probability")
#                 
#         }
#         else{
#                 stop("No Match In Database")
#         }
# })
        
})



