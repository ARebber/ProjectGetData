#Code Book

##Introduction

For this analysis existing datafiles of a study on "Human Activity Recognition Using Smartphones" were used. The original study is briefly described below. Aim of our study was, to learn to read in, combine and compute data from existing resources. All steps performed are done with the script run_analysis.R, of which the function and use is described in README.md in this repo. 

In this Code Book, some background of the original study and the analysis in this project is given. The most important part of this document is the description of all variables in the produced data file tinyData.txt, which is generated from the original datafiles using the provided R script.


##The original experiment and data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING-UPSTAIRS, WALKING-DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity wre captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For both the training dataset and the test dataset, the following records were provided:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

N.B.: All features are normalized and bounded within [-1,1].


##References

The original data and analysis were published at:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

For more information about this dataset contact: activityrecognition@smartlab.ws.


##Analysis in this project

The aim of this project was to combine all data from the original study (as described above) and select some relevant measurements. For these variables the mean was computed per individual subject taking part in this study, grouped by activity performed. 

For the details of performing this analysis, the reader is referred to the README.md file in this repo. 


##Dataset Description

The result of the analysis performed in this study, is provided in the file tidyData.txt, which is automatically generated using the provided R script in this repo. In this dataset there are 88 variables (out of 563 in the entire dataset). Besides the variables for subject performing and activity performed, for all data on measurement means and standard deviations the mean per subject and activity are presented. 


##Definition of Abbreviations

In order to label the measurement variables in the data file, the labels were composed of abbreviations of the measurement and transformation names. This is not very human readable, but since there are so many measurements done with slight differences, this was considered the most logical way of labeling. The following table explains the abbreviation components used in the variable names, which are presented in full in the next paragraph. 

Abbreviation  | Description
------------- | -----------
t             | time domain signal
f             | frequency domain signal
Acc           | Accelerometer signal
Gyro          | Gyroscope signal
XYZ           | Indication of the 3-axial component
Body          | Body linear acceleration
Gravity       | Gravity acceleration
Jerk          | Jerk signal
Mag           | Signal magnitude according to Eulidean norm
mean...       | Mean value of signal
std...        | Standard deviation of signal
Freq
angle


##List of Variables

The following table presents all 88 variables included in the tidyData.txt file (dataset) and explains them in detail. 

Number  | Name in dataset | Description
------- | --------------- | -----------
01      | subject         | Subject or person performing the activity
02      | activity        | Indicates which of the 6 activities done in the experiment was performed
03      | tBodyAcc.mean...X | Mean of time signal on body acceleration mean on the X axis (normalized)
04      | tBodyAcc.mean...Y | Mean of time signal on body acceleration mean on the Y axis (normalized)
05      | tBodyAcc.mean...Z | Mean of time signal on body acceleration mean on the Z axis (normalized)
06      | tGravityAcc.mean...X | Mean of time signal on gravity acceleration mean on X axis (normalized)
07      | tGravityAcc.mean...Y
08      | tGravityAcc.mean...Z
09      | tBodyAccJerk.mean...X
10      | tBodyAccJerk.mean...Y
11      | tBodyAccJerk.mean...Z
12      | tBodyGyro.mean...X
13      | tBodyGyro.mean...Y
14      | tBodyGyro.mean...Z
15      | tBodyGyroJerk.mean...X
16      | tBodyGyroJerk.mean...Y
17      | tBodyGyroJerk.mean...Z
18      | tBodyAccMag.mean..
19      | tGravityAccMag.mean..
20      | tBodyAccJerkMag.mean..
21      | tBodyGyroMag.mean..
22      | tBodyGyroJerkMag.mean..
23      | fBodyAcc.mean...X
24      | fBodyAcc.mean...Y
25      | fBodyAcc.mean...Z
26      | fBodyAcc.meanFreq...X
27      | fBodyAcc.meanFreq...Y
28      | fBodyAcc.meanFreq...Z
29      | fBodyAccJerk.mean...X
30      | fBodyAccJerk.mean...Y
31      | fBodyAccJerk.mean...Z
32      | fBodyAccJerk.meanFreq...X
33      | fBodyAccJerk.meanFreq...Y
34      | fBodyAccJerk.meanFreq...Z
35      | fBodyGyro.mean...X
36      | fBodyGyro.mean...Y
37      | fBodyGyro.mean...Z
38      | fBodyGyro.meanFreq...X
39      | fBodyGyro.meanFreq...Y
40      | fBodyGyro.meanFreq...Z
41      | fBodyAccMag.mean..
42      | fBodyAccMag.meanFreq..
43      | fBodyBodyAccJerkMag.mean..
44      | fBodyBodyAccJerkMag.meanFreq..
45      | fBodyBodyGyroMag.mean..
46      | fBodyBodyGyroMag.meanFreq..
47      | fBodyBodyGyroJerkMag.mean..
48      | fBodyBodyGyroJerkMag.meanFreq..
49      | angle.tBodyAccMean.gravity.
50      | angle.tBodyAccJerkMean..gravityMean.
51      | angle.tBodyGyroMean.gravityMean.
52      | angle.tBodyGyroJerkMean.gravityMean.
53      | angle.X.gravityMean.
54      | angle.Y.gravityMean.
55      | angle.Z.gravityMean.
56      | tBodyAcc.std...X
57      | tBodyAcc.std...Y
58      | tBodyAcc.std...Z
59      | tGravityAcc.std...X
60      | tGravityAcc.std...Y
61      | tGravityAcc.std...Z
62      | tBodyAccJerk.std...X
63      | tBodyAccJerk.std...Y
64      | tBodyAccJerk.std...Z
65      | tBodyGyro.std...X
66      | tBodyGyro.std...Y
67      | tBodyGyro.std...Z
68      | tBodyGyroJerk.std...X
69      | tBodyGyroJerk.std...Y
70      | tBodyGyroJerk.std...Z
71      | tBodyAccMag.std..
72      | tGravityAccMag.std..
73      | tBodyAccJerkMag.std..
74      | tBodyGyroMag.std..
75      | tBodyGyroJerkMag.std..
76      | fBodyAcc.std...X
77      | fBodyAcc.std...Y
78      | fBodyAcc.std...Z
79      | fBodyAccJerk.std...X
80      | fBodyAccJerk.std...Y
81      | fBodyAccJerk.std...Z
82      | fBodyGyro.std...X
83      | fBodyGyro.std...Y
84      | fBodyGyro.std...Z
85      | fBodyAccMag.std..
86      | fBodyBodyAccJerkMag.std..
87      | fBodyBodyGyroMag.std..
88      | fBodyBodyGyroJerkMag.std..
