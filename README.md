getcleandata
============

Project work
---
title: "Project work for Coursera Getting and Cleaning Data course"
date: 2014-08-23
output: html_document
---

There are four files in this repository:

1. README.md (this file)
2. run_analysis.R (This is used to process the data and produce the tidy data set)
3. CodeBook.md (It contains details about the process to clean up the data. It also contains descriptions of all the variables and data)
4. tidydata.txt (This is the file asked for by the assignment. It contains the result produced by the run_analysis.R script. The file can be read using read.table("tidydata.txt"))

In order to run the R script file, the working directly must contain the following files and folders downloaded and unzipped from the link on course website (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip):

* features.txt
* activity_labels.txt
* train/subject_train.txt
* train/X_train.txt
* train/y_train.txt
* test/subject_test.txt
* test/X_test.txt
* test/y_test.txt
