m <- rnorm(5)
c <- 0

for(i in m){
  if(i <= 1 & i >= -1){
    c <- c+1
  }
}
print("The numbers between -1 and 1 are:")
print(c)
