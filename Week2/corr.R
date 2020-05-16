# Write a function that takes a directory of data files and a threshold for complete cases 
# and calculates the correlation between sulfate and nitrate for monitor locations 
# where the number of completely observed cases (on all variables) is greater than the threshold.

corr <- function(directory, threshold=0){                 # the dafault is 0
  setwd(directory)
  source("/Users/FM/Desktop/GoogleDrive/R_Programming/CourseraRProgramming/Week2/complete.R")
  
  comp <- complete(directory="specdata", 1:332)
  comp <- comp[comp$nobs >= threshold,]                    # list of the nobs > threshold
  
  allfiles <- list.files("specdata", full.names=TRUE)
  my_corr <- numeric()                                      # empty vector to store correlation values per monitor

  for(i in comp$id){
    data <- read.csv(allfiles[i])                          
    my_corr <- c(my_corr, cor(data$sulfate, data$nitrate, use = "pairwise.complete.obs")) 
  }                                                         # fill the vector with the correlation between the two columns
  my_corr
}

cr <- corr("specdata", 150)
head(cr)
summary(cr)