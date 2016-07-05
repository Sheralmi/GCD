#setting working directory 
  setwd("C:/Users/Haggai Schermann/Downloads/GCD_FP")
  getwd()
##############################################################
# merging all testing and training data into a single database
  x_train <- read.table("train/X_train.txt")
  y_train <- read.table("train/y_train.txt")
  subject_train <- read.table("train/subject_train.txt")

  x_test <- read.table("test/X_test.txt")
  y_test <- read.table("test/y_test.txt")
  subject_test <- read.table("test/subject_test.txt")

  x_data <- rbind(x_train, x_test)
  y_data <- rbind(y_train, y_test)
  subject_data <- rbind(subject_train, subject_test)
##############################################################
# labeling the data set with descriptive variable names
  features <- read.table("features.txt")
  dim(features)
  features[,2]<-as.character(features[,2])
  head(features[,2])
##############################################################
# select only mean and standard deviations of measurements
  mean_and_std <- grep("-(mean|std)\\(\\)", features[, 2])
  #mean_and_std
  x_data <- x_data[, mean_and_std]
  names(x_data) <- features[mean_and_std, 2]
  head(x_data)
##############################################################
# descriptive activity names to name the activities in the data set
  activities <- read.table("activity_labels.txt")
  #activities
  y_data[, 1] <- activities[y_data[, 1], 2]
  names(y_data) <- "activity"
  head(y_data)
  names(subject_data) <- "subject"
  head(subject_data)

  all_data <- cbind(x_data, y_data, subject_data)
  head(all_data)
  dim(all_data)
##############################################################
# creating an independent tidy data set with the average of each variable for each activity and each subject
  averages_data <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66]))
  #head(averages_data) 
  write.table(averages_data, "averages_tidy.txt", row.name=FALSE)
  #names(averages_data)
  