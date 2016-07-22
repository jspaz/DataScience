# Generación de datos aleatorios
dnorm(x, mean = 0, sd = 1, log = FALSE)
pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
rnorm(n, mean = 0, sd = 1)
# Forma rápida de generar números aleatorios
x <- rnorm(10)
x <- rnorm(10, 20, 2)
summary(x)
# set.seed permite que no se cambien los valores de los números aleatorios
set.seed(1)  ## el número permite identificar los números aleatorios
rnorm(5)
# Generación de datos Poisson
rpois(10, 1)
ppois(2, 2)   ## distribución acumulativa