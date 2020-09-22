DATA
----

Test:  
a) `Subject_test.txt`: subject who performed the activity for each
window sample. Ranges from 1 to 30  
b) `X_test.txt`: test set  
c) `y_test.txt`: test labels

Train:  
a) `Subject_train.txt`: subject who performed the activity for each
window sample. Ranges from 1 to 30  
b) `X_train.txt`: training set  
c) `y_train.txt`: training labels

Others:  
a) `activity_labels.txt`: links the class label with their activity
names. Classified as “Walking”, “Walking Upstairs”, “Walking
Downstairs”, “Sitting”, “Standing”, or “Laying”  
b) `features.txt`: list of all features

VARIABLES
---------

1.  Subject: consolidated data of subjects from `Subject_test.txt` and
    `Subject_train.txt`  
2.  Activity: descriptive activity names from `activity_labels.txt`  
3.  Columns 3 to 81: Mean (mean()) and Standard Deviation (std()) of the
    following signals:

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

TRANSFORMATIONS
---------------

1.  The test and train data sets were combined into a single data set
2.  The consolidated data is filtered to consider only the mean and
    standard deviation measurements
3.  The values in the “Activity” column is matched into their respective
    activity descriptions
4.  The variables were given descriptive names: “Subject”, “Activity”,
    and labels for the mean and standard deviation measurements for each
    corresponding signal
5.  The consolidated data is summarized by average per each subject and
    activity to come up with the final output: a tidy data set
