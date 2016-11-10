#to create an obj
x <- 5


#vectors
y <- c(1, 4, 8, 2)
y

#functions
length(y)
mean(y)

# subsetting: use []
y[2] #The second element of y. y[0] is not the first!)

y[y > 2] # THe elements of y which are greater than 2

y > 2

mean(y[y > 2])

# numeric(0) means empty vector
numeric(5) # vector of 5 elements
character(2)
