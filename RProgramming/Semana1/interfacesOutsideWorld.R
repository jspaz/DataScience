# Ver los argumentos de una funci�n
str(file)
# Crear una conexi�n con objetos externos
con <- file("archivo.txt", "r")
data <- read.csv(con)
close(con)
# Leer l�neas de una archivo de texto
con <- gzfile("archivo.gz")
x <- readLines(con, 10)
# Leer lineas de una p�gina web
con <- url("http://www.jhsph.edu", "r")
x <- readLines(con)
head(x)
# C�digos de apertura
# "r", s�lo lectura
# "w", escritura e inicializar un nuevo archivo
# "a", anexar
# "rb", "wb", "ab", leer, escribir o anexar en modo binario de Windows