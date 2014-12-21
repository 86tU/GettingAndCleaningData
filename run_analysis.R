#Download the zip file:
url<-"http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
location<-"F://Getting and Cleaning Data - Course Assignment"
download.file(url, location)

#To view a list of files in the folder:
unzip(zipfile="Dataset.zip", list=TRUE)

#To unzip the folder and place the new folder in the working directory:
unzip(zipfile="Dataset.zip", exdir="F://Getting and Cleaning Data - Course Assignment")

#View a list of files in the new unzipped folder, remove the uncessary folders, and view the directory again to check:
list.files("F://Getting and Cleaning Data - Course Assignment//UCI HAR Dataset", recursive=TRUE)
unlink("F://Getting and Cleaning Data - Course Assignment//UCI HAR Dataset//test//Inertial Signals", recursive=TRUE)
unlink("F://Getting and Cleaning Data - Course Assignment//UCI HAR Dataset//train//Inertial Signals", recursive=TRUE)
list.files("F://Getting and Cleaning Data - Course Assignment//UCI HAR Dataset", recursive=TRUE)

#Assign the relevant tables:
#Subjects:
SubjectTrain<-read.table("F://Getting and Cleaning Data - Course Assignment//UCI HAR Dataset//train//subject_train.txt",header=FALSE)
SubjectTest<-read.table("F://Getting and Cleaning Data - Course Assignment//UCI HAR Dataset//test//subject_test.txt",header=FALSE)
#Features:
featurenames<-read.table("F://Getting and Cleaning Data - Course Assignment//UCI HAR Dataset//features.txt",header=FALSE)
xTrain<-read.table("F://Getting and Cleaning Data - Course Assignment//UCI HAR Dataset//train//X_train.txt",header=FALSE)
xTest<-read.table("F://Getting and Cleaning Data - Course Assignment//UCI HAR Dataset//test//X_test.txt",header=FALSE)
#Activities:
activitynames<-read.table("F://Getting and Cleaning Data - Course Assignment//UCI HAR Dataset//activity_labels.txt",header=FALSE)
yTrain<-read.table("F://Getting and Cleaning Data - Course Assignment//UCI HAR Dataset//train//y_train.txt",header=FALSE)
yTest<-read.table("F://Getting and Cleaning Data - Course Assignment//UCI HAR Dataset//test//y_test.txt",header=FALSE)

#Merge the seperate tables into one:
Subject<-rbind(SubjectTrain, SubjectTest)
  names(Subject)<-"Subject"
Feature<-rbind(xTrain, xTest)
  names(Feature)<-featurenames$V2
Activity<-rbind(yTrain, yTest)
  names(Activity)<-"Activity"
table<-cbind(Subject, Feature, Activity)

#Subset mean and standard deviation features:
subsettedfeaturenames<-featurenames$V2[grep("mean|std", featurenames$V2)]
subsettedfeaturenames2<-as.character(subsettedfeaturenames)
table2<-table[,c("Subject", subsettedfeaturenames2, "Activity")]

#Use the descriptive activity names to name the activities in the dataset:
#View the names of the activities and their corresponding integers:
activitynames
#Convert these Activity column integers into descriptive names:
table2["Activity"]<-gsub("1","Walking",table2$Activity)
table2["Activity"]<-gsub("2","Walking Upstairs",table2$Activity)
table2["Activity"]<-gsub("3","Walking Downstairs",table2$Activity)
table2["Activity"]<-gsub("4","Sitting",table2$Activity)
table2["Activity"]<-gsub("5","Sleeping",table2$Activity)
table2["Activity"]<-gsub("6","Laying",table2$Activity)

#Appropriately lavel the dataset with descriptive variable names:
names(table2)
names(table2)<-gsub("^t", "Time", names(table2))
names(table2)<-gsub("^f", "Frequency", names(table2))
names(table2)<-gsub("Acc", "Accelerometer", names(table2))
names(table2)<-gsub("Gyro", "Gyroscope", names(table2))
names(table2)<-gsub("Mag", "Magnitude", names(table2))

#Reorder the table column for better organization:
Subject<-table2[,1]
Activity<-table2[,81]
Other<-table2[,2:80]
CompleteTableA<-cbind(Subject, Activity, Other)

#Create a second, indepedent tidy dataset with the average of each variable for each activity and each subject:
table3<-aggregate(.~Subject + Activity, CompleteTableA,FUN=mean)
table4<-table3[order(table3$Subject,table3$Activity),]
write.table(table4, file="TidyData.txt", row.name=FALSE)

#Acquire the original and new variable names for the Gsubjectithub Code Book and create a table:
  #Rearrange the old dataset by moving Activity to the second column:
  table2<-table[,c("Subject", subsettedfeaturenames2, "Activity")]
  oldnames<-table2
  Subject<-oldnames[,1]
  Activity<-oldnames[,81]
  Other<-oldnames[,2:80]
  oldnamescomplete<-cbind(Subject, Activity, Other)
  #Extract the old names:
  oldnamesadjusted<-names(oldnamescomplete)
    #Rerun lines 57-68 and then acquire the new names again:
    newnames<-names(CompleteTableA)
    oldvsnew<-cbind(oldnames, newnames)
#Create a table of the old names vs the new:
namestable<-cbind(oldnamesadjusted, newnames)
namestable[1:2,1]<-NA
colnames(namestable)<-c("Old Variable Names", "New Variable Names")
CompleteNamesTable<-namestable
write.csv(CompleteNamesTable, file="Old_vs_New_Names.csv", sep="\t")



