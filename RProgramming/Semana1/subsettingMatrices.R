# Se puede hacer un subconjunto de una matriz
x <- matrix(1:6, 2, 3)
x[2, 1]  ## Obtiene el valor localizado en la fila 2, columna 1
x[1,]    ## Obtiene todos los elementos del renglón 1
x[, 2]   ## Obtiene todos los valores de la columna 2
# Mostrar resultado con formato de matriz y no como vector
x <- matrix(1:6, 2, 6)
x[1, 2, drop = FALSE]
x[1, , drop = FALSE]