# Leer un XML, parsea el documento en memoria y lo deja como un objeto para despues utilizar otras funciones para ingresar
library(XML)
fileUrl <- "http://www.w3schools.com/xml/simple.xml"
doc <- xmlTreeParse(fileUrl, useInternal = TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)
names(rootNode)
# Acceso directo a un elemento del XML
rootNode[[2]][[3]]
# Extraer el valor por cada uno de los elementos del XML
xmlSApply(rootNode, xmlValue)
# Obtener todos los nombres del menú
xpathSApply(rootNode, "//name", xmlValue)
# Obtener todos los precios del menú
xpathSApply(rootNode, "//price", xmlValue)
# Extraer contenido de una página web por los atributos
fileUrl <- "http://espn.go.com/nfl/team/_/name/bal/baltimore-ravens"
doc <- htmlTreeParse(fileUrl, useInternal = TRUE)
record <- xpathSApply(doc, "//li[@class='record']", xmlValue)
ranking <- xpathSApply(doc, "//li[@class='ranking']", xmlValue)
draft <- xpathSApply(doc, "//td[@class='right']", xmlValue)