library(reshape2)
head(mtcars)
mtcars$carname <- rownames(mtcars)
carMelt <- melt(mtcars,id=c("carname","gear","cyl"),measure.vars=c("mpg","hp")) ##melt defines which variables are id values and which are values
head(carMelt,n=3)
tail(carMelt,n=3)
cylData <- dcast(carMelt, cyl ~ variable) ## dcast left expression(here cyl) in the row and variables in column
##dcast summarizes the dataset by telling how many cars have 4 cyl, 6 ,8 etc.
cylData
cylData <- dcast(carMelt, cyl ~ variable,mean) ## takes mean of variable and summarizes dataset differently
cylData
head(InsectSprays)
tapply(InsectSprays$count,InsectSprays$spray,sum) ##tapply(+apply along an index); this calculates all insects that are susceptible to each spray
spIns =  split(InsectSprays$count,InsectSprays$spray) ##split cuts the dataset in defined pieces and returns a list
spIns
sprCount = lapply(spIns,sum) ## list apply returns list
sprCount
unlist(sprCount) ##unlist returns a vector
sapply(spIns,sum) ## sapply will apply sum to list and unlist in one go
ddply(InsectSprays,.(spray),summarize,sum=sum(count))
spraySums <- ddply(InsectSprays,.(spray),summarize,sum=ave(count,FUN=sum))
dim(spraySums)
head(spraySums)
