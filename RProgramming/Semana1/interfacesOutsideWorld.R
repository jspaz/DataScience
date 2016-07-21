# Ver los argumentos de una función
str(file)
# Crear una conexión con objetos externos
con <- file("archivo.txt", "r")
data <- read.csv(con)
close(con)
# Leer líneas de una archivo de texto
con <- gzfile("archivo.gz")
x <- readLines(con, 10)
# Leer lineas de una página web
con <- url("http://www.jhsph.edu", "r")
x <- readLines(con)
head(x)
# Códigos de apertura
# "r", sólo lectura
# "w", escritura e inicializar un nuevo archivo
# "a", anexar
# "rb", "wb", "ab", leer, escribir o anexar en modo binario de Windows