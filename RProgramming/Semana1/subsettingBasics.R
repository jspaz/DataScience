# Obtener elementos de un vector 
x <- c("a", "b", "c", "c", "d", "a")
x[2:5]
x[2]
x[x > "b"]
u <- x > "b"
x[u]
# [] siempre obtiene un objeto de la misma clase original
# [[]] extrae elementos de una lista o data frame, puede ser usado para extraer sólo un elemento y la clase no necesariamente es a la original
# $ extrae elementos de una lista o data frame por nombre