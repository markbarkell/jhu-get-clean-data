==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0 + Changes made by Mark Barkell
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## For each record it is provided:

The records have within them an indication of the activity and the person that did the activity.  The records of the foo.txt generated file have the mean of the grouping of each of those by the field in the orginal data such as tBodyAcc-mean()-X.   This is why the foo.txt file has column headers with the English text "Mean By The Grouping Of Both Activity And Subject For".

The following is the desciption of the features that follow that "Mean By The Grouping Of Both Activity And Subject For" as per the orginal data's feature.txt document:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>
> These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
>
>
> tBodyAcc-XYZ
> tGravityAcc-XYZ
> tBodyAccJerk-XYZ
> tBodyGyro-XYZ
> tBodyGyroJerk-XYZ
> tBodyAccMag
> tGravityAccMag
> tBodyAccJerkMag
> tBodyGyroMag
> tBodyGyroJerkMag
> fBodyAcc-XYZ
> fBodyAccJerk-XYZ
> fBodyGyro-XYZ
> fBodyAccMag
> fBodyAccJerkMag
> fBodyGyroMag
> fBodyGyroJerkMag
>
> The set of variables that were estimated from these signals are: 
>
> mean(): Mean value
> std(): Standard deviation


### Listing of fields in the foo.txt output file:

#### "1" "Activity"
    which activity the Subject was participating in.
#### "2" "Subject"
    an integral identifier for the participant.
#### "3" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAcc-mean()-X"
#### "4" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAcc-mean()-Y"
#### "5" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAcc-mean()-Z"
#### "6" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAcc-std()-X"
#### "7" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAcc-std()-Y"
#### "8" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAcc-std()-Z"
#### "9" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tGravityAcc-mean()-X"
#### "10" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tGravityAcc-mean()-Y"
#### "11" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tGravityAcc-mean()-Z"
#### "12" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tGravityAcc-std()-X"
#### "13" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tGravityAcc-std()-Y"
#### "14" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tGravityAcc-std()-Z"
#### "15" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAccJerk-mean()-X"
#### "16" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAccJerk-mean()-Y"
#### "17" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAccJerk-mean()-Z"
#### "18" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAccJerk-std()-X"
#### "19" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAccJerk-std()-Y"
#### "20" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAccJerk-std()-Z"
#### "21" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyro-mean()-X"
#### "22" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyro-mean()-Y"
#### "23" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyro-mean()-Z"
#### "24" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyro-std()-X"
#### "25" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyro-std()-Y"
#### "26" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyro-std()-Z"
#### "27" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyroJerk-mean()-X"
#### "28" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyroJerk-mean()-Y"
#### "29" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyroJerk-mean()-Z"
#### "30" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyroJerk-std()-X"
#### "31" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyroJerk-std()-Y"
#### "32" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyroJerk-std()-Z"
#### "33" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAccMag-mean()"
#### "34" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAccMag-std()"
#### "35" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tGravityAccMag-mean()"
#### "36" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tGravityAccMag-std()"
#### "37" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAccJerkMag-mean()"
#### "38" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyAccJerkMag-std()"
#### "39" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyroMag-mean()"
#### "40" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyroMag-std()"
#### "41" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyroJerkMag-mean()"
#### "42" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_tBodyGyroJerkMag-std()"
#### "43" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAcc-mean()-X"
#### "44" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAcc-mean()-Y"
#### "45" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAcc-mean()-Z"
#### "46" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAcc-std()-X"
#### "47" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAcc-std()-Y"
#### "48" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAcc-std()-Z"
#### "49" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAcc-meanFreq()-X"
#### "50" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAcc-meanFreq()-Y"
#### "51" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAcc-meanFreq()-Z"
#### "52" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAccJerk-mean()-X"
#### "53" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAccJerk-mean()-Y"
#### "54" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAccJerk-mean()-Z"
#### "55" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAccJerk-std()-X"
#### "56" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAccJerk-std()-Y"
#### "57" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAccJerk-std()-Z"
#### "58" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAccJerk-meanFreq()-X"
#### "59" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAccJerk-meanFreq()-Y"
#### "60" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAccJerk-meanFreq()-Z"
#### "61" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyGyro-mean()-X"
#### "62" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyGyro-mean()-Y"
#### "63" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyGyro-mean()-Z"
#### "64" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyGyro-std()-X"
#### "65" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyGyro-std()-Y"
#### "66" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyGyro-std()-Z"
#### "67" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyGyro-meanFreq()-X"
#### "68" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyGyro-meanFreq()-Y"
#### "69" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyGyro-meanFreq()-Z"
#### "70" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAccMag-mean()"
#### "71" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAccMag-std()"
#### "72" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyAccMag-meanFreq()"
#### "73" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyBodyAccJerkMag-mean()"
#### "74" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyBodyAccJerkMag-std()"
#### "75" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyBodyAccJerkMag-meanFreq()"
#### "76" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyBodyGyroMag-mean()"
#### "77" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyBodyGyroMag-std()"
#### "78" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyBodyGyroMag-meanFreq()"
#### "79" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyBodyGyroJerkMag-mean()"
#### "80" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyBodyGyroJerkMag-std()"
#### "81" "Mean\_By\_The\_Grouping\_Of\_Both\_Activity\_And\_Subject\_For\_fBodyBodyGyroJerkMag-meanFreq()"


## The dataset includes the following files:

1. **README.md**  A Description of methods and the assignment.
2. **Codebook.md** A Description of the fields outputed.
3. **run\_analysis.R** A R Script programmed by Mark Barkell for this assignment.
4. **foo.txt** Only exists after running the R script.  It is the output file that the assignment cares about for step 5.
5. **part4.assignment.txt** Only exists after running the R script.  It is the output file that step 4 indicates.   This file is one that is particularly too large to review by eye.   So, that is likely why the assignment has questions about step 5 for grading.


Notes: 
======
- Features, of the orginal data, are normalized and bounded within [-1,1].
- Each feature vector, of the orginal data, is a row on the text file.

For more information about the original dataset contact: activityrecognition@smartlab.ws

Original Data Set License:
========
> Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

> This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

> Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
