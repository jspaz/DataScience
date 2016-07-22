# Utilizando dplyr para data frame
library(dplyr)
chicago <- readRDS("chicago.rds")
dim(chicago)
str(chicago)
names(chicago)
head(select(chicago, city:dptp)) # Selecciona el rengo de columnas entre city y dptp
# Seleccionar todas las columnas excepto un rango de columnas
head(select(chicago, -(city:dptp)))
i <- match("city", names(chicago))
j <- match("dptp", names(chicago))
head(chicago[, -(i:j)])
# Realizar un filtrado
chic.f <- filter(chicago, pm25tmean2 > 30)
head(chic.f, 10)
chic.f <- filter(chicago, pm25tmean2 > 30 & tmpd > 80)
head(chic.f)
# Ordenar por variable
chicago <- arrange(chicago, desc(date))
head(chicago)
tail(chicago)
# Renombrar variables
chicago <- rename(chicago, pm25 = pm25tmean2, dewpoint = dptp)
# Crear una nueva variable
chicago <- mutate(chicago, pm25detrend = pm25-mean(pm25, na.rm = TRUE))
head(select(chicago, pm25, pm25detrend))
# Agrupar valores
chicago <- mutate(chicago, tempcat = factor(1*(tmp > 80), labels = c("cold", "hot")))
hotcold <- group_by(chicago, tempcat)
summarize(hotcold, pm25 = mean(pm25, na.rm = TRUE), o3 = max(o3tmean2), no2 = median(no2tmean2))