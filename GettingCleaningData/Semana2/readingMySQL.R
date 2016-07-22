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