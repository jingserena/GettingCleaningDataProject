---
title: "Human Activity Recognition Using Smartphones Dataset"
author: "Jing Huo"
date: "February 11, 2016"
output: html_document
---

This document explains the dataset as in tidydata.txt file.

# Study design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

# Feature Selection 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete variable names are below.

# Variable names
[1] subjectID: 
A factor variable showing the ID of the test subject.

[2] activity:
A factor variable showing the type of activity performed when the corresponding measurements were taken.

The rest of the variables are measurements.

[3] "timeBodyAccelerometer-mean()-X"                
 [4] "timeBodyAccelerometer-mean()-Y"                
 [5] "timeBodyAccelerometer-mean()-Z"                
 [6] "timeBodyAccelerometer-std()-X"                 
 [7] "timeBodyAccelerometer-std()-Y"                 
 [8] "timeBodyAccelerometer-std()-Z"                 
 [9] "timeGravityAccelerometer-mean()-X"             
[10] "timeGravityAccelerometer-mean()-Y"             
[11] "timeGravityAccelerometer-mean()-Z"             
[12] "timeGravityAccelerometer-std()-X"              
[13] "timeGravityAccelerometer-std()-Y"              
[14] "timeGravityAccelerometer-std()-Z"              
[15] "timeBodyAccelerometerJerk-mean()-X"            
[16] "timeBodyAccelerometerJerk-mean()-Y"            
[17] "timeBodyAccelerometerJerk-mean()-Z"            
[18] "timeBodyAccelerometerJerk-std()-X"             
[19] "timeBodyAccelerometerJerk-std()-Y"             
[20] "timeBodyAccelerometerJerk-std()-Z"             
[21] "timeBodyGyro-mean()-X"                         
[22] "timeBodyGyro-mean()-Y"                         
[23] "timeBodyGyro-mean()-Z"                         
[24] "timeBodyGyro-std()-X"                          
[25] "timeBodyGyro-std()-Y"                          
[26] "timeBodyGyro-std()-Z"                          
[27] "timeBodyGyroJerk-mean()-X"                     
[28] "timeBodyGyroJerk-mean()-Y"                     
[29] "timeBodyGyroJerk-mean()-Z"                     
[30] "timeBodyGyroJerk-std()-X"                      
[31] "timeBodyGyroJerk-std()-Y"                      
[32] "timeBodyGyroJerk-std()-Z"                      
[33] "timeBodyAccelerometerMag-mean()"               
[34] "timeBodyAccelerometerMag-std()"                
[35] "timeGravityAccelerometerMag-mean()"            
[36] "timeGravityAccelerometerMag-std()"             
[37] "timeBodyAccelerometerJerkMag-mean()"           
[38] "timeBodyAccelerometerJerkMag-std()"            
[39] "timeBodyGyroMag-mean()"                        
[40] "timeBodyGyroMag-std()"                         
[41] "timeBodyGyroJerkMag-mean()"                    
[42] "timeBodyGyroJerkMag-std()"                     
[43] "fBodyAccelerometer-mean()-X"                   
[44] "fBodyAccelerometer-mean()-Y"                   
[45] "fBodyAccelerometer-mean()-Z"                   
[46] "fBodyAccelerometer-std()-X"                    
[47] "fBodyAccelerometer-std()-Y"                    
[48] "fBodyAccelerometer-std()-Z"                    
[49] "fBodyAccelerometer-meanFreq()-X"               
[50] "fBodyAccelerometer-meanFreq()-Y"               
[51] "fBodyAccelerometer-meanFreq()-Z"               
[52] "fBodyAccelerometerJerk-mean()-X"               
[53] "fBodyAccelerometerJerk-mean()-Y"               
[54] "fBodyAccelerometerJerk-mean()-Z"               
[55] "fBodyAccelerometerJerk-std()-X"                
[56] "fBodyAccelerometerJerk-std()-Y"                
[57] "fBodyAccelerometerJerk-std()-Z"                
[58] "fBodyAccelerometerJerk-meanFreq()-X"           
[59] "fBodyAccelerometerJerk-meanFreq()-Y"           
[60] "fBodyAccelerometerJerk-meanFreq()-Z"           
[61] "fBodyGyro-mean()-X"                            
[62] "fBodyGyro-mean()-Y"                            
[63] "fBodyGyro-mean()-Z"                            
[64] "fBodyGyro-std()-X"                             
[65] "fBodyGyro-std()-Y"                             
[66] "fBodyGyro-std()-Z"                             
[67] "fBodyGyro-meanFreq()-X"                        
[68] "fBodyGyro-meanFreq()-Y"                        
[69] "fBodyGyro-meanFreq()-Z"                        
[70] "fBodyAccelerometerMag-mean()"                  
[71] "fBodyAccelerometerMag-std()"                   
[72] "fBodyAccelerometerMag-meanFreq()"              
[73] "fBodyBodyAccelerometerJerkMag-mean()"          
[74] "fBodyBodyAccelerometerJerkMag-std()"           
[75] "fBodyBodyAccelerometerJerkMag-meanFreq()"      
[76] "fBodyBodyGyroMag-mean()"                       
[77] "fBodyBodyGyroMag-std()"                        
[78] "fBodyBodyGyroMag-meanFreq()"                   
[79] "fBodyBodyGyroJerkMag-mean()"                   
[80] "fBodyBodyGyroJerkMag-std()"                    
[81] "fBodyBodyGyroJerkMag-meanFreq()"               
[82] "angle(tBodyAccelerometerMean,gravity)"         
[83] "angle(tBodyAccelerometerJerkMean),gravityMean)"
[84] "angle(tBodyGyroMean,gravityMean)"              
[85] "angle(tBodyGyroJerkMean,gravityMean)"          
[86] "angle(X,gravityMean)"                          
[87] "angle(Y,gravityMean)"                          
[88] "angle(Z,gravityMean)"   

# Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
