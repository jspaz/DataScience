# Los argumentos pueden ser emparejados por posición o por nombre, los siguientes son equivalentes
mydata <- rnorm(100)
str(sd)  ## Muestra los parámetros de la función
sd(x = mydata)
sd(x = mydata, na.rm = FALSE)
sd(na.rm = FALSE, x = mydata)
sd(na.rm = FALSE, mydata)
# Muestra los nombres de los argumentos como se definió la función y ejemplos equivalentes de parámetros
args(lm)
lm(data = mydata, y - x, model = FALSE, 1:100)
lm(y - m, mydata, 1:100, model = FALSE)