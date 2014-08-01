x1 <- c(rnorm(300,0,0.5), rnorm(100,-1,0.5))
hist(x, col='blue')

x2 <- c(rnorm(300,0,0.5), rnorm(100,1,0.5))
hist(x, col='red')

mod <- lm(x2 ~ x1)

plot(x1,x2, pch=20)

lines(x1, predict(mod))

plot(mod)

x1 <- rnorm(300,0,1)
x2 <- rnorm(300,0,1)

pdf('/Users/jaywarrick/Documents/MMB/Presentations/Howard Soule Visit/Random.pdf', width=3.36, height=3.9)
plot(x1, x2, pch=20)
dev.off()
