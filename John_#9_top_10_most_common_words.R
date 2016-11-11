# Data Science Short Course
# What is the top10 of the most commonly used words? #9
install.packages("janeaustenr",repos='http://cran.us.r-project.org') 
install.packages("tm",repos='http://cran.us.r-project.org') # for text mining
suppressMessages(library("janeaustenr"));library("tm")

# Use VectorSource to interpret each element of vector prideprejudice as a document
# Load the text using Corpus function from tm  
docs <- Corpus(VectorSource(prideprejudice))

# Use tm_map from tm to convert everything to lower case, remove whitespace, 
# common stopwords, numbers, and punctuation
docs <- tm_map(docs, content_transformer(tolower))
docs <- tm_map(docs, stripWhitespace)
docs <- tm_map(docs, removeWords, stopwords("english"))
docs <- tm_map(docs, removeNumbers)
docs <- tm_map(docs, removePunctuation)

# Build document term matrix - table containing the frequency of the words
dtm <- TermDocumentMatrix(docs)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
# Print out top 10 words
print(head(d, 10))
