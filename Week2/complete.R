complete <- function(directory, id=1:332) {   
  allfiles <- list.files(directory, full.names=TRUE)
  for (i in id) {
    numcomplcases <- sum(complete.cases(read.csv(text=allfiles[i]))) # is.numeric(numcomplcases) [1] TRUE
    dat <- data.frame(id = i, nobs = numcomplcases, stringsAsFactors = FALSE) # create empty dataframe
    rbind(dat) # read directory and report completely observed cases
  }
  }

complete("specdata", 1)
