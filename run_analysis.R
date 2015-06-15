readFolder <- function(folder) {
  baseFolder <- "UCI HAR Dataset"
  features <- read.table(
    paste(baseFolder, "features.txt", sep = "/"),
    colClasses = "character")[, 2]
  
  data <- read.table(
    paste(baseFolder, "/", folder, "/X_", folder, ".txt", sep = ""), 
    header = F, 
    colClasses = "numeric")
  
  colnames(data) <- features
  
  data <- data[, c(grep("mean\\(\\)", features), grep("std\\(\\)", features))]
  
  data$subject <- read.table(
    paste(baseFolder, "/", folder, "/subject_", folder, ".txt", sep = ""),
    header = F)[,1]
  
  data$activity <- read.table(
    paste(baseFolder, "/", folder, "/y_", folder, ".txt", sep = ""), 
    header = F,
    colClasses = "factor")[, 1]
  
  levels(data$activity) <- read.table(
    paste(baseFolder, "activity_labels.txt", sep = "/"),
    header = F)[, 2]
  
  data
}

wearableComputing <- rbind(readFolder("train"), readFolder("test"))