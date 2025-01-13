
### HW 7.3 Help ### 

# Question 1 # 

7-2

# Questions 2-3 #

multi<-qt((1-0.98)/2,7-2,lower.tail=F)
slope<--0.27985
se.slope<-0.079258
ll<-slope-multi*se.slope
ul<-slope+multi*se.slope
c(ll,ul)

# Questions 4-5 #

multi<-qt((1-0.98)/2,7-2,lower.tail=F)
intercept<-0.77289
se.intercept<-0.14534
ll<-intercept-multi*se.intercept
ul<-intercept+multi*se.intercept
c(ll,ul)

# Questions 6-7 #
# Claims beta_1=-0.6 (decreased y if x increases)

slope<--0.27985
se.slope<-0.079258

claim<- -0.6
t<-(slope-claim)/se.slope
t

# It is reasonable to set up a two-sided test to test the claim. 
pvalue<-pt(abs(t),7-2,lower.tail=F)*2
pvalue

# Question 12 #

88.761-0.7524*50

# Question 13 #

r2<-0.22
correlation<- -sqrt(0.22)
correlation

# Question 15 #

-0.23429+0.72868*2.5

# Questions 16-17 #
# Claims beta_0=0

intercept<--0.23429
se.intercept<-0.23996

claim<- 0
t<-(intercept-claim)/se.intercept
t
# It is reasonable to set up a two-sided test to test the claim. 
pvalue<-pt(abs(t),13-2,lower.tail=F)*2
pvalue

# Questions 19-20 #

slope<-0.72868
se.slope<-0.06353

claim<- 1
t<-(slope-claim)/se.slope
t

# It is reasonable to set up a two-sided test to test the claim. 
pvalue<-pt(abs(t),13-2,lower.tail=F)*2
pvalue

