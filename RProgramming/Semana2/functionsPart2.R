# En la definición de una función se puede especificar el valor NULL de un argumento
f <- function(a, b = 1, c = 2, d = NULL){
    
}
# Una evaluación perezosa es porque los argumentos definidos son evaluados sólo los que necesita
f <- function(a, b){
    a^2
}
# El argumento ... indica una variable de arguments que generalmente vienen de otras funciones y no es necesario volverlas a capturar
myplot <- function(x, y, type = "1", ...){
    plot(x, y, type = type, ...)
}
# ... también es necesario cuando no se sabe la cantidad de argumentos que se pasarán
args(paste)
args(cat)
# Los argumentos después de ... deberán de ser nombrados explicitamente y no pueden ser eparejados parcialmente
paste("a", "b", se = ":")