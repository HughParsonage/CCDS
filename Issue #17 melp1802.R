
# Issue #17: Who is the main character in P&P?

library(janeaustenr)
library(tidytext)
library(dplyr)

P_P <- data_frame(txt = prideprejudice)

P_P %>% 
  unnest_tokens(word, txt, to_lower = TRUE) %>%
  anti_join(stop_words) %>%  
  count(word, sort = TRUE)

# A: Elizabeth is the main character in Pride & Prejudice