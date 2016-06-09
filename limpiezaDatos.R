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
# Descargar archivo de internet, el mÃ©todo "curl" es para mac en pÃ¡ginas https
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
# Leer columnas (incluyendo encabezados) y filas especÃ­ficas
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
# Obtener todos los nombres del menÃº
xpathSApply(rootNode, "//name", xmlValue)
# Obtener todos los precios del menÃº
xpathSApply(rootNode, "//price", xmlValue)
# Extraer contenido de una pÃ¡gina web por los atributos
fileUrl <- "http://espn.go.com/nfl/team/_/name/bal/baltimore-ravens"
doc <- htmlTreeParse(fileUrl, useInternal = TRUE)
record <- xpathSApply(doc, "//li[@class='record']", xmlValue)
ranking <- xpathSApply(doc, "//li[@class='ranking']", xmlValue)
draft <- xpathSApply(doc, "//td[@class='right']", xmlValue)
# Javascript Object Notation, obtener los nombres de las variables del archivo
library(jsonlite)
jsonData <- fromJSON("https://api.github.com/users/jtleek/repos")
names(jsonData)
# Obtener el valor especÃ­fico de una variable, el data frame de otro data frame
names(jsonData$owner)
jsonData$owner$login
# Escribir un data frame a un JSON con identación
myjson <- toJSON(iris, pretty = TRUE)
cat(myjson)
# Regresar un JSON a un data frame
iris2 <- fromJSON(myjson)
iris2
# Data table, son más eficientes que los data frames
library(data.table)
DF <- data.frame(x = rnorm(9), y = rep(c("a", "b", "c"), each = 3), z = rnorm(9))
head(DF, 3)
DT <- data.table(x = rnorm(9), y = rep(c("a", "b", "c"), each = 3), z = rnorm(9))
head(DT, 3)
# Ver todas las tablas en memoria
tables()
# Subconjuntos
DT[4,]          # Muestra la cuarta fila
DT[DT$y=="b",]  # Muestra sólo las filas con el valor b de la columna y
DT[c(4, 7)]     # Muestra la fila 4 y la fila 7
DT[,c(2, 3)]    # No muestra los valores de la columnas
# Una expresión es una colección de sentencias dentro de corchetes
{ 
x = 1 
y = 2
}
k = {print(10);5}
print(k)
# Cálculo de variables con expresiones
DT[, list(mean(x), sum(z))]
DT[,table(y)]
# Agregar nuevas columnas
DT[, w:=z^2]    # Se agrega la columna W con el resultado de la operación en cada fila
DT2 <- DT       # Aunque se hace la asignación, la afectación a DT tambien afecta a DT2
DT[, y:=2]      # Sustituye los valores en la columna existente Y
# Múltiples operaciones
DT[, m:= {tmp <- (x+z); log2(tmp+5)}]
# Se puede asignar un valor a una nueva columna dependiendo se su evaluación
DT[, a:= x>0]
DT[,b:= mean(x+w), by=a]
# Variables especiales .N es un entero longitud 1 y contiene el número 
set.seed(123);
DT <- data.table(x=sample(letters[1:3], 1E5, TRUE))
DT[, .N , by=x]