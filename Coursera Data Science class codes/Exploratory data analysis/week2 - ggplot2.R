library(datasets)
library(ggplot2)
qplot(displ, hwy, data = mpg) ## plotting mpg data; first argument is x axis, second, y, third is the data frame
qplot(displ, hwy, data = mpg, geom = c("point", "smooth")) ##geom adds statistic, smooth adds a 95% CI as a grey zone
qplot(displ, data = mpg, fill = drv) ## specifying only one variable gives hist
qplot(displ, hwy, data = mpg, facets = .~ drv) ##facets separates out groups based on factors; the".~" expression splits in columns, the "." stands for 1 row
qplot(hwy, data = mpg, facets = drv ~., binwidth = 2) ## the "~." expression separates in rows
## the geom="density" makes a kernel plot
## shape = "..." defines the shape of the plotting characters based on factor variable
## to add a linear regression model: geom = c("point", "smooth"), method = "lm"
##facets splits the groups up
testdat <- data.frame(x = 1:100, y= rnorm(100))
testdat[50,2] <- 100 ##outlier!!
plot(testdat$x, testdat$y, type = "l", ylim = c(-3,3))
g <- ggplot(testdat, aes(x=x, y=y))
g+geom_line() + ylim(-3,3) ## when using this notation, the outlier is missing
g+geom_line() + coord_cartesian(ylim = c(-3,3)) ## only here outlier is included
