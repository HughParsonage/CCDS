library(janeaustenr)
library(stringr)

str_count("abdefabc", "a")

str_count(prideprejudice[200:210], "a")
prideprejudice[200:210]

# lapply

ex <- list(x = c(1, 2, 3), y = c(1, 2))

lapply(ex, max)

# Lists vs data.frames
# A data.frame is a special type of list.
# It's familar: just a table of data.
# It has rows and columns. Importantly, the number of 'rows' in each columns is identical.
# Further, each column has elements of the same type. You can't mix, for example, 
# numerics and characters in the one column.

# Why can't I apply max to 'ex'?
# Partial answer: it's not well-defined in general for lists. 

ex2 <- list(x = c(1, 2, 3), y = c(1, 2), z = list(x = data.frame(x = 1, y = 2), y = "foo"))

# str_count is a 'vectorized' function. 
str_count(prideprejudice, "a")

prideprejudice_as_one <- paste0(prideprejudice, collapse = "")

paste0(c("a", "a"), c("b", "b"), collapse = "")
paste("a", "b", collapse = "")  # by default puts a space.

str_count(prideprejudice_as_one, "a")
str_count(prideprejudice_as_one, c("a", "b"))
str_count(prideprejudice_as_one, letters)
str_count(tolower(prideprejudice_as_one), letters)

library(magrittr) # contains %>% (as well as %$%)
library(dplyr) # loads magrittr's %>% as well.
library(ggplot2) # install.packages("ggplot2")

.libPaths() # location of packages.

prideprejudice %>%
  # paste0(collapse = "") %>%
  toString %>%
  tolower %>%
  str_count(letters) %>%
  data.frame(count = ., Letters = letters) %>%
  ggplot(aes(x = Letters, y = count)) + 
  geom_bar(stat = "identity")
