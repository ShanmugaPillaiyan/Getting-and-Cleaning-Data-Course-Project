Code Book 
generated on 2016-04-19 23:23:36 during execution of `run_analysis.R`   
   
##Data extracted from following files   
train/subject_train.txt     -        Total number of records: 7352   
train/X_train.txt           -        Total number of records: 7352   
train/y_train.txt           -        Total number of records: 7352   
test/subject_test.txt       -        Total number of records: 2947   
test/X_test.txt             -        Total number of records: 2947   
test/y_test.txt             -        Total number of records: 2947   
features.txt                -        Total number of records: 561   
activity_labels.txt         -        Total number of records: 6   
##Features added to X_train and X_test data   
Activity - Characters   
Subject - Characters   
      
##Features list extracted to tidy dataset   
| Field | Data type |    
|-------|-----------|    
|tBodyAcc-mean()-X|numeric|   
|tBodyAcc-mean()-Y|numeric|   
|tBodyAcc-mean()-Z|numeric|   
|tBodyAcc-std()-X|numeric|   
|tBodyAcc-std()-Y|numeric|   
|tBodyAcc-std()-Z|numeric|   
|tGravityAcc-mean()-X|numeric|   
|tGravityAcc-mean()-Y|numeric|   
|tGravityAcc-mean()-Z|numeric|   
|tGravityAcc-std()-X|numeric|   
|tGravityAcc-std()-Y|numeric|   
|tGravityAcc-std()-Z|numeric|   
|tBodyAccJerk-mean()-X|numeric|   
|tBodyAccJerk-mean()-Y|numeric|   
|tBodyAccJerk-mean()-Z|numeric|   
|tBodyAccJerk-std()-X|numeric|   
|tBodyAccJerk-std()-Y|numeric|   
|tBodyAccJerk-std()-Z|numeric|   
|tBodyGyro-mean()-X|numeric|   
|tBodyGyro-mean()-Y|numeric|   
|tBodyGyro-mean()-Z|numeric|   
|tBodyGyro-std()-X|numeric|   
|tBodyGyro-std()-Y|numeric|   
|tBodyGyro-std()-Z|numeric|   
|tBodyGyroJerk-mean()-X|numeric|   
|tBodyGyroJerk-mean()-Y|numeric|   
|tBodyGyroJerk-mean()-Z|numeric|   
|tBodyGyroJerk-std()-X|numeric|   
|tBodyGyroJerk-std()-Y|numeric|   
|tBodyGyroJerk-std()-Z|numeric|   
|tBodyAccMag-mean()|numeric|   
|tBodyAccMag-std()|numeric|   
|tGravityAccMag-mean()|numeric|   
|tGravityAccMag-std()|numeric|   
|tBodyAccJerkMag-mean()|numeric|   
|tBodyAccJerkMag-std()|numeric|   
|tBodyGyroMag-mean()|numeric|   
|tBodyGyroMag-std()|numeric|   
|tBodyGyroJerkMag-mean()|numeric|   
|tBodyGyroJerkMag-std()|numeric|   
|fBodyAcc-mean()-X|numeric|   
|fBodyAcc-mean()-Y|numeric|   
|fBodyAcc-mean()-Z|numeric|   
|fBodyAcc-std()-X|numeric|   
|fBodyAcc-std()-Y|numeric|   
|fBodyAcc-std()-Z|numeric|   
|fBodyAccJerk-mean()-X|numeric|   
|fBodyAccJerk-mean()-Y|numeric|   
|fBodyAccJerk-mean()-Z|numeric|   
|fBodyAccJerk-std()-X|numeric|   
|fBodyAccJerk-std()-Y|numeric|   
|fBodyAccJerk-std()-Z|numeric|   
|fBodyGyro-mean()-X|numeric|   
|fBodyGyro-mean()-Y|numeric|   
|fBodyGyro-mean()-Z|numeric|   
|fBodyGyro-std()-X|numeric|   
|fBodyGyro-std()-Y|numeric|   
|fBodyGyro-std()-Z|numeric|   
|fBodyAccMag-mean()|numeric|   
|fBodyAccMag-std()|numeric|   
|fBodyBodyAccJerkMag-mean()|numeric|   
|fBodyBodyAccJerkMag-std()|numeric|   
|fBodyBodyGyroMag-mean()|numeric|   
|fBodyBodyGyroMag-std()|numeric|   
|fBodyBodyGyroJerkMag-mean()|numeric|   
|fBodyBodyGyroJerkMag-std()|numeric|   
|Subject|integer|   
|Activity|factor|   

