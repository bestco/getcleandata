library(reshape2)

# read "features.txt" file,
# change all case to lower case
# remove "-" "(" ")" "," from feature names
# total features = 561
features <- read.table("features.txt", col.names = c("featurenumber", "featurename"))
features$featurename <-  tolower(features$featurename)
features$featurename <- gsub("-", "", features$featurename)
features$featurename <- gsub("\\(", "", features$featurename)
features$featurename <- gsub(")", "", features$featurename)
features$featurename <- gsub(",", "", features$featurename)

# subset to include only those names with "mean" and "std" in them.
namesubindex <- grep("mean", features$featurename)
namesub <- grep("mean", features$featurename, value = TRUE)

# read "activity_labels.txt" file
# change all case to lower case
# remove "_" from feature names
# total activity = 6
activitylabels <- read.table("activity_labels.txt",
                             col.names = c("activitynumber", "activity"))
activitylabels$activity <- tolower(activitylabels$activity)

# read data
subjecttrain <- read.table("train/subject_train.txt", col.names = "id")
xtrain <- read.table("train/X_train.txt")
ytrain <- read.table("train/y_train.txt")

subjecttest <- read.table("test/subject_test.txt", col.names = "id")
xtest <- read.table("test/X_test.txt")
ytest <- read.table("test/y_test.txt")

# Merge dataset (training + test)
subject <- rbind(subjecttrain, subjecttest)

x <- rbind(xtrain, xtest)
names(x) <- features$featurename

y <- rbind(ytrain, ytest)
activity <- factor(y$V1, labels=c("walking", "walkingupstairs",
                                  "walkingdownstairs", "sitting",
                                  "standing", "laying"))

dat <- cbind(subject, activity, x[, namesubindex])

# calculate mean
mdat <- melt(dat, id.vars=c("id","activity"), measure.vars = namesub,
             variable.name="measured")
datmean <- dcast(mdat, id + activity ~ measured, mean)

# Output the tidy data to a file
# Please use read.table("tidydata.txt") to read back the data for viewing.
write.table(datmean, file="tidydata.txt")

