#Getting and Cleaning Data Assignment

##Clean up script run_analysis.R
The script run_analysis.R is used to generate a clean set of data.The scrip does the following:  
1. First row   
2. Merges the training and the test sets to create one data set.  
3. Extracts only the measurements on the mean and standard deviation for each measurement.  
4. Associates descriptive activity names to name the activities in the data set.  
5. Appropriately labels the data set with descriptive activity names.  
6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.  

##Data files
The folloing data  files are required in the working directory when executing the script:
train/subject_train.txt   
train/X_train.txt   
train/y_train.txt   
test/subject_test.txt   
test/X_test.txt   
test/y_test.txt   
features.txt   
activity_labels.txt   


##Script Functionality
The run_analysis.R script merges data from several data files and produces a tidy data set which may be used for further analysis.   

1. First all required data files are read   
2. Secondly appropriate column names are set for X_train and X_test data set   
3. The Subject and Activity columns are appended to X_train and X_test data set   
4. The X_train and X_test data sets are merged together   
5. Only the mean and standard diviation measurements are extracted into the tidy data set   
6. The tidy data set is saved in the tidydata.txt file   
7. Finally the average of each variable for each activity and each subject is calculated and saved in averages.txt   
8. The script also generates a cookbook (CookBook.md)    

##Executing
###Packages Required
* reshape2
* dlplyr

###Working Directors
The working director must be set to the directory containing the data files described above

###Executing run_analysis.R
The script can either be executed in at the command line or from RStudio

###Output files
The script generates the following scripts in the working directory:  
1. tidydata.txt    
2. averages.txt   
3. CookBook.md   


| No  | Item  | Description |
|-----|-------|-------------|
| 1   | shan  | the man !!  |
| 2   | Belinda|  Love      |
