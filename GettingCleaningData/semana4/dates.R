# Asignar una fecha de tipo character
d1 = date()
class(d1)
# Asignar una fecha de tipo date
d2 = Sys.Date()
class(d2)
# Formateando fechas
# %d = día como número (0-31)
# %a = día de la semana abreviada con letra
# %A = día de la semana no abreviada
# %m = mes (00-12)
# %b = mes abreviado con letra
# %B = mes no abreviado
# %y = año en dos dígitos
# %Y = año en cuatro dígitos
format(d2, "%a %b %d")
# Crear fechas con un vector
x = c("1ene.1960", "2ene.1960", "31mar.1960", "30jul.1969"); z = as.Date(x, "%d%b%Y")
# Operaciones entre fecha con resultado en días
z[1] - z[2]
# Operación con fechas con resultado numérico
as.numeric(z[1]-z[2])
# Conversión a Julianos
weekdays(d2)
months(d2)
julian(d2) # Obtiene el número de días transcurridos desde el origen
# Convertir un número en fecha
library(lubridate)
ymd("20140108")
mdy("08/04/2013")
dmy("03-04-2013")
# Manejo de las horas
ymd_hms("2011-08-03 10:15:03")
ymd_hms("2011-08-03 10:15:03", tz = "Pacific/Auckland")
?Sys.timezone
# Convertir un vector en fechas y obtener el número de la semana del primer elemento
x = dmy(c("1ene.2013", "2ene.2013", "31mar.2013", "30jul.2013"))
wday(x[1])
# Obtener el abreviado de los días
wday(x[1], label = TRUE)
