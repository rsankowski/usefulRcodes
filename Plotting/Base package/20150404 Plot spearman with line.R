setwd("/Users/romansankowski/Dropbox/Writing/My Authorships/20141213 Clockmaze Priject/strategies/")
DT <- read.csv("/Users/romansankowski/Dropbox/Writing/My Authorships/20141213 Clockmaze Priject/strategies/diserr.csv", header = T)
head(DT)
DF<- na.omit(DT)
l <- DF[,1] ##for escape latency
s <- DF[,2] ##for mean speed
e <- DF[,4] ##for err
d <- DF$d ##for dist
cor.test(l,s, method="spearman")
plot(l,s, main="Mean Speed",xlab="Escape Latency (s)", ylab="Mean Speed")
abline(lm(s ~ l), col="red", lwd=5)
cor.test(l,e, method="spearman")
plot(l,e, main="Number of Errors",xlab="Escape Latency (s)", ylab="Number of Errors")
abline(lm(e ~ l), col="red", lwd=5)
cor.test(l,d, method="spearman")
plot(l,d, main="Distance moved",xlab="Escape Latency (s)", ylab="Distance moved (cm)")
abline(lm(d ~ l), col="red", lwd=5)
