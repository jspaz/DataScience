# Obtener directorio de trabajo
getwd()
# Leer un archivo csv
read.csv("nombreArchivo.csv")
# Lista de todos los archivos de la carpeta
dir()
# Definir una función
myfunction <- function(x){
    x <- rnorm(100)
    mean(x)
}
# Lista de objetos
ls()
# Cargar las funciones de un archivo
source("nombreArchivo.R")