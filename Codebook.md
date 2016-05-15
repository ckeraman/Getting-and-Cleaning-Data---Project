---
title: "Codebook.md"
author: "CK"
date: "May 14, 2016"
---

## Codebook

The resulting data set (that is better read with notepad++ rather than basic notepad on Windows computers) contains aggregated means of data. The rows contain the values for subject and activity and the pair of these define a unique observation in the data set (after applyingg the group by/summarize). Apart from the first columns (subject, and activity), the subsequent columns contain the feature names, namely the type of accelerometric or gyroscopic data acquired combined with what function the authors of the article/website have applied to it.

The values in the final data set are grouped by Subject/Activity and the mean applied to them (as requested in step 5 of the assignment)

The origin of the data in described in the original zip file made available for the assignment. This data comes from sensors, namely accelerometers and gyroscopes and the measures are filtered and aggreagated based on functions by the authors of the dataset. The data has been randomly split into and training and a testing data set as is customary with Machine Leraning algorithms.

The columns "subject" and "activity" are central to the interpretation of the data since the pairing pf their values defines a unique entry (a unqiue row) in the data set. The rest of the columns are associated to the corresponding means of aggreagated data of sensor measurement for a given subject and for a given activity.

#The features of the tidy data set are as follows:

##Two main features of the data set that define unique observations in the summarized data set (subject/activity)

Subject: definining users carrying devices for the experiment - Values are numbers from 1 to 30 defining 30 unique subjects. The numbers are not ordered in the tidy data set and this is because the initial set has been split randomly into training and testing set, and the merge didn't reorder them (it wasn't required).

Activities: These are the activities that the experiment sought to associate to accelerometric and gyroscopic measurements. The values are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING

The rest of the columns contain values grouped by subject and activities and averages of the following features selected from the original feature set:

(as we selected only means and standard deviations of agregated sensor data, then grouped by subject/activity and averaged over unique values of subject/activity the final tidy set contains means of means and means of stds)

###The additional 79 features (apart of subject and activity) kept in the tidy data set are:

"tBodyAcc-mean()-X"               
"tBodyAcc-mean()-Y"               
"tBodyAcc-mean()-Z"              
"tBodyAcc-std()-X"                
"tBodyAcc-std()-Y"                
"tBodyAcc-std()-Z"               
"tGravityAcc-mean()-X"            
"tGravityAcc-mean()-Y"            
"tGravityAcc-mean()-Z"           
"tGravityAcc-std()-X"             
"tGravityAcc-std()-Y"             
"tGravityAcc-std()-Z"            
"tBodyAccJerk-mean()-X"           
"tBodyAccJerk-mean()-Y"           
"tBodyAccJerk-mean()-Z"          
"tBodyAccJerk-std()-X"            
"tBodyAccJerk-std()-Y"            
"tBodyAccJerk-std()-Z"           
"tBodyGyro-mean()-X"              
"tBodyGyro-mean()-Y"              
"tBodyGyro-mean()-Z"             
"tBodyGyro-std()-X"               
"tBodyGyro-std()-Y"               
"tBodyGyro-std()-Z"              
"tBodyGyroJerk-mean()-X"          
"tBodyGyroJerk-mean()-Y"          
"tBodyGyroJerk-mean()-Z"         
"tBodyGyroJerk-std()-X"           
"tBodyGyroJerk-std()-Y"           
"tBodyGyroJerk-std()-Z"          
"tBodyAccMag-mean()"              
"tBodyAccMag-std()"               
"tGravityAccMag-mean()"          
"tGravityAccMag-std()"            
"tBodyAccJerkMag-mean()"          
"tBodyAccJerkMag-std()"          
"tBodyGyroMag-mean()"             
"tBodyGyroMag-std()"              
"tBodyGyroJerkMag-mean()"        
"tBodyGyroJerkMag-std()"          
"fBodyAcc-mean()-X"               
"fBodyAcc-mean()-Y"              
"fBodyAcc-mean()-Z"               
"fBodyAcc-std()-X"                
"fBodyAcc-std()-Y"               
"fBodyAcc-std()-Z"                
"fBodyAcc-meanFreq()-X"           
"fBodyAcc-meanFreq()-Y"          
"fBodyAcc-meanFreq()-Z"           
"fBodyAccJerk-mean()-X"           
"fBodyAccJerk-mean()-Y"          
"fBodyAccJerk-mean()-Z"           
"fBodyAccJerk-std()-X"            
"fBodyAccJerk-std()-Y"           
"fBodyAccJerk-std()-Z"            
"fBodyAccJerk-meanFreq()-X"       
"fBodyAccJerk-meanFreq()-Y"      
"fBodyAccJerk-meanFreq()-Z"       
"fBodyGyro-mean()-X"              
"fBodyGyro-mean()-Y"             
"fBodyGyro-mean()-Z"              
"fBodyGyro-std()-X"               
"fBodyGyro-std()-Y"              
"fBodyGyro-std()-Z"               
"fBodyGyro-meanFreq()-X"          
"fBodyGyro-meanFreq()-Y"         
"fBodyGyro-meanFreq()-Z"          
"fBodyAccMag-mean()"              
"fBodyAccMag-std()"              
"fBodyAccMag-meanFreq()"          
"fBodyBodyAccJerkMag-mean()"      
"fBodyBodyAccJerkMag-std()"      
"fBodyBodyAccJerkMag-meanFreq()"  
"fBodyBodyGyroMag-mean()"         
"fBodyBodyGyroMag-std()"         
"fBodyBodyGyroMag-meanFreq()"     
"fBodyBodyGyroJerkMag-mean()"     
"fBodyBodyGyroJerkMag-std()"     
"fBodyBodyGyroJerkMag-meanFreq()"

Notes:
======

- Features are normalized and bounded within [-1,1].
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg. 


