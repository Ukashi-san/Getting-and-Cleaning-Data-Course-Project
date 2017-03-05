library(dplyr)

## set directory with all data as working directory in my case (OS: Windows 10) : 
## setwd("C:\\Users\\£ukasz\\Documents\\R_projects\\Coursera\\Course3\\Week4\\UCI HAR Dataset")

## all files needed for analysis

## data files
test_data <- "./test/X_test.txt"
train_data <- "./train/X_train.txt"

## activity data
test_activity <- "./test/y_test.txt"
train_activity <- "./train/y_train.txt"

## ID files
test_id <- "./test/subject_test.txt"
train_id <- "./train/subject_train.txt"

## labels 
data_labels <- "features.txt"
activity_labels <- "activity_labels.txt"

labels <- read.table(data_labels, header = FALSE)
activity_names <- read.table(activity_labels, header = FALSE)
## test data part, 
## reading test data , test activity and test id, dt stands for data table

df_test <- read.table(test_data, header = FALSE)
df_activity_test <- read.table(test_activity, header = FALSE)
df_id_test <- read.table(test_id, header = FALSE)

## addding names to columns

colnames(df_test) <- as.character(labels[,2])
colnames(df_id_test) <- c("ID")
colnames(df_activity_test) <- c("activity_type")

#combining all test data 

df_all_test <- cbind(df_test, df_activity_test, df_id_test)

##train data part
## reading train data , train activity and train id, dt stands for data table

df_train <- read.table(train_data, header = FALSE)
df_activity_train <- read.table(train_activity, header = FALSE)
df_id_train <- read.table(train_id, header = FALSE)

## addding names to columns

colnames(df_train) <- as.character(labels[,2])
colnames(df_id_train) <- c("ID")
colnames(df_activity_train) <- c("activity_type")

#combining all train data 

df_all_train <- cbind(df_train, df_activity_train, df_id_train)

#combine full data
df_all <- rbind(df_all_test,df_all_train)

# create vector of selected columns
columns_selected <- c(grep("[:alnumeric:]-mean()|-std()", labels[,2]), 562, 563)

# subset df_all to keep only required columns

df_selected <- df_all[, columns_selected]

## give nice name to activities in activity type column
df_selected$activity_type <- factor(df_selected$activity_type, levels = activity_names$V1, labels = activity_names$V2)

## create tidy data frame - grouped and with averages of all columns

df_tidy <- df_selected %>% group_by(ID, activity_type) %>% summarize_all(mean)

## writing tidy data frame to woring directory
write.table(df_tidy, file = "Getting and Cleaning Data Course Project.txt", row.names = FALSE)


