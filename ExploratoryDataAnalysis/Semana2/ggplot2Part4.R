# Se agrega la capa smooth
g + geom_point() + geom_smooth()
# Utilizando regresión lineal
g + geom_point() + geom_smooth(method = "lm")
# Se agrega la capa facets, para generar gráficas comparativas con las mismas relaciones, por variables factor
g + geom_point() + facet_grid(.~bmicat) + geom_smooth(method = "lm")
# Modificar el color de valores constantes
g + geom_point(color = "steelblue", size = 4, alpha = 1/2)
# Ajustar el color por variable
g + geom_point(aes(color = bmicat), size = 4, alpha = 1/2)
# Modificar las etiquetas
g + geom_point(aes(color = bmicat)) + labs(title = "MAACS Cohort") + labs(x = expression("log " * PM[2.5]), y = "Nocturnal Symptoms")
# Modificar el smoother
g + geom_point(aes(color = bmicat), size = 2, alpha = 1/2) + geom_smooth(size = 4, linetype = 3, method = "lm", se = FALSE)
# Modificar el tema de la gráfica
g + geom_point(aes(color = bmicat)) + theme_bw(base_family = "Times")