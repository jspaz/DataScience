# Los nombres parciales se pueden utilizar con [[]] y $
x <- list(aardvark = 1:5)
x$a                      ## Busca por la primera letra del nombre
x[["a"]]                 ## No encuantra nombre porque busca el nombre parcial
x[["a", exact = FALSE]]  ## Encuentra elementos con nombre parcial