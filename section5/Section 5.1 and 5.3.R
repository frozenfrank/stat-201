
# Input the values of the statistics

xbar<-
s<-
alpha<-
n<-

# Obtain a z-Confidence Interval
z<-qnorm(alpha/2,lower.tail=F)
ll<-xbar-z*s/sqrt(n)
ul<-xbar+z*s/sqrt(n)
c(ll,ul)

# Obtain a t-Confidence Interval

df<-n-1
t<-qt(alpha/2,df,lower.tail=F)

ll<-xbar-t*s/sqrt(n)
ul<-xbar+t*s/sqrt(n)
c(ll,ul)

# If you would like to define a function

onesample_CI<- function (xbar,s,n,alpha,t) {
  
  if(t == TRUE) {
                  multi<-qt(alpha/2,n-1,lower.tail=F)
                 }
  if(t == FALSE) {
                  multi<-qnorm(alpha/2,lower.tail=F)
                  }
  ll<-xbar-multi*s/sqrt(n)
  ul<-xbar+multi*s/sqrt(n)
  cat("A Confidence Interval is: ", c(ll,ul))
  
}

onesample_CI ( )
