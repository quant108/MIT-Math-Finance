f <- function(x,y) x*exp(-x^2-y^2)
f <- function(x,y) x^2+y^2
f <- function(x,y) x^2 - 4*y^2
f <- function(x,y) x^2*(1+y^2)

x <- seq(-2,2, length=40)
y <- seq(-2,2, length=40)
z <- outer(x,y,f)

persp(x,y,z,
      theta=30, phi=30, expand=0.6,
      col='gray', shade=0.75,
      ltheta=120,
      ticktype='detailed')

filled.contour(x,y,z, nlevels=9,
               color=gray.colors)


library(quantmod)

#SPX = rnorm(n = 252, mean = 0.06, sd = 0.1)
#GLD = rnorm(n = 252, mean = 0.05, sd = 0.1)

SPX = quantmod::getSymbols("^GSPC", from="2018-09-01", src='yahoo', auto.assign = FALSE)$GSPC.Close
GLD = quantmod::getSymbols("GLD", from="2018-09-01", src='yahoo', auto.assign = FALSE)$GLD.Close

SPX = as.vector(quantmod::Delt(SPX))
GLD = as.vector(quantmod::Delt(GLD))

r = data.frame(SPX, GLD)

r = r[-1,]

port <- r$SPX
for (w in seq(.01, 1, .01))
  port <- cbind(port,
  w*r$GLD + (1-w)*r$SPX)

plot(apply(port,2,mean)/apply(port,2,sd)*sqrt(252))

