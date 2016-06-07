# Directorio relativo
setwd("./data")
setwd("../")
# Directorio absoluto
setwd("/Users/sergio")
# Valida si el directorio existe
file.exists("specdata")
# Crear un directorio si no existe
dir.create("directoryName")
if (!file.exists("data")) {
  dir.create("data")
}
# Descargar archivo de internet, el método "curl" es para mac en páginas https
fileUrl <- "https://data.baltimorecity.gov/api/views/frj6-ikmm/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data/cameras.csv", method = "curl")
list.files("./data")
dateDownloaded <- date()
dateDownloaded
# Leer un archivo local
cameraData <- read.table("./data/cameras.csv", sep = ",", header = TRUE, nrows = 162, quote = "")
cameraData <- read.csv("./data/cameras.csv")
head(cameraData)
# Leer un archivo de Excel
library(xlsx)
cameraData <- read.xlsx("./data/cameras.xlsx", sheetIndex=1, header=TRUE)
head(cameraData)
# Leer columnas y filas específicas
colIndex <- 2:3
rowIndex <- 1:4
dataCameraSubset <- read.xlsx("./data/cameras.xlsx", sheetIndex=1, colIndex=colIndex, rowIndex=rowIndex)
dataCameraSubset