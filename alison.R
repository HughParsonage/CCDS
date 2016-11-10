#create object
x <- 5

#create vectors
y <- c(1, 4, 8, 2)

mean(y)

#sq brackets subset, counts from 1 (python, C etc start at 0)
y[2]

y[y > 2] #the elemets of y which are greater than 2

y > 2
FALSE  TRUE  TRUE FALSE

mean(y[y < 0])
y[y <0]
numeric(0) #[1] 0 0 0 0 0
numeric(5) #

