
#__________________
#Pride & Prejudice
#___________________

install.packages("tidytext")
library(tidytext)

library(janeaustenr)

library(dplyr)

library(magrittr)

help("janeaustenr")


# What is the maximum number of characters per line

number_of_chars <- nchar(prideprejudice)

max(number_of_chars)

# The maximum number of characters is 74