---
title: "Project work for Coursera Getting and Cleaning Data course"
date: 2014-08-23
output: html_document
---

There are four files in this repository:

1. README.md (this file)
2. run_analysis.R (This is used to process the data and produce the tidy data set)
3. CodeBook.md (It contains details about the process to clean up the data. It also contains descriptions of all the variables and data)
4. tidydata.txt (This is the file asked for by the assignment. It contains the result produced by the run_analysis.R script. Please use read.table("tidydata.txt") to read back the data for viewing.)

In order to run the R script file, the working directly must contain the following files and folders downloaded and unzipped from the link on course website (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip):

* features.txt
* activity_labels.txt
* train/subject_train.txt
* train/X_train.txt
* train/y_train.txt
* test/subject_test.txt
* test/X_test.txt
* test/y_test.txt

Dataset Reference:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012