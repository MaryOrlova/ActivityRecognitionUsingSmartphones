R analysis of Human Activity Recognition Using Smartphones Dataset Version 1.0 by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
===========================================
This repository was created for Coursera Get and Clean Data course project. 
It contains:
- README file
- run_analysis - R script that performs multiple changes and     analysis of Human Activity Recognition Using Smartphones Dataset Version 1.0
- CodeBook that describes variables and changes performed on them
- HA_Recording_Clean_and_Summarised

run_analysis.R
-----------------------------------
*Aim of script* is to create and save tidy dataset comfortable for analysis created on the basis of original developers data. Resulting data contains average of each mean and standart deviation variable from original data set for each activity and each subject.

*Script creates tidy data set from original data.* 
Both tables created contain tidy data - each variable is in one column, each observation is in different row. Column names are variable names. Variable names are readable.

Script extracts information on test and training subjects undergoing research, activities performed and both mean and standart deviation ror all measurements. Names variables with readeble names. 
Than an indipendent data is created, it contains average of each variable from first table for each activity and each subject and saves final result in text file. 

*For script are needed.*
R packages:
- plyr
- d plyr
- reshape2 
- "UCI HAR Dataset" in working directory. Data can be gained here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

*More detailed description on how script works. *
-----------------------
*Analys is performed in 5 steps.*

- 1 *"test" table is created.*  
subject_test.txt and y_test ar reading and cbinded in test table, descriptive value names for them added. Than X_test is readed in R and column names replaced with labels given features.txt. Than only variables containing mean and standart deviation measurements are selected for further analysis. They are cbinded to "test" table.

- 2 *"train" table is created.*
Process of creating "train" table is simillar to "test" table. It uses data on subjects, activities and same measurements from train directory.

- 3 *"final" table is created.*
Script merges the "train" and the "test" together using bind_rows in "final" data frame.

- 4 *Editing names of variables and labels.*
activity_labels.txt is used to replace numeric Activity labels in "final".
Using gsub column names are edited. Changes performed:
 - "()" - deleted;
 - "-mean" ->"_Mean";
 - "-std" ->_"StDev";
 - "-" -> "_";
 - "Mag" -> "Magnitude";
 - "Acc" -> "Acceler";
 - "BodyBody" -> "Body" (consydered as typo in original data);

- 5 *SumUp data frame is created.*
Second independent "SumUp" data frame table is created. That is independent tidy data set created on the basis of the first data set. It includes average of each variable in first table for each activity and each subject.
It is created using reshape2 package melt and dcast functions.

- 6 *Saving results.*
SumUp table is saved in working directory under name *"HA_Recording_Clean_and_Summarised.txt"*

Data Set Information
---------------------------
*Information taken from developers data set readme file.*
30 volunteers participated in research, 70% of the volunteers was selected for generating the training data and 30% the test data. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its  accelerometer and gyroscope, researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate.

*For each record in resulting table are is provided:*
- Mean of standard deviation and mean of triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration for each activity and each subject.
- Mean of standard deviation and mean triaxial of angular velocity from the gyroscope for each activity and each subject. 
- Mean of standard deviation and mean of 561-feature vector with time and frequency domain variables for each activity and each subject. 
- Activity label. 
- An identifier of the subject who carried out the experiment.

*More information about data set and research background is found at:*
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
