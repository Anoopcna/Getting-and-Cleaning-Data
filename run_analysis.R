#################################STEP1(Merges the training and the test sets to create one data set.)#####################################
#rm(list=ls())
#------------------------------------------------Train---------------------------------------------------------------

#File Path  for training data set ,Mention in a variable
Train_path="E:\\Anoop\\Books\\Data Science\\CourseTutorials\\Getting and Cleaning Data\\Courseproject\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\X_train.txt"

#Reading the text file using the above path into a data frame called DATA
Data_Train=read.table(Train_path,header=FALSE)


#To read the activity data into R
act_Train=read.table("E:\\Anoop\\Books\\Data Science\\CourseTutorials\\Getting and Cleaning Data\\Courseproject\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\y_train.txt",header=FALSE)

names(act_Train)="Activity" #rename column

Data_Train=cbind(act_Train,Data_Train) #combine two data sets



#to read the Training subject data into R

Sub_Train=read.table("E:\\Anoop\\Books\\Data Science\\CourseTutorials\\Getting and Cleaning Data\\Courseproject\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\subject_train.txt",header=FALSE)

names(Sub_Train)="Subject"

Data_Train=cbind(Sub_Train,Data_Train)



#-----------------------------------------------------Test-------------------------------------------------------------------------------------------

#File Path  for training data set ,Mention in a variable

Test_path="E:\\Anoop\\Books\\Data Science\\CourseTutorials\\Getting and Cleaning Data\\Courseproject\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\X_test.txt"

#Reading the text file using the above path into a data frame called DATA
Data_test=read.table(Test_path,header=FALSE)



#To read the activity data into R

act_Test=read.table("E:\\Anoop\\Books\\Data Science\\CourseTutorials\\Getting and Cleaning Data\\Courseproject\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\y_test.txt",header=FALSE)

names(act_Test)="Activity"


Data_test=cbind(act_Test,Data_test)



#to read the Test subject data into R

Sub_Test=read.table("E:\\Anoop\\Books\\Data Science\\CourseTutorials\\Getting and Cleaning Data\\Courseproject\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\subject_test.txt",header=FALSE)

names(Sub_Test)="Subject"

Data_test=cbind(Sub_Test,Data_test)



#Merge the Test Data set (Data_test) and  Training Dataset(Data) into newdataset called MergedData

MergedData=rbind(Data_Train,Data_test)




############################STEP 4 (Appropriately labels the data set with descriptive variable names.)#################################

#Loading features.txt into r

feature=read.table("E:\\Anoop\\Books\\Data Science\\CourseTutorials\\Getting and Cleaning Data\\Courseproject\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\features.txt",header=FALSE)

names(feature)=c("ColID","ColName")


feature$ColName=gsub('[()]', '', feature$ColName)
feature$ColName=gsub('[-]', '_', feature$ColName)
feature$ColName=gsub('[,]', '_', feature$ColName)


#update the colnames to the MergedData dataset

i=3
j=1

while (i <=563 && j<=561 ) 
{
colnames(MergedData)[i]=as.character(feature$ColName[j])

i=i+1
j=j+1
}




###############################STEP 2 (Extracts only the measurements on the mean and standard deviation for each measurement)########################



std_mean=grep("(std|mean)",colnames(MergedData))


Data=cbind(MergedData[,"Subject"],MergedData[,"Activity"],MergedData[,as.vector(std_mean)])

colnames(Data)[1:2]=c("Subject","Activity")


#################################STEP 3 (Uses descriptive activity names to name the activities in the data set)######################################


Data[Data$Activity==1,"Activity"]="WALKING"
Data[Data$Activity==2,"Activity"]="WALKING_UPSTAIRS"
Data[Data$Activity==3,"Activity"]="WALKING_DOWNSTAIRS"
Data[Data$Activity==4,"Activity"]="SITTING"
Data[Data$Activity==5,"Activity"]="STANDING"
Data[Data$Activity==6,"Activity"]="LAYING"



####################################STEP 5 (From the data set in step 4, creates a second, 
#############independent tidy data set with the average of each variable for each activity and each subject.)########################

#------Converting both into factor variables--------

Data$Activity=as.factor(Data$Activity)
Data$Subject=as.factor(Data$Subject)


#----------------Final Averaged_Tidy Data---------------

library(plyr)


averages_Data <- ddply(Data, .(Subject, Activity), function(x) colMeans(x[, 3:81]))

#----------Write_data into text file------------------

write.table(averages_Data, "Tidy_Average_data.txt", row.name=FALSE)




