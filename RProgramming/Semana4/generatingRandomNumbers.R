# Generaci�n de datos aleatorios
dnorm(x, mean = 0, sd = 1, log = FALSE)
pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
rnorm(n, mean = 0, sd = 1)
# Forma r�pida de generar n�meros aleatorios
x <- rnorm(10)
x <- rnorm(10, 20, 2)
summary(x)
# set.seed permite que no se cambien los valores de los n�meros aleatorios
set.seed(1)  ## el n�mero permite identificar los n�meros aleatorios
rnorm(5)
# Generaci�n de datos Poisson
rpois(10, 1)
ppois(2, 2)   ## distribuci�n acumulativa