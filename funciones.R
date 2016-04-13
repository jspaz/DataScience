#Crear una función
scaled.gpa <- function (grades, honor.points){
  gpa <- (sum(grades) + honor.points) / length(grades)
  return(gpa)
}
#Invocar función
scaled.gpa(c(3,4,2,3),3)

#esta función realiza una suma
add2 <- function(x, y) {
  x + y
}

#esta función muestra los valores de un vector numérico después de 10
above <- function(x, n = 10) {
  use <- x > n
  x[use]
}

#esta función realiza el cálculo del promedio de las columnas de una matriz
colummean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(y[,i], na.rm = removeNA)
  }
  means
}