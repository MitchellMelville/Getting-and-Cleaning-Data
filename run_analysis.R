library(XML)
library(data.table)
getwd()
dir="<C:/Users/C16Mitchell.Melville/Desktop/M Days/Math 378/Getting-and-Cleaning-Data>"
#load the headers
setwd("C:/Users/C16Mitchell.Melville/Desktop/M Days/Math 378/Getting-and-Cleaning-Data/UCI HAR Dataset")
features=read.table("features.txt")
features=t(features)
filler=matrix(c(" ","Activity"),ncol=1)
features=cbind(filler,features)
Features=data.table(features)
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
testTrainfeatures=rbind(Features,testTrain,fill=T)


#ommiting all but mean and st
#try out my method
ommit=X_test
ommit=ommit[-c(7:40,47:80)]
#worked now on the data set
testTrain1=testTrain
testTrain=testTrain1#back up incase i break it

Data=testTrain[-c(8:41,48:81,88:121,128:161,168:201,204:215,218:228.231:266,274:345,352:424,432:562)]
Features=Features[-c(8:41,48:81,88:121,128:161,168:201,204:215,218:228.231:266,274:345,352:424,432:562)]
]
testTrain[1,20]
testTrain[3,21]
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

#if (j==2)&& (j==3)&&(j==4){walkingmean=walkingmean+Data[i,j] walkingmeancount=walkingmeantcount+1}
#testmean=as.string(Features[1,])
#if((grepl(Data[1,j]),))

#part five
tidy=matrix(1:330,ncol=55,nrow=6)

i=1
j=2
for (j in 2:55){
  for (i in 1:10299 ){
  if(Data[i,1]=="WALKING"){
    #here i would then take the mean or std of the col by stepping 
    #through and creating total and count for each activity and 
    #col then display that mean or std in the matrix 'tidy' but I'm out of 
    #time.
  if(Data[i,1]=="WALKING_UPSTAIRS"){}
  if(Data[i,1]=="WALING_DOWNSTAIRS"){}
  if(Data[i,1]=="SITTING"){}
  if(Data[i,1]=="STANDING"){}
  if(Data[i,1]=="LAYING"){}  
  i=i+1
  }
tidy[1,j]=(walkingmean/walkingmeancount)
j=j+1
  
}
tidy[,1]=c( "WALKING",  "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS", "SITTING", "STANDING","LAYING")
