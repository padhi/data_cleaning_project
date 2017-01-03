==================================================================
Human Activity Recognition Using Smartphones - tidy data
==================================================================
Activities:
=============
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

Subjects:
============
1 - 30

Tidy and averaged data
==========================
1. activity_desc
2. subject
3. avg_tBodyAcc_mean_X
4. avg_tBodyAcc_mean_Y
5. avg_tBodyAcc_mean_Z
6. avg_tBodyAcc_std_X
7. avg_tBodyAcc_std_Y
8. avg_tBodyAcc_std_Z
9. avg_tGravityAcc_mean_X
10. avg_tGravityAcc_mean_Y
11. avg_tGravityAcc_mean_Z
12. avg_tGravityAcc_std_X
13. avg_tGravityAcc_std_Y
14. avg_tGravityAcc_std_Z
15. avg_tBodyAccJerk_mean_X
16. avg_tBodyAccJerk_mean_Y
17. avg_tBodyAccJerk_mean_Z
18. avg_tBodyAccJerk_std_X
19. avg_tBodyAccJerk_std_Y
20. avg_tBodyAccJerk_std_Z
21. avg_tBodyGyro_mean_X
22. avg_tBodyGyro_mean_Y
23. avg_tBodyGyro_mean_Z
24. avg_tBodyGyro_std_X
25. avg_tBodyGyro_std_Y
26. avg_tBodyGyro_std_Z
27. avg_tBodyGyroJerk_mean_X
28. avg_tBodyGyroJerk_mean_Y
29. avg_tBodyGyroJerk_mean_Z
30. avg_tBodyGyroJerk_std_X
31. avg_tBodyGyroJerk_std_Y
32. avg_tBodyGyroJerk_std_Z
33. avg_tBodyAccMag_mean
34. avg_tBodyAccMag_std
35. avg_tGravityAccMag_mean
36. avg_tGravityAccMag_std
37. avg_tBodyAccJerkMag_mean
38. avg_tBodyAccJerkMag_std
39. avg_tBodyGyroMag_mean
40. avg_tBodyGyroMag_std
41. avg_tBodyGyroJerkMag_mean
42. avg_tBodyGyroJerkMag_std
43. avg_fBodyAcc_mean_X
44. avg_fBodyAcc_mean_Y
45. avg_fBodyAcc_mean_Z
46. avg_fBodyAcc_std_X
47. avg_fBodyAcc_std_Y
48. avg_fBodyAcc_std_Z
49. avg_fBodyAcc_meanFreq_X
50. avg_fBodyAcc_meanFreq_Y
51. avg_fBodyAcc_meanFreq_Z
52. avg_fBodyAccJerk_mean_X
53. avg_fBodyAccJerk_mean_Y
54. avg_fBodyAccJerk_mean_Z
55. avg_fBodyAccJerk_std_X
56. avg_fBodyAccJerk_std_Y
57. avg_fBodyAccJerk_std_Z
58. avg_fBodyAccJerk_meanFreq_X
59. avg_fBodyAccJerk_meanFreq_Y
60. avg_fBodyAccJerk_meanFreq_Z
61. avg_fBodyGyro_mean_X
62. avg_fBodyGyro_mean_Y
63. avg_fBodyGyro_mean_Z
64. avg_fBodyGyro_std_X
65. avg_fBodyGyro_std_Y
66. avg_fBodyGyro_std_Z
67. avg_fBodyGyro_meanFreq_X
68. avg_fBodyGyro_meanFreq_Y
69. avg_fBodyGyro_meanFreq_Z
70. avg_fBodyAccMag_mean
71. avg_fBodyAccMag_std
72. avg_fBodyAccMag_meanFreq
73. avg_fBodyBodyAccJerkMag_mean
74. avg_fBodyBodyAccJerkMag_std
75. avg_fBodyBodyAccJerkMag_meanFreq
76. avg_fBodyBodyGyroMag_mean
77. avg_fBodyBodyGyroMag_std
78. avg_fBodyBodyGyroMag_meanFreq
79. avg_fBodyBodyGyroJerkMag_mean
80. avg_fBodyBodyGyroJerkMag_std
81. avg_fBodyBodyGyroJerkMag_meanFreq

All the column names prefixed by "avg_" contains the averages of each column grouped by activity description and then by subject. 

"tidy_data.csv" file contains the final dataset after performing the analysis. 

Script Steps
============================
1.read the activity numbers for training dataset
2.read the activity numbers for test dataset
3.Combine activity numbers for Train and Test Data
4.read subjects for training dataset
5.read subjects for Test dataset
6.Combine all subjects from Training and Test data
7.Combine Activity and Subjects columns
8.read column names from  features.txt file
9.modify the feature names to make it more readable
10.read X Train Data from train/x_train.txt file
11.read X Test Data from test/x_test.txt file
12.Combine the X data using row bind
13.combine the activity and subject columns to X data using column bind
14.make a subset of the all the measurements by taking columns that indicate mean and standard deviation(std)
15.Read the activity_labels.txt for activities labels
16.replace the the activity ids with descriptive activity names
17.change the column name to "activity_desc"
18.Create a separate tidy data set with the average of each variable for each activity and each subject.
19.write summarized data to a csv file