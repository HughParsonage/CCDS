#class 1

# alt minus writes <-
# to  create an object in R
x <- 5

# vectors
y <- c(1, 4, 8, 2)
y
length(y)
mean(y)

# subset use []
y[2]
y[y>2]
y[y<0]
mean(y[y < 0]) # NaN because you are doing divide by zero = sum(null)/count(null)

numeric(5) # vector of 5 numeric zeros
character(5) # vector of 5 string

# after branch

