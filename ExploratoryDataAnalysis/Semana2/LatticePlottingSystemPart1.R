# Lattice, contiene el código para generar gráficas Trellis y funciones xyplot, bwplot, levelplot
# grid, implementa diferentes gráficas
# xyplo, crear scatterplots
# bwplot, boxplots
# histogram
# stripplot, como boxplot
# dotplot, gráfica de puntos "violin strings"
# splom, matriz scatterplot, parecido a la función pairs
# levelplot, contourplot, para generar una imagen de la gráfica
library(lattice)
library(datasets)
xyplot(Ozone ~ Wind, data = airquality)
# Gráfica en donde se convierte "Month" a un factor variable
airquality <- transform(airquality, Month = factor(Month))
xyplot(Ozone ~ Wind | Month, data = airquality, layaut = c(5, 1))
# Lattice regresa un objeto de clase trellis
p <- xyplot(Ozone ~ Wind, data = airquality) # No genera la gráfica
print(p) # Se genera la gráfica
xyplot(Ozone ~ Wind, data = airquality) # Se genera la gráfica