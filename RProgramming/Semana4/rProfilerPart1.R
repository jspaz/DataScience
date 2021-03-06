# user time, tiempo cargado al CPU para correr la expresi�n
# elapsed time, tiempo de reloj
system.time(readLines("http://jhsph.edu"))
# Ejemplo con funci�n
hilbert <- function(n) {
    i <- 1:n
    1 / outer(i -1, i, "+")
}
x <- hilbert(1000)
system.time(svd(x))
# Midiendo expresiones largas
system.time({
    n <- 1000
    r <- numeric(n)
    for(i in 1:n){
        x <- rnorm(n)
        r[i] <- mean(x)
    }
})