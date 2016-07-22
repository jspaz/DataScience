# Directorio relativo
setwd("./ejercicios/data")
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
download.file(fileUrl, destfile = "./ejercicios/data/cameras.csv", method = "auto")
list.files("./ejercicios/data")
dateDownloaded <- date()
dateDownloaded