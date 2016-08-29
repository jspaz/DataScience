# Ver los dispositivos en donde se puede mostrar la gráfica
?Devices
# Generar una gráfica en pantalla
library(datasets)
with(faithful, plot(eruptions, waiting))
title(main = "Olg Faithful Geyser data")
# Graficar a un archivo, no se mostrará en la pantalla
pdf(file = "ejercicios/myplot.pdf")
with(faithful, plot(eruptions, waiting))
title(main = "Old Faithful Geyser data")
dev.off() # Cierra el archivo pdf, siempre se hace