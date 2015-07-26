R analysis of Human Activity Recognition Using Smartphones Dataset Version 1.0 by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
==================================

*HA_Recording_Clean_and_Summarised.txt* is text file created as a result of run_analysis.R. It is tidy dataset comfortable for analysis it that contains average of each mean and standart deviation variable from original data set for each activity and each subject. Data for analysis is obtained from original developers data.

-1.Subject - ID number of every subject undergoing research;
-2.Activity - contains verbal activity label that represents activity performed by subject:
  WALKING;
  WALKING_UPSTAIRS;
  WALKING_DOWNSTAIRS;
  SITTING;
  STANDING;
  LAYING;
Labels were created replacing numeric activity labels in original data y_test.txt and y_train.txt with verbal labels from activity_labels.txt.

*Measurements*
----------------------------------------
*Every column contains average of mesurement represented in variable name for each activity and each subject.*
-*Acceler_XYZ* -  features come from the 3-axial accelerometer.
-*Gyro_XYZ* - features come from the 3-axial Gyro-XYZ.
The acceleration signal was then separated into *body* and *gravity* acceleration signals (tBodyAcceler_XYZ and tGravityAcceler_XYZ)
From body linear acceleration and angular *velocity* authors obtained *Jerk signals* (tBodyAccelerJerk_XYZ and tBodyGyroJerk_XYZ). 
-*Magnitude* were calculated by use of Euclidean norm (tBodyAccelerMagnitude, tGravityAccelerMagnitude, tBodyAccelerJerkMagnitude, tBodyGyroMagnitude, tBodyGyroJerkMagnitude).
-*prefix 't'* stands for "time";
-*prefix 'f'* stands forFast Fourier Transform (FFT); 
-*Mean* - Mean, average;
-*StDev* - Standard Deviation;
 
*List of measurement variable names* [3-88]       
-3.tBodyAcceler_Mean_X
-4.tBodyAcceler_Mean_Y                     
-5.tBodyAcceler_Mean_Z
-6.tGravityAcceler_Mean_X                
-7.tGravityAcceler_Mean_Y
-8.tGravityAcceler_Mean_Z                  
-9.tBodyAccelerJerk_Mean_X
-10.tBodyAccelerJerk_Mean_Y                 
-11.tBodyAccelerJerk_Mean_Z                  
-12.tBodyGyro_Mean_X                        
-13.tBodyGyro_Mean_Y                         
-14.tBodyGyro_Mean_Z                        
-15.tBodyGyroJerk_Mean_X                     
-16.tBodyGyroJerk_Mean_Y                    
-17.tBodyGyroJerk_Mean_Z
-18.tBodyAccelerMagnitude_Mean              
-19.tGravityAccelerMagnitude_Mean
-20.tBodyAccelerJerkMagnitude_Mean          
-21.tBodyGyroMagnitude_Mean
-22.tBodyGyroJerkMagnitude_Mean             
-23.fBodyAcceler_Mean_X                      
-24.fBodyAcceler_Mean_Y                     
-25.fBodyAcceler_Mean_Z
-26.fBodyAcceler_MeanFreq_X                 
-27.fBodyAcceler_MeanFreq_Y
-28.fBodyAcceler_MeanFreq_Z                 
-29.fBodyAccelerJerk_Mean_X
-30.fBodyAccelerJerk_Mean_Y                 
-31.fBodyAccelerJerk_Mean_Z
-32.fBodyAccelerJerk_MeanFreq_X             
-33.fBodyAccelerJerk_MeanFreq_Y
-34.fBodyAccelerJerk_MeanFreq_Z             
-35.fBodyGyro_Mean_X                         
-36.fBodyGyro_Mean_Y                        
-37.fBodyGyro_Mean_Z                         
-38.fBodyGyro_MeanFreq_X                    
-39.fBodyGyro_MeanFreq_Y                     
-40.fBodyGyro_MeanFreq_Z                    
-41.fBodyAccelerMagnitude_Mean
-42.fBodyAccelerMagnitude_MeanFreq          
-43.fBodyAccelerJerkMagnitude_Mean
-44.fBodyAccelerJerkMagnitude_MeanFreq      
-45.fBodyGyroMagnitude_Mean
-46.fBodyGyroMagnitude_MeanFreq             
-47.fBodyGyroJerkMagnitude_Mean
-48.fBodyGyroJerkMagnitude_MeanFreq         
-49.angle(tBodyAccelerMean,gravity)
-50.angle(tBodyAccelerJerkMean),gravityMean)
-51.angle(tBodyGyroMean,gravityMean)
-52.angle(tBodyGyroJerkMean,gravityMean)    
-53.angle(X,gravityMean)                     
-54.angle(Y,gravityMean)                    
-55.angle(Z,gravityMean)                     
-56.tBodyAcceler_StDev_X                    
-57.tBodyAcceler_StDev_Y                     
-58.tBodyAcceler_StDev_Z                    
-59.tGravityAcceler_StDev_X
-60.tGravityAcceler_StDev_Y                 
-61.tGravityAcceler_StDev_Z
-62.tBodyAccelerJerk_StDev_X                
-63.tBodyAccelerJerk_StDev_Y
-64.tBodyAccelerJerk_StDev_Z                
-65.tBodyGyro_StDev_X                        
-66.tBodyGyro_StDev_Y                       
-67.tBodyGyro_StDev_Z                        
-68.tBodyGyroJerk_StDev_X                   
-69.tBodyGyroJerk_StDev_Y                    
-70.tBodyGyroJerk_StDev_Z                   
-71.tBodyAccelerMagnitude_StDev
-72.tGravityAccelerMagnitude_StDev          
-73.tBodyAccelerJerkMagnitude_StDev
-74.tBodyGyroMagnitude_StDev                
-75.tBodyGyroJerkMagnitude_StDev              
-76.fBodyAcceler_StDev_X                    
-77.fBodyAcceler_StDev_Y                     
-78.fBodyAcceler_StDev_Z                    
-79.fBodyAccelerJerk_StDev_X
-80.fBodyAccelerJerk_StDev_Y                
-81.fBodyAccelerJerk_StDev_Z                 
-82.fBodyGyro_StDev_X                       
-83.fBodyGyro_StDev_Y                        
-84.fBodyGyro_StDev_Z                       
-85.fBodyAccelerMagnitude_StDev
-86.fBodyAccelerJerkMagnitude_StDev         
-87.fBodyGyroMagnitude_StDev
-88.fBodyGyroJerkMagnitude_StDev   