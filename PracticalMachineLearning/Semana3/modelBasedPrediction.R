# Librería y datos
data("iris"); library(ggplot2); library(caret)
names(iris)
table(iris$Species)

# Entrenamiento y pruebas
inTrain <- createDataPartition(y=iris$Species, p=0.7, list = FALSE)
training <- iris[inTrain,]
testing <- iris[-inTrain,]
dim(training); dim(testing)

# Generar predicción
modlda = train(Species ~ ., data = training, method = "lda")
modnb = train(Species ~ ., data = training, method = "nb")
plda = predict(modlda, testing); pnb = predict(modnb, testing)
table(plda, pnb)

# Comprarar resultados
equalPredictions = (plda==pnb)
qplot(Petal.Width, Sepal.Width, colour=equalPredictions, data = testing)