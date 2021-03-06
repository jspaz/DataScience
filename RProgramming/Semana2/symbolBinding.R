# Generar una lista de paquetes y objetos cargados
search()
# Lexical scoping, la z es una variable libre y no es un argumento formal y tampoco una variable local
# Las variables libres son buscadas en todo el ambiente en donde fue definido el ambiente
# Si el valor del s�mbolo no se encuentra en el ambiente, continua al ambiente padre y as� hasta llegar al ambiente global (workspace)
f <- function(x, y) {
    x^2 + y / z
}
# Ejemplo, se define la funci�n 
make.power <- function(n) {
    pow <- function(x) {
        x^n
    }
    pow
}
# Primero se utiliza la funci�n para asignar el valor que se elevar� el n�mero y despu�s el n�mero
cube <- make.power(3)
cube(3)
square <- make.power(2)
square(3)
# Ver en el ambiente en el que se encuentra una funci�n los objetos existentes
ls(environment(cube))
# Ver el valor de un objeto de una en el ambiente de una funci�n
get("n", environment(cube))
# Dynamic scoping
y <- 10
f <- function(x) {
    y <- 2           ## Dynamic scoping, la variable y est� definido dentro del ambiente en la cual la funci�n fue llamada
    y^2 + g(x)
}
g <- function(x) {
    x*y              ## Lexical scoping, el valor de la variable y est� en el ambiente en el que se defini� la funci�n
}