# Ejemplos
# Ctrl + Enter, para ejecutar todas las líneas seleccionadas
# Ctrl + L, para limpar consola
# Asigna valor
x <- 1
# Cargar librería
library("ggplot2")
require('')
# Cargar datos contenidos en un paquete
data(package = 'ggplot2')
# Ayuda
help("require")
# Importar un archivo dentro del directorio de trabajo
archivo.csv <- read.csv("~/archivo.csv")
View(archivo.csv)
# Muestra los primeros seis renglones de un archivo cargado
head(archivo.csv)
# Muestra estadísticos básicos
summary(archivo.csv)
# Filtrado
filtrado <- subset(archivo, State == "Committed", select = c(Assigned.To, ID))
filtrado <- subset(archivo, State == "Committed")$ID
# Suma
sum(x)
# Promedio
mean(x)
# Muestra el número de registros y variables
dim(archivo)
# Gráfica
g <- ggplot(movies, aes(x = year, y = budget))
# Pegar un renglón
paste(c('hello', 5, 7.6), collapse = ' ')
# Se valida el tipo
is.numeric(x)
# Se cambia de tipo
y <- as.logical(x)
# Se valida el tipo
is.logical(y)
# IF, ejemplo 1
if (8 == 9) {
  print('it is true')
} else {
  print('it is false')
}
# IF, ejemplo 2
print(paste('it is', ifelse(T, 'true', 'false')))
# FOR
for (i in 0:5) print(i)
# WHILE
i=0
while(i < 5) {
  i = i + 1
  print(i)
}
# NEXT
i = 0
while(i < 5) {
  i = i + 1
  if (i == 3)
    next
  print(i)
}
# REPEAT / BREAK
i = 1
repeat {
  print(i)
  if (i > 4) break
  i = i + 1
}
# Sumar dos vectores
c(1, 5) + c(2, 4)
# Evaluar texto
eval(parse(text = "c(1, 5) + c(2, 4)"))
# Crear una matriz a partir de dos vectores
v1 <- c(1, 5, 28)
v2 <- c(2, 7, 46)
m1 <- rbind(v1, v2)
# Crear una matriz a partir de las columnas
m2 <- cbind(v1, v2)
# Crear un archivo que guarde la matriz
write.table(m1, 'out.csv',
            sep = ",",
            quote = FALSE,
            col.names = FALSE,
            row.names = FALSE)
# Importar archivo
m3 <- read.csv('out.csv', header = FALSE)
# Se consulta el tipo
class(m3)
# Se cambia el tipo a matriz
m3 <- as.matrix(m3)
# Se consulta el tipo
class(m3)
# Se intercambian las filas por las columnas en la matriz
m4 <- t(m3)
View(m4)
# Se eliminan los nombres de las filas de la matriz
row.names(m4) <- NULL
# Crear un data frame
df <- as.data.frame(rbind(
  c('A1','B1','C1'),
  c('A2','B2','C2'),
  c('A3','B3','C3'),
  c('A4','B4','C4')
), stringsAsFactors = FALSE)
rownames(df) <- c(1, 2, 3, 4)
colnames(df) <- c('A', 'B', 'C')
# Consultar un elemento(s) específico(s)
df[1, 2]
df[1, ]
df[c(2, 4), ]
df$B
df["B"]
# Regresa la consulta como tipo caracter
df[["A"]]
class(df[["A"]])
# Regresa todos los valores de la posición de la columna
df[2]
# Regresa todos los valores de las columnas excepto la que se indica
df[-2]
# Asignar un nuevo valor
df[1,1] <- 'nuevo'
# Agregar nueva columna
df$D <- c('D1', 'D2', 'D3', 'D4')
# Eliminar una columna
df$C <- NULL
# Combinar data frames
rbind(df1, df2)
# Factor creado con un orden definido
x <- factor(c("yes", "yes", "no", "yes", "no"), levels = c("yes", "no"))
table(x)
unclass(x)
# Probar que los objetos no tienen datos perdidos
is.na(x)
is.nan(x)
# crear un data frame
x <- data.frame(f = 1:4, bar = c(T, T, F, F))
# Número de filas
nrow(x)
# Número de columnas
ncol(x)
# Nombre de un objeto
x <- 1:3
names(x)
names(x) <- c("uno", "dos", "tres")
# Nombres en listas
x <- list(a = 1, b = 2, c = 3)
# Nombres en matrices
m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
# Leer datos tabulares
read.table("tabla.txt")
read.csv(x)
# Leer líneas de un archivo de texto
readLines(x)
# Leer archivos de código de R
source()
dget()
# Cargar un workspace
load()
# Leer objetos binarios simples de R en forma binaria
unserialize()
# Escribir datos a un archivo
write.table()
writeLines()
dump()
dput()
dget()
save()
serialize()
# Estructura de datos (metadatos) a un archivo
y <- data.frame(a = 1, b = "a")
dput(y)
dput(y, file = "y.R")
# Leer desde una archivo creado por dput
new.y <- dget("y.R")
new.y
# se guardan varios objetos en un archivo
x <- "foo"
y <- data.frame(a = 1, b = "a")
dump(c("x", "y"),file = "data.R")
rm(x, y)
source("data.R")