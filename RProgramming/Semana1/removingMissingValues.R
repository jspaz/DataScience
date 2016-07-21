# Remover valores NA
x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]
# Crear subconjunto sin valores NA
x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y)        ## Regresa un valor lógico indicando que casos están completos
x[good]
y[good]
# Elimina los renglones que tenga por lo menos un valor NA en alguna de sus columnas
airquality[1:6, ]                   ## Muestra los primeros seis renglones
good <- complete.cases(airquality)  ## Selecciona los casos que se encuentran completos
airquality[good, ][1:6, ]           ## Muestra los primeros seis primeros renglones completos