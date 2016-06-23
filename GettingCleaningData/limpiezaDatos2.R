# Instalar paquete
install.packages("RMySQL")
library(RMySQL)
# Conectarse a la BD de genome
ucscDB <- dbConnect(MySQL(), user = "genome", host = "genome-mysql.cse.ucsc.edu")
result <- dbGetQuery(ucscDB, "show databases;"); dbDisconnect(ucscDB); # Es importante realizar la desconexión
# Conectarse a una DB en específico y mostrar las tablas
hg19 <- dbConnect(MySQL(), user = "genome", db = "hg19", host = "genome-mysql.cse.ucsc.edu")
allTables <- dbListTables(hg19)
length(allTables) # Muestra el número de tablas
allTables[1:5] # Muestra las primeras cinco tablas
# Mostrar los campos de una tabla en específico
dbListFields(hg19, "affyU133Plus2")
# Contar el número de registros de una tabla
dbGetQuery(hg19, "select count(*) from affyU133Plus2")
# Obtener un data frame a partir de una tabla
affyData <- dbReadTable(hg19, "affyU133Plus2")
head(affyData)
# Seleccionar un subconjunto específico
query <- dbSendQuery(hg19, "select * from affyU133Plus2 where misMatches between 1 and 3")
affyMis <- fetch(query); quantile(affyMis$misMatches) # Sólo toma una parte de la tabla
# Hacer una consulta limitada y al finalizar realizar la limpieza del servidor
affyMisSmall <- fetch(query, n = 10); dbClearResult(query);
# Ver la dimensión del data frame obtenido por la consulta y se desconecta de la BD
dim(affyMisSmall)
dbDisconnect(hg19)
# HDF5 hierarchical data format, instalación
source("http://bioconductor.org/biocLite.R")
biocLite("rhdf5")
library(rhdf5)
# Crear un archivo HDF5
created <-  h5createFile("example.h5")
# Crear grupos
created = h5createGroup("example.h5", "foo")
created = h5createGroup("example.h5", "baa")
created = h5createGroup("example.h5", "foo/foobaa")
h5ls("example.h5")
# Escribir a grupos en específico
A = matrix(1:10, nr = 5, nc = 2)
h5write(A, "example.h5", "foo/A")
B = array(seq(0.1, 2.0, by = 0.1), dim = c(5, 2, 2))
attr(B, "scale") <- "liter"
h5write(B, "example.h5", "foo/foobaa/B")
h5ls("example.h5")
# Escrubir un data set
df = data.frame(1L:5L, seq(0, 1, length.out = 5), c("ab", "cde", "fghi", "a", "s"),
                stringsAsFactors = FALSE)
h5write(df, "example.h5", "df")
h5ls("example.h5")
# Leer datos
readA = h5read("example.h5", "foo/A")
readB = h5read("example.h5", "foo/foobaa/B")
readdf = h5read("example.h5", "df")
# Escribir y leer pezados
h5write(c(12, 13, 14), "example.h5", "foo/A", index = list(1:3, 1))
h5read("example.h5", "foo/A")
# Webscraping
con = url("http://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en")
htmlCode = readLines(con)
close(con)
htmlCode
# Parseo con XML, para optener el valor de los tags
library(XML)
url <- "http://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en"
html <- htmlTreeParse(url, useInternalNodes = TRUE)
xpathSApply(html, "//title", xmlValue)
xpathSApply(html, "//td[@id='col-citedby']", xmlValue)
# Otra forma de obtener los datos
library(httr); html2 = GET(url)
content2 = content(html2, as = "text")
parsedHtml = htmlParse(content2, asText = TRUE)
xpathSApply(parsedHtml, "//title", xmlValue)
# Ingresar a páginas con contraseña
pg1 = GET("http://httpbin.org/basic-auth/user/passwd")
pg1
pg2 = GET("http://httpbin.org/basic-auth/user/passwd", authenticate("user", "passwd"))
pg2
names(pg2)
# Handels, para mantener las cookies para no logearse constantemente
google = handle("http://google.com")
pg1 = GET(handle = google, path = "/")
pg2 = GET(handle = google, path = "search")
# APIs 
myapp = oauth_app("twitter", key = "yourConsumerKeyHere", secret = "youConsumerSecretHere")
sig = sign_oauth1.0(myapp, token = "yourTokenHere", token_secret = "yourTokenSecretHere")
homeTL = GET("https://api.twitter.com/1.1/statuses/home_timeline.json", sig)
# Convertir un objeto JSON
json1 = content(homeTL)
json2 = jsonlite::fromJSON(toJSON(json1))
json2[1, 1:4]
