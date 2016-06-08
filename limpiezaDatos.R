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
# Leer columnas (incluyendo encabezados) y filas específicas
colIndex <- 2:3
rowIndex <- 1:4
dataCameraSubset <- read.xlsx("./data/cameras.xlsx", sheetIndex=1, colIndex=colIndex, rowIndex=rowIndex)
dataCameraSubset
# Guardar en un archivo de Excel
write.xlsx(dataCameraSubset, "data/out.xlsx", sheetName = "uno", col.names = TRUE, row.names = TRUE)
# Leer un XML, parsea el documento en memoria y lo deja como un objeto para despues utilizar otras funciones para ingresar
library(XML)
fileUrl <- "http://www.w3schools.com/xml/simple.xml"
doc <- xmlTreeParse(fileUrl, useInternal = TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)
names(rootNode)
# Acceso directo a un elemento del XML
rootNode[[2]][[3]]
# Extraer el valor por cada uno de los elementos del XML
xmlSApply(rootNode, xmlValue)
# Obtener todos los nombres del menú
xpathSApply(rootNode, "//name", xmlValue)
# Obtener todos los precios del menú
xpathSApply(rootNode, "//price", xmlValue)
# Extraer contenido de una página web por los atributos
fileUrl <- "http://espn.go.com/nfl/team/_/name/bal/baltimore-ravens"
doc <- htmlTreeParse(fileUrl, useInternal = TRUE)
record <- xpathSApply(doc, "//li[@class='record']", xmlValue)
ranking <- xpathSApply(doc, "//li[@class='ranking']", xmlValue)
draft <- xpathSApply(doc, "//td[@class='right']", xmlValue)
# Javascript Object Notation, obtener los nombres de las variables del archivo
library(jsonlite)
jsonData <- fromJSON("https://api.github.com/users/jtleek/repos")
names(jsonData)
# Obtener el valor específico de una variable, el data frame de otro data frame
names(jsonData$owner)
jsonData$owner$login
# Escribir un data frame a un JSON con identación
myjson <- toJSON(iris, pretty = TRUE)
cat(myjson)
# Regresar un JSON a un data frame
iris2 <- fromJSON(myjson)
iris2
# Data table, son más eficientes que los data frames
DF <- data.frame(x = rnorm(9), y = rep(c("a", "b", "c"), each = 3), z = rnorm(9))
head(DF, 3)
DT <- data.table(x = rnorm(9), y = rep(c("a", "b", "c"), each = 3), z = rnorm(9))
head(DT, 3)
# Ver todas las tablas en memoria
tables()
# Subconjuntos
DT[4,]
DT[DT$y=="b",]
DT[c(2, 3)]
DT[,c(2,3)]


