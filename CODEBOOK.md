Code Book
=========

out.txt
-------


The following variables are used in the code:

activity: one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
subject: id number for one of 30 subjects - the range is from 1 to 30

For the following variables, all units are in G

The variable names take the following form:

t<Body|Gravity><Acc|Gyro>[Jerk][Mag].<mean|std>[.X|.Y|.Z]
where the meanings are as follows:
* Body - represents movement of the body
* Gravity - accelleration due to gravity
* Acc - accelerometer measurement
* Gyro - gyroscopic measurement
* Jerk - separate kind of measurement from non-Jerk movement
* Mag - scalar magnitude
* mean - mean value
* std - standard deviation
* X - movement on the X axis
* Y - movement on the Y axis
* Z - movement on the Z axis

The variables are as follows:
tBodyAcc.mean.X
tBodyAcc.mean.Y
tBodyAcc.mean.Z
tGravityAcc.mean.X
tGravityAcc.mean.Y
tGravityAcc.mean.Z
tBodyAccJerk.mean.X
tBodyAccJerk.mean.Y
tBodyAccJerk.mean.Z
tBodyGyro.mean.X
tBodyGyro.mean.Y
tBodyGyro.mean.Z
tBodyGyroJerk.mean.X
tBodyGyroJerk.mean.Y
tBodyGyroJerk.mean.Z
tBodyAccMag.mean
tGravityAccMag.mean
tBodyAccJerkMag.mean
tBodyGyroMag.mean 
tBodyGyroJerkMag.mean
fBodyAcc.mean.X
fBodyAcc.mean.Y
fBodyAcc.mean.Z
fBodyAccJerk.mean.X
fBodyAccJerk.mean.Y
fBodyAccJerk.mean.Z
fBodyGyro.mean.X
fBodyGyro.mean.Y
fBodyGyro.mean.Z
fBodyAccMag.mean
fBodyBodyAccJerkMag.mean
fBodyBodyGyroMag.mean
fBodyBodyGyroJerkMag.mean
tBodyAcc.std.X
tBodyAcc.std.Y
tBodyAcc.std.Z
tGravityAcc.std.X
tGravityAcc.std.Y
tGravityAcc.std.Z
tBodyAccJerk.std.X
tBodyAccJerk.std.Y
tBodyAccJerk.std.Z
tBodyGyro.std.X
tBodyGyro.std.Y
tBodyGyro.std.Z
tBodyGyroJerk.std.X
tBodyGyroJerk.std.Y
tBodyGyroJerk.std.Z
BodyAccMag.std 
tGravityAccMag.std
tBodyAccJerkMag.std
tBodyGyroMag.std
tBodyGyroJerkMag.std
fBodyAcc.std.X
fBodyAcc.std.Y
fBodyAcc.std.Z
fBodyAccJerk.std.X
fBodyAccJerk.std.Y
fBodyAccJerk.std.Z
fBodyGyro.std.X
fBodyGyro.std.Y
fBodyGyro.std.Z
fBodyAccMag.std
fBodyBodyAccJerkMag.std
fBodyBodyGyroMag.std
fBodyBodyGyroJerkMag.std


out2.txt
--------

activity: one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
subject: id number for one of 30 subjects - the range is from 1 to 30

Other variables are the same as for out.txt, but their values are the average of each variable for each activity and each subject.
In other words, they are the result of grouping by "activity" and "subject" and taking the mean for each variable.
