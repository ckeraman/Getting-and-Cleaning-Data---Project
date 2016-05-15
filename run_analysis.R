#This Script must be run where the Data is unzipped
#For example, the current file path for this script is:
# C:/Users/ck/Documents/Coursera/Data Science/Cleaning and getting data/Assignment/UCI HAR Dataset
#set the working directory to suit your own computer environment
#Setting the working directory where the script can access the unzipped data
setwd("C:/Users/ck/Documents/Coursera/Data Science/Cleaning and getting data/Assignment/UCI HAR Dataset")

#Load required libraries
library(dplyr)
library(plyr)

#Features & Labels extraction
#All the features associted to the measures made in the data set are in the activity_labels.txt and features.txt
#after reading the labels you can use the functions str() on activity_labels and/or features and will notice that 
#the labels and feature names have been loaded by "read.table" as factors. A convertion to characters is needed to
#facilitate the data merging later on
activity_labels <- read.table("./activity_labels.txt")
activity_labels[,2] <- as.character(activity_labels[,2])
features <- read.table("./features.txt")
features[,2] <- as.character(features[,2])

#At this point there are 561 types of measurements in the variable feature (use str() to check))
#Only the features pertaining to mean and std (i.e. standard deviations) are needed for the assignment
#This next section of code selects the features required
required_features <- grep(".*mean.*|.*std.*", features[,2])
required_features.names <- features[required_features,2]

#Loading the untidy data into R tables - training set
training_data <- read.table("./train/X_train.txt")[required_features]
training_subject_actions <- read.table("./train/Y_train.txt")
training_subjects <- read.table("./train/subject_train.txt")
training_full_set <- cbind(training_subjects, training_subject_actions, training_data)

#Loading the "untidy" data - test set
test_data <- read.table("./test/X_test.txt")[required_features]
test_subject_actions <- read.table("./test/Y_test.txt")
test_subjects <- read.table("./test/subject_test.txt")
test_full_set <- cbind(test_subjects, test_subject_actions, test_data)

#merge training data, test data and actions/feature names
# merge datasets and add labels
merged_data <- rbind(training_full_set, test_full_set)
colnames(merged_data) <- c("subject", "activity", required_features.names)


#Using dplyr to trim the data for readability
# Creating a dplyr structure from merged_data
dpl_merged = tbl_dt(merged_data)

#changing activity codes into activity labels
dpl_merged$activity = activity_labels[dpl_merged$activity,2]

# Using dplyr to group the data in dpl_merged by subject and activity, then applying the mean
by_sub_act = group_by(dpl_merged, subject, activity)

tidy_dpl_table = summarize_each(by_sub_act, funs(mean))

#Writing the tidy table into a tidy file 
write.table(tidy_dpl_table, file="./tidy.txt")
