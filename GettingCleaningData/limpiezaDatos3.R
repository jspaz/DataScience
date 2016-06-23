# Crear un subconjunto
set.seed(13435)
X <- data.frame("var1" = sample(1:5), "var2" = sample(6:10), "var3" = sample(11:15))
X <- X[sample(1:5),]; X$var2[c(1, 3)] = NA
# Seleccionar todos los valores de la primera columna
X[, 1]
# Otra forma de seleccionar los valores de la primera columna
X[, "var1"]
# Seleccionar sólo los dos primeros valores de la columna var2
X[1:2, "var2"]
# Seleccionar valores mayores o iguales a 3 en la columna var1 y valores mayores a 12 en la columna var3
X[(X$var1 <= 3 & X$var3 > 11),]
# Seleccionar valores mayores o iguales a 3 en la columna var1 o valores mayores a 15 en la columna var3
X[(X$var1 <= 3 | X$var3 > 15),]
# Seleccionar valores mayores a 8 en la columna var2
X[which(X$var2 > 8), ]
# Ordenar los valores de la columna var1
sort(X$var1)
# Ordenar los valores de la columna var1 de forma descendente
sort(X$var1, decreasing = TRUE)
# Ordenar los valores de la columna var1 dejando al final los valores NA
sort(X$var2, na.last = TRUE)
# Ordenar sólo los valores de la variables var1
X[order(X$var1), ]
# Ordenar los valores de las variables var1 y var3
X[order(X$var1, X$var3), ]
# Hacer ordenamiento con plyr
library(plyr)
arrange(X, var1)
arrange(X, desc(var1))
# Agregar renglones y columnas
X$var4 <- rnorm(5)
Y <- cbind(X, rnorm(5))

# Ver un fragmento del data frame
library(RCurl)
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data/Restaurants.csv", method = "curl")
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

# Crear una nueva variable
library(RCurl)
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data/restaurants.csv", method = "curl")
restData <- read.csv("./data/restaurants.csv")
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

# Reorganizar datos
library(reshape2)
head(mtcars)
# Fundir los data frames, reorganizando los valores
mtcars$carname <- rownames(mtcars)
carMelt <- melt(mtcars, id = c("carname", "gear", "cyl"), measure.vars = c("mpg", "hp"))
head(carMelt, n = 3)
tail(carMelt, n = 3)
# Transformando los data frames
cylData <- dcast(carMelt, cyl ~ variable)
cylData <- dcast(carMelt, cyl ~ variable, mean)
# Valores promedio
head(InsectSprays)
tapply(InsectSprays$count, InsectSprays$spray, sum)
# Otra forma de hacer split en forma de lista y sumado
spIns = split(InsectSprays$count, InsectSprays$spray)
sprCount = lapply(spIns, sum)
# Combinar
unlist(sprCount)
sapply(spIns, sum)
# Utilizando plyr
ddply(InsectSprays,.(spray), summarize, sum = sum(count))
# Creando una nueva variable
spraySums <- ddply(InsectSprays,. (spray), summarize, sum = ave(count, FUN = sum))
dim(spraySums)
head(spraySums)

# Utilizando dplyr para data frame
library(dplyr)
chicago <- readRDS("chicago.rds")
dim(chicago)
str(chicago)
names(chicago)
head(select(chicago, city:dptp)) # Selecciona el rengo de columnas entre city y dptp
# Seleccionar todas las columnas excepto un rango de columnas
head(select(chicago, -(city:dptp)))
i <- match("city", names(chicago))
j <- match("dptp", names(chicago))
head(chicago[, -(i:j)])
# Realizar un filtrado
chic.f <- filter(chicago, pm25tmean2 > 30)
head(chic.f, 10)
chic.f <- filter(chicago, pm25tmean2 > 30 & tmpd > 80)
head(chic.f)
# Ordenar por variable
chicago <- arrange(chicago, desc(date))
head(chicago)
tail(chicago)
# Renombrar variables
chicago <- rename(chicago, pm25 = pm25tmean2, dewpoint = dptp)
# Crear una nueva variable
chicago <- mutate(chicago, pm25detrend = pm25-mean(pm25, na.rm = TRUE))
head(select(chicago, pm25, pm25detrend))
# Agrupar valores
chicago <- mutate(chicago, tempcat = factor(1*(tmp > 80), labels = c("cold", "hot")))
hotcold <- group_by(chicago, tempcat)
summarize(hotcold, pm25 = mean(pm25, na.rm = TRUE), o3 = max(o3tmean2), no2 = median(no2tmean2))

# Descargar archivo
library(bitops)
library(RCurl)
if(!file.exists("./data")){dir.create("./data")}
fileUrl1 = "https://dl.dropboxusercontent.com/u/7710864/data/reviews-apr29.csv"
fileUrl2 = "https://dl.dropboxusercontent.com/u/7710864/data/solutions-apr29.csv"
download.file(fileUrl1, destfile = "./data/reviews.csv", method = "auto")
download.file(fileUrl2, destfile = "./data/solutions.csv", method = "auto")
reviews = read.csv("./data/reviews.csv"); solutions <- read.csv("./data/solutions.csv")
head(reviews, 2)
head(solutions, 2)
# Combinando datos, con parámetros x,y,by,by.x,by.y,all
names(reviews)
names(solutions)
mergedData = merge(reviews, solutions, by.x = "solution_id", by.y = "id", all = TRUE) # con all, si existen columnas que no aparecen en otro se magregan pero sin mistrar los valores NA
head(mergedData)
# Combinar los valores de las variables con nombre común
intersect(names(solutions), names(reviews))
mergedData2 = merge(reviews, solutions, all = TRUE)
head(mergedData2)
# Usar un join con plyr
library(plyr)
df1 = data.frame(id = sample(1:10), x = rnorm(10))
df2 = data.frame(id = sample(1:10), y = rnorm(10))
arrange(join(df1, df2), id) # Hace el join de forma ordenada
# Join con multiples data frames
df1 = data.frame(id = sample(1:10), x = rnorm(10))
df2 = data.frame(id = sample(1:10), y = rnorm(10))
df3 = data.frame(id = sample(1:10), z = rnorm(10))
dfList = list(df1, df2, df3)
join_all(dfList)
