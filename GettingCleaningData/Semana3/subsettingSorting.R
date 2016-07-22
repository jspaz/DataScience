# Crear un subconjunto
set.seed(13435)
X <- data.frame("var1" = sample(1:5), "var2" = sample(6:10), "var3" = sample(11:15))
X <- X[sample(1:5),]; X$var2[c(1, 3)] = NA
# Seleccionar todos los valores de la primera columna
X[, 1]
# Otra forma de seleccionar los valores de la primera columna
X[, "var1"]
# Seleccionar sólo los dos primeros valores de la columna var2
X[1:2, "var2"]
# Seleccionar valores mayores o iguales a 3 en la columna var1 y valores mayores a 12 en la columna var3
X[(X$var1 <= 3 & X$var3 > 11),]
# Seleccionar valores mayores o iguales a 3 en la columna var1 o valores mayores a 15 en la columna var3
X[(X$var1 <= 3 | X$var3 > 15),]
# Seleccionar valores mayores a 8 en la columna var2
X[which(X$var2 > 8), ]
# Ordenar los valores de la columna var1
sort(X$var1)
# Ordenar los valores de la columna var1 de forma descendente
sort(X$var1, decreasing = TRUE)
# Ordenar los valores de la columna var1 dejando al final los valores NA
sort(X$var2, na.last = TRUE)
# Ordenar sólo los valores de la variables var1
X[order(X$var1), ]
# Ordenar los valores de las variables var1 y var3
X[order(X$var1, X$var3), ]
# Hacer ordenamiento con plyr
library(plyr)
arrange(X, var1)
arrange(X, desc(var1))
# Agregar renglones y columnas
X$var4 <- rnorm(5)
Y <- cbind(X, rnorm(5))