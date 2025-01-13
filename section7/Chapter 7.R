# textbook <- read.csv("C:/Users/jiewang1/Box/Statistics-Courses/Stat-201/Winter 2023/R Examples/textbook.csv")
# View(textbook)

# Section 1: Scatter plot and correlation #

with(textbook, plot(Pages,Price))
with(textbook, cor(Pages,Price))

# Section 2: Regression model and coefficients #

fit<-lm(Price~Pages,data=textbook)
abline(fit, col="red")
summary(fit)
confint(fit)

# Section 3: Inferences on Yhat ##

new=data.frame(Pages=600)
predict(fit,newdata=new)
predict(fit,newdata=new,interval="confidence")
predict(fit,newdata=new,interval="prediction")

# Redisdual plots (optional) #

res<-resid(fit)
fitted<-predict(fit)
plot(fitted,res)
abline(h=0,col="blue")
