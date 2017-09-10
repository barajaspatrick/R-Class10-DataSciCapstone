## setwd("~/Documents/Coursera_dataSci_WorkingDir/class10_Capstone/Task1")

library(NLP); library(tm); library(R.utils); library(stringi)

read <- 0
if (read == 1){
blog <- readLines("en_US.blogs.txt")
news <- readLines("en_US.news.txt")
twitter <- readLines("en_US.twitter.txt")
}

## Q2 How Many lines of txt. has the twitter file have?
con <- file("en_US.twitter.txt", "r")
numlines <- NROW(readLines(con))
print(numlines)
close(con)

## The object contains 2360148 lines of text.

## Q3 What is the length of the longest line seen in any of the three
## en_US data sets.

con <- file("en_US.twitter.txt", "r")
lenn <- nchar(readLines(con))
message("the max length for twitter is: ", max(lenn))
close(con)

con <- file("en_US.news.txt", "r")
lenn <- nchar(readLines(con))
message("the max lenth for news is: ", max(lenn))
close(con)

con <- file("en_US.blogs.txt", "r")
lenn <- nchar(readLines(con))
message("the max length for blogs is: ", max(lenn))
close(con)

## Q4 divide the number of lines with the word "love" VS "hate"

con <- file("en_US.twitter.txt", "r")
lov <- grepl(".love.", readLines(con), ignore.case = FALSE)
lov1 <- sum(lov)
close(con)


con <- file("en_US.twitter.txt", "r")
hat <- grepl(".hate.", readLines(con), ignore.case = FALSE)
hat1 <- sum(hat)
close(con)

sum(lov)/sum(hat)

## [1] 3.964942


## Q5 the one tweet that matches "biostats" says what?

con <- file("en_US.twitter.txt", "r")
twitline <- readLines(con)
twitline[grepl(".biostats.", twitline, ignore.case = FALSE) == TRUE]
close(con)

## [1] "i know how you feel.. i have biostats on tuesday and i have yet to study =/"

## Q6 how many tweets have the exact characters " A computer once beat me at chess,
##      but it was no match for me at kickboxig".

con <- file("en_US.twitter.txt")
readfile <- readLines(con)
readfile[grepl("A computer once beat me at chess, but it was no match for me at
               kickboxing", readfile, ignore.case = FALSE) == TRUE]
close(con)
## It occures three times.
