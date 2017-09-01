# Librerias y datos
data("iris"); library(ggplot2)
inTrain <- createDataPartition(y=iris$Species, p=0.7, list=FALSE)
training <- iris[inTrain,]
testing <- iris[-inTrain,]

# Árboles aleatorios
library(caret)
modFit <- train(Species ~ ., data = training, method="rf", prox=TRUE)
modFit

# Obtener un árbol en específico
getTree(modFit$finalModel, k=2)

# Centro de la clase
irisP <- classCenter(training[c(3,4)], training$Species, modFit$finalModel$prox)
irisP <- as.data.frame(irisP); irisP$Species <- rownames(irisP)
p <- qplot(Petal.Width, Petal.Length, col=Species, data = training)
p + geom_point(aes(x=Petal.Width, y=Petal.Length, col=Species), size=5, shape=4, data = irisP)

# Predecir nuevos valores
pred <- predict(modFit, testing); testing$predRight <- pred==testing$Species
table(pred, testing$Species)
qplot(Petal.Width, Petal.Length, colour=predRight, data = testing, main = "newdata Predictions")