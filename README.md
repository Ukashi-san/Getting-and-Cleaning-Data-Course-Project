# Getting-and-Cleaning-Data-Course-Project
Programming assigment for Coursera week 4 of Course 3 Data Science specialization

This reporitory consist of four files that constitute Programming assigment for Coursera Course 3 in Data Science specialization
those files are:
-  run_analysis.R an R script creating tidy data as per assigment requirments
-  Coursera_programming_assigment.txt example of output from R script 
-  CodeBook.md file describing all steps of analysis and all variables
-  README.md with all information gathered

Object of this assigment was to create script that will get the data, process it in correct way and at the end produce tidy set of data.

Data used for this project comes form following location
- https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

and represent data collected from accelerometers from Samsung Galaxy S smartphone, detailed description is available at the site where the data was obtained:
- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# R script works as follows

## Stage 1

* set up working directory
* set up all files needed for analysis
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


