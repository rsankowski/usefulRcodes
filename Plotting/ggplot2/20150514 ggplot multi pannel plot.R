## Setup ggplot with data frame!
g <- ggplot(maacs, aes(logpm25, NocturnalSympt))!
  !
  ## Add layers!
  g + geom_point(alpha = 1/3) !
  + facet_wrap(bmicat ~ no2dec, nrow = 2, ncol = 4) !
  + geom_smooth(method="lm", se=FALSE, col="steelblue") !
  + theme_bw(base_family = "Avenir", base_size = 10) !
  + labs(x = expression("log " * PM[2.5]) !
           + labs(y = "Nocturnal Symptoms”) !
+ labs(title = "MAACS Cohort”)!