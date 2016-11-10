Hello!s

# Arithmetic & Vectors

# to create an object in R
x <- 5

# Vectors (columns and tables)
y <- c(1, 4, 8, 2) #spaces for better readability
y
length(y) #function length returns the number of elements of
mean(y)

# Subsetting: use [ ]
y[2] # the second element of y. (y[0] is not the first)
y[y > 2] # the elements of y which are greater than 2 (creates a logical vector)
y > 2
mean(y[y > 2])
mean(y[y < 0]) # not a number (NaN)
y[y < 0]
numeric(5)
character(2)









