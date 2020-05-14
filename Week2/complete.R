# write a function that reads a directory full of files and reports the number of completely observed cases in each data file.

complete <- function(directory, id) {
  allfiles <- list.files(directory, full.names=TRUE)
  d=NULL
  for (i in id) {
    numcomplcases <- sum(complete.cases(read.csv(allfiles[i]))) # is.numeric(numcomplcases) [1] TRUE
    d = rbind(d, data.frame(id = i, nobs = numcomplcases, stringsAsFactors = FALSE))
  }
  d
}

