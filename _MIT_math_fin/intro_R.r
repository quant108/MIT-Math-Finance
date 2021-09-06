a=5
x=rnorm(100)
plot(x)

vec1 = c(1,4,6,8,10)

vec2 = seq(from=0, to=1.1, by=0.25)

sum(vec1)

mat=matrix(data=c(9,2,3,4,5,6),ncol=3)

t = data.frame(x = c(11,12,14),
               y = c(19,20,21), z = c(10,9,7))

L = list(one=1, two=c(1,2),
         five=seq(0, 1, length=5))

plot(rnorm(100), type="l", col="gold")

d = data.frame(a = c(3,4,5),
               b = c(12,43,54))

write.table(d, file="tst0.txt",
            row.names=FALSE)

d2 = read.table(file="tst0.txt",
                header=TRUE)

j = c(1,2,NA)

max(j, na.rm=TRUE)


m = "apples"

date1=strptime( c("20100225230000",
                "20100226000000", "20100226010000"),
                format="%Y%m%d%H%M%S")

dt = as.Date('1915-6-16')
dt1 = as.Date('1/15/2001',format='%m/%d/%Y')

h = seq(from=1, to=8)
s = c()

for(i in 2:10) {
    s[i] = h[i] * 10
}

fun1 = function(arg1, arg2) {
    w = arg1 ^ 2
    return(arg2 + w)
}











