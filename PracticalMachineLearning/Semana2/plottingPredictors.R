# Datos salario
library(ISLR); library(ggplot2); library(caret);
data("Wage")
summary(Wage)

# Entrenamiento
inTrain <- createDataPartition(y=Wage$wage, p=0.7, list = FALSE)
training <- Wage[inTrain,]
testing <- Wage[-inTrain,]
dim(training); dim(testing)

# Gráfica comparativa entre tres variables en pares
featurePlot(x=training[,c("age", "education", "jobclass")], y=training$wage, 
            plot="pairs")

# Gráfica utilizando ggplot2
qplot(age, wage, data = training)
qplot(age, wage, colour = jobclass, data = training)

# Agregando regresiones a la gráfica
qq <- qplot(age, wage, colour = education, data = training)
qq + geom_smooth(method = 'lm', formula = y~x)

# Haciendo factores, generando grupos por cuantiles
library(Hmisc)
cutWage <- cut2(training$wage, g=3)
table(cutWage)

# Graficando los factores
p1 <- qplot(cutWage, age, data = training, fill = cutWage, geom = c("boxplot"))
p1

# Boxplot con puntos
library(gridExtra)
library(grid)
p2 <- qplot(cutWage, age, data = training, fill=cutWage, 
            geom = c("boxplot", "jitter"))
grid.arrange(p1, p2, ncol=2)

# Tablas
t1 <- table(cutWage, training$jobclass)
t1
#Tabla con proporciones a 1
prop.table(t1, 1)

# Gráfica de densidad
qplot(wage, colour = education, data = training, geom = "density")