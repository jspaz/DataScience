# Data table, son más eficientes que los data frames
library(data.table)
DF <- data.frame(x = rnorm(9), y = rep(c("a", "b", "c"), each = 3), z = rnorm(9))
head(DF, 3)
DT <- data.table(x = rnorm(9), y = rep(c("a", "b", "c"), each = 3), z = rnorm(9))
head(DT, 3)
# Ver todas las tablas en memoria
tables()
# Subconjuntos
DT[4,]          # Muestra la cuarta fila
DT[DT$y=="b",]  # Muestra sólo las filas con el valor b de la columna y
DT[c(4, 7)]     # Muestra la fila 4 y la fila 7
DT[,c(2, 3)]    # No muestra los valores de la columnas
# Una expresión es una colección de sentencias dentro de corchetes
{ 
  x = 1 
  y = 2
}
k = {print(10);5}
print(k)
# Cálculo de variables con expresiones
DT[, list(mean(x), sum(z))]
DT[,table(y)]
# Agregar nuevas columnas
DT[, w:=z^2]    # Se agrega la columna W con el resultado de la operación en cada fila
DT2 <- DT       # Aunque se hace la asignación, la afectaci?n a DT tambien afecta a DT2
DT[, y:=2]      # Sustituye los valores en la columna existente Y
# Múltiples operaciones
DT[, m:= {tmp <- (x+z); log2(tmp+5)}]
# Se puede asignar un valor a una nueva columna dependiendo se su evaluación
DT[, a:= x>0]
DT[,b:= mean(x+w), by=a]
# Variables especiales .N es un entero longitud 1 y contiene el número 
set.seed(123);
DT <- data.table(x=sample(letters[1:3], 1E5, TRUE))
DT[, .N , by=x]
# Llaves
DT <- data.table(x=rep(c("a", "b", "c"), each = 100), y = rnorm(300))
setkey(DT, x)
DT['a']
# Joins entre dos data tables
DT1 <- data.table(x = c('a', 'a', 'b', 'dt1'), y = 1:4)
DT2 <- data.table(x = c('a', 'b', 'dt2'), z = 5:7)
setkey(DT1, x); setkey(DT2, x)
merge(DT1, DT2)
# Velocidad de lectura
big_df <- data.frame(x = rnorm(1E6), y = rnorm(1E6))
file <- tempfile()
write.table(big_df, file = file, row.names = FALSE, col.names = TRUE, sep = "\t", quote = FALSE)
system.time(fread(file))  # Permite leer más rápido los elementos desde disco
system.time(read.table(file, header = TRUE, sep = "\t"))