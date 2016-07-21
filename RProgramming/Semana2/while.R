# Ejemplo 1
i=0
while(i < 5) {
    i = i + 1
    print(i)
}
# Ejemplo 2
count <- 0
while(count < 10){
    print(count)
    count <- count + 1
}
# Ejemplo 3, con más de una condición a evaluar
z <- 5
while(z >= 3 && z <= 10){
    print(z)
    coin <- rbinom(1, 1, 0.5)
    
    if(coin == 1){    ## Camino aleatorio
        z <- z + 1
    } else {
        z <- z - 1
    }
}