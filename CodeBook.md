# R script works as follows

## Stage 1

* set up working directory
   this should be the folder where all data for project is extracted and all other references are relational to this place
   
* set up all files needed for analysis
        + "./test/X_test.txt"
        + "./train/X_train.txt"

        + #### activity data
        + "./test/y_test.txt"
        + "./train/y_train.txt"

        + #### ID files
        + "./test/subject_test.txt"
        + "./train/subject_train.txt"

        + #### labels 
data_labels <- "features.txt"
activity_labels <- "activity_labels.txt"
* create variables with labels

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
