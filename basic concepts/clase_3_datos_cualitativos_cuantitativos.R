#Programción en R  y su aplicación estadistica
#Creado con R version 4.2 por @jabpcomplex

#Datos Cualitativos

rm(list=ls())

setwd("/home/jabp/Programacion/R-scripts/Estadística/cursoC5/")

View(iris)
plot(iris)
summary(iris)
#?summary           #ayuda

str(iris)


head(iris)
#tail(iris,10)

dim(iris)

nrow(iris)

ncol(iris)

colnames(iris)

#EXAMINA EL CONJUNDO DE DATOS airquality y attenu
View(airquality)

summary(airquality)


#factores
#valores que contienen informacion categorica util ara agrupar los elementos de otros vectores del mismo tamaño

bv<-c(0.92,0.97,0.87,0.91,0.92,1.04,0.91,0.94,0.96,0.9,0.96,0.86,0.85)  # colores (B-V) para 13 galaxias

morfo<- c("Sab","E","Sab","S0","E","E","S0","S0","E","Sab","E","Sab","S0")  #informacion morfologica  

length(morfo)

fmorfo <- factor(morfo)  #creamos el factor con 'factor()'    

fmorfo   #muestra los diferentrs factores


levels(fmorfo)   #muestra los niveles


bv[fmorfo=="E"]  #separa un determinado nivel


mean(bv[fmorfo=="E"])  #hace una operacion sobre un nivel

##########3##########3##########3##########3##########3##########3##########3##########3##########3##########3##########3##########3#######
##########3##########3##########3##########3##########3##########3##########3##########3##########3##########3



#Datos cuantitativos


#Estadisticos

#los estadisticos descriptivos son un numero o categoria que nos proporciona informacion acerca de algunos atributos importantes de una variable
# podemos clasificarlos en 3 tipos

#estadisticos de tendencia central: moda, mediana, media tambien conocidos como medidas de tendencia central
#estadisticos de dispersion: minimo, maxico, rango, varianza, desviacion estandar y rango intercuartil
#cuantiles: percentiles, deciles,cuartiles,quintiles, etc.


#
