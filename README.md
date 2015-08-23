This is the course project for the Getting and Cleaning Data Coursera course. The R script, run_analysis.R, does the following:

The Script process the Data in Five Different Steps.

Download the dataset if it does not already exist in the working directory.

1)Load the Data files for both the Test and Train Datasets along with there respective activity and Subject Datasets,then later Merge both the Training and 
  Test Datasets using rbind().

2)Once the Dataset is merged into onde Dataset,Label the columns with proper descriptive names.

3)Extract only those columns with  which does measurements on Mean and Standard Deviation on various Features .

4)Use the Descriptive Activity Names for the various Activity ID (ie replacing 1 with WALKING etc) .

5)Finally calculate the average values for all the columns according to their distinct Subject and Activity,
  so the final Tidy Data set is "averages_Data" and the results are stored into a text file called Tidy_Average_data.txt
  present on the repository as well.


