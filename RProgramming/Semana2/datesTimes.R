# Las fechas son representadas por la clase Date, se puede tomar desde un string
x <- as.Date("2016-07-21")
# Días transcurridos desde 1970-01-01
unclass(x)
# Días transcurridos desde 1970-07-21, a partir de un string
unclass(as.Date("2016-07-21"))
# Obtiene la fecha del sistema con fecha, hora y zona horaria
x <- Sys.time()
# POSIXct, es útil para almacenar los datos en un data frame
# POSIXlt, es una lista que almacena información adicional como día de la semana
p <- as.POSIXlt(x)
# Obtener los nombres de la lista POSIXlt
names(unclass(p))
# Obtener el valir específico de la lista, como la zona horaria
p$zone
# Usar la fecha con formato POSIXct
x <- Sys.time()
# Obtiene el número de segundos desde 1970-01-01
unclass(x)
# Convertir strings en objetos de tiempo con los formatos deseados
datestring <- c("Enero 10, 2012 10:40", "Diciembre 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
# Ver las clases en las que se convirtieron
class(x)
# Operaciones con fechas
x <- as.Date("2012-01-01")
y <- strptime("9 enero 2011 11:34:21", "%d %b %Y %H:%M:%S")
x <- as.POSIXlt(x)
x-y
# Ver la diferencia de días entre dos fechas 
x <- as.Date("2012-03-01"); y <- as.Date("2012-02-28")
x-y
# Ver la diferencia de horas entre diferentes zonas horarias
x <- as.POSIXct("2012-10-25 01:00:00")
y <- as.POSIXct("2012-10-25 06:00:00", tz = "GMT")
y-x