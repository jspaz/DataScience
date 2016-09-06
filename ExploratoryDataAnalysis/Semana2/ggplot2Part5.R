# Delimitar los rangos de los ejes
library(ggplot2)
testdat <- data.frame(x = 1:100, y = rnorm(100))
testdat[50, 2] <- 100
plot(testdat$x, testdat$y, type = "l", ylim = c(-3, 3))
g <- ggplot(testdat, aes(x = x, y = y))
g + geom_line()
# Se incluyen sólo los valores dentro del rango
g + geom_line() + ylim(-3, 3)
# Se incluyen todos los valores dentro del rango
g + geom_line() + coord_cartesian(ylim = c(-3, 3))
# Mostrar las relación entre variables, tertiles
cutpoints <- quantile(maacs$logno2_new, seq(0, 1, length = 4), na.rm = TRUE)
maacs$no2dec <- cut(maacs$logno2_new, cutpoints)
levels(maacs$no2dec)
# Generación de la gráfica
g <- ggplot(maacs, aes(logpm25, NocturnalSympt))
# Agregar capas
g + geom_point(alpha = 1/3)
  + facet_wrap(bmicat ~ no2dec, nrow = 2, ncol = 4)
  + geom_smooth(method = "lm", se = FALSE, col = "steelblue")
  + theme_bw(base_family = "Avenir", base_size = 10)
  + labs(x = expression("log "*PM[2.5]))
  + labs(y = "Nocturnal Symptoms")
  + labs(title = "MAACS Cohort")