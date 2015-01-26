# Codebook for Getting and Cleaning Data Course Project

## Variables

### Activity

**Type:** `Factor w/ 6 levels`

1 = WALKING

2 = WALKING_UPSTAIRS

3 = WALKING_DOWNSTAIRS

4 = SITTING

5 = STANDING

6 = LAYING

### Subject

**Type:** `Factor w/ 30 levels [1 .. 30]`

### Accelerometer and gyroscope 3-axial list of variables

**Type:** `Numeric`

**Number of variables: 86**

```
tBodyAcc-mean()-X
tBodyAcc-mean()-Y                    tBodyAcc-mean()-Z                    tGravityAcc-mean()-X
tGravityAcc-mean()-Y                 tGravityAcc-mean()-Z                 tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y                tBodyAccJerk-mean()-Z                tBodyGyro-mean()-X
tBodyGyro-mean()-Y                   tBodyGyro-mean()-Z                   tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y               tBodyGyroJerk-mean()-Z               tBodyAccMag-mean()
tGravityAccMag-mean()                tBodyAccJerkMag-mean()               tBodyGyroMag-mean()
tBodyGyroJerkMag-mean()              fBodyAcc-mean()-X                    fBodyAcc-mean()-Y
fBodyAcc-mean()-Z                    fBodyAcc-meanFreq()-X                fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z                fBodyAccJerk-mean()-X                fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z                fBodyAccJerk-meanFreq()-X            fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z            fBodyGyro-mean()-X                   fBodyGyro-mean()-Y
fBodyGyro-mean()-Z                   fBodyGyro-meanFreq()-X               fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z               fBodyAccMag-mean()                   fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag-mean()           fBodyBodyAccJerkMag-meanFreq()       fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-meanFreq()          fBodyBodyGyroJerkMag-mean()          fBodyBodyGyroJerkMag-meanFreq()
angle(tBodyAccMean,gravity)          angle(tBodyAccJerkMean),gravityMean) angle(tBodyGyroMean,gravityMean)
angle(tBodyGyroJerkMean,gravityMean) angle(X,gravityMean)                 angle(Y,gravityMean)
angle(Z,gravityMean)                 tBodyAcc-std()-X                     tBodyAcc-std()-Y
tBodyAcc-std()-Z                     tGravityAcc-std()-X                  tGravityAcc-std()-Y
tGravityAcc-std()-Z                  tBodyAccJerk-std()-X                 tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z                 tBodyGyro-std()-X                    tBodyGyro-std()-Y
tBodyGyro-std()-Z                    tBodyGyroJerk-std()-X                tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z                tBodyAccMag-std()                    tGravityAccMag-std()
tBodyAccJerkMag-std()                tBodyGyroMag-std()                   tBodyGyroJerkMag-std()
fBodyAcc-std()-X                     fBodyAcc-std()-Y                     fBodyAcc-std()-Z
fBodyAccJerk-std()-X                 fBodyAccJerk-std()-Y                 fBodyAccJerk-std()-Z
fBodyGyro-std()-X                    fBodyGyro-std()-Y                    fBodyGyro-std()-Z
fBodyAccMag-std()                    fBodyBodyAccJerkMag-std()            fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-std()
```

## Variable component meanings

**X, Y, Z: Axis of calculation**

**mean(): Mean value**

**std(): Standard deviation**