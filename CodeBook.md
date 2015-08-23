                                       DATA Dictionary for the Tidy_Average_data


1)Subject-The Experiment is carried out on 30 different persons ,Hence the number from 1-30 represent 
          30 different Persons or experimental Object.

2)Activity-Activity performed when the measurements where calculated,  below are the type of activities.

          1 WALKING 

          2 WALKING_UPSTAIRS

          3 WALKING_DOWNSTAIRS

          4 SITTING
5 STANDING
          
6 LAYING


3) Measurements:-


  tBodyAcc_mean_X              /tBodyAcc_mean_Y               /tBodyAcc_mean_Z               /tBodyAcc_std_X                /tBodyAcc_std_Y               
  tBodyAcc_std_Z               /tGravityAcc_mean_X           /tGravityAcc_mean_Y            /tGravityAcc_mean_Z            /tGravityAcc_std_X            
 tGravityAcc_std_Y             /tGravityAcc_std_Z             /tBodyAccJerk_mean_X           /tBodyAccJerk_mean_Y           /tBodyAccJerk_mean_Z          
 tBodyAccJerk_std_X            /tBodyAccJerk_std_Y            /tBodyAccJerk_std_Z            /tBodyGyro_mean_X              /tBodyGyro_mean_Y             
 tBodyGyro_mean_Z              /tBodyGyro_std_X               /tBodyGyro_std_Y               /tBodyGyro_std_Z               /tBodyGyroJerk_mean_X         
 tBodyGyroJerk_mean_Y          /tBodyGyroJerk_mean_Z          /tBodyGyroJerk_std_X           /tBodyGyroJerk_std_Y           /tBodyGyroJerk_std_Z          
 tBodyAccMag_mean              /tBodyAccMag_std               /tGravityAccMag_mean           /tGravityAccMag_std            /tBodyAccJerkMag_mean         
 tBodyAccJerkMag_std           /tBodyGyroMag_mean             /tBodyGyroMag_std              /tBodyGyroJerkMag_mean         /tBodyGyroJerkMag_std         
 fBodyAcc_mean_X               /fBodyAcc_mean_Y               /fBodyAcc_mean_Z               /fBodyAcc_std_X                /fBodyAcc_std_Y               
 fBodyAcc_std_Z                /fBodyAcc_meanFreq_X           /fBodyAcc_meanFreq_Y           /fBodyAcc_meanFreq_Z           /fBodyAccJerk_mean_X          
 fBodyAccJerk_mean_Y           /fBodyAccJerk_mean_Z           /fBodyAccJerk_std_X            /fBodyAccJerk_std_Y            /fBodyAccJerk_std_Z           
 fBodyAccJerk_meanFreq_X       /fBodyAccJerk_meanFreq_Y       /fBodyAccJerk_meanFreq_Z       /fBodyGyro_mean_X              /fBodyGyro_mean_Y             
 fBodyGyro_mean_Z              /fBodyGyro_std_X               /fBodyGyro_std_Y               /fBodyGyro_std_Z               /fBodyGyro_meanFreq_X         
 fBodyGyro_meanFreq_Y          /fBodyGyro_meanFreq_Z          /fBodyAccMag_mean              /fBodyAccMag_std               /fBodyAccMag_meanFreq         
 fBodyBodyAccJerkMag_mean      /fBodyBodyAccJerkMag_std       /fBodyBodyAccJerkMag_meanFreq  /fBodyBodyGyroMag_mean         /fBodyBodyGyroMag_std         
 fBodyBodyGyroMag_meanFreq     /fBodyBodyGyroJerkMag_mean     /fBodyBodyGyroJerkMag_std      /fBodyBodyGyroJerkMag_meanFreq


4) Explanation for the above different signals.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals as seen in the list of measurements in the point (3): 

mean(): Mean value
std(): Standard deviation


5)Files used for the Process present inside the UCI HAR Dataset folder in the repository.



- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


6) The Final Averaged dataset is in the averages_Data which is then takien into a file named Tidy_Average_data.txt.

   The variables used in Script are as follows.

   Data_Train-Training data Set.
   act_Train-Training activity Data Set.
   Sub_Train-Training Subject Data set.

   Data_test-Training data Set.
   act_Test-Training activity Data Set.
   Sub_Test-Training Subject Data set.

  MergedData-Merged Data set for Training and Test Data set.

  feature-Stores the Dataset with the corresponding Features values.

  Data-Data set with only the mean and  the standard deviation measures for the corresponceing features.

 averages_Data-The Final averaged Tidy Data set which calculates the mean for  corresponding subject and Activity across all the Measurements.





