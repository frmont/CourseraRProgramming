data <- read.csv("hw1_data.csv") #At this point, the data is a function
data.matrix(data) #Data is now a matrix
dim(data) #Dimension of the data
data[1:2, ] #Subset of data for rows 1 and 3. Only works with a matrix (not function)

data[152:153, ] #Extract the last 2 rows of the data frame.

data[47, "Ozone"] #What is the value of Ozone in the 47th row?

#How many missing values are in the Ozone column of this data frame?
good <- complete.cases(data[,1]) #Select non-NA data in column 1 (Ozone)
ozonecomplete <- data[good, ] #subset the data
dim(ozonecomplete) #Print dimension of new dataframe ozoecomplete w/out missing values, gives out 116. So 153-116 = 37

#What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
mean(ozonecomplete[ ,1])


#Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?

ozonesub <- subset(ozonecomplete, Ozone > 31, select = c(Ozone, Temp, Solar.R)) #Ozone subset, use the subset with non missing values
doublesub <- subset(ozonesub, Temp >90) #Temperature + Ozone subset
mean(doublesub[ ,3])

#What is the mean of "Temp" when "Month" is equal to 6?
june <- subset(data, Month == 6)
mean(june[,4])

#What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
may <- subset(data, Month == 5)
max(may[,1], na.rm = TRUE) #strip NA before calculation is done
