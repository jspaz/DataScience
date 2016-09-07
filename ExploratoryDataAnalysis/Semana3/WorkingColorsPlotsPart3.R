# Tipos de paletas de colores: secuential, diverging, qualitative
library(RColorBrewer)
cols <- brewer.pal(3, "BuGn")
cols
pal <- colorRampPalette(cols)
image(volcano, col = pal(20))
# Función smoothScatter
x <- rnorm(10000)
y <- rnorm(10000)
smoothScatter(x, y)