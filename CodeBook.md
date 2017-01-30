Code Book

This code book summarizes the resulting data fields in tidy.txt.

Identifiers
The purpose of the data set is to produce meanof 3 sets of variables
    1. meesurement
    2. subject
    3. activity

Source files are located onthe web and the r script download the data as zip file and unzips into a main directory creating a
default directory and sub directories for training and test data files.

The main folder contains txt files with lables for the feature and acitivities variables.
there are two sub folders containg the test and training data on  the subject test / subject train and x and y features.

The tidy data is compsed of the following data.

data.frame'
 $ tBodyAcc-mean()-X          
 $ tBodyAcc-mean()-Y          
 $ tBodyAcc-mean()-Z          
 $ tBodyAcc-std()-X           
 $ tBodyAcc-std()-Y           
 $ tBodyAcc-std()-Z           
 $ tGravityAcc-mean()-X       
 $ tGravityAcc-mean()-Y       
 $ tGravityAcc-mean()-Z       
 $ tGravityAcc-std()-X        
 $ tGravityAcc-std()-Y        
 $ tGravityAcc-std()-Z        
 $ tBodyAccJerk-mean()-X      
 $ tBodyAccJerk-mean()-Y      
 $ tBodyAccJerk-mean()-Z      
 $ tBodyAccJerk-std()-X       
 $ tBodyAccJerk-std()-Y       
 $ tBodyAccJerk-std()-Z       
 $ tBodyGyro-mean()-X         
 $ tBodyGyro-mean()-Y         
 $ tBodyGyro-mean()-Z         
 $ tBodyGyro-std()-X          
 $ tBodyGyro-std()-Y          
 $ tBodyGyro-std()-Z          
 $ tBodyGyroJerk-mean()-X     
 $ tBodyGyroJerk-mean()-Y     
 $ tBodyGyroJerk-mean()-Z     
 $ tBodyGyroJerk-std()-X      
 $ tBodyGyroJerk-std()-Y      
 $ tBodyGyroJerk-std()-Z      
 $ tBodyAccMag-mean()         
 $ tBodyAccMag-std()          
 $ tGravityAccMag-mean()      
 $ tGravityAccMag-std()       
 $ tBodyAccJerkMag-mean()     
 $ tBodyAccJerkMag-std()      
 $ tBodyGyroMag-mean()        
 $ tBodyGyroMag-std()         
 $ tBodyGyroJerkMag-mean()    
 $ tBodyGyroJerkMag-std()     
 $ fBodyAcc-mean()-X          
 $ fBodyAcc-mean()-Y          
 $ fBodyAcc-mean()-Z          
 $ fBodyAcc-std()-X           
 $ fBodyAcc-std()-Y           
 $ fBodyAcc-std()-Z           
 $ fBodyAccJerk-mean()-X      
 $ fBodyAccJerk-mean()-Y      
 $ fBodyAccJerk-mean()-Z      
 $ fBodyAccJerk-std()-X       
 $ fBodyAccJerk-std()-Y       
 $ fBodyAccJerk-std()-Z       
 $ fBodyGyro-mean()-X         
 $ fBodyGyro-mean()-Y         
 $ fBodyGyro-mean()-Z         
 $ fBodyGyro-std()-X          
 $ fBodyGyro-std()-Y          
 $ fBodyGyro-std()-Z          
 $ fBodyAccMag-mean()         
 $ fBodyAccMag-std()          
 $ fBodyBodyAccJerkMag-mean() 
 $ fBodyBodyAccJerkMag-std()  
 $ fBodyBodyGyroMag-mean()    
 $ fBodyBodyGyroMag-std()     
 $ fBodyBodyGyroJerkMag-mean()
 $ fBodyBodyGyroJerkMag-std() 
 $ activity  
 $ fBodyBodyGyroJerkMag-std() : num  -0.991 -0.996 -0.995 -0.995 -0.995 ...
 $ activity  


ACTIVITY_LABLES

WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
WALKING
STANDING
SITTING
LAYING
