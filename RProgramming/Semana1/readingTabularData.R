# Leer datos tabulares
x <- read.table("archivo.txt")
x <- read.csv("archivo.csv")
# Leer un archivo con líneas de texto
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
# file, nombre del archivo o conexión
# header, indicador lógico si el archivo tiene una línea con encabezados
# sep, un string que indica cómo se encuentran separadas las columnas
# colClasees, un vector de caracteres que indica la clase de cada columna
# nrows, número de filas
# comment.char, un string de caracter que indica el caracter de los comentarios
# skip, el número de líneas que se omitirán desde el inicio
# stringsAsFactors, deberían de ser consideradas las variables codificadas como factores