# Prediction

coin_toss <- function(){
  if (runif(1) < 0.5){
    "heads"
  } else {
    "tails"
  }
}

coin_toss()

actual <- character(5)
predicted <- character(5)

actual <- c("heads", "heads", "heads", "tails", "heads")

for (i in seq_along(predicted)){
  predicted[i] <- coin_toss()
}

# This is the 1 - error rate. 
mean(actual == predicted)

# This is the basis of testing models.

# Heads 70% of the time:
coin_toss2 <- function(){
  if (runif(1) < 0.7){
    "heads"
  } else {
    "tails"
  }
}

predicted2 <- character(5)
for (i in seq_along(predicted2)){
  predicted2[i] <- coin_toss()
}
mean(actual == predicted2)

# Step 1. Create the model.
# Step 2. Generate data from the same process.
# Step 3. Run the model on the new data
# Step 4. Compare the predicted with the actual.











