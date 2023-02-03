

setwd("/home/jabp/Programacion/R-scripts/Estadística/")
getwd()

rm(list=ls())
#library(readxl,dplyr)

datos <- read.table("pesos.txt", header = TRUE)

################################################
#      Medidas de Tendencia Central
################################################
mean(datos$Peso)

median(datos$Peso)

Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

Mode(datos$Peso)


hist(table(datos$Edad), col = "purple", main = "Histograma para la variable Edad", xlab="Edad", ylab="Frecuencia")


##########################################
#    Medidas de Tendencia no central
##########################################

# Entre las medidas de posición de tendencia no central, los cuantiles figuran entre las más utilizadas. 
# Para obtener los cuantiles de una variable en R se emplea la función quantile.

quantile(datos$Peso, probs = c(0.25, 0.75),na.rm=FALSE)

min(datos$Peso)
max(datos$Peso)

################################################
#   Medidas de dispersión
################################################

# na.rm indica si los valores faltantes han de ser eliminados antes del análisis.

var(datos$Peso, na.rm = TRUE)
sd(datos$Peso, na.rm = TRUE)
IQR(datos$Peso, na.rm = TRUE)



# table construye la tabla de frecuencias absolutas a partir de la variable que recibe como argumento

# prop.table recibe como argumento una tabla o una matriz que representa una tabla de frecuencias absolutas,
# y a partir de ella construye la tabla de frecuencias relativas asociada. Es decir, prop.table recibe como 
# argumento el resultado que devuelve la función table.


#Calculamos las frecuencias absolutas y relativas de las variables peso y nombre

tabla_peso <- table(datos$Peso)
prop.table(tabla_peso)

tabla_nombre <- table(datos$Nombres)
prop.table(tabla_nombre)


#Variables cualitativas o variables cuantitativas de tipo discreto: 
#Se pueden considerar gráficos de sectores o gráficos de barras, mediante las funciones pie y barplot, respectivamente.

pie(table(datos$Edad), col = c("yellow", "white", "green", "orange","purple", "red", "pink"), main = "Diagrama de sectores para la variable Edad")


barplot(table(datos$Edad), col= c("yellow", "white", "green", "orange","purple", "red", "pink"), xlab="Edad", ylab="Frecuencias absolutas", main ="Diagrama de barras para la variable Edad")


barplot(table(datos$Sexo,datos$Edad),col=c(2,3))


boxplot(datos$Edad, xlab="Edad", main = "Cajas y bigotes para la variable edad")


