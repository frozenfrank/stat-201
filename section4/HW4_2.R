
# Obtain p(x), i.e. P(X=x) for X ~ Bin(9,0.4)

x<-0:9
p<-dbinom(x,9,0.4)
# Show the distribution 
x
# 0 1 2 3 4 5 6 7 8 9
p
# [1] 0.010077696 0.060466176 0.161243136 0.250822656 0.250822656 0.167215104 0.074317824
# [8] 0.021233664 0.003538944 0.000262144

# Verify that all prob's add up to 1.
sum(p)

# For exercise 3 in the homework

# P(2<=X<5)
0.161243136+0.250822656+0.250822656
# Or 
dbinom(2,9,0.4)+dbinom(3,9,0.4)+dbinom(4,9,0.4)
# Or 
sum(dbinom(2:4,9,0.4))
# Or
# P(2<=X<5)=P(X<5)-P(X<2)=P(X<=4)-P(X<=1)
pbinom(4,9,0.4)-pbinom(1,9,0.4)

# For exercise 4 in the homework

# P(2<X<=5)
sum(dbinom(3:5,9,0.4))
# Or
# P(2<X<=5)=P(X<=5)-P(X<=2)
pbinom(5,9,0.4)-pbinom(2,9,0.4)



