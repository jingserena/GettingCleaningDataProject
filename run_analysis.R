
workDir <- "C:\\Users\\JHuo\\Desktop\\coursera\\cleaning\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\"
setwd(workDir)
getwd()

traindata <- read.table(".\\train\\X_train.txt", as.is=T)
trainlabel <- read.table(".\\train\\y_train.txt", as.is=T)
trainID <- read.table(".\\train\\subject_train.txt", as.is=T)

testdata <- read.table(".\\test\\X_test.txt", as.is=T)
testlabel <- read.table(".\\test\\y_test.txt", as.is=T)
testID <- read.table(".\\test\\subject_test.txt", as.is=T)

# combine train and test data and label data
oneset <- rbind(traindata, testdata)
ncol(oneset)
nrow(oneset)

featureName <- read.table(".\\features.txt", as.is=T)

# only keep those columns with mean and std
nam <- names(oneset)
ind <- grep("([Mm][Ee][Aa][Nn]|std)", nam)
col_nam <-nam[ind] 
part_set <- oneset[,col_nam]
names(part_set)

# change the activity from numbers into words
activityLabels <- read.table(".\\activity_labels.txt", as.is=T)

l <- rbind(trainlabel, testlabel)
l$V1 <- factor(l$V1, labels=activityLabels[,2])
names(l) <- "activity"

idd <- rbind(trainID, testID)
names(idd) <- "subjectID"
idd$subjectID <- factor(idd$subjectID)

# combine them into one new dataset
part_set <- cbind(idd, l, part_set)

# change the name of the variables to be more descriptive
names(part_set) <- gsub("^t","Time",names(part_set))
names(part_set)
names(part_set) <- gsub("Acc","Accelerometer",names(part_set))
names(part_set) <- gsub("^f","Freq",names(part_set))
names(part_set) <- gsub("Mag","Magnitude",names(part_set))

# write 
write.table(part_set, file = "tidydata.txt",row.name=FALSE)
