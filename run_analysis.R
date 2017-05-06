# Programmer Mark Barkell
# Date Started 2017-04-26
# Purpose: Peer reviewed assignment for Getting and Cleaning Data upon Coursera.


require(dplyr)
#install.packages("dplyr")
library(dplyr)


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


# Learnt about summarise_each from the following page:
# http://stackoverflow.com/questions/21644848/summarizing-multiple-columns-with-dplyr

# If I use something like dplyr::summarise_each(groupedBy, funs = mean)
# or without the "funs = ", then, the following error message occurs:
# Error: is.fun_list(calls) is not TRUE.
# The following URL helped me figure out more about how to deal with this
# http://stackoverflow.com/questions/25759891/dplyr-summarise-each-with-na-rm
# However, using the dot, . , for saying which columns to do the stuff over doesn't seem to work
# too well.
# If one does that the error message is:
# Error in summarise_impl(.data, dots) : cannot modify grouping variable.
# Indeed, I attempted just to do -(1:2) as I had attempted with the data frame
# and had worked, but the same error message occurred.
# So, not even all these three lines have anything working -- except the group_by:
#  groupedBy <- dplyr::group_by(df, paste0(df$Activity, "_", df$Subject) )
#  meanedByGrouping <- dplyr::summarise_each(groupedBy, funs(mean( inputFeatures$V2 , na.rm = TRUE)))
#  standardDevGrouping <- dplyr::summarise_each(groupedBy, funs(sd( -(1:2), na.rm = TRUE)))


# How interesting, in trying to do this -- to eliminate out the grouping varialbes:
# df %>% group_by(paste0(df$Activity, "_", df$Subject)) %>% summarise_each(funs(mean(na.rm = TRUE)), inputFeatures$V2)
# I got the following Error Message:
# Error: All select() inputs must resolve to integer column positions.
# The following do not:
#  *  inputFeatures$V2


# While looking in The Internet, I found that my understanding of the group_by was a bit off.  I was attempting to
# make a string to do the grouping, I had been thinking that the group_by(Activity, Subject) should be implemented
# to do the right thing, but had not tried it until reading the following URL:
# http://stackoverflow.com/questions/27592414/r-dplyr-summarize-each-error-cannot-modify-grouping-variable
meanInfo <- df %>% group_by(Activity,Subject) %>% summarise_each(funs(mean(., na.rm=TRUE)))


result <- data.frame(Activity = meanInfo$Activity, Subject = meanInfo$Subject)

preambleMean <- "Mean_By_The_Grouping_Of_Both_Activity_And_Subject_For_"

for(i in colnames(meanInfo)[-(1:2)]) {
  if (grepl("\\-(mean|std)", i)) {
    result[, paste0(preambleMean, i)] <- meanInfo[, i]
  }
}

write.table(result, "foo.txt", sep = " ")
write.table(df, "part4.asssignment.txt", sep = " ")



