# 1 -- Max number of chars in a line

# split of whitespace
matrix <- strsplit(prideprejudice, " ", TRUE)

#flatten matrix(2D) to a vector(1D)
vector1 <- unlist(matrix)

#try and regroup then into groups of same word
split(vector1, f = 1)
