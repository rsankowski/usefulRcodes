d1 = date()
d1
class(d1)
d2 = Sys.Date()
d2
class(d2)
format(d2,"%a %b %d") ##%d=abbreviation day, %a= abbreviated weekday, %A=unabbreviated weekday,%m=abbrev month (0-12), 
##%b=abbrev month, %B=unabbrev month, %y=2digit year, %Y=4digit year
x = c("1jan1960", "2jan1960", "31mar1960", "30jul1960"); z = as.Date(x, "%d%b%Y") ##transform x into date
z
z[1] - z[2] ##compare elements of z
as.numeric(z[1]-z[2])
weekdays(d2)
months(d2)
julian(d2)
install.packages("lubridate")
library(lubridate); ymd("20140108") ##convert number into a date following any format
mdy("08/04/2013") ##month first
dmy("03-04-2013") ##day first
ymd_hms("2011-08-03 10:15:03") ##same with time
ymd_hms("2011-08-03 10:15:03",tz="Pacific/Auckland") ##set the timezone
?Sys.timezone
x = dmy(c("1jan2013", "2jan2013", "31mar2013", "30jul2013"))
wday(x[1]) ##tells you the weekday of an element of a vector
wday(x[1],label=TRUE) ##label=TRUE returns the name of the day
