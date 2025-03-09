
## Codebook for the Getting and Cleaning Data Project

# Overview

This codebook describes the dataset and analyses performed using the run_analysis.R script to generate a clean dataset.

# Dataset 

The Human Activity Recognition Using Smartphones dataset contains data from accelerometer and gyroscope data from smartphones whilst participants were carrying out six different activities. Data was collected from 30 different participants.

# Variables

The resulting clean tidy_dataset.txt contains the following variables:

**The activity**
*activity*
        This is the type of activity performed:
                walking
                walkingUpstairs
                walkingDownstairs
                sitting
                standing
                laying
                (character variable)
**The subject**        
*subj*
        This is the ID of the subject who performed the activity (1-30, integer)
        
**The mean and standard deviation of the measurement variables**
                
These were the mean and standard deviation for the various measurement signals (tBodyAccX, tBodyACCY, tGravityACCX etc...) for each subject and activity. These values range between -1 ...1 (numeric variable).

# Data processing

1. The training and test datasets were merged.
2. The variables were named.
3. Columns containing either the mean or standard deviation were extracted.
4. The activities were renamed with descriptive values.
5. The variables were renamed with descriptive names.
6. The average of each variable for each activity and each subject was determined and the resulting run_analysis.txt generated.


