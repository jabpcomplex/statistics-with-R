# Gráficos de histograma

Un histograma es similar en apariencia a un diagrama de barras, pero en lugar de comparar categorías o buscar tendencias a lo largo del tiempo, cada barra representa cómo se distribuyen los datos en una única categoría. Cada barra representa un rango continuo de datos o el número de frecuencias de un punto de datos específico.

Los histogramas son útiles para mostrar la distribución de una única variable de escala.  Los datos se agrupan y se resumen utilizan un estadístico de porcentaje o recuento. Una variante del histograma es el polígono de frecuencias, que es similar a un histograma normal pero con la diferencia de que se utiliza el elemento gráfico de área en vez del elemento gráfico de barra.

Otra variante del histograma es la pirámide de población, llamada así a consecuencia de su uso más habitual: resumir datos de población.
Cuando se utiliza con datos de población, se divide por género para proporcionar dos histogramas horizontales de los datos de edad situados uno a la espalda del otro.
En los países en los que la población es joven, la forma del gráfico resultante recuerda a una pirámide.
------------------------------------------------------------------------------------------------------

Una variable estadística es una característica de una muestra o población de datos que puede adoptar diferentes valores.

Cuando hablamos de variable estadística estamos hablando de una cualidad que, generalmente adopta forma numérica. Por ejemplo, la altura de Juan es de 180 centímetros. La variable estadística es la altura y está medida en centímetros.

También podríamos, por ejemplo, decir que el beneficio de una empresa ha sido de 22.300 dólares el último año. En este caso, la variable sería el beneficio y estaría medido en dólares. Ambas variables son del tipo cuantitativo (se expresan con un número).

Claro que no todas las variables estadísticas son iguales y, por supuesto, no todas se pueden (en principio) expresar en forma de número. Así, otra variable que podríamos encontrarnos es el color de ojos de una persona. Por ejemplo, Juan tiene los ojos verdes y Andrés los tiene azules. La variable sería el color de ojos y sería una variable cualitativa. Es decir, no se expresa con número.

## Frecuencia absoluta:

La frecuencia absoluta es una medida estadística que nos da información acerca de la cantidad de veces que se repite un suceso al realizar un número determinado de experimentos aleatorios. Esta medida se representa mediante las letras $f_i$. La letra $f$ se refiere a la palabra frecuencia y la letra $i$ se refiere a la realización $i$-ésima del experimento aleatorio.

## Frecuencia relativa:

La frecuencia relativa es una medida estadística que se calcula como el cociente de la frecuencia absoluta de algún valor de la población ($f_i$) entre el total de valores que componen la muestra ($N$).

En r se calcula:

datos <- c (0, 0, 2, 3, 4, 4, 5, 6, 7, 12, 12, 14)
hist(datos, freq = T, main = "Histograma de frecuencias", ylab = "Frecuencia")


  
## Histogtrama de Densidad

¿Densidad, cómo es eso? Cuando algo es más denso es porque existe en una concentración mayor que una referencia. Por lo tanto la función hist() con el argumento prob = TURE grafica un histograma de densidad y nos dice donde se concentran más nuestros valores.

hist(datos, prob = TRUE, main = "Histograma de densidad",  ylab = "Densidad")

Si queremos dibujar estos valores simplemente aplicamos el comando plot a todo eso, así:

plot(density(datos))

