# Lbreria y datos
library(ISLR); data("Wage"); library(ggplot2); library(caret)
Wage <- subset(Wage, select = -c(logwage))
inTrain <- createDataPartition(y=Wage$wage, p=0.7, list = FALSE)
training <- Wage[inTrain,]; testing <- Wage[-inTrain,]

# Ajustar el modelo
modFit <- train(wage ~ ., method="gbm", data = training, verbose=FALSE)
print(modFit)

# Gráfica
qplot(predict(modFit, testing), wage, data = testing)