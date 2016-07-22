# validar la existencia del directorio destino
if (!file.exists("ejercicios/data")) {
  dir.create("ejercicios/data")
}
# Descargar archivo de internet
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./ejercicios/data/cameras.xlsx", method = "curl")
list.files("./ejercicios/data")
dateDownloaded <- date()
# Leer un archivo de Excel
library(xlsx)
cameraData <- read.xlsx("./ejercicios/data/cameras.xlsx", sheetIndex=1, header=TRUE)
head(cameraData)
# Leer columnas (incluyendo encabezados) y filas específicas
colIndex <- 2:3
rowIndex <- 1:4
dataCameraSubset <- read.xlsx("./data/cameras.xlsx", sheetIndex=1, colIndex=colIndex, rowIndex=rowIndex)
dataCameraSubset
# Guardar en un archivo de Excel
write.xlsx(dataCameraSubset, "data/out.xlsx", sheetName = "uno", col.names = TRUE, row.names = TRUE)