# jhu-get-clean-data
Mark Barkell is using this jhu-get-clean-data repository to store the R program he has made for the Coursera course: "Getting And Cleaning Data".   This class is offerred in collaboration with John Hopkins University.

The text of the assignment may be found at:

https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project


# Assignment Text Needed to Understand the Assignment Goals

The assignment is to do the following things:

> 1. Merges the training and the test sets to create one data set.
> 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
> 3. Uses descriptive activity names to name the activities in the data set
> 4. Appropriately labels the data set with descriptive variable names. 
> 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Methods

### For 1. "Merges the training and the test sets to create one data set."

Using R's read.table() functionality many of the files of the orginal input were able to be accessed.    I had found difficultly in reading correctly the data in the X\_train.txt and the X\_test.txt files using read.table().   So, I crafted a set of functions which parsed the data from more basic blocks than read.table() implements.   The basic problem I found with read.table() for the X\_train.txt and X\_test.txt files was the dimensions where reported as much larger than what the subjects\_train.txt and subject\_test.txt reported as observations.   In addition, when using just a seperator of a space, the number of features in the file seemed too many.

The special parsing functionality that I wrote is found in the function featuresRead().

### For 2. "Extracts only the measurements on the mean and standard deviation for each measurement."

This step confused me plenty.  The reason is that mean and standard deviation are calcuations based on measurements.   But, after finally realizing the professor was asking for the columns of the original data which were means and standard deviation calculations, I was able to figure to use the grepl() R function to determine which columns to accept into the calculations I do by R.

### For 3. "Uses descriptive activity names to name the activities in the data set"

I read in the activities.txt file and used those names.  The reading of that file is done with R's read.table() function.

### For 4. "Appropriately labels the data set with descriptive variable names"

I have used the orginal data's labels that were kept in many dispered files to combine
the data and the labels.   The output file part4.asssignment.txt can be generated by running the run\_analysis.R to view this result.  However, this result is really just an intermediate step in the assignment.

### For 5. "From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."

I used the dplyr package in order to do the grouping of data for selecting subsets to run the arithmetic mean functionality.

#### Assignment Step Description

Throughout this entire assignment, I used the git source code control system.   I certainly had many different items of confusion.  So, someone wanting to understand some of the misunderstandings and improvments I've made, might look at the git history.

## Running the system

I have programmed the run\_analysis.R file.   If one opens a new R environment and runs the run\_analysis.R file by sourcing it.  Then, it will download the data into a file called "datafile.zip" using the current working directory.  Once the zip file is downloaded, the program unzips it into the directory "UCI HAR Dataset".   Then, it does the calcualtions needed by the assignment putting the output to a file named foo.txt.

If one runs the run\_analsysis.R file mutliple times in the same working directory, then, it will not need to download the zip file again.  In addition, if the results of unzipping the zip file are already in the present working directory, then, it won't unzip the file or download the zip file.

The following is how one would source the run\_analysis.R file:

```R
source("./run_analysis.R")
```

If there are any problems with the required dplr package not already being installed.  Then, one can install that package by typing the following command into R:

```R
install.packages("dplyr")
```


## Original Data Set's License Description:

> Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

> This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

> Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

