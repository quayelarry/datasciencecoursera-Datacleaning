
## Getting and Cleaning Data

## Lawrence Quaye

##  The following script collect, work with, and clean a data set. 
##  The goal is to prepare tidy data that can be used for later analysis.
##  Here are the data for the project:

##  1.	Merges the training and the test sets to create one data set.
##  2.	Extracts only the measurements on the mean and standard deviation for each measurement.
##  3.	Uses descriptive activity names to name the activities in the data set
##  4.	Appropriately labels the data set with descriptive variable names.
##  5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 

##   Prepare space and environment and required library
rm(list = ls())
library(reshape2)
library(plyr)

getwd()
if (!file.exists("~/courseraWD/")){dir.create("~/courseraWD/")}
setwd("~/courseraWD/data")

##   downloanc and unzipfiles
 projectURL<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
 download.file(projectURL,destfile = "~/coursera/data/getdata%2Fprojectfiles%2FUCI HAR Dataset.zip")
  unzip("getdata%2Fprojectfiles%2FUCI HAR Dataset.zip") 
dateDownloaded <- date()

##  1.Merge the training and the test sets to create one data set.
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# create 'x' data set
x_data <- rbind(x_train, x_test)

# create 'y' data set
y_data <- rbind(y_train, y_test)

# create 'subject' data set
subject_data <- rbind(subject_train, subject_test)


##  2.Extract measurements on the mean and standard deviation 
##    for each measurement. 

## load features
features <- read.table("UCI HAR Dataset/features.txt", header = FALSE) 
features[,2] <- as.character(features[,2])
# get only columns with mean() or std() in their names
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])
x_data <- x_data[, mean_and_std_features]

# correct the column names
names(x_data) <- features[mean_and_std_features, 2]

##  3.	Use descriptive activity names to name the activities in the data set
## load activityLabels 
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt") 
activity_labels[,2] <- as.character(activity_labels[,2])

# update values with correct activity names
y_data[, 1] <- activity_labels[y_data[, 1], 2]
names(y_data) <- "activity"


##  4.	Appropriately label the data set with descriptive variable names.
names(subject_data) <- "subject"
merged_data <- cbind(x_data, y_data, subject_data)


##  5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# turn activities & subjects into factors
merged_data$activity<- factor(merged_data$activity, levels = activity_labels[,1], labels = activity_labels[,2])
merged_data$subject <- as.factor(merged_data$subject)

merged_data.melted <- melt(merged_data, id = c("subject", "activity"))
merged_data.mean <- dcast(merged_data, subject + activity ~ variable, mean)

write.table(merged_data.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
