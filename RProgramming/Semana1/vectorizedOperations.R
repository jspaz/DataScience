# Vectorizar operaciones
x <- 1:4; y <- 6:9  
x + y               ## Realiza la suma entre cada uno de los elementos del vector
x > 2               ## Regresa valor l�gico con el resultado de la evaluaci�n 
x >= 2              ## Regresa un valor l�gico para cada elemento que compla con la evaluaci�n mayor o igual a dos
y == 8              ## Regresa un valor l�gico en donde se eval�a cada elemento si es igual a ocho
x * y               ## Se multiplica cada uno de los elementos
x / y               ## Se divide en cada uno de los elementos
# Vercorizar operaciones entre matrices
x <- matrix(1:4, 2, 2); y <- matrix(rep(10, 4), 2, 2)
x * y
x / y
x %*% y             ## Multiplicaci�n real entre matrices
