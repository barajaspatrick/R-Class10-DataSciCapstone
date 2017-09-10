setwd("~/Documents/Coursera_dataSci_WorkingDir/class10_Capstone/Task2")

enb <- stri_read_lines("en_US.blogs.txt", local = "en")

## function to rewrite lines into lowercase
library(tm)
library(stringi)


enb <- stri_read_lines('en_US.blogs.txt')
lowerenb <- stri_trans_tolower(enb)
quiz21 <- lowerenb[grepl('case',lowerenb)]
enb.vec <- VectorSource(quiz21)
enb <- Corpus(enb.vec)
enblog.tdm <- TermDocumentMatrix(enb)
BigramTokenizer <- function(x) {RWeka::NGramTokenizer(x, RWeka::Weka_control(min = 3, max = 3))}
bdm <- TermDocumentMatrix(enb, control = list(tokenize = BigramTokenizer))
case <- bdm$dimnames$Terms[grepl('case of',bdm$dimnames$Terms)]
m = as.matrix(bdm[case,])
v = sort(rowSums(m), decreasing = TRUE)


## 2


quiz22 <- lowerenb[grepl('struggling',lowerenb)]
enb.vec <- VectorSource(quiz22)
enb <- Corpus(enb.vec)
enblog.tdm <- TermDocumentMatrix(enb)
BigramTokenizer <- function(x) {RWeka::NGramTokenizer(x, RWeka::Weka_control(min = 3, max = 3))}
bdm <- TermDocumentMatrix(enb, control = list(tokenize = BigramTokenizer))
case <- bdm$dimnames$Terms[grepl('mean the',bdm$dimnames$Terms)]
m = as.matrix(bdm[case,])
v = sort(rowSums(m), decreasing = TRUE)










