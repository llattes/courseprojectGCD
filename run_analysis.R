run_analysis <- function() {
  require("dplyr")
  xtest <- read.table(file = "test/X_test.txt", header = FALSE)
  ytest <- read.table(file = "test/y_test.txt", header = FALSE)
  subjecttest <- read.table(file = "test/subject_test.txt", header = FALSE)
  xtrain <- read.table(file = "train/X_train.txt", header = FALSE)
  ytrain <- read.table(file = "train/y_train.txt", header = FALSE)
  subjecttrain <- read.table(file = "train/subject_train.txt", header = FALSE)
  features <- read.table(file = "features.txt", header = FALSE,
    stringsAsFactors = FALSE)
  activitylabels <- read.table(file = "activity_labels.txt", header = FALSE,
    stringsAsFactors = FALSE)
  activitylabels <- activitylabels[, 2]
  fulldata <- rbind(xtrain, xtest)
  ydata <- rbind(ytrain, ytest)
  subjectdata <- rbind(subjecttrain, subjecttest)
  feature_names <- features[, 2]
  feature_names <- c(feature_names, "Subject", "Activity")
  # Includes X_train, X_test, 'y' and subject data.
  completedata <- cbind(fulldata, subjectdata, ydata)
  # Remove unused variables from environment.
  rm("xtest", "ytest", "subjecttest", "xtrain", "ytrain", "subjecttrain",
    "features", "fulldata", "subjectdata")
  colnames(completedata) <- c(feature_names)
  completedata$Subject <- factor(completedata$Subject)
  completedata$Activity <- factor(completedata$Activity,
    labels = activitylabels)
  # Remove duplucated column names from the complete dataset.
  withoutdups <- completedata[, !duplicated(colnames(completedata))]
  # Use dplyr to select only columns with mean and std + Subject and Activity.
  final_dataset <- select(withoutdups, contains("mean"), contains("std"),
    Subject, Activity)
  grouped <- group_by(final_dataset, Activity, Subject)
  summarized <- summarise_each(grouped, funs(mean))
  summarized
}

write_txt <- function(filename = "summary") {
  result_data <- run_analysis()
  write.table(result_data, file = paste(filename, ".txt", sep = ""), row.names = FALSE)
}
