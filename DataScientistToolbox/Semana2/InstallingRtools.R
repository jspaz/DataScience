# Descargar s�lo para Windows el ejecutable en http://cran.r-project.org/bin/windows/Rtools
# Verificar si est� instalado Rtools
find.package("devtools")
# Instalar paquete
install.packages("devtools")
# Cargar librer�a
library(devtools)
# Verificar que en la consola muestre TRUE
find_rtools()