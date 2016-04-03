#Crear una función
scaled.gpa <- function (grades, honor.points){
  gpa <- (sum(grades) + honor.points) / length(grades)
  return(gpa)
}
#Invocar función
scaled.gpa(c(3,4,2,3),3)