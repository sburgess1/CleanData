activity
        type of activity
                walking
                walkingUpstairs
                walkingDownstairs
                sitting
                standing
                laying
        
subj
        the subject who performed the activity
                1
                2
                3
                4
                5
                6
                7
                8
                9
                10
                11
                12
                13
                14
                15
                16
                17
                18
                19
                120
                21
                22
                23
                24
                25
                26
                27
                28
                29
                30
                
The following descriptions were modified from the features_info.txt from the Reyes-Ortiz et al "Human Activity Recognition Using Smartphones Dataset""

The features selected  come from the accelerometer and gyroscope 3-axial raw signals tAccXYZ and tGyroXYZ, where prefix 't' to denotes time. The acceleration signal was then separated into body and gravity acceleration signals (tBodyAccXYZ and tGravityAccXYZ). 

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerkXYZ and tBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyroXYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAccXYZ
tGravityAccXYZ
tBodyAccJerkXYZ
tBodyGyroXYZ
tBodyGyroJerkXYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAccXYZ
fBodyAccJerkXYZ
fBodyGyroXYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation

Each value was normalized with values ranging between -1 ...1

The average of each mean and std variable for each activity and each subject was then determined.