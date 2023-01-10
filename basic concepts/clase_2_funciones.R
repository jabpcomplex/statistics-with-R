#Programción en R  y su aplicación estadistica creado en R-4.4.4

#Primeras Funciones  por jabpcomplex
#Estructura de una funcion

rm(list=ls())


#linux
setwd("/home/jabp/ruta/trabajo")
#windows
#setwd("C:/home/jabp/ruta/trabajo")

#ejemplo1 
for (x in 1:5) {
  print(x)
}

#ejemplo2
#Si necesitamos imprimir cada valor como un carácter dando más contexto

for (month in 1:5) {
  print(paste('Month:', month))
}

#ejemplo3
#A menudo, necesitamos evaluar una expresión condicional en el cuerpo del bucle for y
#en función de eso, generar el resultado correspondiente:
for (month in 1:5) {
  if (month < 3) {
    print(paste('Winter, month', month))
  } else {
    print(paste('Spring, month', month))
  }
}

#nombre = function(arg1,arg2,...){comandos}
#podemos crear una funcion que calcule la desviación tipica


#definimos la funcion
desv = function(x){sqrt(var(x))}

#creamos un vector de 1 hasta 10
x <- 1:10

#utili<amos la funcion  
desv(x)



#una vez definida una función se le puede llamar y utilizar
#en cualquier otra funcion predifinida del sistema

x = matrix(rnorm(15),nrow = 3)

x

#vamos a utilizar la funcion apply conbinada con desv para calcular las desviaciones tipicas por columna

apply(x,2,desv)
