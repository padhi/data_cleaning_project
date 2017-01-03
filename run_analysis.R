#add the dplyr and tidyr libraries
library("tidyr")
library("dplyr")


# read the activity numbers for training dataset
yTrain<-read.table("./train/y_train.txt", sep=" ", col.names="activityNo", fill=FALSE, strip.white=TRUE)
yTrainData<- tbl_df(yTrain)

# read the activity numbers for test dataset
yTest<-read.table("./test/y_test.txt", sep=" ", col.names="activityNo", fill=FALSE, strip.white=TRUE)
yTestData<- tbl_df(yTest)

# Combine activity numbers for Train and Test Data
yCombined <- bind_rows(yTrainData, yTestData)

# read subjects for training dataset
trainSubjects<-read.table("./train/subject_train.txt", sep=" ", col.names="subject", fill=FALSE, strip.white=TRUE)
trSubjectData<- tbl_df(trainSubjects)

# read subjects for Test dataset
testSubjects<-read.table("./test/subject_test.txt", sep=" ", col.names="subject", fill=FALSE, strip.white=TRUE)
testSubjectData<- tbl_df(testSubjects)

# Combine all subjects from Training and Test data
subjectCombined<-bind_rows(trSubjectData, testSubjectData)

# Combine Activity and Subjects columns
activityPlusSubject <- bind_cols(yCombined, subjectCombined)

# read column names from  features.txt file
featuresTable <- read.table("./features.txt", col.names =c("id", "feature"))

# Extract the name of columns (features)
feature_list <- select(featuresTable, feature)

# modify the feature names to make it more readable
column_headers  <- gsub("[(])", "", feature_list$feature)
column_headers  <- gsub("-", "_", feature_list$feature)

# read X Train Data from train/x_train.txt file
xTrain <- read.table("./train/x_train.txt", col.names = column_headers, fill=FALSE, strip.white=TRUE)
xTrainData <- tbl_df(xTrain)

# read X Test Data from test/x_test.txt file
xTest <- read.table("./test/x_test.txt", col.names = column_headers, fill=FALSE, strip.white=TRUE)
xTestData <- tbl_df(xTest)

# Combine the X data using row bind
xCombined <- bind_rows(xTrainData, xTestData)

# combine the activity and subject columns to X data using column bind
completeData <- bind_cols(activityPlusSubject, xCombined)

# make a subset of the all the measurements by taking columns that indicate mean and standard deviation(std)
meanStdColumns<- select(completeData, activityNo, subject, matches("^[tf]+[^ ]+(mean[_]|mean|std[_]|std)"))

# Read the activity_labels.txt for activities labels 
activity_names<-read.table("./activity_labels.txt", col.names = c("activityID", "activity_name"))

# replace the the activity ids with descriptive activity names
meanStdColumns$activityNo <- act_labels[,2][meanStdColumns$activityNo]

#change the column name to "activity_desc"
names(meanStdColumns)[1] <- "activity_desc"

# Create a separate tidy data set with the average of each variable for each activity and each subject.
summarizedData<- meanStdColumns %>% 
    group_by(activity_desc, subject)%>%
    summarise_each(funs(mean)) %>%
    setNames(c(names(.)[1], names(.)[2], paste0("avg_",names(.)[3:81]))) 

# write summarized data to a csv file
write.csv(summarizedData, "tidy_data.csv")
