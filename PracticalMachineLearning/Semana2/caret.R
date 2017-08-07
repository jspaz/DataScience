# Ejemplo división de datos
library(caret); library(kernlab); data("spam")
#Se dividen los datos 75% para entrenamiento y 25% para pruebas
inTrain <- createDataPartition(y=spam$type, p=0.75, list = FALSE)
#Se generan los subconjuntos de datos para entrenamiento y pruebas
training <- spam[inTrain,]
testing <- spam[-inTrain,]
dim(training)

# Ajustar modelo
set.seed(32343)
#El tipo de predicción utiliza todas las variables del data frame
#El método de predicción utilizado es Generalized Linear Model
modelFit <- train(type ~., data = training, method = "glm")
modelFit

# Modelo final
modelFit <- train(type ~., data = training, method = "glm")
modelFit$finalModel

# Predicción
predictions <- predict(modelFit, newdata = testing)
predictions

# Matriz de confusión
confusionMatrix(predictions, testing$type)