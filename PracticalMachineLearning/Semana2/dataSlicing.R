# División de datos
library(caret); library(kernlab); data("spam")
inTrain <- createDataPartition(y=spam$type, p=0.75, list = FALSE)
training <- spam[inTrain,]
testing <- spam[-inTrain,]
dim(training)

# K-fold
set.seed(32323)
#Se indica el número de pliegues en forma de lista para todas las muestras
folds <- createFolds(y=spam$type, k = 10, list = TRUE, returnTrain = TRUE)
#Se muestra la longitud de muestras en cada pliegue generado
sapply(folds, length)
#Ver los primeros diez valores del primer pliegue
folds[[1]][1:10]

# Para obtener los datos de prueba se indica returnTrain = FALSE
set.seed(32323)
folds <- createFolds(y=spam$type, k = 10, list = TRUE, returnTrain = FALSE)
sapply(folds, length)
folds[[1]][1:10]

# Resampling
set.seed(32323)
folds <- createResample(y=spam$type, times = 10, list = TRUE)
sapply(folds, length)
folds[[1]][1:10]

# Time slices
set.seed(32323)
tme <- 1:1000
folds <- createTimeSlices(y=tme, initialWindow = 20, horizon = 10)
names(folds)
folds$train[[1]]
folds$test[[1]]
