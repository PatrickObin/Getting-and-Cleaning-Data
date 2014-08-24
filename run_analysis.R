

createTidyDataset<-function()
{
        
        ####### 1.Merges the training and the test sets to create one data set.##################
        
        #Read the Test files via read.table function
        
        #Read the x_test.txt file
        xTest<-read.table("./UCI HAR Dataset/test/X_test.txt")
        #Read the subject file for the test data set
        subjectTest<-read.table("./UCI HAR Dataset/test/subject_test.txt")
        #Read the activity of the test data set
        activityTest<-read.table("./UCI HAR Dataset/test/y_test.txt")
        
        #concatenate the test data, the subject and the activity in a single  test data set (by column)
        testData<-cbind(xTest,subjectTest,activityTest)
        
        
        #Read the Train files via read.table function
        
        #Read the x_train.txt file
        xTrain<-read.table("./UCI HAR Dataset/train/X_train.txt")
        #Read the subject file for the train data set
        subjectTrain<-read.table("./UCI HAR Dataset/train/subject_train.txt")
        #Read the activity of the train data set
        activityTrain<-read.table("./UCI HAR Dataset/train/y_train.txt")
        
        #concatenate the train data, the subject and the activity in a single  train data set (by column)
        trainData<-cbind(xTrain,subjectTrain,activityTrain)
        
        #Now, we merge the test data and teh train data in a single dataset HAR (Human Activity Recognition)
        HARData<-rbind(testData,trainData)
        
        #We read the features files to retrieve the column names of the HAR Data set
        features<-read.table("./UCI HAR Dataset/features.txt")
        # put the column names in a Vector
        HARColumnNames<-as.character(features[,2])
        #Remove the NA values from the column names vector
        HARColumnNames<-HARColumnNames[!is.na(HARColumnNames)]
        #Add the subject and activity column
        HARColumnNames<-c(HARColumnNames,"Subject","Activity")
        #Affect the column names to the HAR data set
        colnames(HARData)<-HARColumnNames
        
        #####  2. Extracts only the measurements on the mean and standard deviation for each measurement.###########
        
        #Subset the HAR dta set by getting the columns that contains the words "mean", "std", "Activity" and "Subject"
        #Using the grep command on the column names to do so
        subSetHARData<-HARData[,grep("mean|std|Subject|Activity",colnames(HARData))]
        
        #####  3. Uses descriptive activity names to name the activities in the data set  #####
        
        ##Read the activity labels
        activities<-read.table("./UCI HAR Dataset/activity_labels.txt")
        #convert the column activity from int to factor with the factor labels equals to the activity labels
        subSetHARData$Activity<-factor(subSetHARData$Activity,levels=activities$V1,labels=activities$V2)
        
        
        #####  4. Appropriately labels the data set with descriptive variable names.  #######
        ## set the column names to lower case
        colnames(subSetHARData)<-tolower(colnames(subSetHARData))
        # remove the dash and the parenthesis from the column names
        colnames(subSetHARData)<-gsub("-|\\()","",colnames(subSetHARData))
        #replace the t by time to show the time domain signal variables
        colnames(subSetHARData)<-sub("tbody","timebody",colnames(subSetHARData))
        #replace the f by frequency to show the frequency domain signal variables
        colnames(subSetHARData)<-sub("fbody","frequencybody",colnames(subSetHARData))
        #replace the t by time to show the time domain signal variables
        colnames(subSetHARData)<-sub("tgravity","timegravity",colnames(subSetHARData))
        #replace the acc by acceleration for clarification
        colnames(subSetHARData)<-sub("acc","acceleration",colnames(subSetHARData))
        #replace the std by standard for clarification
        colnames(subSetHARData)<-sub("std","standard",colnames(subSetHARData))
        #replace the mag by magnitude for clarification
        colnames(subSetHARData)<-sub("mag","magnitude",colnames(subSetHARData))
        #replace the gyro by gyroscope for clarification
        colnames(subSetHARData)<-sub("gyro","gyroscope",colnames(subSetHARData))
        
        ### 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. #####
        #load the library reshape2. Please verify that you have installed this package
        library(reshape2)
        #use the melt function from the reshape2 package to group the data by subject and activity
        reshapedDataSet<-melt(subSetHARData,id=c("activity","subject"))
        #load the library plyr. Please verify that you have installed this package
        library(plyr)
        #use the ddply function from the plyr package to calculate the mean for each feature
        tidy <- ddply(reshapedDataSet, c("activity", "subject","variable"), summarise, mean = mean(value))
        #replace the "variable" column name with the "feature" label
        colnames(tidy)[3]<-"feature"
        ## write the dataset on disk in the file myTidyDataset.txt
        write.table(tidy,"./myTidyDataset.txt",row.name=FALSE)
}