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
mean()        | Mean value of signal
std()         | Standard deviation of signal


##List of Variables

The following table presents all 88 variables included in the tidyData.txt file (dataset) and explains them in detail. 

Number  | Name in dataset | Description
------- | --------------- | -----------
01      | subject         | Subject or person performing the activity
02      | activity        | Indicates which of the 6 activities done in the experiment was performed
03      | tBodyAcc.mean...X | Mean of time signal on body acceleration mean on the X axis (normalized)