##Transformations done to the raw to derive the tidy data   
1. The melt function was applied to the merged data of X_train and X_test with id set as Subject and Activity   
2. The dcast function applied to the melt data to calculate the mean for all variables   
3. The output is stored in tidydata.txt in the working directory   
       
##Averaged of each variable for each activity and each subject   
| Field | Data type |    
|-------|-----------|    
|Subject|integer|   
|Activity|factor|   
|tBodyAcc-mean()-X|numeric|   
|tBodyAcc-mean()-Y|numeric|   
|tBodyAcc-mean()-Z|numeric|   
|tBodyAcc-std()-X|numeric|   
|tBodyAcc-std()-Y|numeric|   
|tBodyAcc-std()-Z|numeric|   
|tGravityAcc-mean()-X|numeric|   
|tGravityAcc-mean()-Y|numeric|   
|tGravityAcc-mean()-Z|numeric|   
|tGravityAcc-std()-X|numeric|   
|tGravityAcc-std()-Y|numeric|   
|tGravityAcc-std()-Z|numeric|   
|tBodyAccJerk-mean()-X|numeric|   
|tBodyAccJerk-mean()-Y|numeric|   
|tBodyAccJerk-mean()-Z|numeric|   
|tBodyAccJerk-std()-X|numeric|   
|tBodyAccJerk-std()-Y|numeric|   
|tBodyAccJerk-std()-Z|numeric|   
|tBodyGyro-mean()-X|numeric|   
|tBodyGyro-mean()-Y|numeric|   
|tBodyGyro-mean()-Z|numeric|   
|tBodyGyro-std()-X|numeric|   
|tBodyGyro-std()-Y|numeric|   
|tBodyGyro-std()-Z|numeric|   
|tBodyGyroJerk-mean()-X|numeric|   
|tBodyGyroJerk-mean()-Y|numeric|   
|tBodyGyroJerk-mean()-Z|numeric|   
|tBodyGyroJerk-std()-X|numeric|   
|tBodyGyroJerk-std()-Y|numeric|   
|tBodyGyroJerk-std()-Z|numeric|   
|tBodyAccMag-mean()|numeric|   
|tBodyAccMag-std()|numeric|   
|tGravityAccMag-mean()|numeric|   
|tGravityAccMag-std()|numeric|   
|tBodyAccJerkMag-mean()|numeric|   
|tBodyAccJerkMag-std()|numeric|   
|tBodyGyroMag-mean()|numeric|   
|tBodyGyroMag-std()|numeric|   
|tBodyGyroJerkMag-mean()|numeric|   
|tBodyGyroJerkMag-std()|numeric|   
|fBodyAcc-mean()-X|numeric|   
|fBodyAcc-mean()-Y|numeric|   
|fBodyAcc-mean()-Z|numeric|   
|fBodyAcc-std()-X|numeric|   
|fBodyAcc-std()-Y|numeric|   
|fBodyAcc-std()-Z|numeric|   
|fBodyAccJerk-mean()-X|numeric|   
|fBodyAccJerk-mean()-Y|numeric|   
|fBodyAccJerk-mean()-Z|numeric|   
|fBodyAccJerk-std()-X|numeric|   
|fBodyAccJerk-std()-Y|numeric|   
|fBodyAccJerk-std()-Z|numeric|   
|fBodyGyro-mean()-X|numeric|   
|fBodyGyro-mean()-Y|numeric|   
|fBodyGyro-mean()-Z|numeric|   
|fBodyGyro-std()-X|numeric|   
|fBodyGyro-std()-Y|numeric|   
|fBodyGyro-std()-Z|numeric|   
|fBodyAccMag-mean()|numeric|   
|fBodyAccMag-std()|numeric|   
|fBodyBodyAccJerkMag-mean()|numeric|   
|fBodyBodyAccJerkMag-std()|numeric|   
|fBodyBodyGyroMag-mean()|numeric|   
|fBodyBodyGyroMag-std()|numeric|   
|fBodyBodyGyroJerkMag-mean()|numeric|   
|fBodyBodyGyroJerkMag-std()|numeric|   

