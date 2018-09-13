library(ggplot2)
library(dplyr)

x <- c(0, 4, 6, 8, 10)
y <- c(0, 6, 2, 10, 10)

D <- data.frame(x=x/2, y=y)

lm(y ~ x-1, data=D)

ggplot(data=D,aes(x=x,y=y)) + 
  geom_point(size=3) +
  geom_smooth(method=lm, se=FALSE, col='red') +
  coord_equal() +
  theme_classic()

x1 <- c(4, 9, 3)
x2 <- c(1, 8, 3)
x3 <- c(2, 4, 7)

y <- c(6, 5, 1)

X <- matrix(data=c(x1,x2,x3), nrow=3, ncol=3)
solve(t(X) %*% X) %*%t (X) %*% y

x = 23/40
y = 21/40
z = 19/40

3*x + y + 4*z
9*x - 3*y - 2*z


x1 <- c(3, 9, 1)
x2 <- c(1, -3, 1)
x3 <- c(4, -2, 1)

X <- matrix(data=c(x1,x2,x3), nrow=3, ncol=3)
y <- c(8,4,3)

X %*% c(1,1,1)

solve(X) %*% y


x1 <- c(4, 9, 1)
x2 <- c(1, -4, 1)
x3 <- c(4, -2, 0)

D <- data.frame(x1,x2,x3,y)
lm(data=D, y ~ x1 + x2 + x3 - 1)


x1 <- c(3, -1)
x2 <- c(-1, 4)

X <- matrix(data=c(x1, x2), nrow=2, ncol=2)
b <- matrix(c(10,4))

solve(X) %*% b
