setwd("~/Desktop/GoogleDrive/R_Programming/CourseraRProgramming/Week2")
complete <- function(directory, id) {
 
  allfiles <- list.files(directory, full.names=TRUE)
  for (i in id) {
    
    numcomplcases <- sum(complete.cases(read.csv(allfiles[i]))) # is.numeric(numcomplcases) [1] TRUE
    dat <- data.frame(id = i, nobs = numcomplcases, stringsAsFactors = FALSE) # create empty dataframe
    x <- rbind(dat)
  }
  print(x)
}
complete("specdata", 1)

