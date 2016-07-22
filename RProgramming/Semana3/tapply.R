# tapply se usa para aplicar una función sobre un conjunto de vectores
x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
tapply(x, f, mean)   ## Obtiene la media de cada grupo
# Resultado sin simplificación
tapply(x, f, mean, simplify = FALSE)
# Encontrar rangos de grupos
tapply(x, f, range)