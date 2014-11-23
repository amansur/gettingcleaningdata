# Codebook for tidy dataset of 'Human Activity Recognition Using Smartphones Dataset'

## Original dataset description

Measurements from the three-axis acclerometer and three-axis gyroscope of a Samsung Galaxy SII smartphone were taken when 30 subjects performed 6 activities. Measurements were taken at 50Hz and were "sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window)." Measurements along each axis were reported separately.

A number of mathematical transformations were applied on the raw dataset. These are described in the features_info.txt file included with the original dataset. In addition to these transformations, because there were a large number of samples per observation window, additional variables were created to obtain summary figures for each observation (e.g. mean, std, min, max, etc.).

The subjects were split into two groups. The training group consisted of 70% (21) of the subjects. The test group consisted of 30% (9) of the subjects. 

The original dataset was divided among multiple text files. Training and test data were in separate files. Additionally, subject and activity labels were also in separate files.

## The tidy dataset

The tidy dataset consists of observations from both training and test datasets merged together. Descriptive labels of features were added. Subject and descriptive activity indicators were also added to each observation. Select features were retained while the rest were discarded.

## Data transformations
* Training and test data were merged.
* Descriptive variable labels attached to the columns.
* Subject and activity labels were included for each observation. 
* Mean and standard deviation of variables in each sample window/observation period were extracted
* The mean of each variable was obtained, grouped by activity and subject. These means are reported in the tidy dataset. The variables are listed below.

## Tidy data variable listing
1. "tBodyAcc.mean...X"              
2. "tBodyAcc.mean...Y"              
3. "tBodyAcc.mean...Z"              
4. "tBodyAcc.std...X"               
5. "tBodyAcc.std...Y"               
6. "tBodyAcc.std...Z"               
7. "tGravityAcc.mean...X"           
8. "tGravityAcc.mean...Y"           
9. "tGravityAcc.mean...Z"           
10. "tGravityAcc.std...X"            
11. "tGravityAcc.std...Y"            
12. "tGravityAcc.std...Z"            
13. "tBodyAccJerk.mean...X"          
14. "tBodyAccJerk.mean...Y"          
15. "tBodyAccJerk.mean...Z"          
16. "tBodyAccJerk.std...X"           
17. "tBodyAccJerk.std...Y"           
18. "tBodyAccJerk.std...Z"           
19. "tBodyGyro.mean...X"             
20. "tBodyGyro.mean...Y"             
21. "tBodyGyro.mean...Z"             
22. "tBodyGyro.std...X"              
23. "tBodyGyro.std...Y"              
24. "tBodyGyro.std...Z"              
25. "tBodyGyroJerk.mean...X"         
26. "tBodyGyroJerk.mean...Y"         
27. "tBodyGyroJerk.mean...Z"         
28. "tBodyGyroJerk.std...X"          
29. "tBodyGyroJerk.std...Y"          
30. "tBodyGyroJerk.std...Z"          
31. "tBodyAccMag.mean.."             
32. "tBodyAccMag.std.."              
33. "tGravityAccMag.mean.."          
34. "tGravityAccMag.std.."           
35. "tBodyAccJerkMag.mean.."         
36. "tBodyAccJerkMag.std.."          
37. "tBodyGyroMag.mean.."            
38. "tBodyGyroMag.std.."             
39. "tBodyGyroJerkMag.mean.."        
40. "tBodyGyroJerkMag.std.."         
41. "fBodyAcc.mean...X"              
42. "fBodyAcc.mean...Y"              
43. "fBodyAcc.mean...Z"              
44. "fBodyAcc.std...X"               
45. "fBodyAcc.std...Y"               
46. "fBodyAcc.std...Z"               
47. "fBodyAcc.meanFreq...X"          
48. "fBodyAcc.meanFreq...Y"          
49. "fBodyAcc.meanFreq...Z"          
50. "fBodyAccJerk.mean...X"          
51. "fBodyAccJerk.mean...Y"          
52. "fBodyAccJerk.mean...Z"          
53. "fBodyAccJerk.std...X"           
54. "fBodyAccJerk.std...Y"           
55. "fBodyAccJerk.std...Z"           
56. "fBodyAccJerk.meanFreq...X"      
57. "fBodyAccJerk.meanFreq...Y"      
58. "fBodyAccJerk.meanFreq...Z"      
59. "fBodyGyro.mean...X"             
60. "fBodyGyro.mean...Y"             
61. "fBodyGyro.mean...Z"             
62. "fBodyGyro.std...X"              
63. "fBodyGyro.std...Y"              
64. "fBodyGyro.std...Z"              
65. "fBodyGyro.meanFreq...X"         
66. "fBodyGyro.meanFreq...Y"         
67. "fBodyGyro.meanFreq...Z"         
68. "fBodyAccMag.mean.."             
69. "fBodyAccMag.std.."              
70. "fBodyAccMag.meanFreq.."         
71. "fBodyBodyAccJerkMag.mean.."     
72. "fBodyBodyAccJerkMag.std.."      
73. "fBodyBodyAccJerkMag.meanFreq.." 
74. "fBodyBodyGyroMag.mean.."        
75. "fBodyBodyGyroMag.std.."         
76. "fBodyBodyGyroMag.meanFreq.."    
77. "fBodyBodyGyroJerkMag.mean.."    
78. "fBodyBodyGyroJerkMag.std.."     
79. "fBodyBodyGyroJerkMag.meanFreq.."
80. "subject"
81. "activity"

## Other notes
The original dataset contained a number of variables that were the calculated angle between two vectors. Because this variable is a measure of comparison between two vectors, it was not included in tidy dataset. The two vectors being compared are the mean of their respective sample windows, and are provided in the tidy dataset but the angle between them is not included.

meanFreq variables were maintained as they provided a measure of centrality equivalent to the mean variables. meanFreq is required as some original transformations were performed on the raw data such that measurements were converted from the time domain to the frequency domain. Thus meanFreq is an appropriate measure of centrality to extract into the tidy dataset.