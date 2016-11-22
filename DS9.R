# PREDICTION


coin_toss <- function(x){
  if (runif(1) < 0.5){
    "heads"
    } else { "tails"}
  }
}


coin_toss()
actual <- character(5)
predicted <- character(5)

actual <- c("heads", "heads, "heads", "heads", "tails", "heads")

for (i in seq_along(predicted)) {
predicted[i] <- coin_toss()
}

This is the 1 - error rate
mean(actual == predicted)

# this is the basis for testing models

# heads 70% of the time:


coin_toss2 <- function(){
if (runif(1) < 0.7){
"heads"
} else { "tails"}

# Step 1 is the create the model
# Step 2 is to generate data from the same process
# Step 3 is to run the model on the new data
# Step 4 is to compare the predcicted with the actual
}