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
f

ggplot(f)+  
  xlab("Genre") +
  ylab("Gross%US") +
  ggtitle("Dosmestic Gross% by Genre")+
 geom_point(aes(x=Genre,y= Gross...US,colour = Studio,size = Budget...mill.))+
  geom_jitter(aes(Genre, Gross...US, colour = Studio), 
              position = position_jitter(width = .15, height=-0.7),
              size=2
              )+
  geom_boxplot(aes(x=Genre,y= Gross...US), 
               width=0.5,alpha=0.5
    )+
  theme(axis.title.x = element_text(color = "Purple", size=15),
        axis.title.y = element_text(color = "Purple", size=15),
        plot.title = element_text(color = "Black",
                                  size = 20,hjust = 0.5))

