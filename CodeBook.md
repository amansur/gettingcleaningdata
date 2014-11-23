# Codebook for tidy dataset of 'Human Activity Recognition Using Smartphones Dataset'

## Original dataset description

Measurements from the acclerometer and gyroscope of a Samsung Galaxy SII smartphone were taken when 30 subjects performed 6 activities. Measurements were taken at 50Hz and were "sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window)."

The subjects were split into two groups. The training group consisted of 70% (21) of the subjects. The test group consisted of 30% (9) of the subjects. 

The original dataset was divided among multiple text files. Training and test data were in separate files. Additionally, subject and activity labels were also in separate files.

## The tidy dataset

Using the original dataset described above, a number of steps were taken to consolidate the data into a single object. Training and test data were merged, with descriptive variable labels attached to the columns. Subject and activity labels were also included for each observation. 

Because the devices used to obtain the measurements obtained a large number of values for each observation, a number of statistical and mathematical functions were applied to the raw data to obtain additional variables. Of these additional variables, only the mean and standard deviation variables have been kept in our tidy dataset.