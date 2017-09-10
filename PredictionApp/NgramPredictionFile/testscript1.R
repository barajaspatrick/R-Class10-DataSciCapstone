



testp <- "the quick brown fox jumps over the lazy dog"

phrase <- as.character(testp)
## there is room to do a punctuation and number removal here
phrase <- strsplit(phrase, " ")
phrase <- phrase[[1]]
targetword <- phrase[length(phrase)]
print(targetword)


phrase1 <- (dog is)
## there is room to do a punctuation and number removal here
phrase1 <- strsplit(phrase, " ")
phrase1 <- phrase1[[1]]
phrase1 <- phrase1[length(phrase)]
print(phrase1)
