library(janeaustenr)
library(stringr)
library(ggplot2)


#issue number 14
#How many times does each letter occur in all of prideprejudice (histogram)

#create a table with the count for each letter
df <- data.frame(letter=letters,
                 count = unlist(lapply(letters, function(x) sum(unlist(str_count(prideprejudice,x))))))
#create plot
ggplot(data=df, aes(x=toupper(letter), y=count, fill=letter)) + 
  geom_bar(colour="black", fill="#DD8888", width=.8, stat="identity") + 
  guides(fill=FALSE) +
  xlab("Letter") + ylab("Count") +
  ggtitle("Pride and Prejudice letter counts")

#just checking
