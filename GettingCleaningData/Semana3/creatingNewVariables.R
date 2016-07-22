# Crear una nueva variable
library(RCurl)
if(!file.exists("./ejercicios/data")){dir.create("./ejercicios/data")}
fileUrl <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./ejercicios/data/restaurants.csv", method = "curl")
restData <- read.csv("./ejercicios/data/restaurants.csv")
# Crear secuencias
s1 <- seq(1, 10, by = 2) ; s1 # Con intervalos de 2
s2 <- seq(1, 10, length = 3) ; s2 # Con 3 elementos, considerando el inicio y fin
x <- c(1, 3, 8, 25, 100); seq(along = x) # Crea índices con los que se apuede iterar con esos 5 valores
# Crear una nueva varible a partir de la selección de datos existentes
restData$nearMe = restData$neighborhood %in% c("Roland Park", "Homeland")
table(restData$nearMe)
# Crear variables binarias
restData$zipWrong = ifelse(restData$zipCode < 0, TRUE, FALSE)
table(restData$zipWrong, restData$zipCode < 0)
# Crear variables categóricas
restData$zipGroups = cut(restData$zipCode, breaks = quantile(restData$zipCode))
table(restData$zipGroups)
table(restData$zipGroups, restData$zipCode)
# Recortar
library(Hmisc)
restData$zipGroups = cut2(restData$zipCode, g = 4)
table(restData$zipGroups)
# Crear variables variables factor
restData$zcf <- factor(restData$zipCode)
restData$zcf[1:10]
class(restData$zcf)
# Niveles de las variables factor
yesno <- sample(c("yes", "no"), size = 10, replace = TRUE)
yesnofac = factor(yesno, levels = c("yes", "no"))
relevel(yesnofac, ref = "yes")
as.numeric(yesnofac)
# Cortar productos de variables factor
library(Hmisc)
restData$zipGroups = cut2(restData$zipCode, g = 4)
table(restData$zipGroups)
# Utilizar la función mutable
library(Hmisc); library(plyr)
restData2 = mutate(restData, zipGroups = cut2(zipCode, g = 4))
table(restData2$zipGroups)
# Transformaciones
abs(-1.231) # valor absoluto
sqrt(81) # Raiz cuadrada
ceiling(1.2313) # Valor superior
floor(1.9812) # valor inferior
round(3.446, digits = 2) # Redondeo
signif(3.475, digits = 2)
cos(x)
sin(x)
log(x)
log2(x)
log10(x)
exp(1)