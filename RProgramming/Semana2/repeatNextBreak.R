# REPEAT / BREAK, Ejemplo 1
i = 1
repeat {
    print(i)
    if (i > 4) break
    i = i + 1
}
# Repeat / Break, ejemplo 2
x0 <- 1
tol <- 1e-8
repeat{
    x1 <- computeEstimate()  ## Esta función no existe
    
    if(abs(x1 - x0) < tol){
        break
    } else {
        x0 <- x1
    }
}
# Repeat
x <- 1
repeat {
    print(x)
    x <- x + 1
    if (x == 100) {
        break  # Hace el break del repeat
    }
}
# Next, return
for (i in 1:100) {
    if (i <= 20) {  ## Omite las primeras veinte iteraciones
        next
    }
    print(i)
}
# NEXT, ejemplo 2
i = 0
while(i < 5) {
    i = i + 1
    if (i == 3)
        next
    print(i)
}