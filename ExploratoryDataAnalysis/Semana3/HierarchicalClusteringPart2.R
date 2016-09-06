# Cluster analysis, grupos jerarquicos
set.seed(1234)
par(mar = c(0, 0, 0, 0))
x <- rnorm(12, mean = rep(1:3, each = 4), sd = 0.2)
y <- rnorm(12, mean = rep(c(1, 2, 1), each = 4), sd = 0.2)
plot(x, y, col = "blue", pch = 19, cex = 2)
text(x + 0.05, y + 0.05, labels = as.character(1:12))
# Distancia entre datos
dataframe <- data.frame(x = x, y = y)
dist(dataframe)
# Diagrama de grupos jerarquicos
dataframe <- data.frame(x = x, y = y)
distxy <- dist(dataframe)
hClustering <- hclust(distxy)
plot(hClustering)