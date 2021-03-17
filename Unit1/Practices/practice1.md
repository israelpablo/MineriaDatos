## Pracice #1
Create an R script that will count how many of these numbers fall between -1 and 1 and divide by the total quantity of N

- 1. Initialize sample size
- 2. Initialize counter

` m <- rnorm(5)`

` c <- 0`

- 3. loop for(i in rnorm(size))
- 4. Check if the iterated variable falls
- 5. Increase counter if the condition is true
- 6. return a result <- counter / N

` for(i in m){ `
 
 `if(i <= 1 & i >= -1){ `
 
  `  c <- c+1 `
 
  ` } `

` } `

` print("The numbers between -1 and 1 are:") `

` print(c) `

