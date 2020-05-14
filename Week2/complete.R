setwd("~/Desktop/GoogleDrive/R_Programming/CourseraRProgramming/Week2")
complete <- function(directory, id) {
 
  allfiles <- list.files(directory, full.names=TRUE)
  d=NULL
   # create empty dataframe
  for (i in id) {
    
    numcomplcases <- sum(complete.cases(read.csv(allfiles[i]))) # is.numeric(numcomplcases) [1] TRUE
    d = rbind(d, data.frame(id = i, nobs = numcomplcases, stringsAsFactors = FALSE))
  
  }
  print(d)
}
complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)
