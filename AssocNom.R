exampTab<-read.csv("AssocNom1.csv")
g<-matrix(exampTab$value, ncol=4, byrow=TRUE)
colnames(g)<-c("NE","NC","South","West")
rownames(g)<-c("yes", "no")
g

############################################################################
#Measures of association of for nominal variables in RxC (frequency) tables
############################################################################
#matrix with expected values
expected <- as.array(round(margin.table(g,1) %*% t(as.array(margin.table(g,2))) / margin.table(g),1))
expected

squares<-round((g-expected)^2/expected ,3)
Xsq<-sum(squares)
n1=2240 #given by the research number of units(respondents) 

n<-sum(g) #n<-margin.table(g)
V<-round(sqrt(Xsq/n/min(nrow(g)-1, ncol(g)-1)) , 3)

#find function for cramers V from frequency table
library(lsr)
cramersV(g) #this works fine!!
#another way to find association between variables
library(vcd)
assocstats(g) #many coefficients like Phi, Contigency, CramersV, Pearson r

#Proportional reduction in error with Goodman Kruskal lambda measure of association

library(rapport) #try it for kurtosis and skewness
lambda.test(g,2)

lambda.test(g,1) #E1 = E2 --> lambda = 0!!
######################################################################################

