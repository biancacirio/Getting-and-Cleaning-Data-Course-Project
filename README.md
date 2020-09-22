GETTING AND CLEANING DATA-COURSE PROJECT
----------------------------------------

The goal of this project is to showcase our capability in getting and
cleaning a data set. The data used were collected from the
accelerometers from the Samsung Galaxy S smartphone in which an
experiment was carried out from a group of 30 volunteers with each
person performing six activities: walking, walking upstairs, walking
downstairs, standing, sitting, and laying.

FILES
-----

In this github repository you will see four files, namely:  
a) README.md: an overview of the project and workflow of the R script  
b) CODEBOOK.md: details of the data, variables, and transformations used
and done to come up with a tidy data set  
c) `run_analysis.R`: R script used to process the raw data and come up
with the final output  
d) TIDYDataset.txt: the final output of the project  
Note: To view the same ouput with the text file uploaded in the coursera
website, kindly click or select the “Raw” option upon viewing this file

R SCRIPT WORKFLOW
-----------------

How Does the R script (`run_analysis.R`) works?

1.  A working directory is created
2.  Data sets are downloaded with the given URL link
3.  The test, train, activity, and features data sets are unzipped and
    read
4.  The test and train data sets are combined into a single data set
5.  The consolidated data set is filtered to consider only the mean and
    standard deviation measurements
6.  The columns are given descriptive column names
7.  The consolidated data is merged with the activity data to get
    respective activity descriptions
8.  The data is summarized by average per each subject and activity

The final output of this project should be a tidy data set with
descriptive column names, descriptive activity labels, and summarized
values (average).
