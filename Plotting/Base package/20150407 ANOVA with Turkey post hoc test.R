setwd("/Users/romansankowski/Dropbox/Writing/My Authorships/20141213 Clockmaze Priject/strategies/")
DT <- read.csv("/Users/romansankowski/Dropbox/Writing/My Authorships/20141213 Clockmaze Priject/strategies/observer.csv", header = F)
a<- DT[,1]
b<- DT[,2]
aov.ex1 = aov(b~a)  #do the analysis of variance
summary(aov.ex1)
TukeyHSD(aov.ex1)

