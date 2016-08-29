# Panel de funciones para manejar cada panel en la gráfica
set.seed(10)
x <- rnorm(100)
f <- rep(0:1, each = 50)
y <- x + f - f * x + rnorm(100, sd = 0.5)
f <- factor(f, labels = c("Group 1", "Group 2"))
xyplot(y ~ x | f, layout = c(2, 1))
# Panel de funciones personalizado
xyplot(y ~ x | f, panel = function(x, y, ...) {
  panel.xyplot(x, y, ...) # Primera llamada al panel de función
  panel.abline(h = median(y), lty = 2) # Se agrega una línea horizontal con la media
})
