### Part 1 - Merge the training and the test sets to create one data set.
### Note that subjects and activities data are merged in later on
train.X<-read.table("train/X_train.txt")
train.y<-read.table("train/y_train.txt")
train.subject<-read.table("train/subject_train.txt")

test.X<-read.table("test/X_test.txt")
test.y<-read.table("test/y_test.txt")
test.subject<-read.table("test/subject_test.txt")

d.X<-rbind(train.X,test.X)
d.y<-rbind(train.y,test.y)
d.subject<-rbind(train.subject,test.subject)

### Part 2 - Extract only the measurements on the mean and standard deviation for each measurement.
### Note that I am considering variables that end in "mean()" or "std()"
### to be means and standard deviations - this could be changed by
### modifying the "grepl" statements below

#load in features.txt
feat<-read.table("features.txt")

#find all variables that end in "mean()"
meanfeat<-subset(feat, grepl("mean\\(\\)", V2))

#find all variables that end in "std()"
stdfeat<-subset(feat, grepl("std\\(\\)", V2))

#concatenate them
feat<-rbind(meanfeat,stdfeat)

#chuck out the rest of the columns from the data
d.X<-d.X[,feat[,1]]

### Part 4 - Appropriately label the data set with descriptive variable names. 
### Note that "subject" and "activity" columns are named later
#rename the columns according to features.txt names
#I remove parentheses and convert dashes to make the columns easy to work with
tidy.names=gsub("\\(\\)", "", feat[,2])
tidy.names=gsub("-", ".", tidy.names)
names(d.X)<-tidy.names

#join subjects and activities to mean/std variables data
d<-cbind(d.subject,d.y,d.X)

#give sensible name to "subject" column
colnames(d)[1]<-"subject" #Part 4

### Part 3 - Use descriptive activity names to name the activities in the data set
activity<-read.table("activity_labels.txt")
d<-merge(activity, d, by.y="V1", by.x="V1")
colnames(d)[2]<-"activity" #Part 4
d$V1<-NULL
d$activity<-as.factor(d$activity)

write.table(d, file="out.txt", row.names=FALSE)

d2<-aggregate(fBodyBodyGyroMag.std ~ activity+subject, d, mean)

# require(reshape2)
# d.melt=melt(d, id=tidy.names)
# dcast(d.melt, activity+subject~variable, mean)

### Part 5 - Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
require(plyr)
ddply(d, c("activity", "subject"), function(x) colMeans(x[tidy.names]))
write.table(d, file="out2.txt", row.names=FALSE)
