
# Lesson 6

1+1

2*5

3/5

1-3

0/0

# To create an object in R

x <-5


#Vectors

y <- c(1, 4, 8, 2)

y

# Function length returns the number of elements of 

length(y)

mean(y)

#Subsetting: use []

y[2]
# Returns the second element of y

y [y > 2] # The elements of y which are greater than 2

y > 2

y[c(FALSE, TRUE, TRUE, FALSE)]

mean(y[y >2])

mean(y[y < 0])

y[y<0]

numeric(5)
character(2)
