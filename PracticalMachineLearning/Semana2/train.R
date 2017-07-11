# Opciones de entrenamiento
library(caret); library(kernlab); data(spam)
inTrain <- createDataPartition(y=spam$type, p=0.75, list = FALSE)
training <- spam[inTrain,]
testing <- spam[-inTrain,]
modelFit <- train(type ~., data = training, method = "glm")

# Ver todos los argumentos de la función de entrenamiento
?train
#RMSE = Root mean squared error
#Rsquared = R2 de los modelos de regresión
#Accuracy = fraction correct
#Kappa = A measure of concordance

# Ver los argumenos de la función trainControl
args(trainControl)

# seed, es importante utilizar la misma definición de número aleatorios
set.seed(12345)
modelFit2 <- train(type ~., data = training, method = "glm")
modelFit2