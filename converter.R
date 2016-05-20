###############################################################################

### Step 1 is to set your working directory

setwd("path to folder") ### specify folder here

### Make sure you have several libraries installed and running

library(memisc)
library(MASS)
library(lattice)
library(foreign)
library(xlsx)

###############################################################################
################################## STATA ######################################
###############################################################################
### Converting .por file to a stata .dta file

data <- as.data.set(spss.portable.file("filename")) #Specify the name of the por (SPSS) file in the working directory
dataset <- as.data.frame(data) #Converts the previous into a dataset which you can work with 
write.dta(dataset, "filename.dta") #Exports the dataset into a stata file which you can name here


###############################################################################
################################## EXCEL ######################################
###############################################################################
### Converting .por file to an MS Excel spreadsheet

data <- as.data.set(spss.portable.file("filename")) #Specify the name of the por (SPSS) file in the working directory
dataset <- as.data.frame(data) #Converts the previous into a dataset which you can work with 
write.xlsx(dataset, "filename.xlsx") #Exports the dataset into an Excel .xlsx file which you can name here


###############################################################################
################################## TEXT  ######################################
###############################################################################
### Converting .por file to tab separated text file or csv

data <- as.data.set(spss.portable.file("filename")) #Specify the name of the por (SPSS) file in the working directory
dataset <- as.data.frame(data) #Converts the previous into a dataset which you can work with 
write.table(dataset, "filename.txt", sep="\t") #Exports the dataset into a tab separated text file which you can name here
write.csv(dataset, file = "filename.csv") #Alternatively, instead of above, you can convert into a comma separated file
