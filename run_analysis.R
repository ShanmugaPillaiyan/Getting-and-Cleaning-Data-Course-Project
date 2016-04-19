
# Load packages dplyr and reshape2
library(dplyr)
library(reshape2)


codebook <- function(...){
  cat(..., "   \n",file='./CodeBook.md',append=TRUE, sep="")
}


codebook2 <- function(x){
  cat("| Field | Data type |    \n",file='./CodeBook.md',append=TRUE, sep="")
  cat("|-------|-----------|    \n",file='./CodeBook.md',append=TRUE, sep="")
  
  
  
  
    for(i in 1:ncol(x)){
    
    columnname <- colnames(x)
    datatype <- class(x[1,i])
    
    cat("|",as.character(columnname[i]),"|",as.character(datatype), "|   \n",file='./CodeBook.md',append=TRUE, sep="")
    
    
  }
  cat("", "\n",file='./CodeBook.md',append=TRUE, sep="")
}


##Initiate CodeBook.md
cat("Code Book \n",file='./CodeBook.md')

codebook("generated on ",as.character(Sys.time())," during execution of `run_analysis.R`")
codebook("") 

# read in al necessary files
#Training data
subject_train   <- read.table("train/subject_train.txt")
X_train         <- read.table("train/X_train.txt")
Y_train         <- read.table("train/y_train.txt")

#Test data
subject_test    <- read.table("test/subject_test.txt")
X_test          <- read.table("test/X_test.txt")
Y_test          <- read.table("test/y_test.txt")

##read features & activity labels
features        <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")


##Update files downloaded to CodeBook.md
codebook("##Data extracted from following files")
codebook("train/subject_train.txt     -        Total number of records: ", as.character(nrow(subject_train)))
codebook("train/X_train.txt           -        Total number of records: ", as.character(nrow(X_train)))
codebook("train/y_train.txt           -        Total number of records: ", as.character(nrow(Y_train)))
codebook("test/subject_test.txt       -        Total number of records: ", as.character(nrow(subject_test)))
codebook("test/X_test.txt             -        Total number of records: ", as.character(nrow(X_test)))
codebook("test/y_test.txt             -        Total number of records: ", as.character(nrow(Y_test)))
codebook("features.txt                -        Total number of records: ", as.character(nrow(features)))
codebook("activity_labels.txt         -        Total number of records: ", as.character(nrow(activity_labels)))


#Name the rows for X_train and X_test
colnames(X_train)       <- features$V2
colnames(X_test)       <- features$V2

##Features added to X_train and X_test data
codebook("##Features added to X_train and X_test data")
codebook("Activity - Characters")
codebook("Subject - Characters")
codebook("   ")


##Append subject information to train & test data
X_train$Subject<-subject_train$V1
X_test$Subject<-subject_test$V1

##Append activity labes to each row of X_train & X_test
X_train$Activity <- activity_labels$V2[Y_train$V1]
X_test$Activity <- activity_labels$V2[Y_test$V1]


# Merge the training and the test sets to create one data set.
data  <- rbind(X_train, X_test)

# Extract only the measurements on the mean and standard deviation for each measurement. 
# - get columns with names containing "mean()" or "std()"
cols <-grep("((mean|std)\\(\\))|Subject|Activity", colnames(data))
tidyData <- data[cols]
##write.table(tidyData, file="tidydata.txt", row.name=FALSE) 

##Update tidyData to codebook
codebook("##Features list extracted to tidy dataset")
codebook2(tidyData)



# Create a second, independent tidy data set with the average of each variable for each activity and each subject.
meltData <- melt(tidyData,id = c("Subject","Activity"))
avgData <- dcast(meltData, Subject + Activity ~ variable, mean)
write.table(avgData, file="tidydata.txt", row.name=FALSE) 

codebook("##Transformations done to the raw to derive the tidy data")
codebook("1. The melt function was applied to the merged data of X_train and X_test with id set as Subject and Activity")
codebook("2. The dcast function applied to the melt data to calculate the mean for all variables")
codebook("3. The output is stored in tidydata.txt in the working directory")
codebook("    ")

##Update to codebook
codebook("##Averaged of each variable for each activity and each subject")
codebook2(avgData)

