# Descargar sólo para Windows el ejecutable en http://cran.r-project.org/bin/windows/Rtools
# Verificar si está instalado Rtools
find.package("devtools")
# Instalar paquete
install.packages("devtools")
# Cargar librería
library(devtools)
# Verificar que en la consola muestre TRUE
find_rtools()