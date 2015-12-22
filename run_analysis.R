#Step 1
#read in files test group
personsTest <- read.table("test/subject_test.txt")
activityTest <- read.table("test/y_test.txt")
matriksTest <-  read.table("test/X_test.txt")

#create testset
testset <- cbind(personsTest, activityTest, matriksTest)

#read in files train group
personsTrain <- read.table("train/subject_train.txt")
activityTrain <- read.table("train/y_train.txt")
matriksTrain <-  read.table("train/X_train.txt")

#create trainset
trainset <- cbind(personsTrain, activityTrain, matriksTrain)

#merge sets
DF <- rbind(testset, trainset)

#add labels for coloms (acc to file): c(subject, activity, features.txt)
features_label <- read.table("features.txt", colClasses = "character")
#select colom 2
feat_label <- features_label[,2]
col_label <- c("subject", "activity", feat_label)
valid_col_label <- make.names(col_label, unique = TRUE, allow_ = TRUE)
colnames(DF) <- valid_col_label

#Step 2
#select(dplyr) coloms: subj, activ, all with mean, all with sd
library(dplyr)
smallDF <- select(DF, subject, activity, contains("mean"), contains("std"))


#Step 3
#change activity names according to file activity_labels.txt
#-> convert to factor, exchange number for text
act_label <- read.table("activity_labels.txt")
act_labels_ext <- act_label[,2]
smallDF$activity <- factor(smallDF$activity)
levels(smallDF$activity) <- act_labels_ext

#Step 4
#change colom names
#names where adapted to R in step 1
#for human decoding see codebook

#Step 5
#calculate tidy data (group_by: subject, activity)
tidyDF <- group_by(smallDF, subject, activity)

tidyDF %>% group_by(subject, activity) %>%
    summarise_each(funs(mean)) %>%
    write.table(file= "tidyData.txt", sep = "\t", row.names=FALSE)




