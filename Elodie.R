library(janeaustenr)
library(magrittr)
library(dplyr)
library(stringr)
install.packages("ggplot2")
library(ggplot2)


prideprejudice %>%
  paste0(collapse = "") %>%
  tolower %>%
  str_count(letters) %>%
  data.frame(count = ., Letters = letters) %>%
  ggplot +
  geom_bar(aes(x = Letters, y = count), stat = "identity")
           