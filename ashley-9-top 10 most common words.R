
# What is the top10 of the most commonly used words? #9

flat_words <- unlist(strsplit(prideprejudice, "\\W"))
flat_words <- tolower(flat_words)
freq <- table(flat_words)
freq1 <- sort(freq, decreasing=TRUE)
freq1[1:10]
