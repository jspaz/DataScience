# Crear un vector de objetos
x <- c(0.5, 0.6)        ## numeric
x <- c(TRUE, FALSE)     ## logical
x <- c(T, F)            ## logical
x <- c("a", "b", "c")   ## character
x <- 9:29               ## integer
x <- c(1+0i, 2+4i)      ## complex
# Utilizar la función vector
x <- vector("numeric", length = 10)
# Al combinar objetos se genera la coercion, automáticamente todos los elementos del vector de la misma clase
y <- c(1.7, "a")    ## character
y <- c(TRUE, 2)     ## numeric
y <- c("a", TRUE)   ## character
# Visualizar la clase de un objeto
class(x)
# Coercion explícita
x <- 0:6
as.numeric(x)
as.logical(x)
as.character(x)
# Una lista es un tipo de vector especial, con elementos de diferentes clases
x <- list(1, "a", TRUE, 1 + 4i)