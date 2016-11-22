#class 1

# alt minus writes <-
# to  create an object in R
x <- 5

# vectors
y <- c(1, 4, 8, 2)
y
length(y)
mean(y)

# subset use []
y[2]
y[y>2]
y[y<0]
mean(y[y < 0]) # NaN because you are doing divide by zero = sum(null)/count(null)

numeric(5) # vector of 5 numeric zeros
character(5) # vector of 5 string

# after branch

# download and load library
install.packages("tidytext")
library(tidytext)
library(janeaustenr)

help(janeaustenr)  # text of jane austen's novels

# we want a random sample of lines
length(prideprejudice)

rnorm(10) # bell curve
runif(10, 1, 13030) # ten random numbers, uniformly distributed

set.seed(1) # use so that whole class gets the same distribution
ten_lines <- prideprejudice[sample(1: length(prideprejudice), size = 10)]  # access 10 random lines

#----------------------------------------

# to get help use ? eg ?nchar

# 67-70 characters per line is ideal, otherwise your eyes get too tired

nchar(ten_lines)

#what is the average number of characters per line in PP
mean(nchar(prideprejudice))
#but this contains blank lines

number_of_chars <- nchar(prideprejudice)

# to get the mean of those lines that have text - do this
mean(number_of_chars[number_of_chars > 0]) #xxx

install.packages(c("dplyr", "magrittr"))
library(janeaustenr)
library(magrittr)

#this is the same as xxx 'dot' refers to everything to the left of the pipe
prideprejudice %>%  # take prideprejudice
  nchar %>%         # get the number of lines
  .[.>0] %>%        # get a subset - only those values >0
  mean              # then mean

gsub
gsub(pattern, replace, str)
grep





