# Create an object

# Vector, like columns in a table
y <- c(1, 4, 8, 2)

# function length() returns the number of elements
length(y)
# Average
mean(y)

# Subsetting objects: use []
y[2] # The second element of y. (y[0] is not the first!)

y[y > 2] # The elements of y which are greater than 2

y > 2
y[c(FALSE, TRUE, TRUE, FALSE)]

mean(y[y > 2])
mean(y[y < 0]) # returns NaN
y[y < 0] # returns numeric(0), which means it is an empty vector. numeric() is a function.

numeric(5) # returns 0 0 0 0 0
character(2) # returns "" ""

# Just some changes to test pull requests.