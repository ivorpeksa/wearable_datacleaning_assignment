# wearable_datacleaning_assignment

This repo is for the Wearable Datacleaning Assignemnt for Week 4 of the Getting and Cleaning Data course from Johns Hopkins University.

The original dataset is as follows:

Full Description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

This repo includes the following files:
=========================================

- 'README.md'

- 'CodeBook.md'

- 'run_analysis.R'

- 'averages.csv' - the dataset created by project objectives 1 to 4 below

- 'combined_dataset.csv' - the dataset required by objective 5 below

Project Objectives
===================

You should create one R script called run_analysis.R that does the following.

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement.
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names.
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Using the script
================
Use the tun_analysis.R script as follows.

    1. Unpack the original dataset into "C:/Data Science/Datascience Pack/Johns Hopkins Data Science/wk3.5/UCI HAR Dataset/". The files required are: ./test/subject_test.txt, ./train/subject_train.txt, ./test/X_test.txt, ./train/X_train.txt, ./test/y_test.txt, ./train/y_train.txt, ./features.txt, ./activity_labels.txt
    2. Run the run_analysis.R script in RStudio or equaivalent.
    3. The script will output ./averages.txt

*The following information is from the original README.txt included in the dataset above*

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
