# Histograma
library(datasets)
hist(airquality$Ozone)
# Scatterplot
library(datasets)
with(airquality, plot(Wind, Ozone))
# Boxplot
library(datasets)
airquality <- transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "Month", ylab = "Ozone (ppb)")
# Parámetros
# las: orientación de las etiquetas en la gráfica
# bg: color de fondo
# mar: tamaño del margen
# oma: tamaño del margen externo
# mfrow: número de plots por fila, columna
# mfcol: número de plots por fila, columna
# pch: símbolo de graficación
# lty: tipo de línea
# lwd: ancho de la línea, en entero
# col: color de la gráfica 
# colors(): color de la gráfica
# xlab: etiqueta en las x
# ylab: etiqueta en las y
# par(): especificar parámetros globales de las gráficas por sesión
par("lty")
par("col")
par("pch") 
par("bg")  # background
par("mar") # margen
par("mfrow")
