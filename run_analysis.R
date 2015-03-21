library(XML)
library(data.table)
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
testTrainFeatures=rbind(Features,testTrain,fill=T)
Features=data.table(features)

#ommiting all but mean and st
#try out my method
ommit=X_test
ommit=ommit[-c(7:40,47:80)]
#worked now on the data set
testTrain1=testTrain #back up incase i break it
Data=testTrainFeatures
Data=Data[-c(8:41,48:81,88:121,128:161,168:201,204:215,218:228.231:266,274:345,352:424, 432:563)]
Data=Data[-c(8:41,48:81)]


# uses the discriptive activity name
#1 WALKING
#2 WALKING_UPSTAIRS
#3 WALKING_DOWNSTAIRS
#4 SITTING
#5 STANDING
#6 LAYING

 

i=1
for (i in 1:10299 ){
if(Data[i,1]==1) {Data[i,1]="WALKING"}
if(Data[i,1]==2) {Data[i,1]="WALKING_UPSTAIRS"}
if(Data[i,1]==3) {Data[i,1]="WALING_DOWNSTAIRS"}
if(Data[i,1]==4) {Data[i,1]="SITTING"}
if(Data[i,1]==5) {Data[i,1]="STANDING"}
if(Data[i,1]==6) {Data[i,1]="LAYING"}
i=i+1
}
View(Data)

filler=matrix(c(" ","Activity"),ncol=1)
features=cbind(filler,features)
features=data.table(features)
#editfeatures=features[-c(8:41, 48:81,88:121,128:161,168:201,204:215,218:228.231:266,274:345,352:424,432:562)]
#head(editfeatures)
#































#grepl and aggregate