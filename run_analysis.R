library(XML)
getwd()
dir="<C:/Users/C16Mitchell.Melville/Desktop/M Days/Math 378/Getting-and-Cleaning-Data>"
#load the headers
setwd("C:/Users/C16Mitchell.Melville/Desktop/M Days/Math 378/Getting-and-Cleaning-Data/UCI HAR Dataset")
features=read.table("features.txt")
features=t(features)

#Test DATA loaded

setwd("C:/Users/C16Mitchell.Melville/Desktop/M Days/Math 378/Getting-and-Cleaning-Data/UCI HAR Dataset/test")
X_test=read.table("X_test.txt")
Y_test=read.table("Y_test.txt")

##Train DATA laoded

setwd("C:/Users/C16Mitchell.Melville/Desktop/M Days/Math 378/Getting-and-Cleaning-Data/UCI HAR Dataset/train")
X_train=read.table("X_train.txt")
Y_train=read.table("Y_train.txt")
# combining them all !! one data set to rule them all.
xTestTrain=rbind(X_test,X_train)
ytesttrain=rbind(Y_test,Y_train)
testTrain=cbind(ytesttrain,xTestTrain)

#ommiting all but mean and st
#try out my method
ommit=X_test
ommit=ommit[-c(7:40,47:80)]
#worked now on the data set
testTrain1=testTrain #back up incase i break it
Data=testTrain[-c(8:41,48:81,88:121,128:161,168:201,204:215,218:228.231:266,274:345,352:424,432:562)]


