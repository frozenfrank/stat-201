
### HW6.11 ###

# Question 1 #

qf(0.05,7,20,lower.tail=F)

# Question 2 #

qf(0.01,2,5,lower.tail=F)

# Question 3 #

pf(7.46,5,7,lower.tail=F)

# Question 4 #

pf(7.46,5,7,lower.tail=F)*2


# Questions 5-8 # 

var.test(Ex12$Day.2,Ex12$Day.1,alternative="greater", conf.level=0.95)
qf(0.05,12,12,lower.tail=F)

# Questions 9-12 #

# Try the next line of the code, 
# but it won't give you a greater-than-one F test statistic.
var.test(Ex13$Brand.A,Ex13$Brand.B)

# Use the next line instead.
var.test(Ex13$Brand.B,Ex13$Brand.A)
# Notice that "num df = 12, denom df = 8"

# Questions 13-15 # 

var.test(Ex12$Day.3,Ex12$Day.2,alternative="greater", conf.level=0.95)
