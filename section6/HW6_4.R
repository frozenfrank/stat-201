
### Homework 6.4 ###

# 1

x1<-c(213.03, 212.95, 213.04, 213.00, 212.99, 213.01, 221.03, 213.05)
boxplot(x1)

# 2 

x2<-c(213.05, 213.00, 212.94, 213.09, 212.98, 213.02, 213.06, 212.99)
boxplot(x2)

# 4 and # 6
Concentration<-scan()
11.4 13.9 11.2 14.5 15.2 8.1 12.4 8.6 10.5 17.1 9.8 15.9
# When finishing scanning, click the ENTER key in the console. 

t.test(Concentration, mu=15, alternative="less")

# 5
qt(0.05,12-1,lower.tail=F)

# 9
xbar<-5.92563
s<-0.15755
n<-5
mu0<-6.1
df<-n-1
TS<-(xbar-mu0)/(s/sqrt(n))
pvalue<-pt(TS,df)
pvalue

# 10 - 11
alpha<-0.01
t<-qt(alpha/2,df,lower.tail=F)
ll<-xbar-t*s/sqrt(n)
ul<-xbar+t*s/sqrt(n)
c(ll,ul)

# 13 and 15
xbar<-23.2
s<-0.2
n<-10
mu0<-23
df<-n-1
TS<-(xbar-mu0)/(s/sqrt(n))
TS
pvalue<-pt(abs(TS),df,lower.tail=F)*2
pvalue

# 14
qt(0.05/2,10-1,lower.tail=F)

# 17
n<-11
xbar<-13.2874
se<-1.8389
s<-se*sqrt(n)
s

# 18 -19
alpha<-0.05
n<-11
t<-qt(alpha/2,n-1,lower.tail=F)
ll<-xbar-t*s/sqrt(n)
ul<-xbar+t*s/sqrt(n)
c(ll,ul)

# 20
mu0<-16
TS<-(xbar-mu0)/(s/sqrt(n))
TS
