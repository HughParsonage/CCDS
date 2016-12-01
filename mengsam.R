.libPaths(.libPaths()[2])

#Hi Meng

# R into
# See Hugh's R file 

# Install Packages
install.packages("tidytext")
library(tidytext)
library(janeaustenr)

length(prideprejudice)

sample(1:13030, size = 10) # sample without replacement

set.seed(1)               # set seed to ensure consistency 

ten.lines <- prideprejudice[sample(1:13030, size = 10)]

# Some basic text manipulation

?nchar 

nchar(ten.lines) # tells us about the number of characters per line 

# what is average number of lines
mean(nchar(ten.lines))

mean(nchar(prideprejudice))

number_of_chars <- nchar(prideprejudice)

mean(number_of_chars[number_of_chars > 0])


# install package 
install.packages("magrittr")
library(magrittr)

prideprejudice %>% 
  nchar         %>%
  .[.>0]        %>%     # take the subset 
  mean


# number 5 - number of times Mr. Darcy is mentioned 


pos = grep('Mr. Darcy', prideprejudice)
length(prideprejudice[pos])
