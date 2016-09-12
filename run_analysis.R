##Downloading Data
if(!file.exists("./data")){dir.create("./data")}
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,destfile="./data/Dataset.zip")

filesPath <- file.path("./data" , "UCI HAR Dataset")

unzip(zipfile="./data/Dataset.zip",exdir="./data")

##Loanding packages
library(dplyr)
library(data.table)
library(tidyr)

# Read subject, activity and data files
dataSubjectTrain <- tbl_df(read.table(file.path(filesPath, "train", "subject_train.txt")))
dataSubjectTest  <- tbl_df(read.table(file.path(filesPath, "test" , "subject_test.txt" )))

dataActivityTrain <- tbl_df(read.table(file.path(filesPath, "train", "Y_train.txt")))
dataActivityTest  <- tbl_df(read.table(file.path(filesPath, "test" , "Y_test.txt" )))

dataTrain <- tbl_df(read.table(file.path(filesPath, "train", "X_train.txt" )))
dataTest  <- tbl_df(read.table(file.path(filesPath, "test" , "X_test.txt" )))

##1.Merges the training and the test sets to create one data set.
alldataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
setnames(alldataSubject, "V1", "subject")
alldataActivity<- rbind(dataActivityTrain, dataActivityTest)
setnames(alldataActivity, "V1", "activityNumber")

Data <- rbind(dataTrain, dataTest)

dataFeatures <- tbl_df(read.table(file.path(filesPath, "features.txt")))
setnames(dataFeatures, names(dataFeatures), c("featureNumber", "featureName"))
colnames(Data) <- dataFeatures$featureName

activityLabels <- tbl_df(read.table(file.path(filesPath, "activity_labels.txt")))
setnames(activityLabels, names(activityLabels), c("activityNumber","activityName"))

dataSubjectActivity <- cbind(alldataSubject, alldataActivity)
Data <- cbind(dataSubjectActivity, Data)

##2.Extracts only the measurements on the mean and standard deviation for each measurement.
dataFeaturesMS <- grep("mean\\(\\)|std\\(\\)",dataFeatures$featureName,value=TRUE)

dataFeaturesMS <- union(c("subject","activityNumber"), dataFeaturesMS)
Data <- subset(Data, select=dataFeaturesMS) 

##3.Uses descriptive activity names to name the activities in the data set
Data <- merge(activityLabels, Data, by="activityNumber", all.x=TRUE)
Data$activityName <- as.character(Data$activityName)

dataAggregated <- aggregate(. ~ subject - activityName, data = Data, mean) 
Data <- tbl_df(arrange(dataAggregated,subject,activityName))

##4.Appropriately labels the data set with descriptive variable names.
names(Data) <- gsub("std()", "SD", names(Data))
names(Data) <- gsub("mean()", "MEAN", names(Data))
names(Data) <- gsub("^t", "time", names(Data))
names(Data) <- gsub("^f", "frequency", names(Data))
names(Data) <- gsub("Acc", "Accelerometer", names(Data))
names(Data) <- gsub("Gyro", "Gyroscope", names(Data))
names(Data) <- gsub("Mag", "Magnitude", names(Data))
names(Data) <- gsub("BodyBody", "Body", names(Data))

##5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
write.table(Data, "TidyData.txt", row.name = FALSE)