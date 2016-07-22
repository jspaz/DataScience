# Ver un fragmento del data frame
library(RCurl)
if(!file.exists("./ejercicios/data")){dir.create("./ejercicios/data")}
fileUrl <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./ejercicios/data/Restaurants.csv", method = "curl")
restData <- read.csv("./data/Restaurants.csv")
head(restData, n = 3)
# Ver los últimos registros de un data frame
tail(restData, n = 3)
# Resumen de un data frame
summary(restData)
# Obtener información más detallada del data frame
str(restData)
# Obtener cuantiles de variables cuantitativas
quantile(restData$councilDistrict, na.rm = TRUE)
quantile(restData$councilDistrict, probs = c(0.5, 0.75, 0.9))
# Generar una tabla, agrupando la ocurrencia de los códigos postales y contabilizando a las columnas los missing values
table(restData$zipCode, useNA = "ifany")
# Crear una tabla de ocurrencia en dos dimensiones
table(restData$councilDistrict, restData$zipCode)
# Revisar missing values
sum(is.na(restData$councilDistrict))
any(is.na(restData$councilDistrict))
all(restData$zipCode > 0)
# Sumar filas y columnas
colSums(is.na(restData))
all(colSums(is.na(restData)) == 0)
# Valores con características específicas
table(restData$zipCode %in% c("21212"))
table(restData$zipCode %in% c("21212", "21213"))
# Obtener los registros que entán dentro de los códigos postales especificados
restData[restData$zipCode %in% c("21212", "21213"), ]
# Cross tabs de un data frame
data("UCBAdmissions")
DF = as.data.frame(UCBAdmissions)
summary(DF)
# Obtener la frecuencia existente entre las variables
xt <- xtabs(Freq ~ Gender + Admit, data = DF)
# Tablas planas
warpbreaks$replicate <- rep(1:9, len = 54)
xt = xtabs(breaks ~., data = warpbreaks)
ftable(xt)
# Tamaño del data set
fakeData = rnorm(1e5)
object.size(fakeData)
print(object.size(fakeData), units = "Mb")