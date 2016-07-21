# Los factores se utilizan para representar categorías de datos
x <- factor(c("yes", "yes", "no", "yes", "no"))
# Crear la frecuencia por cada nivel
table(x)
# Representa los valores en enteros
unclass(x)
# Ver el atributo con los niveles
attr(x, "levels")
# Utilizando el argumento para definir los niveles
x <- factor(c("yes", "yes", "no", "yes", "no"), levels = c("yes", "no"))
