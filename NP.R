# Lesson 6: Arithmetic & Vectors 

0/0 # Not a number
1/0 # Infinite

# To create an object in R.
x <- 5

# Vectors (column in a table)
y <- c(1, 4, 8, 2)

y

# FUnction length returns the number of elements of
length(y)

mean(y)

# Subsetting objects: use []
y[2] # 2nd element of y. (y[0] is not the first!)

y[y > 2] # The elements of y which are greater than 2.

y > 2

y[c(FALSE, TRUE, TRUE, FALSE)]

mean(y[y > 2])
mean(y[y < 0])
y[y < 0]

numeric(5)
character(2)

# change