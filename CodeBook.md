# Codebook
Douglas Weatherhead  
September 26, 2016  



### CODEBOOK for tidy_data.csv


#### Technical information about the files themselves: number of observations, record length, number of records per observation, etc.
Tidy Data set of 30 patients and their corresponding sensor activity. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

#### Details about the data: 
columns in which specific variables can be found, whether they are character or numeric, and if numeric, what format.

 - Subject_Number             : int  (identifier number of  subjects )
 - Activity                   : Factor w/ 6 levels "LAYING","SITTING, ...(see above) 
 - tBodyAcc-mean()-X          : num  
 - tBodyAcc-mean()-Y          : num  
 - tBodyAcc-mean()-Z          : num  
 - tBodyAcc-std()-X           : num  
 - tBodyAcc-std()-Y           : num  
 - tBodyAcc-std()-Z           : num  
 - tGravityAcc-mean()-X       : num  
 - tGravityAcc-mean()-Y       : num  
 - tGravityAcc-mean()-Z       : num  
 - tGravityAcc-std()-X        : num  
 - tGravityAcc-std()-Y        : num  
 - tGravityAcc-std()-Z        : num  
 - tBodyAccJerk-mean()-X      : num  
 - tBodyAccJerk-mean()-Y      : num  
 - tBodyAccJerk-mean()-Z      : num  
 - tBodyAccJerk-std()-X       : num  
 - tBodyAccJerk-std()-Y       : num  
 - tBodyAccJerk-std()-Z       : num  
 - tBodyGyro-mean()-X         : num  
 - tBodyGyro-mean()-Y         : num  
 - tBodyGyro-mean()-Z         : num  
 - tBodyGyro-std()-X          : num  
 - tBodyGyro-std()-Y          : num  
 - tBodyGyro-std()-Z          : num  
 - tBodyGyroJerk-mean()-X     : num  
 - tBodyGyroJerk-mean()-Y     : num  
 - tBodyGyroJerk-mean()-Z     : num  
 - tBodyGyroJerk-std()-X      : num  
 - tBodyGyroJerk-std()-Y      : num  
 - tBodyGyroJerk-std()-Z      : num  
 - tBodyAccMag-mean()         : num  
 - tBodyAccMag-std()          : num  
 - tGravityAccMag-mean()      : num  
 - tGravityAccMag-std()       : num  
 - tBodyAccJerkMag-mean()     : num  
 - tBodyAccJerkMag-std()      : num  
 - tBodyGyroMag-mean()        : num  
 - tBodyGyroMag-std()         : num  
 - tBodyGyroJerkMag-mean()    : num  
 - tBodyGyroJerkMag-std()     : num  
 - fBodyAcc-mean()-X          : num  
 - fBodyAcc-mean()-Y          : num  
 - fBodyAcc-mean()-Z          : num  
 - fBodyAcc-std()-X           : num  
 - fBodyAcc-std()-Y           : num  
 - fBodyAcc-std()-Z           : num  
 - fBodyAccJerk-mean()-X      : num  
 - fBodyAccJerk-mean()-Y      : num  
 - fBodyAccJerk-mean()-Z      : num  
 - fBodyAccJerk-std()-X       : num  
 - fBodyAccJerk-std()-Y       : num  
 - fBodyAccJerk-std()-Z       : num  
 - fBodyGyro-mean()-X         : num  
 - fBodyGyro-mean()-Y         : num  
 - fBodyGyro-mean()-Z         : num  
 - fBodyGyro-std()-X          : num  
 - fBodyGyro-std()-Y          : num  
 - fBodyGyro-std()-Z          : num  
 - fBodyAccMag-mean()         : num  
 - fBodyAccMag-std()          : num  
 - fBodyBodyAccJerkMag-mean() : num  
 - fBodyBodyAccJerkMag-std()  : num  
 - fBodyBodyGyroMag-mean()    : num  
 - fBodyBodyGyroMag-std()     : num  
 - fBodyBodyGyroJerkMag-mean(): num  
 - fBodyBodyGyroJerkMag-std() : num 

#### Steps of Analysis

- Download data set and and save zip file
- Remove files not needed, keep files with needed variables
- Read in activity labels
- Read in features tables
- Read in Subjects Test Dataset
- Rename Column as "Subject_number"
- Read in x variable for test dataset
- Read in y variable for test dataset
- Read in Subject numbers for Training data set
- Read in x variable for training dataset
- Read in y variable for training dataset
- Add features to column variables to the x variable data frames
- Remove all column variables not mean or std from both training and test dataset
- Activity Labels to Y Variable
- Bind the columns of the test and training sets
- rename column 2 so we can merge effectively
- Row bind the dataset
- Load TIDYR PACKAGE to build a tidy dataset
- Build a tidy data set labelled tidy_data
- write new tidydata dataframe to file "tidy_data.txt"



#### Citation
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
