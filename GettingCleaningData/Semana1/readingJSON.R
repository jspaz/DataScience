# Javascript Object Notation, obtener los nombres de las variables del archivo
library(jsonlite)
jsonData <- fromJSON("https://api.github.com/users/jtleek/repos")
names(jsonData)
# Obtener el valor específico de una variable, el data frame de otro data frame
names(jsonData$owner)
jsonData$owner$login
# Escribir un data frame a un JSON con identaci?n
myjson <- toJSON(iris, pretty = TRUE)
cat(myjson)
# Regresar un JSON a un data frame
iris2 <- fromJSON(myjson)
head(iris2)