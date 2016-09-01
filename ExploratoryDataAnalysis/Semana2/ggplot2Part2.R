# Ejemplo
library(ggplot2)
str(mpg)
qplot(displ, hwy, data = mpg, color = drv)
# Agregar un estadístico a la gráfica
qplot(displ, hwy, data = mpg, geom = c("point", "smooth"))
# Histograma
qplot(hwy, data = mpg, fill = drv)
# Facets = panel
qplot(displ, hwy, data = mpg, facets = .~drv)
qplot(hwy, data = mpg, facets = drv~., binwidth = 2)
# Histograma de MAACS (no se tiene la fuente de los datos)
qplot(log(eno), data = maacs)
qplot(log(eno), data = maacs, fill = mopos)
# Densidad
qplot(log(eno), data = maacs, geom = "density")
qplot(log(eno), data = maacs, geom = "density", color = mopos)
# Scatterplots
qplot(log(pm25), log(eno), data = maacs)
qplot(log(pm25), log(eno), data = maacs, shape = mopos)
qplot(log(pm25), log(eno), data = maacs, color = mopos)
qplot(log(pm25), log(eno), data = maacs, color = mopos) + geom_smooth(method = "lm")
qplot(log(pm25), log(eno), data = maacs, facets = .~ mopos) + geom_smooth(method = "lm")