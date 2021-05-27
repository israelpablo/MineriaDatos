IngresoLaboralpcap <- read.csv(file.choose())
IngresoLaboralpcap
head(IngresoLaboralpcap)
colnames(IngresoLaboralpcap) <- c("CENTIDAD", "Entidad", "Año", "Trimestre", "Pesos_Constantes", "Canasta_Alimentaria", "Desagregacion")
head(IngresoLaboralpcap)
tail(IngresoLaboralpcap)
str(IngresoLaboralpcap)
summary(IngresoLaboralpcap)

install.packages("tidyverse")
library(tidyverse)
#mil

mil<-c( rep( 1000,2049))
mil

#Convert numeric data to a factor
factor(IngresoLaboralpcap$Año)
IngresoLaboralpcap$A <- factor(IngresoLaboralpcap$Año)

summary(IngresoLaboralpcap)
str(IngresoLaboralpcap)

IngresoLaboralpcap[,5]

test<-c(IngresoLaboralpcap[,5])
test<-c(IngresoLaboralpcap$Pesos_Constantes)/1000
test
test<-round(test / 1000,3)
test

test2<-mutate(IngresoLaboralpcap,Pesos_Co4 = test)
tail(test2)
mutate(mtcars, displ_l = disp / 61.0237)
transmute(mtcars, displ_l = disp / 61.0237)

mutate(mtcars, cyl = NULL)
########################
test<-IngresoLaboralpcap$Pesos_Constantes
test<-t(IngresoLaboralpcap[4,,drop=F])

IngresoLaboralpcap[,5,drop=F]/100


test<-c(IngresoLaboralpcap[,5,drop=F])
test
test / 1000
test2<-round(test / 1000, 3)
test2
is.vector(test)
################################
IngresoLaboralpcap
apply()

library(ggplot2)

ggplot(IngresoLaboralpcap, aes(x=Pesos_Constantes, y=Canasta_Alimentaria, 
                   color=Genre, size=BudgetMillions))
ggplot(data=IngresoLaboralpcap, aes(x=Trimestre, y=Año)) 
       
       ggplot(IngresoLaboralpcap, aes(x=Pesos_Constantes, y=Canasta_Alimentaria)) + 
         geom_point()
       
       qplot(data=IngresoLaboralpcap, x=Pesos_Constantes, y=Canasta_Alimentaria, geom="boxplot") + scale_y_continuous(breaks=seq(0, 4000, 500))
       