if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="./data/cameras.csv",method="curl")
cameraData <- read.csv("./data/cameras.csv")
names(cameraData)
tolower(names(cameraData))
splitNames = strsplit(names(cameraData),"\\.") ##separates out periods
splitNames[[5]]
splitNames[[6]]
mylist <- list(letters = c("A", "b", "c"), numbers = 1:3, matrix(1:25, ncol = 5))
head(mylist)
mylist[1]
mylist$letters
mylist[[1]]
splitNames[[6]][1]
firstElement <- function(x){x[1]} ##this fun extracts only the first part of all tvaribles
sapply(splitNames,firstElement)
fileUrl1 <- "https://dl.dropboxusercontent.com/u/7710864/data/reviews-apr29.csv"
fileUrl2 <- "https://dl.dropboxusercontent.com/u/7710864/data/solutions-apr29.csv"
download.file(fileUrl1,destfile="./data/reviews.csv",method="curl")
download.file(fileUrl2,destfile="./data/solutions.csv",method="curl")
reviews <- read.csv("./data/reviews.csv"); solutions <- read.csv("./data/solutions.csv")
head(reviews,2)
head(solutions,2)
names(reviews)
sub("_","",names(reviews),) ##removes the '_' from variables and replaces them with ' '
testName <- "this_is_a_test"
sub("_","",testName) ##sub only removes the first underscore
gsub("_","",testName) ##gsub removes all underscores from name
grep("Alameda",cameraData$intersection) ##grep searches for a string in a data subset; returns logical vector
table(grepl("Alameda",cameraData$intersection)) ##
cameraData2 <- cameraData[!grepl("Alameda",cameraData$intersection),]
grep("Alameda",cameraData$intersection,value=TRUE) ##value=T returns the actual values and not only the indices
grep("JeffStreet",cameraData$intersection) ## looks for values that dont appear
length(grep("JeffStreet",cameraData$intersection)) ##length of the vector containing the searched name
library(stringr)
nchar("Jeffrey Leek")
substr("Jeffrey Leek",1,7) ##searches fro defined letters
paste("Jeffrey","Leek") ##pastes 2 strings together (separated by a pace)
paste0("Jeffrey","Leek") ##pastes with no space in between
str_trim("Jeff      ") ##trims off excess data in characters