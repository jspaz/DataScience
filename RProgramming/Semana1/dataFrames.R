# Los data frame son utilizados para almacenar datos tabulares
x <- data.frame(foo = 1:4, bar = c(T, T, F, F))
# Contar el número de filas de un data frame
nrow(x)
# Contar el número de columnas de un data frame
ncol(x)