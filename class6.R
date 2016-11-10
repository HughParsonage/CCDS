#To create an object in R
x <- 5

# vectors
y <- c(1,  4, 8, 2)  # space is ignored. 

y # print vector
#Function lenght returns the number of elements of
length(y)

mean(y)


# subsetting: use []
y[2] # the second element of y. (y[0] is not the first !)

y[y > 2] # Elements of y which are greater than 2

y > 2

y[c(FALSE, TRUE, TRUE, FALSE)]

mean(y[y>2])
mean(y[y< 0])

y[y<0]

numeric(5)
character(2)

?numeric