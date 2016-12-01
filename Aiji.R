# 20161108

numeric(2)



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

# # 2016-11-15

library(ggplot2)
pp_as_one<-paste(prideprejudice,collapse = "")
str_count(tolower(pp_as_one),letters) %>%
  data.frame(count=.,Letters= letters) %>%
  ggplot(aes(x=Letters,y=count))+
  geom_bar(stat="identity")

# how many times does "Mr. Darcy" occur in all of prideprejudice #10

library(janeaustenr)
library(magrittr)
library(stringr)

j<-grep("Mr. Darcy", prideprejudice)

g<-str_count(prideprejudice,"Mr. Darcy")
# which(g>1)

sum(g) # 258


