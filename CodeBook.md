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

![ScreenShot](https://raw.github.com/86tU/GettingAndCleaningData/Master/Old_vs_New_Names.csv)


