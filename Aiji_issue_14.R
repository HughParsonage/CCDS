# how many times does each letter occur in all of prideprejudice (histogram) #14

library(janeaustenr)
library(magrittr)

pp<-gsub("[^a-z]","",tolower(prideprejudice), perl=T)
letters_vector<-unlist(strsplit(pp,""))

counts <- data.frame(table(letters_vector));

library(ggplot2)
ggplot(counts, aes(x=reorder(letters_vector,Freq), y=Freq)) + 
  geom_bar(stat='identity',colour="black",fill="lightgreen") +
  ggtitle("Occurence of Letter in pp") +  xlab("Letter") + ylab("Frequency") +
  coord_flip() 


