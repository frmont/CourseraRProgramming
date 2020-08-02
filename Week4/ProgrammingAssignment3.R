setwd("~/Desktop/GoogleDrive/R_Programming/CourseraRProgramming/Week4/rprog_data_ProgAssignment3-data")

outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcome)                           # look at the first few rows
ncol(outcome)                           # how many columns
nrow(outcome)                           # how many rows 
names(outcome)                          # names of columns

# 1) Plot the 30-day mortality rates for heart attack

outcome[, 11] <- as.numeric(outcome[, 11])  # column 11 is "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"
                                                # coerce the column to be numeric (before, read as character)
hist(outcome[, 11])

