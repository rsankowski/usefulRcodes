hist(x, prob=TRUE, col="white",ylim=c(0, 0.06),main="Escape Latency Distribution",
     xlab="Escape Latency (s)", ylab="Rel. Frequency")# prob=TRUE for probabilities not counts
lines(density(x), col="black", lwd=2, ylim=c(0, 0.06)) # add a density estimate with defaults
lines(density(x, adjust=2), lty="dotted", col="darkgreen", lwd=2) 