# load libraries
library(dplyr)

# Clean up from previous runs
#rm(df_subj_test,df_subj_train,df_X_test,df_X_train,df_y_test,df_y_train, myDF, df_activity, df_features)

# Read in subject data from test set subject_test.txt into temporary df
df_subj_test <- read.table("C:/Data Science/Datascience Pack/Johns Hopkins Data Science/wk3.5/UCI HAR Dataset/test/subject_test.txt")

# Read in subject data from training set subject_train.txt into temporary df
df_subj_train <- read.table("C:/Data Science/Datascience Pack/Johns Hopkins Data Science/wk3.5/UCI HAR Dataset/train/subject_train.txt")


# Read in x data from test set X_test.txt into temporary df
df_X_test <- read.table("C:/Data Science/Datascience Pack/Johns Hopkins Data Science/wk3.5/UCI HAR Dataset/test/X_test.txt")

# Read in x data from training set X_train.txt into temporary df
df_X_train <- read.table("C:/Data Science/Datascience Pack/Johns Hopkins Data Science/wk3.5/UCI HAR Dataset/train/X_train.txt")


# Read in y data from test set y_test.txt into temporary df
df_y_test <- read.table("C:/Data Science/Datascience Pack/Johns Hopkins Data Science/wk3.5/UCI HAR Dataset/test/y_test.txt")

# Read in y data from training set y_train.txt into temporary df
df_y_train <- read.table("C:/Data Science/Datascience Pack/Johns Hopkins Data Science/wk3.5/UCI HAR Dataset/train/y_train.txt")

# Column bind the X,Y and subject data for each of test and train
myDFtrain <-cbind(df_X_train,df_y_train,df_subj_train)
myDFtest <-cbind(df_X_test,df_y_test,df_subj_test)

# Now row bind the test and training datasets to create a single master dataset
# ===========================
# This meets Objective 1: Merges the training and the test sets to create one data set.
# ===========================
myDF <-rbind(myDFtrain,myDFtest)

# Add name to new columns (needed for join later)
names(myDF)[562] <- "activityID"
names(myDF)[563] <- "subject"

# Read in feature names. I will use these to construct the descriptive activity names
df_features <- read.table("C:/Data Science/Datascience Pack/Johns Hopkins Data Science/wk3.5/UCI HAR Dataset/features.txt")

# Transform feature names to strings and remove () and -. Keeping these special characters in the names() will cause problems using them as an index
# Need to convert from factor to character
df_features$V2 <- as.character(df_features$V2)
# Use regexp to strip/substitute unwanted characters. Double escape them to treat as literals
df_features$V2 <- gsub("[\\(\\)]","",df_features$V2)
df_features$V2 <- gsub("\\-","_",df_features$V2)
#extract the name information into temporary vector and display for clarity
v <- as.vector(df_features$V2)

# Read in activity names. I will use these to construct the descriptive activity names
df_activity <- read.table("C:/Data Science/Datascience Pack/Johns Hopkins Data Science/wk3.5/UCI HAR Dataset/activity_labels.txt")
# Reanme V1 to activity ID and V2 to activity
names(df_activity) <- c("activityID","activity")

#Apply activity names to myDF
# ===========================
# This meets Objective 3 Uses descriptive activity names to name the activities in the data set
# ===========================
myDF<- left_join(myDF, df_activity, by= "activityID")
myDF$activityID <- NULL
#head(myDF)

#Apply tidied names to myDF not forgetting to add the names for the two columns not in features.txt
# ===========================
# This meets Objective 4 Appropriately labels the data set with descriptive variable names. 
# ===========================
names(myDF) <- c(v,"subject","activity")


# col1-561 - X-data, Col 562 = y, Col 563 = subject
# we only need mean and STDEV - I am also dropping the last few angular variables. For simplicity and clarity, and as the number of variables is relatively small, 
# pick these out manually.
# Therefore cols 1-6, 41-46, 81-86, 121-126, 161-166, 201-202, 214-215, 227-228, 240-241, 253-254, 266-271, 345-350, 424-429, 503-504, 516-517, 529-530,542-543
# Strip out the rest
# ===========================
# This meets Objective 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
# ===========================
myDF <- subset(myDF,select = c(1:6,41:46,81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 266:271, 345:350, 424:429, 503:504, 516:517, 529:530,542:543, 562:563))
#head(myDF)
# There are 30 subjects, and 300-400 ebservations each
#table(myDF$subj)
#sum(table(myDF$subj))
# check totals - yes they add up
#sum(table(myDF$subj))

#Aggregate means by value of subj and assign to new dataframe myAve
myAve <- aggregate(myDF, by = list(activity=myDF$activity,subject=myDF$subject), mean)
#drop extra columns
myAve[69:70] <- NULL
#head(myAve)

# Finally, display the new varaiable
# ===========================
# This meets Objective 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
# ===========================
head(myAve)

#write out datasets to file system
write.table(myAve, file ="C:/Data Science/Datascience Pack/Johns Hopkins Data Science/wk3.5/wearable_datacleaning_assignment-master/averages.txt", row.name=FALSE )
