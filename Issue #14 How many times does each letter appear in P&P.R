
# Issue #14: How many times does each letter appear in P&P?

library(janeaustenr)
library(dplyr)
library(ggplot2)

PP_characters <- unlist(strsplit(prideprejudice, ""))
lower_case <- tolower(PP_characters)
PP_lowercase <- data_frame(lower_case)

lcaseletters <- data_frame(letters)
lcaseletters

lcaseletters %>%
  inner_join(PP_lowercase, by = c("letters" = "lower_case")) %>%
  count(letters) %>%
  ggplot(aes(x=letters, y=n)) +
  geom_bar(stat = "identity") 



