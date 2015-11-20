

CodeBook


Original Dataset: Human Activity Recognition Using Smartphones Dataset
Version 1.0

Transformations:
- Merge of training and test data
- Extract standard deviation and mean variables of all signals
- Aggregate data by subject and activity

Variables

Subject: Factor variable 
Indicates subject from 1 to 30 

Activity: Factor variable
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

Further Variables on signals:


Details:


- accelerometer and gyroscope  raw signals tAcc-XYZ and tGyro-XYZ
- The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) 
- Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ)
- Magnitude of these three-dimensional signals (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
- Fast Fourier Transform (FFT) of these signals: fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
- Prefixes t and f denote time and frequency variables
- STAT denotes std for standard deviation or mean for the average


tBodyAcc.STAT
tBodyAcc.STAT.1            
tBodyAcc.STAT.2  

tGravityAcc.STAT          
tGravityAcc.STAT.1         
tGravityAcc.STAT.2  

tBodyAccJerk.STAT        
tBodyAccJerk.STAT.1        
tBodyAccJerk.STAT.2    

tBodyGyro.STAT            
tBodyGyro.STAT.1           
tBodyGyro.STAT.2    

tBodyGyroJerk.STAT        
tBodyGyroJerk.STAT.1       
tBodyGyroJerk.STAT.2   

tBodyAccMag.STAT          
tGravityAccMag.STAT        
tBodyAccJerkMag.STAT       
tBodyGyroMag.STAT    
tBodyGyroJerkMag.STAT

fBodyAcc.STAT              
fBodyAcc.STAT.1  
fBodyAcc.STAT.2   

fBodyAccJerk.STAT          
fBodyAccJerk.STAT.1       
fBodyAccJerk.STAT.2   

fBodyGyro.STAT             
fBodyGyro.STAT.1          
fBodyGyro.STAT.2    

fBodyAccMag.STAT           
fBodyBodyAccJerkMag.STAT 
