# Cargar datos
library(ISLR); library(ggplot2); library(caret)
data("Wage"); Wage <- subset(Wage, select = -c(logwage))
summary(Wage)

# Entrenamiento y pruebas
inTrain <- createDataPartition(y=Wage$wage, p=0.7, list = FALSE)
training <- Wage[inTrain,]; testing <- Wage[-inTrain,]
dim(training); dim(testing)

# Graficar
featurePlot(x=training[,c("age", "education", "jobclass")], y=training$wage, plot = "pairs")

# Gr�fica edad vs salario
qplot(age, wage, data = training)

# Gr�fica identificando el tipo de trabajo
qplot(age, wage, colour=jobclass, data = training)

# Gr�fica identificando la educación
qplot(age, wage, colour=education, data = training)

# Ajustar el modelo lineal
modFit <- train(wage ~ age + jobclass + education, method="lm", data = training)
finMod <- modFit$finalModel
print(modFit)

# Gr�fica de diagnóstico
plot(finMod, 1, pch=19, cex=0.5, col="#00000010")

# Variables no utilizadas en el modelo
qplot(finMod$fitted, finMod$residuals, colour=race, data = training)

# Gr�fica por �ndice
plot(finMod$residuals, pch=19)

# Predicci�n vs verdad
pred <- predict(modFit, testing)
qplot(wage, pred, colour=year, data = testing)

# Utilizar todas las covariantes
modFitAll <- train(wage ~., data = training, method="lm")
pred <- predict(modFitAll, testing)
qplot(wage, pred, data = testing)