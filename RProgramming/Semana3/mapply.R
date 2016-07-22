# mapply aplica una funcion en paralelo sobre un conjunto de argumentos
mapply(rep, 1:4, 4:1)
# Vectorizar una función
noise <- function(n, mean, sd){
    rnorm(n, mean, sd)
}
mapply(noise, 1:5, 1:5, 2)
# Equivalente sin usar mapply
list(noise(1,1,2), noise(2,2,2), noise(3,3,2), noise(4,4,2), noise(5,5,2))