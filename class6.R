#To create an object in R
x <- 5

# vectors
y <- c(1,  4, 8, 2)  # space is ignored. 

y # print vector
#Function lenght returns the number of elements of
length(y)

mean(y)


# subsetting: use []
y[2] # the second element of y. (y[0] is not the first !)

y[y > 2] # Elements of y which are greater than 2

y > 2

y[c(FALSE, TRUE, TRUE, FALSE)]

mean(y[y>2])
mean(y[y< 0])

y[y<0]

numeric(5)
character(2)

?numeric


install.packages("tidytext")
library(tidytext)

library(janeaustenr)

help("janeaustenr")

prideprejudice

# We want a random sample of lines of prideprejudice
# ( And by line means element of e.g. prideprejudice[666])
# ten random lines


length(prideprejudice) # number of lines of pp


rnorm(10) # 10 instances of random numbers

runif(10,1,13020)  # 10 random numbers, uniformly distributed from 1, 13030

sample(1:13030, size = 10)

ten_lines_from_pp <-
  prideprejudice[sample(1:13030, size = 10)]

set.seed(1)
ten_lines_from_pp <-
  prideprejudice[sample(1:13030, size = 10)]



# some basic text manipulation
?nchar
nchar("dog")

nchar("dog ")

nchar(ten_lines_from_pp)   # no of characters in each line

# avg number of characters per line in pp ?
mean(nchar(prideprejudice))

# contains zero
# lets create vector

number_of_chars <- nchar(prideprejudice)

mean(number_of_chars[number_of_chars > 0])  # Take only non zero

install.packages(c("dplyr", "magrittr"))

library(janeaustenr)
library(magrittr)


prideprejudice %>%
  nchar %>%
  .[. > 0] %>%
  mean


#  What is the maximum number of charcters in a line ?
prideprejudice %>%
sum(prideprejudice[prideprejudice > 0])

sum(prideprejudice)

# Pick one issue, create R script for that, commit that script and synch\
#How many unique names are used? 

# complicated way and doesnt return unique words
library(stringr)
new_df<-tolower(unlist(str_split(prideprejudice," ")))
length(unique(new_df))

prideprejudice %>%
  str_split(prideprejudice," ")