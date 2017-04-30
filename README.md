# jhu-get-clean-data
Mark Barkell is using this jhu-get-clean-data repository to store the R program he has made for the Coursera course: "Getting And Cleaning Data".   This class is offerred in collaboration with John Hopkins University.

The text of the assignment may be found at:

https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project

## Methodoligy

Implmented a run_analysis.R file which downloads a data set of sensor data from a smart phone.  The data set had raw data and non-raw data within it.   Reading the descriptions in the data set it seems that the X_train.txt and the X_test.txt seem to be derived data sets.  So, these two files were left unused.

In order to do this assignment, the training and testing data sets of the original were merged together.

The assignment was to create two tidy data sets.   

One data set would be for each person and their activity given a mean and standard deviation for each instance of activity.   These results are found in the file meansdperrow.csv.

The other data set would be for each person's given activity give the mean of the activity for the person.  These results are found in the file meanperactivitysubject.csv.


## Files Of Mark Barkell's Data Set:

* README.md -- this file
* CodeBook.md -- description of data fields added by Mark Barkell.
* run_analysis.R -- R script programmed by Mark Barkell to download
* meanperactivitysubject.csv -- Result file storing the mean of data features grouped by subject identifier and activity.  The subject is the identifier for the person who performed the action.
* meansdperrow.csv -- Result file storing the mean and standard deviation for each experimental instance.
* powershell.helps.ps1 -- Powershell script Mark Barkell is keeping so to be able to generate R source code without typing as many mistakes.

## To obtain the original data's description:

One should read the README.txt downloaded within the ZIP file obtained with run_analysis.R.  That README.txt is one Mark Barkell did not desire to modify so as to not cause confusion between what is the original data set and what is the derived data set.

## Original Data Set's License Description:

> Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

> This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

> Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

