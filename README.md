# jhu-get-clean-data
Mark Barkell is using this jhu-get-clean-data repository to store the R program he has made for the Coursera course: "Getting And Cleaning Data".   This class is offerred in collaboration with John Hopkins University.

The text of the assignment may be found at:

https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project

## Methodilogy

The assignment is to do the following things:

> 1. Merges the training and the test sets to create one data set.
> 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
> 3. Uses descriptive activity names to name the activities in the data set
> 4. Appropriately labels the data set with descriptive variable names. 
> 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

When doing this write-up, I think I at last found part of my confusion.   The text of the assignment says "Extracts only the measurements on the mean and standard deviation for each measurement."   To me that text meant to calculate the mean and standard deviation.   This is because there is no such thing of a measurement on the mean or standard deviation.   A measurement is upon a single obervation.   As I am writing this README.txt, again, I see that what the professor was asking is to use the reported mean and standard deviation from the original data set about features that have been measured.

So, I've learned alot by doing this branch of the code, but I'll have to make some changes based on the understanding I understand.

I did find that the original data set may have some problems during my research.   I have outlined those in the next section.

## Removal of Data Which Seems to be Coded Incorrectly In Original Data Set.
During the course of the assignment, I had been rather confused as whether to use the X_train.txt and the X_test.txt because the original data set's features.txt had some duplicated feature names.  I have decided that to remove from the tidier data features whose names could not be determmined because of duplicates.  The duplicated fields are:
	
1. fBodyAcc-bandsEnergy()-1,16
2. fBodyAcc-bandsEnergy()-1,24
3. fBodyAcc-bandsEnergy()-1,8
4. fBodyAcc-bandsEnergy()-17,24
5. fBodyAcc-bandsEnergy()-17,32
6. fBodyAcc-bandsEnergy()-25,32
7. fBodyAcc-bandsEnergy()-25,48
8. fBodyAcc-bandsEnergy()-33,40
9. fBodyAcc-bandsEnergy()-33,48
10. fBodyAcc-bandsEnergy()-41,48
11. fBodyAcc-bandsEnergy()-49,56
12. fBodyAcc-bandsEnergy()-49,64
13. fBodyAcc-bandsEnergy()-57,64
14. fBodyAcc-bandsEnergy()-9,16
15. fBodyAccJerk-bandsEnergy()-1,16
16. fBodyAccJerk-bandsEnergy()-1,24
17. fBodyAccJerk-bandsEnergy()-1,8
18. fBodyAccJerk-bandsEnergy()-17,24
19. fBodyAccJerk-bandsEnergy()-17,32
20. fBodyAccJerk-bandsEnergy()-25,32
21. fBodyAccJerk-bandsEnergy()-25,48
22. fBodyAccJerk-bandsEnergy()-33,40
23. fBodyAccJerk-bandsEnergy()-33,48
24. fBodyAccJerk-bandsEnergy()-41,48
25. fBodyAccJerk-bandsEnergy()-49,56
26. fBodyAccJerk-bandsEnergy()-49,64
27. fBodyAccJerk-bandsEnergy()-57,64
28. fBodyAccJerk-bandsEnergy()-9,16
29. fBodyGyro-bandsEnergy()-1,16
30. fBodyGyro-bandsEnergy()-1,24
31. fBodyGyro-bandsEnergy()-1,8
32. fBodyGyro-bandsEnergy()-17,24
33. fBodyGyro-bandsEnergy()-17,32
34. fBodyGyro-bandsEnergy()-25,32
35. fBodyGyro-bandsEnergy()-25,48
36. fBodyGyro-bandsEnergy()-33,40
37. fBodyGyro-bandsEnergy()-33,48
38. fBodyGyro-bandsEnergy()-41,48
39. fBodyGyro-bandsEnergy()-49,56
40. fBodyGyro-bandsEnergy()-49,64
41. fBodyGyro-bandsEnergy()-57,64
42. fBodyGyro-bandsEnergy()-9,16



## Original Data Set's License Description:

> Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

> This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

> Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

