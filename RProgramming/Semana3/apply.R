# Evalúa funciones anónimas sobre los márgenes de un arreglo
x <- matrix(rnorm(200), 20, 10)
# Calcula la media por columnas de la matriz
apply(x, 2, mean)
# Calcula la media por filas de la matriz
apply(x, 1, sum)
# Calcular cualqtiles de las filas de una matriz
x <- matrix(rnorm(200), 20, 10)
apply(x, 1, quantile, probs = c(0.25, 0.75))
# Matriz de promedios de un arreglo
a <- array(rnorm(2 * 2 * 10), c(2, 2, 10))
apply(a, c(1,2), mean)
rowMeans(a, dims = 2)