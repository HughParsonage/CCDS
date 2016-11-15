library(janeaustenr)
library(stringr)
library(dplyr)
install.packages("ggplot2")
library(ggplot2)

prideprejudice %>%
  paste0(collapse = "") %>%
  tolower %>%
  str_count(letters) %>%
  data.frame(count = ., Letters = letters) %>%
  ggplot(aes(x = Letters, y = count)) + 
  geom_bar(stat = "identity")