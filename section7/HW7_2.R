
# HW 7.2 R Help # 

agri <- read.delim("C:/Users/jiewang1/Downloads/agri.txt")
View(agri)

fit<-lm(Yield~pH,data=agri)
summary(fit)

with(agri,cor(pH,Yield))
with(agri,cor(pH,Yield))^2

with(agri,plot(pH,Yield))



A <- read.delim("C:/Users/jiewang1/Downloads/A.txt")
View(A)

model<-lm(Strength~Diameter,data=A)
summary(model)

resid(model)

predict(model)

res<-resid(model)
pred<-predict(model)
B<-data.frame(A,res,pred)
B

new<-data.frame(Diameter=5.5)
predict(model,newdata=new)

B

# For question 16 # 
# Question 16 can by solved by setting up the equation as
#            -67.69+28.94*Diameter=95, 
# then you get the answer by solving for the Diameter.  

# OR you can use the following code. 

install.packages("chemCal")
library(chemCal)
new_y<-data.frame(Strength=95)
inverse.predict(model, 95)

