# instalar paquete
library(kernlab)
data("spam")
# subsanpling
set.seed(3435)
trainIndicator = rbinom(4601, size = 1, prob = 0.5)
table(trainIndicator)
trainSpam = spam[trainIndicator == 1, ]
testSpam = spam[trainIndicator == 0, ]
names(trainSpam)
head(trainSpam)
# resumen
table(trainSpam$type)
# gráfica
plot(trainSpam$capitalAve ~ trainSpam$type)
plot(log10(trainSpam$capitalAve + 1) ~ trainSpam$type)
plot(log10(trainSpam[, 1:4] + 1))
