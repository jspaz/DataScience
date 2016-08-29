# Base plotting system
library(datasets)
data("cars")
with(cars, plot(speed, dist))
# Lattice system
library(lattice)
state <- data.frame(state.x77, region = state.region)
xyplot(Life.Exp ~ Income | region, data = state, layout = c(4, 1))
# Ggplot2 system
library(ggplot2)
data(mpg)
gplot(disp, hwy, data = mpg)