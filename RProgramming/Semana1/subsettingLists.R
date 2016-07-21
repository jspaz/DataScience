# Obtener elementos de una lista
x <- list(foo = 1:4, bar = 0.6)
x[1]        ## Lista que contiene la secuencia
x[[1]]      ## Sólo se obtiene la secuencia
x$bar       ## Elemento asociado con el nombre bar
x[["bar"]]  ## Realiza la misma acción que el anterior
x["bar"]    ## Lista con los elementos asociados al nombre bar
# Obtiene el elemento 1 y 3 de la lista
x <- list(foo = 1:4, bar = 0.6, baz = "hello")
x[c(1, 3)]
# Diferencia entre [[]] y $ 
x <- list(foo = 1:4, bar = 0.6, baz = "hello")
name <- "bar"
x[[name]]  ## Computado por index
x$name     ## El elemento no existe
x$foo      ## El elemento por nombre sí existe
# [[]] puede tomar una secuencia de enteros
x <- list(a = list(10, 12, 14), b = c(3.14, 2.81))
x[[c(1, 3)]]  ## Obtiene el tercer elemento de la primera lista
x[[1]][[3]]   ## Hace la misma acción que el punto anterior
x[[c(2, 1)]]  ## Obtiene el primer elemento de la segunda lista
