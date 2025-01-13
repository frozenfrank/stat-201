
# How to find the mean and variance of a discrete distribution #

x<-c(0,1,2,3,4)
p<-c(0.4,0.3,0.15,0.1,0.05)

sum(p)
mu<-sum(x*p)
sigma2<-sum((x-mu)^2*p)
sigma<-sqrt(sigma2)

mu
sigma2
sigma<-sqrt(sigma2)
sigma

# An alternative view on the calculation of population parameters. 

n<-100

pop_simu<-c(rep(0,0.4*n),
        rep(1,0.3*n),
        rep(2,0.15*n),
        rep(3,0.1*n),
        rep(4,0.05*n))

mean(pop_simu)

((n-1)/n)*var(pop_simu)

sqrt(((n-1)/n)*var(pop_simu))