# El metacaracter ^ representa el inicio de una l?nea: ^inicio
# El metacaracter $ representa el final de una l?nea: final$
# [] se consideran para listar un conjunto de caracteres: [Bb][Us][[Ss]][[Hh]]
# [] se pueden especificar un rango de letras: ^[0-9][a-zA-Z]
# [] indica un conjunto de caracteres no incluidos: [^?.]$ 
# El punto es usado para referirse a cualquier caracter: 9.11
# | significa OR y puede combinar dos expresiones: flood|fire|earthquake|coldfire   ^[Gg]ood|[Bb]ad
# () las subexpresiones contenidas en paréntesisis contienen las alternativas: ^([Gg]ood|[Bb]ad)
# ? indica que la expresión es opcional: [Gg]eorge( [Ww]\.)? [Bb]ush
# \. indica que el punto sea considerado como ese caracter y no como metacaracter
# * significa cualquier número incluyendo ninguno: (.*)
# + significa por lo menos uno de los elementos: [0-9]+ (.*)[0-9]+
# {and} permite especificar el número mínimo y máximo de las expresiones coincidentes: [Bb]ush( +[^ ]+ +){1,5} debate
# m,n significa por lo menos m pero no más de n coincidencias: 
# m significa exactamente m coincidencias
# m, significa por lo menos m coincidencias
# () permiten guardar valores de las expresiones evaluadas: +([a-zA-Z]+) +\1 +
# * también permite buscar la coincidencia de caracteres más larga que satisfaga la expresión: ^S(.*)s
# * se puede delimitar la extensión con ?: ^S(.*?)s$