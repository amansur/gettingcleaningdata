# Descriptive names of variables being measured
featureNames <- read.table('features.txt');
# Measured values of variable observations for training and test data
measurementsTrain <- read.table('train/X_train.txt',col.names=featureNames[,2]);
measurementsTest <- read.table('test/X_test.txt',col.names=featureNames[,2]);
# Subject of observation
subjectTrain <- read.table('train/subject_train.txt', col.names="subject");
subjectTest <- read.table('test/subject_test.txt', col.names="subject");
# Descriptive names of activity performed by subject
activityLabels <- read.table('activity_labels.txt');
# Activity performed by subject of each observation record
activityTrain <- read.table('train/Y_train.txt',col.names="activity");
activityTest <- read.table('test/Y_test.txt',col.names="activity");

# Train and test data are merged 
measurements <- rbind(measurementsTrain,measurementsTest);
subject <- rbind(subjectTrain,subjectTest);
activity <- rbind(activityTrain,activityTest);
# Activity is labeled using factors
activity <- factor(activity[,1],levels=activityLabels[,1],labels=activityLabels[,2]);

# Measurement, subject, and activity data are merged together and converted to data frame
dtData <- cbind(measurements, subject, activity);
dfData <- data.frame(dtData);

# Mean and std dev measurements are extracted
meanSdCols <- grepl('mean|std|activity|subject',colnames(dfData));
dfData <- dfData[,meanSdCols];

# Mean of columns grouped by subject and activity is computed
groupByCols <- c('subject','activity');
dataCols <- 1:79;
dataSummary <- ddply(dfData,groupByCols,function(x) colMeans(x[dataCols]));

# Data written to file
write.table(dataSummary,file="tidyData.txt",row.name=FALSE);