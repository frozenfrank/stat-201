
# Section 4.5 # 

# P(Z<=-2.14)
pnorm(-2.14)

# P(Z<1.58)
pnorm(1.58)

# P(Z<-0.67)
pnorm(-0.67)

# P(Z>2.12)
pnorm(2.12,lower.tail=F)
1-pnorm(2.12)

# P(0.43<Z<2.66)
pnorm(2.66)-pnorm(0.43)

# P(X<11.1) where X~N(10.2, 0.2)
pnorm(11.1,10.2,sqrt(0.2))

# P(2.2<X<6.1) where X~ N(5.3,1.9)
pnorm(6.1,5.3,sqrt(1.9))-pnorm(2.2,5.3,sqrt(1.9))

# P(Z<c)=0.75, Find c.
qnorm(0.75)

# P(|Z|<c)=0.9
qnorm(0.95)
qnorm(0.05)

# P(X<c)=0.88 where X~N(89.4,6.9). Find c.
qnorm(0.88,89.4,sqrt(6.9))

# Practice:  X~N(75,7.8^2)

# P(X<85) 
pnorm(85,75,7.8)

# P(60<X<80)
pnorm(80,75,7.8)-pnorm(60,75,7.8)

# 80th percentile with 20% of fibers having strength greater than it.
qnorm(0.8,75,7.8)
qnorm(0.2,75,7.8,lower.tail=F)

# The middle 95% of filbers have a strenghts between the two vlaues.
qnorm(0.025,75,7.8)
qnorm(0.025,75,7.8,lower.tail=F)
# or 
qnorm(0.975,75,7.8)
