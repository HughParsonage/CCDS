# Intro to R

# Create an object in R 

.libPaths(.libPaths()[2])
install.packages("tidytext")
library(tidytext)

library(janeaustenr)

set.seed(1)

x1 <- sample(1:length(prideprejudice), 10)

ten_lines_from_pp <- prideprejudice[x1]

nchar(ten_lines_from_pp)

# Mean number of characters
mean(nchar(prideprejudice))

numberOfCharacters <- nchar(prideprejudice)

numberOfCharacters[numberOfCharacters > 0]

prideprejudice %>% nchar %>% .[.>0] %>% mean





