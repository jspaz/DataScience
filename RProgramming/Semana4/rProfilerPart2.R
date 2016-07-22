# Rprof, se utiliza para inicial el profiler
Rprof()
# Genera un reporte indicando cuánto tiempo tarda en cada función
summaryRprof()
# by.total, divide el tiempo en cada función por el total de ejecución
# by.self, hace lo mismo pero primero resta el tiempo encima en el call stack