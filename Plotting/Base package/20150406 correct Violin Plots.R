setwd("/Users/romansankowski/Dropbox/Writing/My Authorships/20141213 Clockmaze Priject/strategies/")
DT <- read.csv("/Users/romansankowski/Dropbox/Writing/My Authorships/20141213 Clockmaze Priject/strategies/latencies.csv", header = T)
tail(DT)
DF<- na.omit(DT)
a <- DT[,3]
b <- DT[,5]
c <- DT[,4]
d <- DT[,1]
e <- DT[,2]
C57 <- na.omit(a)
C58 <- na.omit(b)
NR2AKO <- na.omit(c)
Balbc <- na.omit(e)
SWISS <- na.omit(d)
head(NR2AKO)
tail(C57)
plot(0:5,rep(0,6),type='l',xlim=c(0,5),ylim=c(0,60),main="Latencies C57 vs. NR2aKO", ylab="Escape Latency",xlab="",xaxt="n",lty=3)
size<-scale(sqrt(DT),center=F)
# fill in the violins at specific x locations using the `wex` parameter for size
vioplot(C57,col="white",border="black", lty=1, lwd=2, rectCol="white",
        colMed="black",pchMed=19,at=1,wex=0.7,add=T)
vioplot(C58,col="dark grey", border="black", lty=1, lwd=2, rectCol="white",
        colMed="black", pchMed=19,at=2,wex=0.7,add=T)
vioplot(Balbc,col="dark grey", border="black", lty=1, lwd=2, rectCol="white",
        colMed="black", pchMed=19,at=3,wex=0.7,add=T)
vioplot(NR2AKO,col="dark grey", border="black", lty=1, lwd=2, rectCol="white",
        colMed="black", pchMed=19,at=4,wex=0.7,add=T)
vioplot(SWISS,col="dark grey", border="black", lty=1, lwd=2, rectCol="white",
        colMed="black", pchMed=19,at=5,wex=0.7,add=T)
axis(1,at=1:5,labels=c("C57","C58", "Balbc", "NR2aKO", "SWISS"))

axis(1,at=1:2,labels=c("C57","NR2aKO"))abline(h=3, lty="dashed")
wilcox.test(C57, NR2AKO)
?plot
?rep
