library(XML)
getwd()
dir="<C:/Users/C16Mitchell.Melville/Desktop/M Days/Math 378/Getting-and-Cleaning-Data>"
setwd("C:/Users/C16Mitchell.Melville/Desktop/M Days/Math 378/Getting-and-Cleaning-Data/UCI HAR Dataset/test/Inertial Signals")
##Test DATA
body_acc_x_test=read.table("body_acc_x_test.txt")
body_acc_y_test=read.table("body_acc_y_test.txt")
body_acc_z_test=read.table("body_acc_z_test.txt")
body_acc_all_test=c(body_acc_x_test,body_acc_y_test, body_acc_z_test)

body_gyro_x_test=read.table("body_gyro_x_test.txt")
body_gyro_y_test=read.table("body_gyro_y_test.txt")
body_gyro_z_test=read.table("body_gyro_z_test.txt")
body_gyro_all_test=c(body_gyro_x_test,body_gyro_y_test,body_gyro_z_test)

total_acc_x_test=read.table("total_acc_x_test.txt")
total_acc_y_test=read.table("total_acc_y_test.txt")
total_acc_z_test=read.table("total_acc_z_test.txt")
total_acc_all_test=c(total_acc_x_test, total_acc_y_test, total_acc_z_test)

setwd("C:/Users/C16Mitchell.Melville/Desktop/M Days/Math 378/Getting-and-Cleaning-Data/UCI HAR Dataset/test")
X_test=read.table("X_test.txt")


##Train DATA
setwd("C:/Users/C16Mitchell.Melville/Desktop/M Days/Math 378/Getting-and-Cleaning-Data/UCI HAR Dataset/train/Inertial Signals")
body_acc_x_train=read.table("body_acc_x_train.txt")
body_acc_y_train=read.table("body_acc_y_train.txt")
body_acc_z_train=read.table("body_acc_z_train.txt")
body_acc_all_train=c(body_acc_x_train,body_acc_y_train, body_acc_z_train)

body_gyro_x_train=read.table("body_gyro_x_train.txt")
body_gyro_y_train=read.table("body_gyro_y_train.txt")
body_gyro_z_train=read.table("body_gyro_z_train.txt")
body_gyro_all_train=c(body_gyro_x_train,body_gyro_y_train,body_gyro_z_train)

total_acc_x_train=read.table("total_acc_x_train.txt")
total_acc_y_train=read.table("total_acc_y_train.txt")
total_acc_z_train=read.table("total_acc_z_train.txt")
total_acc_all_train=c(total_acc_x_train, total_acc_y_train, total_acc_z_train)
setwd("C:/Users/C16Mitchell.Melville/Desktop/M Days/Math 378/Getting-and-Cleaning-Data/UCI HAR Dataset/train")
X_train=read.table("X_train.txt")
