# Tipos de Devices: vector y bitmap
# Tipo vector: pdf, svg (xml), win.metafile, postscript 
# Tipo bitmap: png, jpg, tiff, bpm
# Ver el Device actual
dev.cur()
# Cambiar el Device actual
dev.set(1)
# Copiar gráfica entre Devices
library(datasets)
with(faithful, plot(eruptions, waiting))
title(main = "Old Faithful Geyser data")
dev.copy(png, file = "ejercicios/geyserplot.png")
dev.off()
# Copiar de una gráfica a un pdf
dev.copy2pdf()