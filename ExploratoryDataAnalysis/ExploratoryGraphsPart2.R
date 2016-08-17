# Resumen de datos de dos dimensiones
# Boxplots con dos variables(no se encontró archivo de datos)
boxplot(pm ~ region, data = pollution, col = "red")
# Múltiples histogramas
par(mfrow = c(2, 1), mar = c(4, 4, 2, 1))
hist(subset(pollution, region == "east")$pm25, col = "green")
hist(subset(pollution, region == "west")$pm25, col = "green")
# Scatterplot
with(pollution, plot(latitude, pm25, col = region))
abline(h = 12, lwd = 2, lty = 2)
# Scatterplots múltiples
par(mfrow= c(1, 2), mar = c(5, 4, 2, 1))
with(subset(pollution, region == "west"), plot(lattitude, pm25, main = "West"))
with(subset(pollution, region == "east"), plot(lattitude, pm25, main = "East"))