# Los objetos pueden tener nombres
x <- 1:3
# Ver los nombres de un objeto
names(x)
# Establecer nombres
names(x) <- c("foo", "bar", "norf")
# Establecer nombres en las listas
x <- list(a = 1, b = 2, c = 3)
# Establecer nombres en matrices
m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))