# 2016-11-08

numeric(2)

# 2016-11-10 text mining

install.packages("tidytext")

library(tidytext)
library(janeaustenr)

# help("janeaustenr")
# 
# # random sample of elements of pride and prejudice
# length(prideprejudice)
# runif(10,1,length(prideprejudice)) # uniform distribution from 1 to length(prideprejudice)
# sample(1:length(prideprejudice),10) # take 10 sample out of the vector 1:length(prideprejudice)
# 
# set.seed(1) # setting the random number generator to start from a certain point to get repetitive randome number
# ten_lines_from_pp<-prideprejudice[sample(1:length(prideprejudice),10)]
# 
# nchar(ten_lines_from_pp)
# 
# # what is the average number of characters per line in pp
# number_of_chars<-nchar(prideprejudice)
# mean(number_of_chars[number_of_chars > 0])

# install.packages("magrittr")
library(magrittr)
# 
# prideprejudice %>%
#   nchar %>%
#   .[. >0] %>%
#   mean

# # Github : How many times does "Mr. Darcy" appears in Pride & Prejudice #10
# library(stringr)
# new_df<-unlist(str_split(prideprejudice," "))
# grep("Mr. Darcy",new_df) %>%
#   length 
  
# Count of unique words #16
library(stringr)
new_df<-tolower(unlist(str_split(prideprejudice," ")))
length(unique(new_df))
