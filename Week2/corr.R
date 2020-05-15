# Write a function that takes a directory of data files and a threshold for complete cases 
# and calculates the correlation between sulfate and nitrate for monitor locations 
# where the number of completely observed cases (on all variables) is greater than the threshold.

corr <- function(directory, threshold=0){                 # the dafault is 0
  setwd("~/Desktop/GoogleDrive/R_Programming/CourseraRProgramming/Week2")
  source("complete.R")
  compl <- complete(directory="specdata", 1:332)
  
  compl %>% filter(nobs > threshold)                       # list of the nobs > threshold
  
  allfiles <- list.files("specdata", full.names=TRUE)
  fullfiles<- do.call("rbind", lapply(allfiles, read.csv))
                                                                
  sub <- data.frame()             
  sub <- na.omit(subset(fullfiles, id %in% compl$id))   # only take the columns of allfiles containing the id in compl
                                                        # remove rows with at least one NA
  sulf <- dplyr::pull(sub, sulfate)
  nit <- dplyr::pull(sub, nitrate)
    
    cov(sulf, nit) 

}
cr <- corr("specdata", 150)
head(cr)
