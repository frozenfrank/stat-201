### Homework 9.1 part II help ###

# Import the date file and name the data frame as Fertilizer. 
# Fertilizer <- read.csv("C:/Users/jiewang1/Downloads/Ai5qcybsUZD1.csv")
View(Fertilizer)

# You will need to reorgaize the values into two columns. 
# Use stack() to reform. 
# Use names() to rename the columns/variables. 

Fer<-stack(Fertilizer)
names(Fer)<-c("Height","FerType")

View(Fer)

# Please make sure you understand the difference between Fertilizer and Fer. 

# Questions 1-9. 

# Getting more decimal digits. 
options(digits=10)

fit<-lm(Height~FerType, data=Fer)
anova(fit)

TotalDF<-2+27
TotalDF

# You can also find the total DF by N-1=30-1=29.

# Question 10
# P-value is 0.0034204 for the Fertilizer Type. 
# Thus the effects by Different Types of Fertilizer are significant. 
# i.e., the average heights of the trees differ significantly if using different types of fertilizer.


# Questions 11-17

fit1<-lm(Height~FerType-1, data=Fer)
confint(fit1,level=0.95)

################################################################
## You may also try the lsmeans package, but it is not required. 

# The following is optional. 
library(lsmeans)
model<-aov(Height~FerType, data=Fer)
summary(model)
lsmeans(model,"FerType")
# If you need to change the number of decimal digits 
# in the output of lsmeans(), try the following.
emm_options(opt.digits = FALSE)
lsmeans(model,"FerType")

###############################################################

# Questions 18-20

# Carb <- read.csv("C:/Users/jiewa/Downloads/d8Mzm0IauSRV.csv")
View(Carb)

CarbRatio<-stack(Carb)
names(CarbRatio)<-c("Ratio", "AgeGroup")

# If you really don't like to include those annoying NA's, do the following

CarbRatio<-na.omit(CarbRatio)
View(CarbRatio)

fit_Bone<-lm(Ratio~AgeGroup,data=CarbRatio)
anova(fit_Bone)

# Question 21
# The null distribution is F with DF 3 and 45.

# Question 22 
qf(0.05,3,45,lower.tail=F)

# Question 23 
# P-value shows as 0.45313, thus, we fail to reject the null hypothesis.
# We can't conclude the concentration ratios differ among different age groups.

# Questions 24

176.482/3

# Question 25

19-3

# Question 26

235.958-176.482

# Question 27

59.476/16

# Question 28

58.8273333/3.71725

