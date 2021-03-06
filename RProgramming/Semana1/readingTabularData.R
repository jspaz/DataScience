# Leer datos tabulares
x <- read.table("archivo.txt")
x <- read.csv("archivo.csv")
# Leer un archivo con l�neas de texto
x <- readLines("archivo.txt")
# Leer archivos R
x <- source("archivo.R")
x <- dget("archivo.R")
# Leer workspaces guardados
x <- load("archivo.RData")
# Leer objetos individuales de R en forma binaria
x <- unserialize("archivo.R")
# Escribir en datos a archivos
write.table(x, file = "archivo.csv")
writeLines()
dump(x, file = "archivo.R")
dput(x, file = "archivo.txt")
save()
serialize()
# Argumentos a considerar al momento de leer datos con read.table
# file, nombre del archivo o conexi�n
# header, indicador l�gico si el archivo tiene una l�nea con encabezados
# sep, un string que indica c�mo se encuentran separadas las columnas
# colClasees, un vector de caracteres que indica la clase de cada columna
# nrows, n�mero de filas
# comment.char, un string de caracter que indica el caracter de los comentarios
# skip, el n�mero de l�neas que se omitir�n desde el inicio
# stringsAsFactors, deber�an de ser consideradas las variables codificadas como factores