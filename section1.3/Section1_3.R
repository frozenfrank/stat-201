
### Section 1.3 Examples ### 

temp<-c(87,80,91,60,91,77,87,77,80,78,89)
boxplot(temp)

# Is there anything that concerns you in the boxplot? 

quantile(temp,type=2)


quantile(temp)

OldFaithful<-read.csv("C:/Users/jiewang1/Box/Statistics-JIEWANG1/ascii-comma/Ch1/table1-3.txt", sep="")
View(OldFaithful)

hist(OldFaithful$Duration)
hist(OldFaithful$Duration, breaks=seq(40,95,by=5),right=TRUE,col="blue")
