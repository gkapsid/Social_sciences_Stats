#Political knowledge and interest
k<-c(1, 5, 1, 2, 11, 4, 0, 4, 8 )
g<-matrix(k, nrow=3, byrow=TRUE)
colnames(g)<-c("Low","Medium","High")
rownames(g)<-c("Low","Medium","High")
g

############################################################################
#Measures of association of for ordinal variables in RxC (frequency) tables
############################################################################
#Goodman Kruskal's gamma
library(vcdExtra)
GKgamma(g)


#Uncomment following lines to create the data frame in case of csv file absence
# Cabinet<-c("Amato II", "Berlusconi IV", "Ciampi", "Colombo", "Fanfani IV", "Segni I")
# Seat_Share<-c(52.86, 54.6, 52.54, 57.94, 49.83, 50)
# SurvivalT<-c(383, 1283, 259, 527, 431, 664)
# ItalianG<-data.frame(Cabinet, Seat_Share, SurvivalT)
# write.csv(ItalianG, "Stat_SC_examp/Social_sciences_Stats/ItalianGov.csv")
ItalianG<-read.csv("Stat_SC_examp/Social_sciences_Stats/ItalianGov.csv")
#spearman ñ
cor(ItalianG$Seat_Share, ItalianG$SurvivalT, method="spearman")
######################################################################################

