# Función colorRamp, acepta valores entre 0 y 1
pal <- colorRamp(c("red", "blue"))
# La posición 1 es rojo, la 2 es verde y la 3 es azul
# En este caso no interviene el verde porque no está especificado
pal(0)
pal(1)
pal(0.50)
# Mostrar la secuencia de cambios de tonos entre rojo y azul
pal(seq(0, 1, len = 10))
# Función colorRampPalette
pal <- colorRampPalette(c("red", "yellow"))
# Se ingresan enteros y regresa un hexadecimal
pal(2)
# Muestra las diez variciones de color entre rojo y amarillo
pal(10)