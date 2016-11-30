# Create an object

# Vector, like columns in a table
y <- c(1, 4, 8, 2)

# function length() returns the number of elements
length(y)
# Average
mean(y)

# Subsetting objects: use []
y[2] # The second element of y. (y[0] is not the first!)

y[y > 2] # The elements of y which are greater than 2

y > 2
y[c(FALSE, TRUE, TRUE, FALSE)]

mean(y[y > 2])
mean(y[y < 0]) # returns NaN
y[y < 0] # returns numeric(0), which means it is an empty vector. numeric() is a function.

numeric(5) # returns 0 0 0 0 0
character(2) # returns "" ""

# Just some changes to test pull requests.



# Let's get into text mining
install.packages("tidytext")
library(tidytext)
library(janeaustenr)

help("janeaustenr")

# We want a random sample of lines of prideprejudice. And by line I mean "element of".
# Ten random lines.

length(prideprejudice) # number of lines in pp

rnorm(10)
runif(10, 1, 13030) # ten random numbers, uniformly distributed from 1, 13030
# Best solution, takes a random sample of 10 elements
sample(1:13030, size = 10)

set.seed(1) # fixes the random numbers 
# Take a subset [] of a vector with 13030 elements and take a random sample of 10 elements
ten_lines_from_pp <- 
  prideprejudice[sample(1:13030, size = 10)] 


# Some basic text manipulation
?nchar # count the number of characters
nchar(ten_lines_from_pp)

# What is the average number of characters per line in PP?
mean(nchar(prideprejudice))

number_of_chars <- nchar(prideprejudice)
# Exclude the lines with 0 characters
mean(number_of_chars[number_of_chars > 0])

library(dplyr)
library(magrittr)

prideprejudice %>%
  nchar %>% # get number of lines
  .[. > 0] %>% # only take the subset of lines with more than 0 characters
  mean # calculate average



