# Programmer Mark Barkell
# Date Started 2017-04-26
# Purpose: Peer reviewed assignment for Getting and Cleaning Data upon Coursera.

featureLineSplit <- function (line) {
  unlist(strsplit(line, " "))
}

featureMaxColumns <- function (lines) {
  max(sapply(lines, function(line) { length(featureLineSplit(line)) }))
}

featuresRead <- function (trainingFileName, testingFileName) {
  lines <- readLines(trainingFileName)
  lines <- append(lines, readLines(testingFileName))
  # length(featureLineSplit(line[1]))
  m <- matrix(ncol = featureMaxColumns(lines), nrow = length(lines))
  i <- 0
  for(line in lines) {
    i <- i + 1
    elements <- featureLineSplit(line)
    j <- 0
    for(element in elements) {
      j <- j + 1
      #print (i)
      #print (j)
      m[i,j] <- as.numeric(element)
    }
  }
  
  m
    
}


zipDataFileName <- "datafile.zip"
if (!file.exists(zipDataFileName)) {
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = zipDataFileName)
}

unzip(zipDataFileName)

trainbodyAccXFileName <- 'UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt'
trainbodyAccYFileName <- 'UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt'
trainbodyAccZFileName <- 'UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt'
trainbodyGyroXFileName <- 'UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt'
trainbodyGyroYFileName <- 'UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt'
trainbodyGyroZFileName <- 'UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt'
trainbodyTotalAccXFileName <- 'UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt'
trainbodyTotalAccYFileName <- 'UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt'
trainbodyTotalAccZFileName <- 'UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt'
trainsubjectFileName <- 'UCI HAR Dataset/train/subject_train.txt'
trainactivityFileName <- 'UCI HAR Dataset/train/y_train.txt'


testbodyAccXFileName <- 'UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt'
testbodyAccYFileName <- 'UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt'
testbodyAccZFileName <- 'UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt'
testbodyGryoXFileName <- 'UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt'
testbodyGryoYFileName <- 'UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt'
testbodyGryoZFileName <- 'UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt'
testtotalAccXFileName <- 'UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt'
testtotalAccYFileName <- 'UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt'
testtotalAccZFileName <- 'UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt'

testsubjectFileName <- 'UCI HAR Dataset/test/subject_test.txt'
testactivityFileName <- 'UCI HAR Dataset/test/y_test.txt'


