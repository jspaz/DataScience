# Ejemplos con datos (no se encontraron)
library(ggplot2)
qplot(logpm25, NocturnalSympt, data = maacs, facets = .~ bmicat, geom = c("point", "smooth"), method = "lm")
head(maacs[, 1:3])
g <- ggplot(maacs, aes(logpm25, NocturnalSympt))
summary(g)
# Guardar y generar gráfica
p <- g + geom_point()
print(g)
# Autogeneración de gráfica sin guardar
g + geom_point()