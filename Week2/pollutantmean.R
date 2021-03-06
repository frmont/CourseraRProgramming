## create a function that will calculate the mean of one of two pollutants from 332 .csv files

pollutantmean <- function(directory, pollutant, id= 1:322){
    message(paste("Working directory is: ",getwd()))
    allfiles <- list.files(directory, full.names=TRUE)  # obtain list of sensor files in specdata directory
    dat <- data.frame()                                 # create empty data frame
    for (i in id) {                                     # loop through files 
      dat <- rbind(dat, read.csv(allfiles[i]))          # read .csv, subset list, bind the "collector" data frame
       }                                   
    mean(dat[,pollutant], na.rm=TRUE)                   # calculate mean and return to parent environment
    }








