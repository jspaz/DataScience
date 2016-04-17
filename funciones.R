# Crear una función
ScaledGpa <- function (grades, honor.points) {
  gpa <- (sum(grades) + honor.points) / length(grades)
  return(gpa)
}
# Invocar función
ScaledGpa(c(3, 4, 2, 3), 3)

# Esta función realiza una suma
Add2 <- function(x, y) {
  x + y
}

# Esta función muestra los valores de un vector numérico después de 10
Above <- function(x, n = 10) {
  use <- x > n
  x[use]
}

# Esta función realiza el cálculo del promedio de las columnas de una matriz
Colummean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}

f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}