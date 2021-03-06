# Cargar datos y librerias
data("iris"); library(ggplot2)
library(caret)
names(iris)

# Tabla de datos
table(iris$Species)

# Separaci�n de datos para entrenamiento y pruebas
inTrain <- createDataPartition(y=iris$Species, p=0.7, list = FALSE)
training <- iris[inTrain,]
testing <- iris[-inTrain,]
dim(training); dim(testing)

# Gr�fica
qplot(Petal.Width, Sepal.Width, colour=Species, data = training)

# Ajustar el modelo
modFit <- train(Species ~ ., method = "rpart", data = training)
print(modFit$finalModel)

# Graficar �rbol
plot(modFit$finalModel, uniform = TRUE, main = "Classification Tree")
text(modFit$finalModel, use.n = TRUE, all = TRUE, cex = .8)

# Otro formato de la gr�fica
library(rattle)
fancyRpartPlot(modFit$finalModel)

# Predecir nuevos valores
predict(modFit, newdata = testing)