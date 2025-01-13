
# Input the values of the statistics

xbar<-
s<-
alpha<-0.05
n<-
mu0<-
  
# Obtain the test statistic
TS<-(xbar-mu0)/(s/sqrt(n))

### Compute the p-value ###

# Z-test # 

# H_1: mu > mu0
p-value<-pnorm(TS,lower.tail=F)
# H_1: mu < mu0
p-value<-pnorm(TS)
# H_1: mu != mu0
p-value<-pnorm(abs(TS),lower.tail=F)*2

# T-test #
df<-n-1
# H_1: mu > mu0
p-value<-pt(TS,df,lower.tail=F)
# H_1: mu < mu0
p-value<-pt(TS,df)
# H_1: mu != mu0
p-value<-pt(abs(TS),df,lower.tail=F)*2
# A T-test

p-value

### Compute the critical value (critical point) ###

# Z test #

# H_1: mu > mu0 or H_1: mu < mu0
cc<-qnorm(alpha,lower.tail=F)

# H_1: mu != mu0
cc<-qnorm(alpha/2,lower.tail=F)

# T test #
df<-n-1

# H_1: mu > mu0 or H_1: mu < mu0
cc<-qt(alpha,df, lower.tail=F)

# H_1: mu != mu0
cc<-qt(alpha/2,df, lower.tail=F)