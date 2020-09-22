library(dplyr)

#Create working directory
if(!file.exists("data")) {
  dir.create("data")
}
setwd("data")

#Download files
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "project.zip")
unzip("project.zip")

#Read test data
test_subj <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_x <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("./UCI HAR Dataset/test/y_test.txt")

#Read train data
train_subj <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_x <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("./UCI HAR Dataset/train/y_train.txt")

#Merge test and train data 
subj <- rbind(test_subj, train_subj)
x <- rbind(test_x, train_x)
y <- rbind(test_y, train_y)

alldata <- cbind(x, subj, y)
colnames(alldata) [562] <- "Subj_V1"
colnames(alldata) [563] <- "y_V1"

#Read features and activity label text files
features <- read.table("./UCI HAR Dataset/features.txt")
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")

#Filter mean and standard deviation measurements
mean_std <- grep("mean|std", features$V2)
mean_std_1 <- features[mean_std, 2]
alldata2 <- alldata %>% select(562:563)
alldata3 <- alldata[mean_std]

#Create the consolidated data set and label with descriptive variable names 
finaldata <- cbind(alldata2, alldata3)
colnames(finaldata) <- c("Subject", "Activity", mean_std_1)

#Use descriptive names to name activities in the data set
finaldata <- merge(finaldata, activity, by.x= "Activity", by.y= "V1")
finaldata <- finaldata %>% select(2:82)
colnames(finaldata) [81] <- "Activity"

#Create the final tidy data set with average of each variable per acitivity and subject
finaldata_tidy <- finaldata %>% 
  group_by(Activity, Subject) %>% 
  summarise_all(funs(mean))

#Export the final tidy data set
write.table(finaldata_tidy, "./TIDYDataset.txt", row.names = FALSE, quote = FALSE)







