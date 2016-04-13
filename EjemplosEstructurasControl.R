#ejemplos de estructuras que permiten controlar el flujo del programa
#if, else no es necesaria
y <- if(x>3){
  10
} else {
  0
}
#for
x <- c("a","b","c","d")
for(i in 1:3) {
  print(x[i])
}

for(i in seq_along(x)) {
  print(x[i])
}

for(letter in x) {
  print(letter)
}

for(i in 1:4) print(x[i])
#for anidado
x <- matrix(1:6, 2, 3)
for(i in seq_len(nrow(x))) {
  for(j in seq_len(ncol(x))) {
    print(x[i, j])
  }
}
#while
z <- 5
while(z >= 3 && z <= 10) {
  print(z)
  coin <- rbinom(1, 1, 0.5)
  if(coin==1) {
    z <- z + 1
  } else {
    z <- z - 1
  }
}
#repeat
x <- 1
repeat {
  print(x)
  x <- x+1
  if(x == 100) {
    break
  }
}
#next, return
for(i in 1:100) {
  if(i <= 20) {
    next
  }
  print(i)
}