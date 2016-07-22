# str, muestra la estructura interna de un objeto
str(str)
str(lm)
str(ls)
# Proporciona más información que summary
x <- rnorm(100, 2, 4)
summary(x)
str(x)
f <- gl(40, 10)
str(f)
# Proporciona datos adicionales de un objeto
library(datasets)
head(airquality)
str(airquality)
m <- matrix(rnorm(100), 10, 10)
str(m)
s <- split(airquality, airquality$Month)
str(s)
