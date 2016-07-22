# split divide un grupo por un factor
x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
split(x, f)
# Uso en conjunto con lapply
lapply(split(x, f), mean)
# Uso con data frames, obtiene la media de 3 columnas por cada mes
library(datasets)
head(airquality)
s <- split(airquality, airquality$Month)
# Regresa una lista con los promedio en columnas agrupados por mes
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))
# Regresa una matriz con los valores de los meses como columnas
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))
# Realiza la misma operación que el anterior pero se eliminan los NA
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm=TRUE))
# split con más de un nivel
x <- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)
interaction(f1, f2)    ## Combina todos los niveles
# Genera una lista con la interacción de factores
str(split(x, list(f1, f2)))
str(split(x, list(f1, f2), drop = TRUE))