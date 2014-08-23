---
title: "Codebook for the project work of Coursera Getting and Cleaning Data course"
date: 2014-08-23
output: html_document
---

1. Download and unzip the data files following the link on course website (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). The files should be put into working directory of R:

* features.txt
* activity_labels.txt
* train/subject_train.txt
* train/X_train.txt
* train/y_train.txt
* test/subject_test.txt
* test/X_test.txt
* test/y_test.txt

2. Read and subset "feature.txt" file. There are 561 feature names. Uppercase letters were changed to lowercase. "-", "(", ")" and "," were removed from feature names. grep() was used to do the subsetting to include  only those names with "mean" and "std" in them. Feature names include characters "tbody"" as total body, "acc"" as acceleration (The signal unit is gravity units "g"), "gyro"" as angular velocity vector measured by the gyroscope (The unit is radians/second) and "x""y""z"" as the 3 axes(directions). All the features normalized and bounded within [-1,1].

3. Read "activity_labels.txt" file. Uppercase letters were changed to lowercase and "_" was also removed. There are 6 activities: "walking", "walkingupstairs", "walkingdownstairs", "sitting", "standing", "laying".

4. Read and combine data files. The training and test data sets were read seperately, then they were combined using rbind() function. Activity was also factored into 6 levels. Subjects with "id" as their name, activities and training and test data sets were combinded into one 10299 x 55 data.frame  

5. melt() and dcast() functions were used to produce means of feature variables for each combination of subjects and activities.

6. write.table() was used to produce "tidydata.txt" file with 180 x 55 dimension. Please use read.table("tidydata.txt") to read back the data for viewing.

Reference:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012