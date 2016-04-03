#Ejemplos
#Ctrl + Enter, para ejecutar todas las líneas seleccionadas
#Ctrl + L, para limpar consola 
#Asigna valor
x <- 1
#Se valida el tipo
is.numeric(x)
#Se cambia de tipo
y <- as.logical(x)
#Se valida el tipo
is.logical(y)
#IF, ejemplo 1
if (8==9){
  print('it is true')
} else {
  print('it is false')
}
#IF, ejemplo 2
print(paste('it is',ifelse(T,'true','false')))
#FOR
for (i in 0:5) print(i)
#WHILE
i=0
while(i<5) {
  i=i+1
  print(i)
}
#NEXT
i=0
while(i < 5) {
  i=i+1
  if (i == 3)
    next
  print(i)
}
#REPEAT / BREAK
i = 1
repeat {
  print(i)
  if (i > 4) break
  i=i+1
}
#Sumar dos vectores
c(1, 5) + c(2, 4)
#Evaluar texto
eval(parse(text = "c(1, 5) + c(2, 4)"))
#Importar un archivo dentro del directorio de trabajo
archivo <- read.csv("~/archivo.csv")
View(archivo)
#Crear una matriz a partir de dos vectores
v1 <- c(1,5,28)
v2 <- c(2,7,46)
m1 <- rbind(v1,v2)
#Crear una matriz a partir de las columnas
m2 <- cbind(v1,v2)
#Crear un archivo que guarde la matriz
write.table(m1, 'out.csv',
            sep = ",",
            quote = FALSE,
            col.names = FALSE,
            row.names = FALSE)
#Importar archivo
m3 <- read.csv('out.csv', header = FALSE)
#Se consulta el tipo
class(m3)
#Se cambia el tipo a matriz
m3 <- as.matrix(m3)
#Se consulta el tipo
class(m3)
#Se intercambian las filas por las columnas en la matriz
m4 <- t(m3)
View(m4)
#Se eliminan los nombres de las filas de la matriz
row.names(m4) <- NULL
#Crear un data frame
df <- as.data.frame(rbind(
  c('A1','B1','C1'),
  c('A2','B2','C2'),
  c('A3','B3','C3'),
  c('A4','B4','C4')
), stringsAsFactors = FALSE)
rownames(df) <- c(1,2,3,4)
colnames(df) <- c('A','B','C')
#Consultar un elemento(s) específico(s)
df[1,2]
df[1,]
df[c(2,4),]
df$B
df["B"]
#Regresa la consulta como tipo caracter
df[["A"]]
class(df[["A"]])
#Regresa todos los valores de la posición de la columna
df[2]
#Regresa todos los valores de las columnas excepto la que se indica
df[-2]
#Asignar un nuevo valor
df[1,1] <- 'nuevo'
#Agregar nueva columna
df$D <- c('D1','D2','D3','D4')
#Eliminar una columna
df$C <- NULL
#Combinar data frames
rbind(df1,df2)