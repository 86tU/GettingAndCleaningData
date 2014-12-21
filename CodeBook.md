##Code Book for the Getting and Cleaning Data Course Project

This code book describes data required to complete the Getting and Cleaning Data Course Project.
The instructions for this assignment can be found in the README located in the GettingAndCleaningData repository.



==========================

###Data Source

Many of the descriptions below can be found in the README included in the original dataset:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The full-length description for this dataset can be found at the following url which is hosted by the 
UCI Machine Learning Repository:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

===========================

###Variables

Experiments involving 30 volunteers within the ages of 19-48 were carried out that examined the effects of six activities
(Walking, walking upstairs, walking downstairs, sitting, standing, and laying down) on the accelerometers and gyroscopes
embedded in Samsung Galaxy S II smartphones worn by the volunteers.  These measurements include 3-axial linear 
acceleration and 3-axial angular velocity at a constant rate of 5-Hz.  

Each record includes the following:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

==========================

###Table Formation and Variable Transformations

To form a tidy table, the following conditions must be met:
1.	Each variable should have one column
2.	Each observation should have its own row
3.	There should be one table for each kind of variable
4.	Multiple tables should have a column that links them

To satisfy these conditions:
subject_train.txt and subject_test.txt were rbinded;
y_train.txt and y_test were rbinded;
X_train.txt and X_test.txt were rbinded; 
and finally, these three newly created columns were cbinded to form the new table.

AFter subsetting the requested mean and standard deviation only rows,the items under the Activity column 
were then recoded from integers to characters for easier understanding.  This was followed up with the column names
being cleaned by renaming them from their original abbreviated state to having more complete names.  The original 
variable names and the newly created names are shown below:


