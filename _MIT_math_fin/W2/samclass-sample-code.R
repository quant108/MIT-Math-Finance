##
p = 0.5; q=1-p
Nt=252
Np=1e4
z=matrix(runif(Nt*Np), nrow=Nt)
x=sign(p-z)

s=matrix(0, Nt+1, Np)

for (k in 1:Nt) {
  s[k+1,] = s[k,] + x[k,]
}

matplot(s[,1:3], type='l')
