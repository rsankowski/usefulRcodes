library(plyr)
df <- ddply(em2, c("fips", "year"), summarise, mean = mean(Emissions))