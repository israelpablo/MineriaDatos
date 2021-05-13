


<h1 align="center"> Instituto Tecnológico de Tijuana </h1>
<h3 align="center"> Subdirección académica departamento de sistemas y computación.</h3>


<h4 align="center"> Mineria de datos.</h4>


<h4 align="center"> JOSE CHRISTIAN ROMERO HERNANDEZ.</h4>


<h4 align="center">Unit 2:</h4>

<h4 align="center">Evaluation 2</h4>

<h4 align="center">  Data mining</h4>


<h4 align="center"> Lopez Pablo Israel 17210585</h4>
<h4 align="center"> Reyes Armenta Gerardo Antonio 17211147</h4>

<h4 align="center">Necessary dependencies for data management</h4>
``install.packages("dplyr") 
library(dplyr)
install.packages("tidyverse") 
library(tidyverse)

ProyectData <- read.csv(file.choose())
ProyectData

head(ProyectData)
tail(ProyectData)
str(ProyectData)
summary(ProyectData)
``
<h4 align="center">Aesthetics</h4>
``library(ggplot2)``


<h4 align="center"> We create the filter of the necessary genres for the graph</h4>
``filter(ProyectData, Genre == "action")

f <- ProyectData %>% filter(Genre %in% c( "action", "adventure", "animation",  "comedy", "drama"), Studio %in% c( "Buena Vista Studios", "Fox", "Paramount Pictures", "Sony", "Universal", "WB"))
f
``
<h4 align="center"> The plot is created to show the required graph</h4>

<h4 align="center"> Genres, Gross% Us, your budget and studio for each</h4>
``ggplot(f)+  
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
                                  size = 20,hjust = 0.5))``
<h4 align="center"> Results</h4>

![image](https://user-images.githubusercontent.com/77422159/117079607-f48de300-acf0-11eb-8b14-5c44c30470ff.png)