|	Old Variable Names	            |	New Variable Names	                                    |
|	--------------------------------|---------------------------------------------------------|
|	NA	                            |	Subject	                                                |
|	NA	                            |	Activity	                                              |
|	tBodyAcc-mean()-X	              |	TimeBodyAccelerometer-mean()-X	                        |
|	tBodyAcc-mean()-Y	              |	TimeBodyAccelerometer-mean()-Y	                        |
|	tBodyAcc-mean()-Z	              |	TimeBodyAccelerometer-mean()-Z	                        |
|	tBodyAcc-std()-X	              |	TimeBodyAccelerometer-std()-X	                          |
|	tBodyAcc-std()-Y              	|	TimeBodyAccelerometer-std()-Y	                          |
|	tBodyAcc-std()-Z	              |	TimeBodyAccelerometer-std()-Z	                          |
|	tGravityAcc-mean()-X	          |	TimeGravityAccelerometer-mean()-X	                      |
|	tGravityAcc-mean()-Y	          |	TimeGravityAccelerometer-mean()-Y	                      |
|	tGravityAcc-mean()-Z          	|	TimeGravityAccelerometer-mean()-Z	                      |
|	tGravityAcc-std()-X	            |	TimeGravityAccelerometer-std()-X	                      |
|	tGravityAcc-std()-Y	            |	TimeGravityAccelerometer-std()-Y                       	|
|	tGravityAcc-std()-Z	            |	TimeGravityAccelerometer-std()-Z	                      |
|	tBodyAccJerk-mean()-X	          |	TimeBodyAccelerometerJerk-mean()-X                    	|
|	tBodyAccJerk-mean()-Y	          |	TimeBodyAccelerometerJerk-mean()-Y	                    |
|	tBodyAccJerk-mean()-Z	          |	TimeBodyAccelerometerJerk-mean()-Z                      |
|	tBodyAccJerk-std()-X           	|	TimeBodyAccelerometerJerk-std()-X	                      |
|	tBodyAccJerk-std()-Y          	|	TimeBodyAccelerometerJerk-std()-Y	                      |
|	tBodyAccJerk-std()-Z           	|	TimeBodyAccelerometerJerk-std()-Z	                      |
|	tBodyGyro-mean()-X	            |	TimeBodyGyroscope-mean()-X	                            |
|	tBodyGyro-mean()-Y	            |	TimeBodyGyroscope-mean()-Y                            	|
|	tBodyGyro-mean()-Z              |	TimeBodyGyroscope-mean()-Z                            	|
|	tBodyGyro-std()-X	              |	TimeBodyGyroscope-std()-X	                              |
|	tBodyGyro-std()-Y	              |	TimeBodyGyroscope-std()-Y	                              |
|	tBodyGyro-std()-Z	              |	TimeBodyGyroscope-std()-Z	                              |
|	tBodyGyroJerk-mean()-X	        |	TimeBodyGyroscopeJerk-mean()-X	                        |
|	tBodyGyroJerk-mean()-Y	        |	TimeBodyGyroscopeJerk-mean()-Y	                        |
|	tBodyGyroJerk-mean()-Z        	|	TimeBodyGyroscopeJerk-mean()-Z	                        |
|	tBodyGyroJerk-std()-X	          |	TimeBodyGyroscopeJerk-std()-X	                          |
|	tBodyGyroJerk-std()-Y	          |	TimeBodyGyroscopeJerk-std()-Y	                          |
|	tBodyGyroJerk-std()-Z	          |	TimeBodyGyroscopeJerk-std()-Z	                          |
|	tBodyAccMag-mean()	            |	TimeBodyAccelerometerMagnitude-mean()	                  |
|	tBodyAccMag-std()	              |	TimeBodyAccelerometerMagnitude-std()	                  |
|	tGravityAccMag-mean()	          |	TimeGravityAccelerometerMagnitude-mean()	              |
|	tGravityAccMag-std()	          |	TimeGravityAccelerometerMagnitude-std()	                |
|	tBodyAccJerkMag-mean()	        |	TimeBodyAccelerometerJerkMagnitude-mean()	              |
|	tBodyAccJerkMag-std()	          |	TimeBodyAccelerometerJerkMagnitude-std()              	|
|	tBodyGyroMag-mean()	            |	TimeBodyGyroscopeMagnitude-mean()	                      |
|	tBodyGyroMag-std()	            |	TimeBodyGyroscopeMagnitude-std()	                      |
|	tBodyGyroJerkMag-mean()       	|	TimeBodyGyroscopeJerkMagnitude-mean()                  	|
|	tBodyGyroJerkMag-std()	        |	TimeBodyGyroscopeJerkMagnitude-std()	                  |
|	fBodyAcc-mean()-X	              |	FrequencyBodyAccelerometer-mean()-X	                    |
|	fBodyAcc-mean()-Y	              |	FrequencyBodyAccelerometer-mean()-Y                    	|
|	fBodyAcc-mean()-Z	              |	FrequencyBodyAccelerometer-mean()-Z                   	|
|	fBodyAcc-std()-X                |	FrequencyBodyAccelerometer-std()-X                     	|
|	fBodyAcc-std()-Y	              |	FrequencyBodyAccelerometer-std()-Y                     	|
|	fBodyAcc-std()-Z	              |	FrequencyBodyAccelerometer-std()-Z	                    |
|	fBodyAcc-meanFreq()-X	          |	FrequencyBodyAccelerometer-meanFreq()-X	                |
|	fBodyAcc-meanFreq()-Y	          |	FrequencyBodyAccelerometer-meanFreq()-Y	                |
|	fBodyAcc-meanFreq()-Z	          |	FrequencyBodyAccelerometer-meanFreq()-Z	                |
|	fBodyAccJerk-mean()-X          	|	FrequencyBodyAccelerometerJerk-mean()-X	                |
|	fBodyAccJerk-mean()-Y	          |	FrequencyBodyAccelerometerJerk-mean()-Y               	|
|	fBodyAccJerk-mean()-Z          	|	FrequencyBodyAccelerometerJerk-mean()-Z	                |
|	fBodyAccJerk-std()-X	          |	FrequencyBodyAccelerometerJerk-std()-X	                |
|	fBodyAccJerk-std()-Y	          |	FrequencyBodyAccelerometerJerk-std()-Y	                |
|	fBodyAccJerk-std()-Z	          |	FrequencyBodyAccelerometerJerk-std()-Z	                |
|	fBodyAccJerk-meanFreq()-X	      |	FrequencyBodyAccelerometerJerk-meanFreq()-X	            |
|	fBodyAccJerk-meanFreq()-Y	      |	FrequencyBodyAccelerometerJerk-meanFreq()-Y	            |
|	fBodyAccJerk-meanFreq()-Z	      |	FrequencyBodyAccelerometerJerk-meanFreq()-Z	            |
|	fBodyGyro-mean()-X             	|	FrequencyBodyGyroscope-mean()-X	                        |
|	fBodyGyro-mean()-Y	            |	FrequencyBodyGyroscope-mean()-Y	                        |
|	fBodyGyro-mean()-Z             	|	FrequencyBodyGyroscope-mean()-Z	                        |
|	fBodyGyro-std()-X	              |	FrequencyBodyGyroscope-std()-X                         	|
|	fBodyGyro-std()-Y	              |	FrequencyBodyGyroscope-std()-Y                         	|
|	fBodyGyro-std()-Z	              |	FrequencyBodyGyroscope-std()-Z                        	|
|	fBodyGyro-meanFreq()-X	        |	FrequencyBodyGyroscope-meanFreq()-X	                    |
|	fBodyGyro-meanFreq()-Y        	|	FrequencyBodyGyroscope-meanFreq()-Y	                    |
|	fBodyGyro-meanFreq()-Z	        |	FrequencyBodyGyroscope-meanFreq()-Z	                    |
|	fBodyAccMag-mean()	            |	FrequencyBodyAccelerometerMagnitude-mean()             	|
|	fBodyAccMag-std()	              |	FrequencyBodyAccelerometerMagnitude-std()	              |
|	fBodyAccMag-meanFreq()	        |	FrequencyBodyAccelerometerMagnitude-meanFreq()        	|
|	fBodyBodyAccJerkMag-mean()    	|	FrequencyBodyBodyAccelerometerJerkMagnitude-mean()	    |
|	fBodyBodyAccJerkMag-std()	      |	FrequencyBodyBodyAccelerometerJerkMagnitude-std()	      |
|	fBodyBodyAccJerkMag-meanFreq()	|	FrequencyBodyBodyAccelerometerJerkMagnitude-meanFreq()	|
|	fBodyBodyGyroMag-mean()	        |	FrequencyBodyBodyGyroscopeMagnitude-mean()	            |
|	fBodyBodyGyroMag-std()	        |	FrequencyBodyBodyGyroscopeMagnitude-std()	              |
|	fBodyBodyGyroMag-meanFreq()   	|	FrequencyBodyBodyGyroscopeMagnitude-meanFreq()	        |
|	fBodyBodyGyroJerkMag-mean()	    |	FrequencyBodyBodyGyroscopeJerkMagnitude-mean()	        |
|	fBodyBodyGyroJerkMag-std()	    |	FrequencyBodyBodyGyroscopeJerkMagnitude-std()	          |
|	fBodyBodyGyroJerkMag-meanFreq()	|	FrequencyBodyBodyGyroscopeJerkMagnitude-meanFreq()	    |
