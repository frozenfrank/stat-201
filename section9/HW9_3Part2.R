
### HW 9.3 Part II ###

# For Exercise 4 #
# I=4 J=3 K=5
# SSTotal=SSA+SSB+SSAB+SSE

# Question 1 
(4-1)*(3-1)

# Question 2
4*3*(5-1)

# Question 3
997.3-(155.7+287.9+156.7)

# Question 4
155.7/(4-1)

# Question 5
397/48

# Question 6
(287.9/(3-1))/8.270833

# Question 7
F_ts<-(156.7/6)/8.270833
pf(F_ts,6,48,lower.tail=F)

# For Exercise 14 # 

# Import the data #
# Ex9_3_14 <- read.csv("C:/Users/jiewang1/Downloads/ZFmXcKA9O9sR.csv")
View(Ex9_3_14)

# Questions 8-10

with(Ex9_3_14, tapply(Hardness,list(A,B), mean))
with(Ex9_3_14, tapply(Hardness,list(A), mean))
with(Ex9_3_14, tapply(Hardness,list(B), mean))

# Questions 11-13
fit<-lm(Hardness~factor(A)*factor(B),data=Ex9_3_14)
anova(fit)

# Question 14
# Yes, plausible

# Question 15 
# Both factors are significant because both the p-values are less than 5%.

# Questions 16-17

library(lsmeans)
emm_options(opt.digits = FALSE)

means.A <- lsmeans(fit, specs = "A")
means.A

# Or you can compute the bounds using the following

xbar<-777.1667
mse<-6116
t<-qt(0.975,45)
I<-3
J<-3
K<-6
Lower<-xbar-t*sqrt(mse/(J*K))
Upper<-xbar+t*sqrt(mse/(J*K))
Lower
Upper

# Questions 18-19
means.B <- lsmeans(fit, specs = "B")
means.B

# Or you can compute the bounds using the following

xbar<-695.3333
mse<-6116
t<-qt(0.975,45)
I<-3
J<-3
K<-6
Lower<-xbar-t*sqrt(mse/(I*K))
Upper<-xbar+t*sqrt(mse/(I*K))
Lower
Upper
