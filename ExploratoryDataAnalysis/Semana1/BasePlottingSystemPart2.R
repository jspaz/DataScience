# Funciones
# plot: crear un scatterplot
# lines: agrega l�neas a una gr�fica
# puntos: agrega puntos a una gr�fica
# text: agrega etiquetas de texto utilizando coordenadas
# title: agregar anotaciones a las etiquetas, subt�tulos, margen
# mtext: agregar texto arbitrario a los m�rgenes
# axis: agregar etiquetas a los ejes
# Gr�fica con anotaciones
library(datasets)
with(airquality, plot(Wind, Ozone))
title(main = "Ozone and Wind in New York City")
# Gr�fica con elementos en azul
with(airquality, plot(Wind, Ozone, main = "Ozone und Wind in New York City"))
with(subset(airquality, Month == 5), points(Wind, Ozone, col = "blue"))
# Gr�fica con colores y cuadro de datos
with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City", type = "n"))
with(subset(airquality, Month == 5), points(Wind, Ozone, col = "blue"))
with(subset(airquality, Month != 5), points(Wind, Ozone, col = "red"))
legend("topright", pch = 1, col = c("blue", "red"), legend = c("May", "Other Months"))
# Gr�fica con regresi�n lineal
with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City", pch = 20))
model <- lm(Ozone ~ Wind, airquality)
abline(model, lwd = 2)
# M�ltiples gr�ficas
par(mfrow = c(1, 2))
with(airquality, {
    plot(Wind, Ozone, main = "Ozone and Wind")
    plot(Solar.R, Ozone, main = "Ozone and Solar Radiation")
})
# Tres gr�ficas
par(mfrow = c(1, 3), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
with(airquality, {
    plot(Wind, Ozone, main = "Ozone and Wind")
    plot(Solar.R, Ozone, main = "Ozone and Solar Radiation")
    plot(Temp, Ozone, main = "Ozone and Temperature")
    mtext("Ozone and Weather in New York City", outer = TRUE)
})