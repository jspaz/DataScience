# Enviar toda la estructura de un objeto con dput
y <- data.frame(a = 1, b = "a")
dput(y)
dput(y, file = "archivo.R")
# Leer un objeto con dget
new.y <- dget("archivo.R")
# Enviar múltiples objetos
x <- "foo"
y <- data.frame(a = 1, b = "a")
dump(c("x", "y"), file = "data.R")
# Leer varios objetos desde un origen
source("archivo.R")