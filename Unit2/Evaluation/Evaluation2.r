#Depencencias necesarias para manejo de datos
install.packages("dplyr") 
library(dplyr)
install.packages("tidyverse") 
library(tidyverse)

ProyectData <- read.csv(file.choose())
ProyectData

head(ProyectData)
tail(ProyectData)
str(ProyectData)
summary(ProyectData)

# Aesthetics
library(ggplot2)

 
filter(ProyectData, Genre == "action")

f <- ProyectData %>% filter(Genre %in% c( "action", "adventure", "animation",  "comedy", "drama"), Studio %in% c( "Buena Vista Studios", "Fox", "Paramount Pictures", "Sony", "Universal", "WB"))

# geom_point()

u <- ggplot(f, aes(x=Genre, y=Gross...US,
                        color=Studio, size = Budget...mill.)) 
u + geom_point() + geom_jitter() 

?geom_boxplot
# **Es necesario pulir codigo para el uso de boxplot y  BubgetMill**

# u + geom_boxplot(size=1.2) + geom_jitter()
# u + geom_point(aes(x=BudgetMillions)) + xlab("Budget Millions $$$")