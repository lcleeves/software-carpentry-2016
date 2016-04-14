12
#shanging directory
setwd("C:/Users/lcleeves/Desktop/software-carpentry-2016/data-files/r-lesson/data")

list.files()
read.csv("inflammation-01.csv", header = FALSE)
#save value as variable
weight_kg <- 55
weight_kg
#manipulate variable
weight_kg*2.2
#overwrite/reassign
weight_kg <- 57.5
weight_lb<-weight_kg*2.2
weight_lb
#if you reassign weight_kg
weight_kg <- 100
#it won't recalc weight_lb
weight_lb
#until you redo it?
weight_lb <- weight_kg*2.2
weight_lb
dat <- read.csv("inflammation-01.csv", header = FALSE)
dat
class(dat)
# rows then columns!!!
dim(dat)
dat[1,1]
dat[1:4,1:10]
um <- dat[1:4,5]
class (um)
dat[c(3,8,37,56),1:10]
um <- dat[5,]
class(um)
dat[,16]
raptor_1 <-dat[1,]
class(raptor_1)
as.numeric(raptor_1)
class(raptor_1)
max(raptor_1)
max(dat[2,])
#average inflamation of all raptors on that day
mean(dat[,7])
mean(dat[,7])
?apply
#average infl of ea raptor over whole time period
ave_rap_infl <- apply(dat,1,mean)
ave_rap_infl
#average 
ave_day_infl <- apply(dat,2,mean)
plot(ave_day_infl)
max_infl_day <- apply (dat, 2, max)
plot(max_infl_day)
min_infl_day <- apply (dat, 2, min)
plot(min_infl_day)
std_infl_day <- apply(dat,2,sd)
plot(std_infl_day)
