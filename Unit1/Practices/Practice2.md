
## Pracice #2  Functions


20 more functions in R and make an example of it


funtion 1 y 2 
the functions rbind() and cbind(),
make a matrices union with references to his rows or columns,
the next example show how working 

m1 <- matrix(1, nr = 2, nc = 2)
m2 <- matrix(2, nr = 2, nc = 2)
rbind(m1, m2)
cbind(m1, m2)

funtion 3
the function t()is used for matrice transposition, the next example show how working.

t(m1)
t(m2)

funtion 4
the function diag() is can used for extract or modified the matrices diagonal  
or make a diagonal matrice, the next example show how working

diag(m1)

funtion 5 
the function set.seed() is used for replicated the result, the next example show how working. 
funtion 6
the function rnorm() is used for create a distribution normal 
random, the next example show how working

set.seed(29)
edades <- rnorm(n = 1500, mean = 15, sd = .75)
edades[1:10]

#funtion 7
#the function hist() create a histogram just only need a matrice,
#the next example show how working.

hist(x = edades)

#funtion 8 Y 9
#the functions mean() and sd() we can calculate the median and the deviation standar, 
#the next example show how working

media <- mean(edades)
desv_est <- sd(edades)

#funtion 10
#the function abline() is used for create a line and is used for different options, 
#the next example show how working 

hist(edades, main = "Edades", xlab = "Datos", ylab = "Frecuencia", col = "gold")
abline(v = media, col = "red")
abline(v = media + (desv_est * c(1, -1)), col = "blue")

funtion 11
the function options() is used for change of amplitude on the screen 
,the next example show how working

options(width=40)
1:100

funtion 12 y 13
the functions seq() and rep() is used for create vectors,the next example show how working
seq(1,20)
seq(1,20, by=2)
seq(20,1)
seq(20,1, by=-2)
rep(3,12)
rep(seq(2,20,by=2),2)
rep(c(1,4),c(3,2))
rep(c(1,4), each=3)

funtion 14
names() is a function for assign names to vectors,the next example show how working
x<-c(3.141592, 2.718281)
names(x)<-c("pi","e")
x 
funtion 15
cumsum() give a cumulative sum of vector components,the next example show how working
cumsum(x) 

funtion 16 y 17
max() and min() given a maximum and minimum  of the vector components,
the next example show how working
max(x)
min(x) 
funtion 18 , 19 , 20 y 21
mean() and median() and var() and sd() given a average and median and
quasi-variance and quasi deviation of the vector components,the next example show how working
mean(x)
median(x)
var(x)
sd(x)
