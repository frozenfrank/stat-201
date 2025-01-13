
# Section 4.2 # 

# X~Bin(7, 0.3) 

# P(X=1)
dbinom(1,7,0.3)
# P(X=0)
dbinom(0,7,0.3)
# P(X>4)
pbinom(4,7,0.3,lower.tail=F)
dbinom(5,7,0.3)+dbinom(6,7,0.3)+dbinom(7,7,0.3)
# P(X<=4)
pbinom(4,7,0.3)
# P(X<4)
pbinom(3,7,0.3)
# P(X>=4)
pbinom(3,7,0.3,lower.tail=F)


n<- 7
p<- 0.3
n*p
n*p*(1-p)
sqrt(n*p*(1-p))


