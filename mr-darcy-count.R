library(janeaustenr)
mdarcy <- grep("Mr. Darcy", prideprejudice)
length(mdarcy)
#Problems: Does not count  mutiples of Mr. Darcy if more than once in the same line.


# This one does
library(stringr)
sum(str_count(prideprejudice, "Mr. Darcy"))
