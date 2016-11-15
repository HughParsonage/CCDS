#to create an obj
x <- 5


#vectors
y <- c(1, 4, 8, 2)
y

#functions
length(y)
mean(y)

# subsetting: use []
y[2] #The second element of y. y[0] is not the first!)

y[y > 2] # THe elements of y which are greater than 2

y > 2

mean(y[y > 2])

# numeric(0) means empty vector
numeric(5) # vector of 5 elements
character(2)



install.packages("tidytext")
library(tidytext)
library(janeaustenr)
help("janeaustenr")


#we want a ranom sample of lines of prideprejudice
# ten random lines
length(prideprejudice)
rnorm(10)
runif(10, 1, 13030) # ten random numbers, uniformaly distributed from 1, 13030

sample(1:13030, size = 10)

set.seed(1)
ten_lines_from_pp <- prideprejudice[sample(1:13030, size = 10)]

#some basic text manipulation
nchar(ten_lines_from_pp)

#what is the average number of characters on each line in PP
mean(nchar(prideprejudice))

number_of_chars <- nchar(prideprejudice)
mean(number_of_chars[number_of_chars > 0])

install.packages(c("dplyr", "magrittr"))

library(janeaustenr)
library(magrittr)

# %>% is like | (unix pipe)
prideprejudice %>%
  nchar %>%
  .[. > 0] %>%  # . here is prideprejudice
  mean

#split on multiple a's
strsplit("XXSaabcdef", split = "a+")

#c() character vector
strsplit(c("a a a ", "b b b"), split = " ")


  