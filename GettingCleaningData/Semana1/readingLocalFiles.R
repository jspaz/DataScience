# validar la existencia del directorio destino
if (!file.exists("ejercicios/data")) {
    dir.create("ejercicios/data")
}
# Descargar archivo de internet
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./ejercicios/data/cameras.csv", method = "curl")
list.files("./ejercicios/data")
dateDownloaded <- date()
# Leer un archivo local
cameraData <- read.table("./data/cameras.csv", sep = ",", header = TRUE, nrows = 162, quote = "")
cameraData <- read.csv("./data/cameras.csv")
head(cameraData)