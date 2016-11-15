library(stringr)

str_count("abcdefabc", "a")

str_count(prideprejudice[200:210], "a")
prideprejudice[200:210]

#lapply
?lapply

ex <- list(x = c(1,2,3), y = c(1,2))

lapply(ex,max)

#lists Vs Data.frames
#A data.frame is a special type of list
#Its familiar: Just a table of data
# It has rows and columns. Importantly, the number of 'rows' in each columns is identical.
#Further, each column has elements of the same type. You cant mix, for example,
# Numberics and charcters is the one column


#Why can't I apply max to 'ex'?
#Partial answer: Its not well defined in general for lists.

ex2 <- list(x =c(1,2,3), y = c(1,2), z = list(x = data.frame(x = 1, y = 2), y = "foo"))

str(prideprejudice)

#str_count and max are both 'vectorized' functions.
?paste0
str_count(prideprejudice, "a")


prideprejudice_as_one <- paste0(prideprejudice, collapse = "")

paste0(c("a", "a"), c("b", "b"), collapse = "")
paste("a", "b", collapse = "") #default puts a space

str_count(prideprejudice_as_one, "a")
str_count(prideprejudice_as_one, c("a", "b"))
str_count(prideprejudice_as_one, letters)
str_count(tolower(prideprejudice_as_one), letters)

library(magrittr) # contains %>%
library(dplyr) # Loads magrittr as well

prideprejudice %>%
  paste0(collapse = "") %>%
  tolower %>%
  str_count(letters) %>%
  data.frame(count = ., x = letters) %>%
  ggplot +
  geom_bar(aes(x = x, y = count), stat = "identity")


install.packages("rmarkdown", dep = TRUE)









  
  
  
  
  
























