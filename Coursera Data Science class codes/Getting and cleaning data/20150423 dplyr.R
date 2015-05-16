dplyr package
select ## returns a subset of columns
filter ## returns a subset of rows
arrange ## reordering rows while preserving order of columns
rename ##
mutate ## adds new variables or transforms existing
summarise

properties:
  first argument is data frame
following arguments are what to do with data
result is new data frame
library(dplyr)
url <- "https://github.com/DataScienceSpecialization/courses/blob/master/03_GettingData/dplyr/chicago.rds"
download.file(url, destfile = "./chicago.rds", method = "curl")
list.files("./")
getwd()
chicago <- readRDS("chicago.rds")
dim(chicago)

chicago <- arrange(chicago, date) ##to arrange the rows by date
arrange(chicago, desc(date)) ##descending
rename <- rename(chicago,pm25=pm25tmean2, dewpoint=dptp) ## renames columns at heart's desirchicago e
chicago <- mutate(chicago, pm25detrend = pm25-mean(pm25, na.rm=TRUE))
chicago <- mutate(chicago, tmpcat = factor(1 * (tmpd >80), labels = c("cold", "hot")))
hotcold <- group_by(chicago, tempcat) ## changes the format of the data frame according to the hot cold variable
summarize(hotcold, pm25 = mean(tm25), o3 = max(o3tmean2), no2 = median(no2tmean2)) ## summarizes defined variable statistics for hot and cold days
##you can chain operations together using the %>% operator
chicago %>% mutate(month(month = as.POSIXlt(date)$mon + 1) %>% group_by(month) %>% summarize(pm25 = mean(tm25), o3 = max(o3tmean2), no2 = median(no2tmean2)))