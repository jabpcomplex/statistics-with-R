setwd("C:/Users/jabpcomplex/ruta/archivos")

rm(list=ls())
library(sf,ggplot2,dplyr)

#Panteones de la CDMX al año 2023
data <- read.csv("PANTEONES_FINAL.csv")

class(data)

head(data,10)


#Un resumen del dataset
summary(data)
#nombres de sus filas y columnas
colnames(data)

#Nro total de filas
nrow(data)
#Nro total de columnas
ncol(data)

# Devuelve el número de filas y columnas
dim(data)

#Obtener el valor de una fila y columna específica
print(data[9,11])

#Mostrar un rango de filas y columnas
print(data[1:5,1:3])

# VALORES UNICOS DE LAS COLUMNAS
unique(data$COB1_STV)
unique(data$CP)
unique(data$DELEGACION)
unique(data$SECTOR)
unique(data$NOMBRE_POI)

#Cambiamos el nombre a los valores de columna
data$SECTOR[data$SECTOR == "TASQUEÑA"] <- "TAXQUEÑA"

#FILTROS
#Obtener el total de veces que Alternativa es igual a Si
sum(data[,24]==1)
sum(data[,24]=="VERDADERO")

#filtrar la columna NO_ donde DELEGACION sea IZTAPALAPA
data[data[,"DELEGACION"]=="IZTAPALAPA","NO_"]

#Si quiero saber cuantos panteones hay por delegacion
#summarise() funciona de forma análoga a la función mutate, excepto que en lugar de añadir nuevas columnas crea un nuevo data frame
#tabla<-data%>%group_by(DELEGACION,SECTOR)%>%summarise(No =length(unique(NO_)))
tabla<-data%>%group_by(DELEGACION)%>%summarise(TOTAL =length(unique(NO_)))

# Calculamos la tabla de frecuencias
table(data$DELEGACION)

# Diagrama de barras variable DELEGACION
barplot(table(data$DELEGACION),main = "No. de Panteones por Delegación",
        col = rainbow(3))

numRow <- 60
numCol <- 60

# Gráfico de barras de frecuencia relativa
barplot(prop.table(table(data$DELEGACION)) * 100, main = "Frequencia relativa (%)",
        col = colors()[seq(1, numRow*numCol)])

# Guardamos los archivos
write.csv(data,"PANTEONES_FINAL.csv")
write.csv(tabla,"PANTEONES_NUM_ALCALDIA.csv")

