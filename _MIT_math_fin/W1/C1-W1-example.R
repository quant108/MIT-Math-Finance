set.seed(42);

X1 <- runif(1e5)
X2 <- runif(1e5)

#hist(X1+X2, probability=TRUE, breaks=50)
hist(X1+X2, probability=FALSE, breaks=50)

n = 120
k = 0:20
p = 0.075

x = sum(dbinom(k,n,p))

#Add 6 random variables drawn from uniform distribution on [0,1]
y = matrix(runif(6e5),ncol=6)
Z <- rowSums(y)
hist(Z,probability=TRUE, breaks=30, col="#05218F",xlim=c(0,6),
     main="Distribution of sum of six uniform random variables")
curve(dnorm(x,mean=mean(Z),sd=sd(Z)),0,6,col="red",lwd=3,add=T)

par(mfrow=c(2,2))
curve(x/(1-x)+1/x, 0, 1)
#curve(x^2-2, add = TRUE, col = "violet")

# W1, Q2-A
t=1
C = 0
N = 1000*1000
for (i in 1:N) {
  R0=runif(1)
  R = runif(t)
  if (sum(R<=R0) == t) {
    C = C + 1
  }
}
P1 = C/N

# W1, Q2-B1

t=8
C = 0
N = 1000*1000
for (i in 1:N) {
  R0=runif(1)
  R = runif(t-1)
  R8 = runif(1)
  if (sum(R<=R0) == (t-1) & R8 > R0) {
    C = C + 1
  }
}
P1 = C/N

# W1, Q2-B2

t=8
N = 1000*100
T = 0
n = 0
for (i in 1:N) {
  R0=runif(1)
  R = runif(t)
  if (sum(R>R0) > 0) {
    n = n + 1
    T = T + min(which(R > R0))
  }
}
N2 = T/n

# W1, Q2-C

t=20
N = 1000*100
T = 0
n = 0
for (i in 1:N) {
  R0=runif(1)
  R = runif(t)
  if (sum(R>R0) > 0) {
    n = n + 1
    T = T + min(which(R > R0))
  }
}
N2 = T/n

# W1, Q2-C

harmonic <- function(n) {
  k <- seq_len(n)
  x1 = sum(1/k)
  return(x1)
}

y = c(0)

for (i in 1:1000) {
  y = c(y, harmonic(i))
}
plot(y, type = "o")


######################

x = -20:20

y = dcauchy(x, -2, 1)
#plot(y)

# Libraries
library(ggplot2)
library(dplyr)

data = data.frame(x,y)

# Plot
data %>%
  tail(100) %>%
  ggplot(aes(x=x, y=y)) +
  geom_line() +
  geom_point()

  

