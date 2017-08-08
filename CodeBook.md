# Codebook
# wearable_datacleaning_assignment

Feature Selection: combined_data.csv
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

In addition to the sensor data, there are two additional variables relating to the subject and conditions under which the sensor data was collected

activity: This indicates the activity the subject was performing when the sensor data was collected. It is enumerated as follows:

-1 WALKING
-2 WALKING_UPSTAIRS
-3 WALKING_DOWNSTAIRS
-4 SITTING
-5 STANDING
-6 LAYING

subject: This is the unique identity of the subject usig the sensor device. It ranges from 1 to 30

Feature Selection: averages.csv
=================
This represents a further analysis on the combined dataset. For each feature variable and subject, the arithmetic mean was calculated and recorded thereby 
creating 30 means for each of the 66 feature variables. Here the variable "y" was omitted as it makes no contextual sense to average it.


The complete list of variables of each feature vector of the combined dataset is as follows:

1	tBodyAcc_mean_X
2	tBodyAcc_mean_Y
3	tBodyAcc_mean_Z
4	tBodyAcc_std_X
5	tBodyAcc_std_Y
6	tBodyAcc_std_Z
7	tGravityAcc_mean_X
8	tGravityAcc_mean_Y
9	tGravityAcc_mean_Z
10	tGravityAcc_std_X
11	tGravityAcc_std_Y
12	tGravityAcc_std_Z
13	tBodyAccJerk_mean_X
14	tBodyAccJerk_mean_Y
15	tBodyAccJerk_mean_Z
16	tBodyAccJerk_std_X
17	tBodyAccJerk_std_Y
18	tBodyAccJerk_std_Z
19	tBodyGyro_mean_X
20	tBodyGyro_mean_Y
21	tBodyGyro_mean_Z
22	tBodyGyro_std_X
23	tBodyGyro_std_Y
24	tBodyGyro_std_Z
25	tBodyGyroJerk_mean_X
26	tBodyGyroJerk_mean_Y
27	tBodyGyroJerk_mean_Z
28	tBodyGyroJerk_std_X
29	tBodyGyroJerk_std_Y
30	tBodyGyroJerk_std_Z
31	tBodyAccMag_mean
32	tBodyAccMag_std
33	tGravityAccMag_mean
34	tGravityAccMag_std
35	tBodyAccJerkMag_mean,
36	tBodyAccJerkMag_std
37	tBodyGyroMag_mean
38	tBodyGyroMag_std
39	tBodyGyroJerkMag_mean
40	tBodyGyroJerkMag_std
41	fBodyAcc_mean_X
42	fBodyAcc_mean_Y
43	fBodyAcc_mean_Z
44	fBodyAcc_std_X
45	fBodyAcc_std_Y
46	fBodyAcc_std_Z
47	fBodyAccJerk_mean_X
48	fBodyAccJerk_mean_Y
49	fBodyAccJerk_mean_Z
50	fBodyAccJerk_std_X
51	fBodyAccJerk_std_Y
52	fBodyAccJerk_std_Z
53	fBodyGyro_mean_X
54	fBodyGyro_mean_Y
55	fBodyGyro_mean_Z
56	fBodyGyro_std_X
57	fBodyGyro_std_Y
58	fBodyGyro_std_Z
59	fBodyAccMag_mean
60	fBodyAccMag_std
61	fBodyBodyAccJerkMag_mean
62	fBodyBodyAccJerkMag_std
63	fBodyBodyGyroMag_mean
64	fBodyBodyGyroMag_std
65	fBodyBodyGyroJerkMag_mean
66	fBodyBodyGyroJerkMag_std
67	y
68	subj


The averages dataset differs by omitting variable y and having variable subj in the first position (thereby incrementing the other variable positions by 1.
