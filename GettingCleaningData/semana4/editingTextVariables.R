# Obtener archivo de ejemplo
if(!file.exists("./data")){dir.create("./data")}
library(curl)
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data/cameras.csv", method = "curl")
dateDownloaded <- date()
list.files("./data")
cameraData <- read.csv("./data/cameras.csv")
names(cameraData)
# Poner los caracteres de un vector en minúsculas
tolower(names(cameraData))
# Poner los caracteres de un vector en mayúsculas
toupper(names(cameraData))
# Separar los nombres de las variables
splitNames = strsplit(names(cameraData), "\\.")
# Crear listas aparte
mylist <- list(letters = c("A", "b", "c"), numbers = 1:3, matrix(1:25, ncol = 5))
head(mylist)
mylist[1]
mylist$letters
mylist[[1]]
# Aplicar una función a cada uno de los elementos de un vector o una lista
splitNames[[6]][1]
firstElement <- function(x){x[1]} # La función obtiene el primer elemento de la lista de elementos
sapply(splitNames, firstElement)
# Obtención de datos de prueba
library(curl)
fileUrl1 <- "https://dl.dropboxusercontent.com/u/7710864/data/reviews-apr29.csv"
fileUrl2 <- "https://dl.dropboxusercontent.com/u/7710864/data/solutions-apr29.csv"
download.file(fileUrl1, destfile = "./data/reviews.csv", method = "auto")
download.file(fileUrl2, destfile = "./data/solutions.csv", method = "auto")
reviews <- read.csv("./data/reviews.csv"); solutions <- read.csv("./data/solutions.csv")
head(reviews, 2)
head(solutions, 2)
names(reviews)
# Se sustituyen los nombres de las variables que tienen guión bajo por nada
sub("_", "", names(reviews))
# Remplazar múltiples instancias de un caracter en particular
testName <- "this_is_a_test"
sub("_", "", testName) # Remplaza sólo el primer guión bajo en la variable
gsub("_", "", testName) # Remplaza todos los guiones bajos de la variable
# Buscar valores específicos en el nombre de las variables o dentro de la variable
grep("Alameda", cameraData$intersection) # Muestra las posiciones en las que se encuentra la coincidencia exacta
table(grepl("Alameda", cameraData$intersection)) # Muestra en una tabla con el total de elementos que coinciden y no coinciden
cameraData2 <- cameraData[!grepl("Alameda", cameraData$intersection),] # Crea un subconjunto en donde con los datos en donde no se encuentre el valor Alameda
grep("Alameda", cameraData$intersection, value = TRUE) # Muestra los valores en donde se encuentran las coincidencias
grep("JeffStreet", cameraData$intersection) # Revisar si un valor no aparece en el vector (total de veces)
length(grep("JeffStreet", cameraData$intersection)) # Otra forma de revisar si no existe el valor (posiciones)
library(stringr)
nchar("Jeffrey Leek") # Cuenta el número de caracteres, incluyendo espacios
substr("Jeffrey Leek", 1, 7) # Sólo toma los caracteres del 1 al 7
paste("Jeffrey", "Leek") # Pegar dos cadenas de caracteres separados por un espacio
paste("Jeffrey", "Leek", sep = "--") # Pega dos cadenas separados por --
paste0("Jeffrey", "Leek") # Pega dos cadenas sin espacios de separación
str_trim("Jeff - _       ") # Elimina los espacios extras al final de la cadena de caracteres
