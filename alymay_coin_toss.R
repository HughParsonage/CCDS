# Prediction
#model - an object that predicts

coin_toss <- function(){
  if(runif(1)< 0.5) {  #uniform
    "heads"
  } else{
    "tails"
  }  
}

coin_toss()

actual <- character(5)
predicted <- character(5)

actual <- c('heads','heads','heads','tails','heads')

for (i in seq_along(predicted)){
  predicted[i] <- coin_toss()
}

#this is the 1 - error rate
mean(actual == predicted) 

#this is the basis of testing models

#step 1 is to create the model
#step 2 generate data from the same process
#step 3 run the model on new data
#step 4 compare the predicted with the actual

