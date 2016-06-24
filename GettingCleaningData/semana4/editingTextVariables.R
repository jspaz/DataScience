# Obtener archivo de ejemplo
if(!file.exists("./data")){dir.create("./data")}
library(curl)
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data/cameras.csv", method = "curl")
dateDownloaded <- date()
list.files("./data")
cameraData <- read.csv("./data/cameras.csv")
names(cameraData)
tolower(names(cameraData))
