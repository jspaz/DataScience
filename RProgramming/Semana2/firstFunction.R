# Función que suma dos elementos
add2 <- function(x, y){
    x + y
}
# Función que identifica los elementos de un vector mayores a 10
above10 <- function(x){
    use <- x > 10
    x[use]
}
# Función que identifica los elementos mayores al número especificado, de lo contrario toma como defecto diez
above <- function(x, n = 10){
    use <- x > n
    x[use]
}
# Función que calcula la media de cada columna de un data frame, eliminando los NA
columnmean <- function(y, removeNA = TRUE){
    nc <- ncol(y)
    means <- numeric(nc)
    for(i in 1:nc){
        means[i] <- mean(y[, i], na.rm = removeNA)
    }
    means
}
# Crear una función
ScaledGpa <- function (grades, honor.points) {
    gpa <- (sum(grades) + honor.points) / length(grades)
    return(gpa)
}
# Invocar función
ScaledGpa(c(3, 4, 2, 3), 3)
# Función que incorpora otra función, primero la define y luego la utiliza
f <- function(x) {
    g <- function(y) {
        y + z
    }
    z <- 4
    x + g(x)
}