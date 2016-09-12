#Codebook

##Data Source
Discription
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Original Data
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Creating R file
There are 5 steps as follow:
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement.
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names.
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Contents of the Data
The dataset includes these following files:
'README.txt'
'features_info.txt': Shows information about the variables used on the feature vector.
'features.txt': List of all features.
'activity_labels.txt': Links the class labels with their activity name.
'train/X_train.txt': Training set.
'train/y_train.txt': Training labels.
'test/X_test.txt': Test set.
'test/y_test.txt': Test labels.

##Variables
Activity: a character that describes what the test subjects did during the observation are as follows: 
          WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING

From the data set, i have got the following variables.

* timeBodyAccelerometerMeanX
* timeBodyAccelerometerMeanY
timeBodyAccelerometerMeanZ
timeBodyAccelerometerStdDevX
timeBodyAccelerometerStdDevY
timeBodyAccelerometerStdDevZ
timeGravityAccelerometerMeanX
timeGravityAccelerometerMeanY
timeGravityAccelerometerMeanZ
timeGravityAccelerometerStdDevX
timeGravityAccelerometerStdDevY
timeGravityAccelerometerStdDevZ
timeBodyAccelerometerJerkMeanX
timeBodyAccelerometerJerkMeanY
timeBodyAccelerometerJerkMeanZ
timeBodyAccelerometerJerkStdDevX
timeBodyAccelerometerJerkStdDevY
timeBodyAccelerometerJerkStdDevZ
timeBodyGyroscopeMeanX
timeBodyGyroscopeMeanY
timeBodyGyroscopeMeanZ
timeBodyGyroscopeStdDevX
timeBodyGyroscopeStdDevY
timeBodyGyroscopeStdDevZ
timeBodyGyroscopeJerkMeanX
timeBodyGyroscopeJerkMeanY
timeBodyGyroscopeJerkMeanZ
timeBodyGyroscopeJerkStdDevX
timeBodyGyroscopeJerkStdDevY
timeBodyGyroscopeJerkStdDevZ
timeBodyAccelerometerMagnitudeMean
timeBodyAccelerometerMagnitudeStdDev
timeGravityAccelerometerMagnitudeMean
timeGravityAccelerometerMagnitudeStdDev
timeBodyAccelerometerJerkMagnitudeMean
timeBodyAccelerometerJerkMagnitudeStdDev
timeBodyGyroscopeMagnitudeMean
timeBodyGyroscopeMagnitudeStdDev
timeBodyGyroscopeJerkMagnitudeMean
timeBodyGyroscopeJerkMagnitudeStdDev
freqBodyAccelerometerMeanX
freqBodyAccelerometerMeanY
freqBodyAccelerometerMeanZ
freqBodyAccelerometerStdDevX
freqBodyAccelerometerStdDevY
freqBodyAccelerometerStdDevZ
freqBodyAccelerometerMeanFreqX
freqBodyAccelerometerMeanFreqY
freqBodyAccelerometerMeanFreqZ
freqBodyAccelerometerJerkMeanX
freqBodyAccelerometerJerkMeanY
freqBodyAccelerometerJerkMeanZ
freqBodyAccelerometerJerkStdDevX
freqBodyAccelerometerJerkStdDevY
freqBodyAccelerometerJerkStdDevZ
freqBodyAccelerometerJerkMeanFreqX
freqBodyAccelerometerJerkMeanFreqY
freqBodyAccelerometerJerkMeanFreqZ
freqBodyGyroscopeMeanX
freqBodyGyroscopeMeanY
freqBodyGyroscopeMeanZ
freqBodyGyroscopeStdDevX
freqBodyGyroscopeStdDevY
freqBodyGyroscopeStdDevZ
freqBodyGyroscopeMeanFreqX
freqBodyGyroscopeMeanFreqY
freqBodyGyroscopeMeanFreqZ
freqBodyAccelerometerMagnitudeMean
freqBodyAccelerometerMagnitudeStdDev
freqBodyAccelerometerMagnitudeMeanFreq
freqBodyBodyAccelerometerJerkMagnitudeMean
freqBodyBodyAccelerometerJerkMagnitudeStdDevDev
freqBodyBodyGyroscopeMagnitudeMean
freqBodyBodyGyroscopeMagnitudeStdDev
freqBodyBodyGyroscopeMagnitudeMeanFreq
freqBodyBodyGyroscopeJerkMagnitudeMean
freqBodyBodyGyroscopeJerkMagnitudeStdDev
freqBodyBodyGyroscopeJerkMagnitudeMeanFreq
