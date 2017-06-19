library(manipulate)
mu0 = 30
mua = 32
sigma = 4
n = 16
z <- qnorm(1 - alpha)
pnorm(mu0 + z * sigma/sqrt(n), mean = mu0, sd = sigma/sqrt(n), lower.tail = FALSE)

power.t.test(n = 16, delta = 2/4, sd = 1, type = "one.sample", alt = "one.sided")$power

power.t.test(n = 16, delta = 2, sd = 4, type = "one.sample", alt = "one.sided")$power

power.t.test(n = 16, delta = 100, sd = 200, type = "one.sample", alt = "one.sided")$power
