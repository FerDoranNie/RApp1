# Iniciando los modelos predictivos ---------------------------------------

####################################   
#Creado por Fernando Dorantes Nieto <(°) 
#                                     ( >)
#                                      /| 
####################################
library(magrittr)
c("dplyr", "tidyr", "lubridate", "ggplot2", "lattice") %>% 
  sapply(require, character.only=T)
data = "https://raw.githubusercontent.com/vincentarelbundock/Rdatasets/master/csv/datasets/airquality.csv"
data = read.csv(data, header=T) %>% na.omit()
data %>%  names
data %>%  group_by(Day, Month) %>% summarise(media = mean(Temp)) %>% 
  ggplot(aes(x=Day, y= media))+ geom_point() + geom_line(linetype=3)+
  theme_bw()+ xlab("Dia")+ ylab("Promedio")

data %>%  group_by(Day, Month) %>%  summarise(media = mean(Ozone)) %>% 
  ggplot(aes(x=Day, y= media))+ geom_point() + geom_line(linetype=3)+
  theme_bw()+ xlab("Dia")+ ylab("Promedio")

data %>%  group_by(Day, Month) %>%  summarise(media = mean(Solar.R)) %>% 
  ggplot(aes(x=Day, y= media))+ geom_point() + geom_line(linetype=3)+
  theme_bw()+ xlab("Dia")+ ylab("Promedio")









