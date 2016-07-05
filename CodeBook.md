This file describes the variables, the data, and any transformations or work that were performed to clean up the data.

Data transformations:

1. All testing and training data from all measurements of the 30 subjects
  is merged using the function rbind.
2. Columns with mean and standard deviation measurements are extracted 
  from the dataset and are provided informative names from the file features.txt.
3. Activity data, designated by numbers, is substituted by informative names
  from the activity_labels.txt file.
4. All data is merged into one big dataset, that is processed using the ddply 
  function, to give a tidy dataset of measurement averages. 
  
Variables:
  
  x_train, y_train, x_test, y_test, subject_train and subject_test contain downloaded   text files.
  The above datasets are merged pairwise into x_data, y_data and subject_data
  features - contain informative names for measurements
  all_data - big unprocessed dataset that unitesx_data, y_data and subject_data
  averages_data - the processed database, including mean measurements of each activity   of each subject
  
Vectors:
  
  Row identificators
  
       "subject"  - subject ID of the 30 subjects.
       "activity" - one of the 6 activities performed for each subject.
        
  Activity types:
  
        1            WALKING
        2   WALKING_UPSTAIRS
        3 WALKING_DOWNSTAIRS
        4            SITTING
        5           STANDING
        6             LAYING        

Measurements:

 "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
 "tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"           
 "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
 "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"       
 "tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"        
 "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"        
 "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
 "tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"       
 "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
 "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"         
 "tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"          
 "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          
 "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
 "tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"      
 "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
 "tBodyAccMag-mean()"          "tBodyAccMag-std()"          
 "tGravityAccMag-mean()"       "tGravityAccMag-std()"       
 "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"      
 "tBodyGyroMag-mean()"         "tBodyGyroMag-std()"         
 "tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"     
 "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
 "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"           
 "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
 "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"      
 "fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"       
 "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"       
 "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
 "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"          
 "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
 "fBodyAccMag-mean()"          "fBodyAccMag-std()"          
 "fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"  
 "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"     
 "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()"
 
