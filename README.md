# R analysis of Human Activity Recognition Using Smartphones Dataset Version 1.0 by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

## This repository contains
run_analysis - R script that performs multiple changes and analysis of Human Activity Recognition Using Smartphones Dataset Version 1.0
CodeBook
README file
HA_Recording_Clean_and_Summarised

## run_analysis
This script was created for Coursera Get and Clean Data course project.
Aim of script is to create tidy dataset comfortable for analysis on the basis of original developers data.
It putts up and creates tidy data set, that includes information on test and training subjects undergoing research, activities performed and both mean and standart deviation of all measurements. Than analyses average of each variable in first table for each activity and each subject. 

###For script are needed:
plyr, dplyr and reshape2 R packages.
UCI HAR Dataset in working directory. Data can be gained here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Analys creates two tables.

### First table(called "final" in script)
First of all "test" table is created.  subject_test.txt and y_test ar reading and cbinded in test table, descriptive value names for them added. Than X_test is readed in R and column names replaced with labels given features.txt. Than only variables containing mean and standart deviation measurements are selected for further analysis. They are cbinded to "test" table.
Process of creating "train" table is simillar to "test" table. It uses data on subjects, activities and same measurements from train directory.

Than script merges the "train" and the "test" together using bind_rows and "final" table is created.
activity_labels.txt is used to replace numeric Activity labels in "final".
Using gsub column names are edited. Changes performed:
 "()" - deleted
 "-mean" ->"_Mean"
 "-std" ->_"StDev"
 "-" -> "_"
 "Mag" -> "Magnitude"
 "Acc" -> "Acceler"
 "BodyBody" -> "Body" (consydered as typo in original data)

###Second table (valled SumUp in script)
Is independent tidy data set created on the basis of the first data set. It includes average of each variable in first table for each activity and each subject.
It is created using reshape2 package melt and dcast functions.
This table is savedin working directory under name "HA_Recording_Clean_and_Summarised.txt"

Both tables created contain tidy data - each variable is in one column, each observation is in different row. Column names are variable names. Variable names are readable.

 ##Data Set Information
30 volunteers participated in research, 70% of the volunteers was selected for generating the training data and 30% the test data. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its  accelerometer and gyroscope, researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate.

For each record it is provided:
- Standard deviation and mean of triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Standard deviation and mean triaxial of angular velocity from the gyroscope. 
- Standard deviation and mean of 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

More information about data set and research background is found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
