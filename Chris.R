install.packages("janeaustenr")
install.packages("dplyr")
install.packages("magrittr")

library(magrittr)                 
library(dplyr)
library(stringr)
library(janeaustenr)

#10 How many times does "Mr. Darcy" appears in Pride & Prejudice
prideprejudice %>% toString %>% str_split("Mr. Darcy") %>% unlist %>% length - 1
