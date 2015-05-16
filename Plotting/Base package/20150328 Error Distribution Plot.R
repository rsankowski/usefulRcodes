setwd("/Users/romansankowski/Dropbox/Writing/My Authorships/20141213 Clockmaze Priject/strategies/")
DT <- read.csv("/Users/romansankowski/Dropbox/Writing/My Authorships/20141213 Clockmaze Priject/strategies/errors.csv", header = T)
head(DT)
head(DT2)
write.table(DT2, "/Users/romansankowski/Dropbox/Writing/My Authorships/20141213 Clockmaze Priject/strategies/summary stats.txt", sep="\t")
str(DT)
DF<- na.omit(DT)
SWISS <- DF[,1]
Balbc <- DF$Balbc
C57 <- DF$C57
NR2AKO <- DF$DUN
head(NR2AKO)
tail(SWISS)
plot(density(C57), col="black", lwd = 3, main = "Strain-specific Number of Errors Distribution",
     xlab="Number of Errors", ylab = "Density")
lines(density(Balbc), col = "grey", lwd = 3)
lines(density(NR2AKO), col="black", lwd = 3, lty = "dashed")
lines(density(SWISS), col="grey", lwd = 3, lty = "dotted")
legend("topright", # places a legend at the appropriate place 
       c("C57 (n=49)","Balbc (n=60)", "NR2aKO (n=53)", "SWISS (n=39)"), # puts text in the legend 
       lty=c("solid", "solid", "dashed", "dotted"), # gives the legend appropriate symbols (lines)
       lwd=c(3,3,3,3),col=c("black","grey","black","grey"), title="Strain")
?plot
boxplot(DF)
sd(NR2AKO)

