
### Section 1.2 Examples ### 

temp<-c(87,80,91,60,91,77,87,77,80,78,89)
length(temp)
mean(temp)
var(temp)
sd(temp)

# Convert from F to C
temp_c<-0.556*temp-17.778
length(temp_c)
mean(temp_c)
var(temp_c)
sd(temp_c)

temp_sort<-sort(temp)
temp_sort

a<-c(60,77,77,78,80,80,87,87,89,91,91)

temp_sort==a

median(a)
quantile(a,type=2)
IQR(a,type=2)

# What is type, use R help to find out.
?quantile
# Default type for quantile() and IQR() is type=7. 
quantile(a)
IQR(a)

b<-c(36,38,39,39,40,42,45,45,48,48,52,62)

median(b)
quantile(b,type=2)
IQR(b,type=2)

# Feel free to use the default type=7.
quantile(b)
IQR(b)

# The following shows how to import a data file from external source. 

ClassMajor <- read.csv("C:/Users/jiewa/Downloads/ClassMajor.csv")
View(ClassMajor)

# Using Base R. 

table(ClassMajor$Class)
table(ClassMajor$Major)

# Using tidyverse to summarize the data. 
# Installing and using additional packages are optional. You are welcome to try 
# these packages. In most cases, Base R should be sufficient. 

library(tidyverse)
ClassMajor %>% count(Class)
ClassMajor %>% count(Major,sort=T)
ClassMajor %>% count(Class,Major,sort=T)

# Homework Help 
A<-c(18.0, 18.0, 18.0, 20.0, 22.0, 22.0, 22.5, 23.0, 24.0, 24.0, 25.0, 25.0, 25.0, 25.0, 26.0, 26.4)
B<-c(18.8, 18.9, 18.9, 19.6, 20.1, 20.4, 20.4, 20.4, 20.4, 20.5, 21.2, 22.0, 22.0, 22.0, 22.0, 23.6)
C<-c(20.2, 20.5, 20.5, 20.7, 20.8, 20.9, 21.0, 21.0, 21.0, 21.0, 21.0, 21.5, 21.5, 21.5, 21.5, 21.6)
D<-c(20.0, 20.0, 20.0, 20.0, 20.2, 20.5, 20.5, 20.7, 20.7, 20.7, 21.0, 21.1, 21.5, 21.6, 22.1, 22.3)
