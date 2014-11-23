# Codebook for tidy dataset of 'Human Activity Recognition Using Smartphones Dataset'

## Original dataset description

Measurements from the three-axis acclerometer and three-axis gyroscope of a Samsung Galaxy SII smartphone were taken when 30 subjects performed six activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying). Measurements were taken at 50Hz and were "sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window)." Measurements along each axis were reported separately.

A number of mathematical transformations were applied on the raw dataset. These are described in the features_info.txt file included with the original dataset. In addition to these transformations, because there were a large number of samples per observation window, additional variables were created to obtain summary figures for each observation (e.g. mean, std, min, max, etc.).

The subjects were split into two groups. The training group consisted of 70% (21) of the subjects. The test group consisted of 30% (9) of the subjects. 

The original dataset was divided among multiple text files. Training and test data were in separate files. Additionally, subject and activity labels were also in separate files.

## The tidy dataset

The tidy dataset consists of observations from both training and test datasets merged together. Descriptive labels of features were added. Subject and descriptive activity indicators were also added to each observation. Select features were retained while the rest were discarded.

## Data transformations
* Training and test data were merged.
* Descriptive variable labels attached to the columns.
* Subject and activity labels were included for each observation. 
* Activity factors were applied.
* Mean and standard deviation of variables in each sample window/observation period were extracted
* The mean of each variable was obtained, grouped by activity and subject. These means are reported in the tidy dataset in wide form.

## Tidy data variable listing
<table>
<thead>
<td>Column number</td><td>Column name</td><td>Variable description</td>
</thead>
<tbody>
          <tr><td>1.</td><td>"tBodyAcc.mean...X"                  </td><td>Time-domain (units: seconds); Mean; X-axis; Acceleration of subject;
