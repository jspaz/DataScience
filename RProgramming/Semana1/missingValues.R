# un NA o NaN es un valor indefinido para operaciones matem�ticas
x <- c(1, 2, NaN, NA, 3)
# Valida cada uno de los elementos del vector es NA y regresa un valor l�gico
is.na(x)
# Valida cada uno de los elemento del vectror es NaN y regresa un valor l�gico
is.nan(x)