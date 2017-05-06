# Programmer Mark Barkell
# Date Started 2017-04-26
# Purpose: Peer reviewed assignment for Getting and Cleaning Data upon Coursera.

# Calculate mean and standard deviation.
meanSd <- function(m) {
 lapply(1:(dim(m)[1]), function(i) {
   item <- list()
   row <- m[i,!is.na(m[i,])]
   item$MeanVal <- mean(row)
   item$SdVal <- sd(row)
   item
 })   
}

# cMean -- convert mean.
cMean <- function(listing) {
  sapply(listing, function(x) { x$MeanVal })
}

# cSd -- convert standard deviation
cSd <- function(listing) {
  sapply(listing, function(x) { x$SdVal })
}


# This function retrieves the cells that are in a line.
# Found that using the one or more spaces as the seperator
# yields the results I had been expecting.
featureLineSplit <- function (line) {
  unlist(strsplit(line, "\\s+", perl = TRUE))
}

# This function reads a bunch of lines and figures out the maximum number
# of cells in the lines.
featureMaxColumns <- function (lines) {
  max(sapply(lines, function(line) { length(featureLineSplit(line)) }))
}

# This function exists in order to read space seperated files two at a time (kindof).
# and merge the results together.   I found that the read.table() parameters I was
# passing where yielding many results inconsistent with what the data should be.  So,
# I wrote my own file parser.   Yes, I know it is not the fastest reader, but its not terrible.
# I could make it slower.
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
      m[i,j] <- as.numeric(element)
    }
  }
  
  m
    
}

if (!file.exists("UCI HAR Dataset")) {
  zipDataFileName <- "datafile.zip"
  if (!file.exists(zipDataFileName)) {
      download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = zipDataFileName)
  }
}
if (!file.exists("UCI HAR Dataset")) {
  unzip(zipDataFileName)
}

trainsubjectFileName <- 'UCI HAR Dataset/train/subject_train.txt'
trainactivityFileName <- 'UCI HAR Dataset/train/y_train.txt'

testsubjectFileName <- 'UCI HAR Dataset/test/subject_test.txt'
testactivityFileName <- 'UCI HAR Dataset/test/y_test.txt'
activityLabelsFileName <- 'UCI HAR Dataset/activity_labels.txt'

inputFeatureNamesFileName <- 'UCI HAR Dataset/features.txt'

xtrainFilename <- 'UCI HAR Dataset/train/X_train.txt'
xtestFilename <- 'UCI HAR Dataset/test/X_test.txt'



inputFeatures <- read.table(inputFeatureNamesFileName, header = FALSE, sep = " ", stringsAsFactors = FALSE, as.is = TRUE)

x <- featuresRead(xtrainFilename, xtestFilename)


activities <- read.table(activityLabelsFileName, header = FALSE, sep = " ")

numericTrainActivities <- read.table(trainactivityFileName, header = FALSE, sep = " ", blank.lines.skip = TRUE)
numericTestActivities <- read.table(testactivityFileName, header = FALSE, sep = " ", blank.lines.skip =  TRUE)
colnames(activities) <- c("IndexBy1", "Label")


stringTrainActivities <- sapply(numericTrainActivities, function(x) { activities[x, "Label"] })
stringTestActivities <- sapply(numericTestActivities, function(x) { activities[x, "Label"] })

# Fully expect that this is slow, but dealing with such little data that slowness should not be too much of a problem: 
stringActivities <- append(as.vector(stringTrainActivities), as.vector(stringTestActivities))

trainSubjectIdentifiers <- read.table(trainsubjectFileName, header = FALSE, sep = " ")
testSubjectIdentifiers <- read.table(testsubjectFileName, header = FALSE, sep = " ")

subjectIdentifiers <- append(as.vector(trainSubjectIdentifiers$V1), as.vector(testSubjectIdentifiers$V1))

df <- data.frame(Activity = stringActivities, Subject = subjectIdentifiers)

lenX <- (dim(x)[2])
for(i in 2:lenX) {
  df[, inputFeatures$V2[i-1]] <- x[, i]
}

