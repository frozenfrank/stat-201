### HW 5.7 and 6.8 ###

# Question 6-7

# Data file should be downloaded then opened in R. 
# Use import data function. 
# Ex2 <- read.csv("C:/Users/jiewang1/Downloads/FtvQ2tmHCP-x.csv")
# View(Ex2)

t.test(Ex2$Difference, conf.level=0.95) 
# OR 
t.test(Ex2$Before, Ex2$After, paired=TRUE, conf.level=0.95)

# Questions 8-9

# Ex6 <- read.csv("C:/Users/jiewang1/Downloads/vZAywyNXHf-v.csv")
# View(Ex6)

t.test(Ex6$Hot, Ex6$Cold, paired=T,conf.level=0.98)

# Questions 10-12

# BldPressure <- read.csv("C:/Users/jiewang1/Downloads/8qiLBWjqfmSf.csv")
# View(BldPressure)

t.test(BldPressure$Ausculatory,BldPressure$Oscillatory,alternative="greater",paired=T)
# Or
t.test(BldPressure$Difference,alternative="greater")

# Questions 13-15 

# Ex4 <- read.csv("C:/Users/jiewang1/Downloads/IYMLIfHX303N.csv")
# View(Ex4)

t.test(Ex4$X40.degrees,Ex4$X80.degrees,paired=T)
qt(0.025,9,lower.tail=F)

# Questions 17-19

# Ex10 <- read.csv("C:/Users/jiewang1/Downloads/gdt3F5ZNcloH.csv")
# View(Ex10)

t.test(Ex10$Before,Ex10$After,paired=T,mu=75,alternative="greater")

# At 10% level, p-value > 0.1. Thus, the results are not significant.
# The null hypothesis is not rejected. 


