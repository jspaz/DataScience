# Reorganizar datos
library(reshape2)
head(mtcars)
# Fundir los data frames, reorganizando los valores
mtcars$carname <- rownames(mtcars)
carMelt <- melt(mtcars, id = c("carname", "gear", "cyl"), measure.vars = c("mpg", "hp"))
head(carMelt, n = 3)
tail(carMelt, n = 3)
# Transformando los data frames
cylData <- dcast(carMelt, cyl ~ variable)
cylData <- dcast(carMelt, cyl ~ variable, mean)
# Valores promedio
head(InsectSprays)
tapply(InsectSprays$count, InsectSprays$spray, sum)
# Otra forma de hacer split en forma de lista y sumado
spIns = split(InsectSprays$count, InsectSprays$spray)
sprCount = lapply(spIns, sum)
# Combinar
unlist(sprCount)
sapply(spIns, sum)
# Utilizando plyr
ddply(InsectSprays,.(spray), summarize, sum = sum(count))
# Creando una nueva variable
spraySums <- ddply(InsectSprays,. (spray), summarize, sum = ave(count, FUN = sum))
dim(spraySums)
head(spraySums)