# Write a function that takes a directory of data files and a threshold for complete cases 
# and calculates the correlation between sulfate and nitrate for monitor locations 
# where the number of completely observed cases (on all variables) is greater than the threshold.

corr <- function(directory, threshold=0){ #the dafault is 0
  setwd("~/Desktop/GoogleDrive/R_Programming/CourseraRProgramming/Week2")
  source("complete.R")
  compl <- complete(directory="specdata", 1:332)
  
  for (i in 1:322) {
    numcomplcases[ numcompletecases < threshold ] <- 0
  }
  abovethr <- subset(compl, nobs!="0")    #now we have a list of the ids where nobs > threshold
  print(abovethr)

  allfiles <- list.files(directory, full.names=TRUE)  
  dat <- data.frame()                                
  dat<- rbind(dat, read.csv(allfiles))
  print(dat)
  
  dat %>%     
    filter(id %in% abovethr$id)     # only take the columns of dat containing the id in abovethr
  
  
    sulf <- dplyr::pull(dat, sulfate)
    nit <- dplyr::pull(dat, nitrate)
    
    
    
    cov(sul, nit) 

}
cr <- corr("specdata", 150)

