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

featureDescriptionFileName <- "UCI HAR Dataset/features.txt"
activityLabelFileName <- "UCI HAR Dataset/activity_labels.txt"
trainXFileName <- "UCI HAR Dataset/train/X_train.txt"
testXFileName <- "UCI HAR Dataset/test/X_test.txt"
trainYFileName <- "UCI HAR Dataset/train/y_train.txt"
testYFileName <- "UCI HAR Dataset/test/y_test.txt"

features <- read.csv(featureDescriptionFileName, header = FALSE, sep = " ")
activities <- read.csv(activityLabelFileName, header = FALSE, sep = " ")
numericTrainActivities <- read.csv(trainYFileName, header = FALSE, sep = " ")
numericTestActivities <- read.csv(testYFileName, header = FALSE, sep = " ")
scalars <- featuresRead(trainXFileName, testXFileName)

colnames(features) <- c("IndexBy1", "Label")
colnames(activities) <- c("IndexBy1", "Label")

features <- paste0(features$IndexBy1, features$Label)

#features <- lapply(features, function(x) paste0(x$IndexBy1, x$Label))

#features <- lapply(features, function(x) { sub('^\\d+\\s+(.+)$', '\\1', x) })
features <- lapply(features, function(x) { gsub("\\s+", "", x) })
features <- lapply(features, function(x) { gsub("\\(\\)", "_OC_", x) })
features <- lapply(features, function(x) { gsub('\\-(\\d+)', "_NEGATIVE_\\1", x) })
features <- lapply(features, function(x) { gsub("\\-", "_DASH_", x) })
features <- lapply(features, function(x) { gsub(",", "_COMMA_", x) })
features <- lapply(features, function(x) { gsub("\\(", "_LP_", x) })
features <- lapply(features, function(x) { gsub("\\)", "_RP_", x) })

stringTrainActivities <- lapply(numericTrainActivities, function(x) { activities[x, "Label"] })
stringTestActivities <- lapply(numericTestActivities, function(x) { activities[x, "Label"] })

tidyWhile <- data.frame()

# Fully expect that this is slow, but dealing with such little data that slowness should not be too much of a problem: 
stringActivities <- append(as.vector(stringTrainActivities$V1), as.vector(stringTestActivities$V1))



tidyWhole <- rbind(trainingScalars, testingScalars)
colnames(tidyWhole) <- features

tidyWhole$Activity <- stringActivities




