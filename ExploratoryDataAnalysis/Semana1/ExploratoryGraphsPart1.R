# Principio 1 mostrar comparaciones
# Principio 2 mostrar causalidad, mecanismo, explicación
# Principio 3 mostrar datos multivariante () más de dos variables
# Principio 4 integrar evidencia
# Principio 5 describir y documentar la evidencia apropiadamente
# Principio 6 contenido es le rey
# Referencia www.edwardtufte.com
# Cargar información (no se encontró archivo de datos)
pollution <- read.csv("data\avgpm25.csv", colClasses = c("numeric", "character", 
    "factor", "numeric", "numeric"))
head(pollution)
# Representación en una dimensión
# Resumen de cinco números
summary(pollution$pm25)
# Boxplot
boxplot(pollution$pm25, col = "blue")
# Indroduce una línea en el punto 12
abline(h = 12)
# Histograma de color verde y dividido en 100
hist(pollution$pm25, col = "green", breaks = 100)
# Muestra una línea de acumulación de puntos en el eje de las x
rug(pollution$pm25)
# Coloca una línea en el número 12 y en la media de color magenta
abline(v = 12, lwd = 2)
abline(v = median(pollution$pm25), col = "magenta", lwd = 4)
# Barplot
barplot(table(pollution$region), col = "wheat", mmain = "Number of Counties in Each Region")