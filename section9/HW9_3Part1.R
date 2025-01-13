
### Homework 9.3 part I help ###

# Import the date file and name the data frame as Herb. 
# Herb <- read.csv("C:/Users/jiewa/Downloads/_uY-dsuzCnbl.csv")

View(Herb)

# You don't need to stack any columns 
# because the values are already formatted  correctly. 

# Questions 1-3 
# Find the means by group using tapply function. 
tapply(Herb$Sorption, list(Herb$Concentration), mean)

# Questions 4-15
tapply(Herb$Sorption, list(Herb$Concentration,Herb$Ratio), mean)

# Let's add a global option so we can see more digits in the output.

options(digits=10)

# Questions 16-32
fit<-lm(Sorption~factor(Concentration)*Ratio,data=Herb)
anova(fit)

TotalDF<-2+3+6+24
TotalDF

TotalSS<-9.48701+335.15653+20.29508+9.77987
TotalSS

# Question 33 
# Because the p-value for the interaction effects is smaller than 5%,
# then an additive model is rejected. Thus, no, it is not plausible.

# Question 34
8.301

# Question 35
# F distribution with df 6, 24
# You can use the distribution to verify the p-value.
pf(8.301,6,24, lower.tail=F)

# Question 36
# Remember, in general, you can't interpret the main effects 
# if using a full model. 


