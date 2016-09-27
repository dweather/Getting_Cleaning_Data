###run_analysis.R 

## Download data set and and save zip file
data_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(data_url, "data.zip")
file <- unzip("data.zip")

## Remove files not needed, keep files with needed variables
## 1, 2, 14, 15,16,26,27,28
file <- file[c(1:2,14:16,26:28)]

## Read in activity labels
activity_labels <- read.table(file[1] )
## Read in features tables
features <- read.table(file[2] )
## Read in Subjects Test Dataset
subject_test <- read.table(file[3] )
## Rename Column as "Subject_number"
colnames(subject_test)[1] <- "Subject_Number"

## Read in x variable for test dataset
x_test <- read.table(file[4], )
## Read in y variable for test dataset
y_test <- read.table(file[5], )

## Read in Subject numbers for Training data set
subject_train <- read.table(file[6], )
colnames(subject_train)[1] <- "Subject_Number"

## Read in x variable for training dataset
x_train <-  read.table(file[7] )
## Read in y variable for training dataset
y_train <- read.table(file[8] )

## Add features to column variables to the x variable data frames
colnames(x_test) <- features$V2
colnames(x_train) <- features$V2

## Remove all column variables not mean or std from both training and test dataset
x_test <- x_test[, grep("mean|std", colnames(x_test), ignore.case=F, perl=T)]
x_test <- x_test[, grep("meanF", colnames(x_test), ignore.case=F, perl=T, invert = T)]

x_train <- x_train[, grep("mean|std", colnames(x_train), ignore.case=F, perl=T)]
x_train <- x_train[, grep("meanF", colnames(x_train), ignore.case=F, perl=T, invert = T)]

###Activity Labels to Y Variable
test <- merge(activity_labels, y_test)
train <- merge(activity_labels, y_train)

## Bind the columns of the test and training sets
test <- cbind(subject_test,  test[,2], x_test)
train <- cbind(subject_train,  train[,2], x_train)

## rename column 2 so we can merge effectively
colnames(train)[2] <- "Activity"
colnames(test)[2] <- "Activity"

## Row bind the dataset
full_Dataset <- rbind(train, test)

## Load TIDYR PACKAGE to build a tidy dataset
library("tidyr")
## Build a tidy data set labelled tidy_data
tidy_data  <- aggregate(.~Subject_Number + Activity, full_Dataset, mean)

## Print first few lines of the new tidy_data dataframe
head(tidy_data)

