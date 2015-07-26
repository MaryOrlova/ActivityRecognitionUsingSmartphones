## This script is performing changes on Human Activity Recognition Using Smartphones Data Set.
## It puts together subject ID, activity performed, extracts all mean and standart deviation 
## measurements from both test and training data and conects them togther in one tidy data 
## table, with reedable value names and activity labels.

## Result of script analysis is independent tidy data set with calculated average of each 
## variable for each activity and each subject

## For scrip are needed:
## plyr, dplyr, reshape packages
## Dataset, thet can be found on 
##https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#Activating liraries.
library(plyr)
library(dplyr)
library(reshape2)

## Reading feature names.
setwd("UCI HAR Dataset")
features<-read.table("features.txt")
activLabels<- read.table("activity_labels.txt")

##############################Creating "test" Data Frame#################################
#test data frame will contain all information needed before conecting both data sets
#It will include information on 
#subject, 
#activity, 
#test measurements - all variables with standart deviation and mean 

#Reading Subject, Activity and measurements from test folder.
setwd("test")
subj<- read.table("subject_test.txt")
activity<- read.table("y_test.txt")
Xtest<-read.table("X_test.txt")

#changing value names for test measurements.
names(Xtest)<-features$V2

#selecting std and mean values from test data measurements.
Xtest<-Xtest[,!duplicated(colnames(Xtest))]
Xtest<-select(tbl_df(Xtest), contains("mean"), contains("std"))

# Create table "test", that contains Subject, Activity values and both mean and std 
# measurements fom testing data.
test<-cbind(subj$V1,activity$V1)
test<-tbl_df(as.data.frame(test))
test<-rename(test, Subject=V1, Activity = V2)
test<-mutate(test,DataGroup="Test")
test<-cbind(test,Xtest)

#Removing variables not needed.
rm(subj,activity,Xtest)

########################Creating "train" Data Frame #####################################
#train data frame will contain all information needed before conecting both data sets
#It will include information on 
#subject, 
#activity, 
#training measurements - all variables with standart deviation and mean  

setwd("../")
setwd("train")
subj<- read.table("subject_train.txt")
activity<- read.table("y_train.txt")
Xtrain<-read.table("X_train.txt")

#changing value names for training measurments
names(Xtrain)<-features$V2
Xtrain<-tbl_df(Xtrain)

#selecting std and mean values from training measurements
Xtrain<-Xtrain[,!duplicated(colnames(Xtrain))]
Xtrain<-select(tbl_df(Xtrain), contains("mean"), contains("std"))

# Creating table "train", that contains Subject, Activity values and both mean and std 
# measurements fom training data set.
train<-cbind(subj$V1,activity$V1)
train<-tbl_df(as.data.frame(train))
train<-rename(train, Subject=V1, Activity = V2)
train<-mutate(train,DataGroup="Training")
train<-cbind(train,Xtrain)

#Removing not needed variables
rm(subj,activity,Xtrain)

#################Merging "train" and the "test" to creating one data set#################
final<-bind_rows(test,train)

####################Making Descriptive Activity Labels###################################
a<-as.character(activLabels$V2)
for (i in 1:6) {
  final[final$Activity == i,2] <- a[i]
}
rm(a,activLabels,test,train,features)

##############creating labels with descriptive variable names############################
name<-colnames(final)
for (i in 1:length(name)) {
  name[i] = gsub("()","",fixed=TRUE, name[i])
    name[i] = gsub("-mean","_Mean", name[i])
  name[i] = gsub("-std","_StDev", name[i])
  name[i] = gsub("-","_", name[i])
  name[i] = gsub("Mag","Magnitude", name[i])
  name[i] = gsub("Acc","Acceler",fixed=TRUE, name[i])
  name[i] = gsub("BodyBody","Body", name[i])
}
names(final)<-name

#################Creating  independent tidy data set with the average####################
#################of each variable for each activity and each subject#####################
temp<-melt(data=final,id= c("Subject","Activity"), measure.vars=colnames(final[4:89]))
SumUp<-dcast(temp, Subject+Activity ~ variable,mean)
rm(temp)

##Saing SumUp table
write.table(SumUp, file="HA_Recording_Clean_and_Summarised.txt",row.name=FALSE)
