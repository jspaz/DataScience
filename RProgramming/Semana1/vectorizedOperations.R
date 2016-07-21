# Vectorizar operaciones
x <- 1:4; y <- 6:9  
x + y               ## Realiza la suma entre cada uno de los elementos del vector
x > 2               ## Regresa valor lógico con el resultado de la evaluación 
x >= 2              ## Regresa un valor lógico para cada elemento que compla con la evaluación mayor o igual a dos
y == 8              ## Regresa un valor lógico en donde se evalúa cada elemento si es igual a ocho
x * y               ## Se multiplica cada uno de los elementos
x / y               ## Se divide en cada uno de los elementos
# Vercorizar operaciones entre matrices
x <- matrix(1:4, 2, 2); y <- matrix(rep(10, 4), 2, 2)
x * y
x / y
x %*% y             ## Multiplicación real entre matrices
