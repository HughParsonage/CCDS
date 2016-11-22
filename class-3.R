# 3rd class held Tuesday 15/Nov/2016

# Lists Vs data.frames
# it's familiar just a table of data.
# It has rows and columns. Importantly, the number of rows in each columns is identical.
# Further, each column has elects of the same type.
# You can't mix types

# lapply applies a function to all elements of a list

ex <- list(x = c(1,2,3), y = c(1,2))
lapply(ex,max)

# joining a vector use paste or paste0

# built in letters or LETTERS
letters
LETTERS

# %>% is in library(magrittr) or library(dplyr)

library(stringr)
library(magrittr)
#install.packages("ggplot2")
library(ggplot2)
library(dplyr) 
library(tidytext)

prideprejudice %>%
  paste0(collapse = "") %>%
  tolower %>%
  str_count(letters) %>%
  data.frame(count = ., Letters = letters) %>%
  ggplot(aes(x = Letters, y = count)) +
  geom_bar(stat = "identity")


