min.mean.sd.max <- function(x) {
  r <- c(min(x), mean(x) - sd(x), mean(x), mean(x) + sd(x), max(x))
  names(r) <- c("ymin", "lower", "middle", "upper", "ymax")
  r
}

# Plotting IAP LTR
p1 <- ggplot(aes(y = value, x = factor(treatment)), data = IAPLTR)
p1 <- p1 + stat_summary(fun.data = min.mean.sd.max, geom = "boxplot") + geom_jitter(position=position_jitter(width=.2), size=3) + ggtitle("IAP LTR") + xlab("Treatment") + ylab("fold expression")
p1 