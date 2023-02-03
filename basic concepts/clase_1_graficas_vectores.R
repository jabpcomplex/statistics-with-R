#Programción en R  y su aplicación estadistica creado en R-4.4.4
#Creación de vectores por jabpcomplex

rm(list=ls())


#linux
setwd("/home/jabp/ruta/trabajo")
#windows
#setwd("C:/home/jabp/ruta/trabajo")



#Cuando generas “números aleatorios” en R, en realidad estás generando números pseudoaleatorios.
#Estos números se generan con un algoritmo que requiere una semilla para inicializarse. 
# Ser pseudoaleatorio en lugar de puramente aleatorio significa que, si conoces la semilla y el generador, puedes predecir (y reproducir) la secuencia. 

#Semilla
set.seed(123)

#El Generador es la funcion rnorm(argumentos)
gaus <- rnorm(n = 10000,mean=0,sd=1)
#Si ejecutas el código anterior, obtendrás el mismo resultado que en este tutorial.

hist(gaus,col = 'orange',breaks = 40, ylab="Frecuencia",xlab="x",main="Histograma")

#la letra c significa concatenar (crear y concatenar)

x<-c(1,2,3,4)
y <-c(7,2,2,4)

z<-c(x,y)


animals <- c('koala', 'cat', 'dog', 'panda')

for (animal in animals) {
  print(animal)
}


c("hola",100,"mundo", "f3l1z")



#generacion de secuencias
x<-c(1,3,5,8,5,3)

x<-1:10; y<- -5:3

x<-seq(from=2,to=12,by=2); y<-seq(from=2,to=12,length=30) 

y<-seq(along=x);y



#seleccion de elementos de un vector

x<-1:10 ; x[1];x[3];x[c(1,10)]

x[x>3]

x>3

x[y]


names(x)<-c("a","b","c","d","patata")

x[c("b","patata")]


#Ordenacion de vectores


x1<- c(8,6458,54,6,3,67,357,32,4,52,34)

order(x1,decreasing = T)

x1[order(x1)]

sort(x1)

rev(x1) #acomoda al reves

rank(x1)


y<- c(1,21,1,3,1,34,31,7,97,2,16)

order(y,x1)
