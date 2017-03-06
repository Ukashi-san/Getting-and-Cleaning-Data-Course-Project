# R script works as follows

## Stage 1

* set up working directory, this should be the folder where all data for project is extracted and all other references are relational to this place.
   
* set up all files needed for analysis
  + **"./test/X_test.txt"**
  + **"./test/y_test.txt"**
  + **"./test/subject_test.txt"**

  + **"./train/X_train.txt"**
  + **"./train/y_train.txt"**
  + **"./train/subject_train.txt"**

* Read files with labels 
  + **data_labels <- "features.txt"**
  + **activity_labels <- "activity_labels.txt"**

## Stage 2

* process test data first then process train data in the same way 
  + read test data, activity data, subject ID data
  + assign labels
  + combine all above data into one dataframe

## Stage 3

* combine test and train data into one data frame
* select required colums - colums that have information on mean and standard deviation
* give description to activity_type

## Stage 4

* create tidy data frame that have mean of all colums calculated for each subject ID and Activity Type
* write result into a file **Getting and Cleaning Data Course Project.txt**

# Tidy data file description

1. ** ID ** identification of the subject taking part in the tests
2. ** activity_type ** one of the six types of activities
  1. 1 - WALKING
  2. 2 - WALKING_UPSTAIRS
  3. 3 - WALKING_DOWNSTAIRS
  4. 4 - SITTING
  5. 5 - STANDING
  6. 6 - LAYING
3. According to the description of the original data below variables are derived _from original database and come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions._

4. **Below Variables are averaged for each ID and each activity type.**

  * "tBodyAcc-mean()-X"
  * "tBodyAcc-mean()-Y"
  * "tBodyAcc-mean()-Z" 
  * "tBodyAcc-std()-X" 
  * "tBodyAcc-std()-Y" 
  * "tBodyAcc-std()-Z" 
  * "tGravityAcc-mean()-X" 
  * "tGravityAcc-mean()-Y" 
  * "tGravityAcc-mean()-Z" 
  * "tGravityAcc-std()-X" 
  * "tGravityAcc-std()-Y" 
  * "tGravityAcc-std()-Z" 
  * "tBodyAccJerk-std()-X" 
  * "tBodyAccJerk-std()-Y" 
  * "tBodyAccJerk-std()-Z" 
  * "tBodyGyro-std()-X" 
  * "tBodyGyro-std()-Y" 
  * "tBodyGyro-std()-Z" 
  * "tBodyGyroJerk-std()-X" 
  * "tBodyGyroJerk-std()-Y" 
  * "tBodyGyroJerk-std()-Z" 
  * "tBodyAccMag-std()" 
  * "tGravityAccMag-std()" 
  * "tBodyAccJerkMag-std()" 
  * "tBodyGyroMag-std()" 
  * "tBodyGyroJerkMag-std()" 
  * "fBodyAcc-mean()-X" 
  * "fBodyAcc-mean()-Y" 
  * "fBodyAcc-mean()-Z" 
  * "fBodyAcc-std()-X" 
  * "fBodyAcc-std()-Y" 
  * "fBodyAcc-std()-Z" 
  * "fBodyAcc-meanFreq()-X" 
  * "fBodyAcc-meanFreq()-Y" 
  * "fBodyAcc-meanFreq()-Z" 
  * "fBodyAccJerk-std()-X" 
  * "fBodyAccJerk-std()-Y" 
  * "fBodyAccJerk-std()-Z" 
  * "fBodyGyro-std()-X" 
  * "fBodyGyro-std()-Y" 
  * "fBodyGyro-std()-Z" 
  * "fBodyAccMag-std()" 
  * "fBodyBodyAccJerkMag-std()" 
  * "fBodyBodyGyroMag-std()" 
  * "fBodyBodyGyroJerkMag-std()"
