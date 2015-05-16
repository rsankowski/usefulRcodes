DF <- read.csv("/Users/romansankowski/Desktop/qq.csv", header = F)
x <- DF[,1]
library(MASS)
fit <- fitdistr(x, "gamma")
qqPlot(x, dist = "gamma",
       shape = 1.643970661,
       rate = 0.116710616, main="Escape Latency Distribution",
       xlab="Gamma Quantiles", ylab="Escape Latency (s)")