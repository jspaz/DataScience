# Las matrices son vectores con un atributo de dimensi�n
m <- matrix(1:6, nrow = 2, ncol = 3)
# Ver la dimensi�n de una matriz
dim(m)
# Ver los atributos de una matriz
attributes(m)
# Crear una matriz a partir de vectores y el atributo de dimensiones
m <- 1:10
dim(m) <- c(2, 5)
# Crear una matriz con la uni�n de filas o columnas
x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)