# lapply siempre regresa una lista aún si la entrada no lo es
x <- list(a = 1:5, b = rnorm(10))
lapply(x, mean)     ## calcula la media de los valores de la lista
# Ejemplo 2
x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)
# Se genera los números aleatorio según se defina en x con parámetros de runif
x <- 1:4
lapply(x, runif, min = 0, max = 10)
# Lista con dos matrices, obtiene valores de la primera columna de cada matriz
# Se utiliza una función anónima que sólo existe en ese momento
x <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2))
lapply(x, function(elt) elt[,1])
# sapply simplifica el resultado como un vector o una matriz
x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
sapply(x, mean)