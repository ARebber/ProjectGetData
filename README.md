#Project Description: 
#Peer Assessment Getting and Cleaning Data

##Introduction

This document describes how the project from the course Getting and Cleaning Data was performed. If the reader wants to reproduce the analysis the zip archive from the Coursera class site should be unpacked in a folder and the R script should be added. This folder should be made the working directory in R Studio. Afterwards the script can be run as usual. Running the script will perform the steps as indicated in our project description. The result of running this script is a txt file, named tidyData. All the steps will be explained below. (Please refer to the R script run_analysis.R to follow along.)
N.B. For convenience the zip archive and my own tidyData.txt are also included in this repo.

It should be mentioned in this place that the following analysis was only performed after a thorough examination of the raw data files using both Notepad++ and R Studio. This was necessary to get a feeling and overview for the data.

##Step 1: Merge the training and the test sets to create one data set

In order to do anything with the provided data (which were all txt files), they had to be read into R. This is done in several steps. First all information/data from the test set was read into R (lines 3-5). Those files were subsequently merged with a cbind command (line 8). This results in a complete dataset for the test condition.
The same steps (loading files, line 11-13, and combining, line 16) were done with the train set, providing a complete dataset for the train condition.
Both sets were merged with the rbind command (line 19), to create a full data set.

Next part of the step 4 from the project description are done, since this will make the following steps easier.
The colom labels are added in order to have apropriate variable names (line 22-27):
The variable names were provided in the zip archive in a file features.txt, which was read into R (line 22) and subsetted to only the names (line 24). For having all colom names, the labels "subject" and "activity" had to be combined with the features (line 25). Since the labels from the txt file were not valid for R, they were transformed to R conformity (line 26), after which the labels were added to the dataframe with colnames fucntion (line 27).


##Step 2: Extract only measurements on the mean and standard deviation for each measurement

Using the select command from the dplyr package, the required coloms are selected from the entire big dataframe: subject, activity, and everything containing "mean" or "std" (line 32). This reduces the amount of data from 563 coloms to 88 coloms. 


##Step3: Use descriptive activity names in the data set

The performed activities were obtained from the file activity_labels.txt, which was read into R (line 38) and subsetted to have only the labels (line 39).
Next, in the dataframe obtained from step 2, the activity colom had to be changed from int to factor (line 40). The numbers were replaced with the labels using the levels command (line 41). 


##Step 4: Giving descriptive variable names

As indicated in step 1, labeling and the conversion of the labels to R conformity had already been performed following the merging of the data sets (lines 22-27). For labels according to the principle of tidy data another aspect has to be taken into account: the readability for humans. The variable names are already quite logical composed, by indicating every aspect of that measurement point performed. Since they are already quite long, it was considered undesirable to change them into fully radable names. Instead, in the Code Book extra attention is paid to explain the label name compositon.


##Step 5: Creating a second, tidy data set with the average of each variable for each activity and each subject

Using group-by command from dplyr package, a tidyDF was created grouped by 1) subject and 2) activity (line 50). Next, this dataframe is put into a pipeline of commands. Again the grouping is applied (line 52) for further analysis. Next the groued eans from each variable is calculated using the new summarise-each command (line 53). As a last step, the achieved result is written away as a txt file (line 54). This was the requierd result of the analysis. 









