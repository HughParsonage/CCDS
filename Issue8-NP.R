# Issue 8: What is the maximum number of characters in a line?

library(tidytext)
library(janeaustenr)

number_of_chars <- nchar(prideprejudice)

max(number_of_chars)
