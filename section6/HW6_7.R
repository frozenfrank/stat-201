### HW 5.6 and 6.7 ###

# You shall use the import data function to get read the data file. 
# Here is an example that when I imported the data file, 
# the R code appeared in the console. 

recovery <- read.csv("C:/Users/jiewang1/Downloads/VIak-rqNl7bS.csv")
View(recovery)

# Use t.test() for most of the homework problems.

# Questions 1-2

t.test(recovery$Control,recovery$Treatment,conf.level=0.98)

# Questions 3-4

# Ex12 <- read.csv("C:/Users/jiewang1/Downloads/xBFJMQl8GRkF.csv")
# View(Ex12)

t.test(Ex12$X61.degrees,Ex12$X60.degrees)

# Question 5 

# Since the value 0 is included in the 95% CI, 
# then 0 is a plausible value for the difference 
# of the two population means. 
# Thus it is plausible that there is no difference.


# Questions 7-8

# Ex2 <- read.csv("C:/Users/jiewang1/Downloads/wcxKtG4SHNr9.csv")
# View(Ex2)

t.test(Ex2$Oval,Ex2$Disk)

# Questions 9-10
# p-value=0.017 < 0.05
# Thus, at 5% level, the results are significant,
# and the null hypothesis should be rejected.

# Questions 11-12

# Ex10 <- read.csv("C:/Users/jiewang1/Downloads/gALTQ75mm_MP.csv")
# View(Ex10)

t.test(Ex10$Grade.5,Ex10$Grade.2,conf.level=0.98)

# Questions 13-15

# Ex14 <- read.csv("C:/Users/jiewang1/Downloads/Ghh3br5GTEYO.csv")
# View(Ex14)

t.test(Ex14$Treatment,Ex14$Control,alternative="less")

# p-value=0.004 < 0.05
# Thus, at 5% level, the results are significant,
# and the null hypothesis should be rejected.

# Questions 16-19

# (a)
0.482/sqrt(6)

# (b) 
0.094*sqrt(13)

# (c)
1.755-3.239

# (d)

(1.755-3.239)/sqrt((0.482/sqrt(6))^2+(0.094)^2)
# Please remember that "SE mean" is "StDev/sqrt(N)"