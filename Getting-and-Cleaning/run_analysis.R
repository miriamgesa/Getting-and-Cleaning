
library(dplyr)
library(data.table)
setwd("")

## Read all training and test datasets and labels
Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt" )
Ytest <- read.table("./UCI HAR Dataset/test/y_test.txt" )
Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt" )
Ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt" )
Feat <- read.table("./UCI HAR Dataset/features.txt")
Labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
SubTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
SubTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

## Use Labels in features.txt to name variables in merged training and test data

names(Xtest) <- Feat$V2
names(Xtrain) <- Feat$V2 

## Append Activity Data and Signal Data for both Test and Training Data 

DAT <- rbind(Xtest, Xtrain)
ACT <- rbind(Ytest, Ytrain)
names(ACT) <- "Activity"
## Append Subject variable from training and test data

SUB <- rbind(SubTest, SubTrain)
names(SUB) <- "Subject"

## Merge Signal Data, Activity Data and Subject Data 
DAT <- cbind(DAT, ACT, SUB)

## Reorganize Variable Names with strsplit, generate valid variable names and and assign new variable names to merged data 
splitnames = strsplit(names(DAT),"\\-")
second <- function(x) {x[2]}
first <- function(x) {x[1]}
I <-sapply(splitnames,second)
splitnI = strsplit(I,"\\(")
I <- sapply(splitnI,first)

I2 <-  sapply(splitnames, first)
I3 <- paste(I2,I)

valid_column_names <- make.names(names=I3, unique=TRUE, allow_ = TRUE)
names(DAT) <- valid_column_names


## Extract variables with measurements of mean and standard deviation
DAT2 <- select(DAT, contains("std"),contains("mean", ignore.case=FALSE),-contains("meanFreq"), -contains("yMean"), contains("Activity"), contains("Subject"))
names(DAT2)
names(DAT2) <- sub(".NA","",names(DAT2))

##Generate factor variable for Aktivities and assign the corresponding labels 
DAT2$Activity <- factor(DATA$Activity, labels = Labels$V2)



##Use data.table package to aggregate the data by subject and activity
DATA <- data.table(DAT2)
setkey(DATA, Subject)

DATA <- as.data.frame(DATA[, lapply(.SD,mean), by = list(Subject, Activity), .SDcols=names(DATA)[1:66] ])
write.table(DATA, file = "Data.txt", row.names = FALSE)


  