</td></tr><tr><td>2.</td><td>"tBodyAcc.mean...Y"                  </td><td>Time-domain (units: seconds); Mean; Y-axis; Acceleration of subject;
</td></tr><tr><td>3.</td><td>"tBodyAcc.mean...Z"                  </td><td>Time-domain (units: seconds); Mean; Z-axis; Acceleration of subject;
</td></tr><tr><td>4.</td><td>"tBodyAcc.std...X"                   </td><td>Time-domain (units: seconds); Std dev; X-axis; Acceleration of subject;
</td></tr><tr><td>5.</td><td>"tBodyAcc.std...Y"                   </td><td>Time-domain (units: seconds); Std dev; Y-axis; Acceleration of subject;
</td></tr><tr><td>6.</td><td>"tBodyAcc.std...Z"                   </td><td>Time-domain (units: seconds); Std dev; Z-axis; Acceleration of subject;
</td></tr><tr><td>7.</td><td>"tGravityAcc.mean...X"               </td><td>Time-domain (units: seconds); Mean; X-axis; Acceleration due to gravity;
</td></tr><tr><td>8.</td><td>"tGravityAcc.mean...Y"               </td><td>Time-domain (units: seconds); Mean; Y-axis; Acceleration due to gravity;
</td></tr><tr><td>9.</td><td>"tGravityAcc.mean...Z"               </td><td>Time-domain (units: seconds); Mean; Z-axis; Acceleration due to gravity;
</td></tr><tr><td>10.</td><td>"tGravityAcc.std...X"               </td><td>Time-domain (units: seconds); Std dev; X-axis; Acceleration due to gravity;
</td></tr><tr><td>11.</td><td>"tGravityAcc.std...Y"               </td><td>Time-domain (units: seconds); Std dev; Y-axis; Acceleration due to gravity;
</td></tr><tr><td>12.</td><td>"tGravityAcc.std...Z"               </td><td>Time-domain (units: seconds); Std dev; Z-axis; Acceleration due to gravity;
</td></tr><tr><td>13.</td><td>"tBodyAccJerk.mean...X"             </td><td>Time-domain (units: seconds); Mean; X-axis; Jerk of acceleration of subject;
</td></tr><tr><td>14.</td><td>"tBodyAccJerk.mean...Y"             </td><td>Time-domain (units: seconds); Mean; Y-axis; Jerk of acceleration of subject;
</td></tr><tr><td>15.</td><td>"tBodyAccJerk.mean...Z"             </td><td>Time-domain (units: seconds); Mean; Z-axis; Jerk of acceleration of subject;
</td></tr><tr><td>16.</td><td>"tBodyAccJerk.std...X"              </td><td>Time-domain (units: seconds); Std dev; X-axis; Jerk of acceleration of subject;
</td></tr><tr><td>17.</td><td>"tBodyAccJerk.std...Y"              </td><td>Time-domain (units: seconds); Std dev; Y-axis; Jerk of acceleration of subject;
</td></tr><tr><td>18.</td><td>"tBodyAccJerk.std...Z"              </td><td>Time-domain (units: seconds); Std dev; Z-axis; Jerk of acceleration of subject;
</td></tr><tr><td>19.</td><td>"tBodyGyro.mean...X"                </td><td>Time-domain (units: seconds); Mean; X-axis; Gyroscope measurement of subject;
</td></tr><tr><td>20.</td><td>"tBodyGyro.mean...Y"                </td><td>Time-domain (units: seconds); Mean; Y-axis; Gyroscope measurement of subject;
</td></tr><tr><td>21.</td><td>"tBodyGyro.mean...Z"                </td><td>Time-domain (units: seconds); Mean; Z-axis; Gyroscope measurement of subject;
</td></tr><tr><td>22.</td><td>"tBodyGyro.std...X"                 </td><td>Time-domain (units: seconds); Std dev; X-axis; Gyroscope measurement of subject;
</td></tr><tr><td>23.</td><td>"tBodyGyro.std...Y"                 </td><td>Time-domain (units: seconds); Std dev; Y-axis; Gyroscope measurement of subject;
</td></tr><tr><td>24.</td><td>"tBodyGyro.std...Z"                 </td><td>Time-domain (units: seconds); Std dev; Z-axis; Gyroscope measurement of subject;
</td></tr><tr><td>25.</td><td>"tBodyGyroJerk.mean...X"            </td><td>Time-domain (units: seconds); Mean; X-axis; Jerk of gyroscope of subject;
</td></tr><tr><td>26.</td><td>"tBodyGyroJerk.mean...Y"            </td><td>Time-domain (units: seconds); Mean; Y-axis; Jerk of gyroscope of subject;
</td></tr><tr><td>27.</td><td>"tBodyGyroJerk.mean...Z"            </td><td>Time-domain (units: seconds); Mean; Z-axis; Jerk of gyroscope of subject;
</td></tr><tr><td>28.</td><td>"tBodyGyroJerk.std...X"             </td><td>Time-domain (units: seconds); Std dev; Jerk of gyroscope of subject;
</td></tr><tr><td>29.</td><td>"tBodyGyroJerk.std...Y"             </td><td>Time-domain (units: seconds); Std dev; Jerk of gyroscope of subject;
</td></tr><tr><td>30.</td><td>"tBodyGyroJerk.std...Z"             </td><td>Time-domain (units: seconds); Std dev; Jerk of gyroscope of subject;
</td></tr><tr><td>31.</td><td>"tBodyAccMag.mean.."                </td><td>Time-domain (units: seconds); Mean; Magnitude of acceleration of subject;
</td></tr><tr><td>32.</td><td>"tBodyAccMag.std.."                 </td><td>Time-domain (units: seconds); Std dev; Magnitude of acceleration of subject;
</td></tr><tr><td>33.</td><td>"tGravityAccMag.mean.."             </td><td>Time-domain (units: seconds); Mean; Magnitude of acceleration due to gravity;
</td></tr><tr><td>34.</td><td>"tGravityAccMag.std.."              </td><td>Time-domain (units: seconds); Std dev; Magnitude of acceleration due to gravity;
</td></tr><tr><td>35.</td><td>"tBodyAccJerkMag.mean.."            </td><td>Time-domain (units: seconds); Mean; Magnitude of jerk of acceleration of subject;
</td></tr><tr><td>36.</td><td>"tBodyAccJerkMag.std.."             </td><td>Time-domain (units: seconds); Std dev; Magnitude of jerk of acceleration of subject;
</td></tr><tr><td>37.</td><td>"tBodyGyroMag.mean.."               </td><td>Time-domain (units: seconds); Mean; Magnitude of gyroscope measurement of subject;
</td></tr><tr><td>38.</td><td>"tBodyGyroMag.std.."                </td><td>Time-domain (units: seconds); Std dev; Magnitude of gyroscope measurement of subject;
</td></tr><tr><td>39.</td><td>"tBodyGyroJerkMag.mean.."           </td><td>Time-domain (units: seconds); Mean; Magnitude of jerk of gyroscope measurement of subject;
</td></tr><tr><td>40.</td><td>"tBodyGyroJerkMag.std.."            </td><td>Time-domain (units: seconds); Std dev; Magnitude of jerk of gyroscope measurement of subject;
</td></tr><tr><td>41.</td><td>"fBodyAcc.mean...X"                 </td><td>Frequency-domain (units: hertz); Mean; X-axis; Acceleration of subject;
</td></tr><tr><td>42.</td><td>"fBodyAcc.mean...Y"                 </td><td>Frequency-domain (units: hertz); Mean; Y-axis; Acceleration of subject;
</td></tr><tr><td>43.</td><td>"fBodyAcc.mean...Z"                 </td><td>Frequency-domain (units: hertz); Mean; Z-axis; Acceleration of subject;
</td></tr><tr><td>44.</td><td>"fBodyAcc.std...X"                  </td><td>Frequency-domain (units: hertz); Std dev; X-axis; Acceleration of subject;
</td></tr><tr><td>45.</td><td>"fBodyAcc.std...Y"                  </td><td>Frequency-domain (units: hertz); Std dev; Y-axis; Acceleration of subject;
</td></tr><tr><td>46.</td><td>"fBodyAcc.std...Z"                  </td><td>Frequency-domain (units: hertz); Std dev; Z-axis; Acceleration of subject;
</td></tr><tr><td>47.</td><td>"fBodyAcc.meanFreq...X"             </td><td>Frequency-domain (units: hertz); Mean frequency; X-axis; Acceleration of subject;
</td></tr><tr><td>48.</td><td>"fBodyAcc.meanFreq...Y"             </td><td>Frequency-domain (units: hertz); Mean frequency; Y-axis; Acceleration of subject;
</td></tr><tr><td>49.</td><td>"fBodyAcc.meanFreq...Z"             </td><td>Frequency-domain (units: hertz); Mean frequency; Z-axis; Acceleration of subject;
</td></tr><tr><td>50.</td><td>"fBodyAccJerk.mean...X"             </td><td>Frequency-domain (units: hertz); Mean; X-axis; Jerk of acceleration of subject;
</td></tr><tr><td>51.</td><td>"fBodyAccJerk.mean...Y"             </td><td>Frequency-domain (units: hertz); Mean; Y-axis; Jerk of acceleration of subject;
</td></tr><tr><td>52.</td><td>"fBodyAccJerk.mean...Z"             </td><td>Frequency-domain (units: hertz); Mean; Z-axis; Jerk of acceleration of subject;
</td></tr><tr><td>53.</td><td>"fBodyAccJerk.std...X"              </td><td>Frequency-domain (units: hertz); Std dev; X-axis; Jerk of acceleration of subject;
</td></tr><tr><td>54.</td><td>"fBodyAccJerk.std...Y"              </td><td>Frequency-domain (units: hertz); Std dev; Y-axis; Jerk of acceleration of subject;
</td></tr><tr><td>55.</td><td>"fBodyAccJerk.std...Z"              </td><td>Frequency-domain (units: hertz); Std dev; Z-axis; Jerk of acceleration of subject;
</td></tr><tr><td>56.</td><td>"fBodyAccJerk.meanFreq...X"         </td><td>Frequency-domain (units: hertz); Mean frequency; X-axis; Jerk of acceleration of subject;
</td></tr><tr><td>57.</td><td>"fBodyAccJerk.meanFreq...Y"         </td><td>Frequency-domain (units: hertz); Mean frequency; Y-axis; Jerk of acceleration of subject;
</td></tr><tr><td>58.</td><td>"fBodyAccJerk.meanFreq...Z"         </td><td>Frequency-domain (units: hertz); Mean frequency; Z-axis; Jerk of acceleration of subject;
</td></tr><tr><td>59.</td><td>"fBodyGyro.mean...X"                </td><td>Frequency-domain (units: hertz); Mean; X-axis; Gyroscope measurement of subject;
</td></tr><tr><td>60.</td><td>"fBodyGyro.mean...Y"                </td><td>Frequency-domain (units: hertz); Mean; Y-axis; Gyroscope measurement of subject;
</td></tr><tr><td>61.</td><td>"fBodyGyro.mean...Z"                </td><td>Frequency-domain (units: hertz); Mean; Z-axis; Gyroscope measurement of subject;
</td></tr><tr><td>62.</td><td>"fBodyGyro.std...X"                 </td><td>Frequency-domain (units: hertz); Std dev; X-axis; Gyroscope measurement of subject;
</td></tr><tr><td>63.</td><td>"fBodyGyro.std...Y"                 </td><td>Frequency-domain (units: hertz); Std dev; Y-axis; Gyroscope measurement of subject;
</td></tr><tr><td>64.</td><td>"fBodyGyro.std...Z"                 </td><td>Frequency-domain (units: hertz); Std dev; Z-axis; Gyroscope measurement of subject;
</td></tr><tr><td>65.</td><td>"fBodyGyro.meanFreq...X"            </td><td>Frequency-domain (units: hertz); Mean frequency; X-axis; Gyroscope measurement of subject;
</td></tr><tr><td>66.</td><td>"fBodyGyro.meanFreq...Y"            </td><td>Frequency-domain (units: hertz); Mean frequency; Y-axis; Gyroscope measurement of subject;
</td></tr><tr><td>67.</td><td>"fBodyGyro.meanFreq...Z"            </td><td>Frequency-domain (units: hertz); Mean frequency; Z-axis; Gyroscope measurement of subject;
</td></tr><tr><td>68.</td><td>"fBodyAccMag.mean.."                </td><td>Frequency-domain (units: hertz); Mean; Magnitude of acceleration of subject;
</td></tr><tr><td>69.</td><td>"fBodyAccMag.std.."                 </td><td>Frequency-domain (units: hertz); Std dev; Magnitude of acceleration of subject;
</td></tr><tr><td>70.</td><td>"fBodyAccMag.meanFreq.."            </td><td>Frequency-domain (units: hertz); Mean frequency; Magnitude of acceleration of subject;
</td></tr><tr><td>71.</td><td>"fBodyBodyAccJerkMag.mean.."        </td><td>Frequency-domain (units: hertz); Mean; Magnitude of jerk of acceleration of subject;
</td></tr><tr><td>72.</td><td>"fBodyBodyAccJerkMag.std.."         </td><td>Frequency-domain (units: hertz); Std dev; Magnitude of jerk of acceleration of subject;
</td></tr><tr><td>73.</td><td>"fBodyBodyAccJerkMag.meanFreq.."    </td><td>Frequency-domain (units: hertz); Mean frequency; Magnitude of jerk of acceleration of subject;
</td></tr><tr><td>74.</td><td>"fBodyBodyGyroMag.mean.."           </td><td>Frequency-domain (units: hertz); Mean; Magnitude of gyroscope measurement of subject;
</td></tr><tr><td>75.</td><td>"fBodyBodyGyroMag.std.."            </td><td>Frequency-domain (units: hertz); Std dev; Magnitude of gyroscope measurement of subject;
</td></tr><tr><td>76.</td><td>"fBodyBodyGyroMag.meanFreq.."       </td><td>Frequency-domain (units: hertz); Mean frequency; Magnitude of gyroscope measurement of subject;
</td></tr><tr><td>77.</td><td>"fBodyBodyGyroJerkMag.mean.."       </td><td>Frequency-domain (units: hertz); Mean; Magnitude of jerk of gyroscope measurement of subject;
</td></tr><tr><td>78.</td><td>"fBodyBodyGyroJerkMag.std.."        </td><td>Frequency-domain (units: hertz); Std dev; Magnitude of jerk of gyroscope measurement of subject;
</td></tr><tr><td>79.</td><td>"fBodyBodyGyroJerkMag.meanFreq.."   </td><td>Frequency-domain (units: hertz); Mean frequency; Magnitude of jerk of gyroscope measurement of subject;
</td></tr><tr><td>80.</td><td>"subject"                           </td><td>Subject of the observation;
</td></tr><tr><td>81.</td><td>"activity"                          </td><td>Activity performed by subject during observation window;
</td></tr>
</tbody>
</table>

## Other notes
The original dataset contained a number of variables that were the calculated angle between two vectors. Because this variable is a measure of comparison between two vectors, it was not included in tidy dataset. The two vectors being compared are the mean of their respective sample windows, and are provided in the tidy dataset but the angle between them is not included.

meanFreq variables were maintained as they provided a measure of centrality equivalent to the mean variables. meanFreq is required as some original transformations were performed on the raw data such that measurements were converted from the time domain to the frequency domain. Thus meanFreq is an appropriate measure of centrality to extract into the tidy dataset.