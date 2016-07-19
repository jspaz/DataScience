# Ver paquetes disponibles
a <- available.packages()
head(rownames(a), 3)
# Instalar paquetes
install.packages(c("slidify", "ggplot2", "devtools"))
# Instalar paquetes de Bioconductor
source("http://bioconductor.org/biocLite.R")
biocLite(c("GenomicFeatures", "AnnotationDbi"))
# Referencia: http://www.bioconductor.org/install
# Cargar paquetes
library(ggplot2)
# Mostrar los paquetes cargados
search()