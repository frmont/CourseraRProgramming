pollutantmean <- function(directory = "specdata", pollutant, id= 1:322){
    message(paste("Working directory is: ",getwd()))
    allfiles <- list.files(getwd(), full.names=TRUE)        #obtain list of sensor files in specdata directory
    files <- data.frame()      # create empty data frame
    for (i in id) {            #loop through files in subset list and
      files <- rbind(allfiles, read.csv(allfiles[i]))      # subset list of sensor files
       }                                                   # read the csv file                                                         
                                                           # bind the "collector" data frame
    mean(files[[pollutant]], na.rm=TRUE)  #calculate mean and return to parent environment
                                     #double square brackets->numeric vector, needed by "mean" (no a data frame)
    }


