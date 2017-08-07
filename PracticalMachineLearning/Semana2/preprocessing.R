# Preprocesamiento
library(caret); library(kernlab); data("spam")
inTrain <- createDataPartition(y=spam$type, p = 0.75, list = FALSE)
training <- spam[inTrain,]
testing <- spam[-inTrain,]
hist(training$capitalAve, main = "", xlab = "ave. capital run lenght")

mean(training$capitalAve)
sd(training$capitalAve)

# Estandarizar variables
trainCapAve <- training$capitalAve
trainCapAveS <- (trainCapAve - mean(trainCapAve))/sd(trainCapAve)
mean(trainCapAveS)
sd(trainCapAveS)

# Subconjunto de prueba
testCapAve <- testing$capitalAve
testCapAveS <- (testCapAve - mean(trainCapAve))/sd(trainCapAve)
mean(testCapAveS)
sd(testCapAveS)

# Función de preprocesamiento
preObj <- preProcess(training[,-58], method = c("center", "scale"))
trainCapAveS <- predict(preObj, training[,-58])$capitalAve
mean(trainCapAveS)
sd(trainCapAveS)

testCapAveS <- predict(preObj, testing[,-58])$capitalAve
mean(testCapAveS)
sd(testCapAveS)

# Argumentos
set.seed(32343)
modelFit <- train(type ~., data = training, preProcess = c("center", "scale"), method = "glm")
modelFit

# Tranformación Box-Cox
preObj <- preProcess(training[,-58], method = c("BoxCox"))
trainCapAveS <- predict(preObj, training[,-58])$capitalAve
par(mfrow=c(1,2)); hist(trainCapAveS); qqnorm(trainCapAveS)

# Imputing data
set.seed(13343)

#se generan algunos valores NA
training$capAve <- training$capitalAve
selectNA <- rbinom(dim(training)[1], size = 1, prob = 0.05) == 1
training$capAve[selectNA] <- NA
#Estandarizacion
preObj <- preProcess(training[,-58], method = "knnImpute")
capAve <- predict(preObj, training[,-58])$capAve
#Estandarización de valores verdaderos
capAveTruth <- training$capitalAve
capAveTruth <- (capAveTruth - mean(capAveTruth))/sd(capAveTruth)
#Cuantiles
quantile(capAve - capAveTruth)
quantile((capAve - capAveTruth)[selectNA])
quantile((capAve - capAveTruth)[!selectNA])