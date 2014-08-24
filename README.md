run_analyis.R script description
=========================

The script contains a single function called **createTidyDataset** that has not any argument.
###Prequisite to launch the script:
  1. The packages reshape2 and plyr shall be installed before running the script
  2. The data used by the script (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) shall be downloaded and unzipped in the working directory. 

###Way to launch the script
  1. Download the run_analysis.R file in your working directory
  2. type in R **source("run_analyis.R")**
  3. call the function by typing **createTidyDataset()**

###Result of the script
The script produces a text file called **"myTidyDataset.txt"*** in the working directory
Have a look at the CodeBook.md file that describes the variables, the data, and any transformations or work that have been performed to clean up the data.
