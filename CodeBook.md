#Code book
##Data Dictionnary of the produced file myTidyDataset

**activity**: it is the type of measured activity  
1 WALKING  
2 WALKING_UPSTAIRS  
3 WALKING_DOWNSTAIRS  
4 SITTING  
5 STANDING  
6 LAYING  

**subject**: it is the identifier of the person that performed the measurement with the Samsung Galaxy S smartphone.  
		The experiments have been carried out with a group of 30 volunteers, so the numbers are in the range 1:30  
		
**feature**: it represents the type of measurement performed.  
 feature  
	timebodyaccelerationmeanx  
	timebodyaccelerationmeany  
	timebodyaccelerationmeanz   
	timebodyaccelerationstandardx   
	timebodyaccelerationstandardy   
	timebodyaccelerationstandardz   
	timegravityaccelerationmeanx  
	timegravityaccelerationmeany  
	timegravityaccelerationmeanz  
	timegravityaccelerationstandardx  
	timegravityaccelerationstandardy  
	timegravityaccelerationstandardz  
	timebodyaccelerationjerkmeanx  
	timebodyaccelerationjerkmeany  
	timebodyaccelerationjerkmeanz  
	timebodyaccelerationjerkstandardx  
	timebodyaccelerationjerkstandardy  
	timebodyaccelerationjerkstandardz  
	timebodygyroscopemeanx  
	timebodygyroscopemeany  
	timebodygyroscopemeanz  
	timebodygyroscopestandardx  
	timebodygyroscopestandardy  
	timebodygyroscopestandardz  
	timebodygyroscopejerkmeanx  
	timebodygyroscopejerkmeany  
	timebodygyroscopejerkmeanz  
	timebodygyroscopejerkstandardx  
	timebodygyroscopejerkstandardy  
	timebodygyroscopejerkstandardz  
	timebodyaccelerationmagnitudemean  
	timebodyaccelerationmagnitudestandard  
	timegravityaccelerationmagnitudemean   
	timegravityaccelerationmagnitudestandard  
	timebodyaccelerationjerkmagnitudemean  
	timebodyaccelerationjerkmagnitudestandard  
	timebodygyroscopemagnitudemean  
	timebodygyroscopemagnitudestandard  
	timebodygyroscopejerkmagnitudemean  
	timebodygyroscopejerkmagnitudestandard  
	frequencybodyaccelerationmeanx  
	frequencybodyaccelerationmeany  
	frequencybodyaccelerationmeanz  
	frequencybodyaccelerationstandardx  
	frequencybodyaccelerationstandardy  
	frequencybodyaccelerationstandardz  
	frequencybodyaccelerationmeanfreqx  
	frequencybodyaccelerationmeanfreqy  
	frequencybodyaccelerationmeanfreqz  
	frequencybodyaccelerationjerkmeanx  
	frequencybodyaccelerationjerkmeany  
	frequencybodyaccelerationjerkmeanz  
	frequencybodyaccelerationjerkstandardx  
	frequencybodyaccelerationjerkstandardy  
	frequencybodyaccelerationjerkstandardz  
	frequencybodyaccelerationjerkmeanfreqx  
	frequencybodyaccelerationjerkmeanfreqy  
	frequencybodyaccelerationjerkmeanfreqz  
	frequencybodygyroscopemeanx  
	frequencybodygyroscopemeany  
	frequencybodygyroscopemeanz  
	frequencybodygyroscopestandardx  
	frequencybodygyroscopestandardy  
	frequencybodygyroscopestandardz  
	frequencybodygyroscopemeanfreqx  
	frequencybodygyroscopemeanfreqy  
	frequencybodygyroscopemeanfreqz  
	frequencybodyaccelerationmagnitudemean  
	frequencybodyaccelerationmagnitudestandard  
	frequencybodyaccelerationmagnitudemeanfreq  
	frequencybodybodyaccelerationjerkmagnitudemean  
	frequencybodybodyaccelerationjerkmagnitudestandard  
	frequencybodybodyaccelerationjerkmagnitudemeanfreq  
	frequencybodybodygyroscopemagnitudemean  
	frequencybodybodygyroscopemagnitudestandard  
	frequencybodybodygyroscopemagnitudemeanfreq  
	frequencybodybodygyroscopejerkmagnitudemean  
	frequencybodybodygyroscopejerkmagnitudestandard  
	frequencybodybodygyroscopejerkmagnitudemeanfreq  

**Mean**: It is the mean value associated to a feature of given subject and activity.  


##Way to obtain the tidy data set

The data source comes from the following link:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The following operations have been performed on the data source to provide this data set:  
	1. The training and the test sets have been merged in one data set.  
	2. We extracted only the measurements on the mean and standard deviation for each measurement.  
	3. We use descriptive activity names to name the activities in the data set instead of having id numbers.  
	4. We renamed appropriately labels of the data set with descriptive variable names.  
	5. Then, from the previous data set, we create a tidy data set with the average of each variable for each activity and each subject.   



