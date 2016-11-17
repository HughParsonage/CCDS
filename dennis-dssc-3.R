library(janeaustenr)
library(stringr)

# counts the number of occurances of a letter in a given string
str_count("abcdef", "a")

str_count(prideprejudice[200:210], "a")

# lapply
ex <- list(x = c(1, 2, 3), y = c(1, 2))
lapply(ex, max) # takes a list and returns a list

# List vs data.frames
# A data frame is a special type of list. It's familiar: just a table of data. It has rows and columns.
# Importantly, the number of 'rows' in each columns is identical.
# Further each column has elements of the same type. You can't mix, for example, numerics 
# and characters in the one column.


# Why can't I apply max simply to 'ex'?
max(ex) # returns "Error in max(ex) : invalid 'type' (list) of argument"
# Partial answer: it's not well-defined in general for lists

ex2 <- list(x = c(1, 2, 3), y = c(1, 2), z = list(x = data.frame(x = 1, y = 2), y = "foo"))

# A vector has 1 dimension, a list is abitrary

# str_count is a 'vectorized' functions.

# concatenate everything
prideprejudice_as_one <- paste0(prideprejudice, collapse = "")

paste0(c("a", "a"), c("b", "b"), collapse = "") # returns "abab"
paste("a", "b", "c", collapse = "") # returns "a b c"

str_count(prideprejudice_as_one, "a")
str_count(prideprejudice_as_one, c("a", "b"))
str_count(prideprejudice_as_one, letetrs)
str_count(to_lower(prideprejudice_as_one), letters)
# letters = is a defined object which ships with R and contains all lowercase letters form a-z

library(magrittr) # contains %>% as well as %$%
library(dplyr) # loads magrittr's %>% as well
library(ggplot2)

prideprejudice %>%
  paste0(collapse = "") %>%
  tolower %>%
  str_count(letters) %>%
  data.frame(count = ., Letters = letters) %>%
  ggplot(aes(x = Letters, y = count)) + # define the coordinates, put the letters on the x-axis and the number on the y axis
  geom_bar(stat = "identity")
  


