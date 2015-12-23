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
Freq          | weighted average of the frequency components
angle         | Angle between vectors


##List of Variables

The following table presents all 88 variables included in the tidyData.txt file (dataset) and explains them in detail. 

Number  | Name in dataset | Description
------- | --------------- | -----------
01      | subject         | Subject or person performing the activity
02      | activity        | Indicates which of the 6 activities done in the experiment was performed
03      | tBodyAcc.mean...X | Mean of the time signal on body acceleration mean on the X axis (normalized)
04      | tBodyAcc.mean...Y | Mean of the time signal on body acceleration mean on the Y axis (normalized)
05      | tBodyAcc.mean...Z | Mean of the time signal on body acceleration mean on the Z axis (normalized)
06      | tGravityAcc.mean...X | Mean of the time signal on gravity acceleration mean on X axis (normalized)
07      | tGravityAcc.mean...Y | Mean of the time signal on gravity acceleration mean on Y axis (normalized)
08      | tGravityAcc.mean...Z | Mean of the time signal on gravity acceleration mean on Z axis (normalized)
09      | tBodyAccJerk.mean...X | Mean of the Jerk signal of body linear acceleration mean on X axis (normalized)
10      | tBodyAccJerk.mean...Y | Mean of the Jerk signal of body linear acceleration mean on Y axis (normalized)
11      | tBodyAccJerk.mean...Z | Mean of the Jerk signal of body linear acceleration mean on Z axis (normalized)
12      | tBodyGyro.mean...X | Mean of the
13      | tBodyGyro.mean...Y | Mean of the
14      | tBodyGyro.mean...Z | Mean of the
15      | tBodyGyroJerk.mean...X | Mean of the
16      | tBodyGyroJerk.mean...Y | Mean of the
17      | tBodyGyroJerk.mean...Z | Mean of the
18      | tBodyAccMag.mean.. | Mean of the
19      | tGravityAccMag.mean.. | Mean of the
20      | tBodyAccJerkMag.mean.. | Mean of the
21      | tBodyGyroMag.mean.. | Mean of the
22      | tBodyGyroJerkMag.mean.. | Mean of the
23      | fBodyAcc.mean...X | Mean of the
24      | fBodyAcc.mean...Y | Mean of the
25      | fBodyAcc.mean...Z | Mean of the
26      | fBodyAcc.meanFreq...X | Mean of the
27      | fBodyAcc.meanFreq...Y | Mean of the
28      | fBodyAcc.meanFreq...Z | Mean of the
29      | fBodyAccJerk.mean...X | Mean of the
30      | fBodyAccJerk.mean...Y | Mean of the
31      | fBodyAccJerk.mean...Z | Mean of the
32      | fBodyAccJerk.meanFreq...X | Mean of the
33      | fBodyAccJerk.meanFreq...Y | Mean of the
34      | fBodyAccJerk.meanFreq...Z | Mean of the
35      | fBodyGyro.mean...X | Mean of the
36      | fBodyGyro.mean...Y | Mean of the
37      | fBodyGyro.mean...Z | Mean of the
38      | fBodyGyro.meanFreq...X | Mean of the
39      | fBodyGyro.meanFreq...Y | Mean of the
40      | fBodyGyro.meanFreq...Z | Mean of the
41      | fBodyAccMag.mean.. | Mean of the
42      | fBodyAccMag.meanFreq.. | Mean of the
43      | fBodyBodyAccJerkMag.mean.. | Mean of the
44      | fBodyBodyAccJerkMag.meanFreq.. | Mean of the
45      | fBodyBodyGyroMag.mean.. | Mean of the
46      | fBodyBodyGyroMag.meanFreq.. | Mean of the
47      | fBodyBodyGyroJerkMag.mean.. | Mean of the
48      | fBodyBodyGyroJerkMag.meanFreq.. | Mean of the
49      | angle.tBodyAccMean.gravity. | Mean of the
50      | angle.tBodyAccJerkMean..gravityMean. | Mean of the
51      | angle.tBodyGyroMean.gravityMean. | Mean of the
52      | angle.tBodyGyroJerkMean.gravityMean. | Mean of the
53      | angle.X.gravityMean. | Mean of the
54      | angle.Y.gravityMean. | Mean of the
55      | angle.Z.gravityMean. | Mean of the
56      | tBodyAcc.std...X | Mean of the
57      | tBodyAcc.std...Y | Mean of the
58      | tBodyAcc.std...Z | Mean of the
59      | tGravityAcc.std...X | Mean of the
60      | tGravityAcc.std...Y | Mean of the
61      | tGravityAcc.std...Z | Mean of the
62      | tBodyAccJerk.std...X | Mean of the
63      | tBodyAccJerk.std...Y | Mean of the
64      | tBodyAccJerk.std...Z | Mean of the
65      | tBodyGyro.std...X | Mean of the
66      | tBodyGyro.std...Y | Mean of the
67      | tBodyGyro.std...Z | Mean of the
68      | tBodyGyroJerk.std...X | Mean of the
69      | tBodyGyroJerk.std...Y | Mean of the
70      | tBodyGyroJerk.std...Z | Mean of the
71      | tBodyAccMag.std.. | Mean of the
72      | tGravityAccMag.std.. | Mean of the
73      | tBodyAccJerkMag.std.. | Mean of the
74      | tBodyGyroMag.std.. | Mean of the
75      | tBodyGyroJerkMag.std.. | Mean of the
76      | fBodyAcc.std...X | Mean of the
77      | fBodyAcc.std...Y | Mean of the
78      | fBodyAcc.std...Z | Mean of the
79      | fBodyAccJerk.std...X | Mean of the
80      | fBodyAccJerk.std...Y | Mean of the
81      | fBodyAccJerk.std...Z | Mean of the
82      | fBodyGyro.std...X | Mean of the
83      | fBodyGyro.std...Y | Mean of the
84      | fBodyGyro.std...Z | Mean of the
85      | fBodyAccMag.std.. | Mean of the
86      | fBodyBodyAccJerkMag.std.. | Mean of the
87      | fBodyBodyGyroMag.std.. | Mean of the
88      | fBodyBodyGyroJerkMag.std.. | Mean of the
