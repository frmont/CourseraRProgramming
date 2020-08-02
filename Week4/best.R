setwd("~/Desktop/GoogleDrive/R_Programming/CourseraRProgramming/Week4/rprog_data_ProgAssignment3-data")

best <-function(state, outcome) { 
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character") ## Read outcome data
  data1 <- as.data.frame(cbind(data[, 2],   # extracting particular outcomes: hospital
                                    data[, 7],   # state
                                    data[, 11],  # heart attack
                                    data[, 17],  # heart failure
                                    data[, 23]), # pneumonia
                              stringsAsFactors = FALSE) 
 
  colnames(data1) <- c("hospital", "state", "heart attack", "heart failure", "pneumonia")       #rename columns
 
  if (!state %in% data1[,'state']){                                                     # Check state is valid
          stop('invalid state')
          }
  else if (!outcome %in% c('hospital','state','heart attack',"heart failure", 'pneumonia')){    # Check outcome is valid
          stop('invalid outcome')
          }
  else{
          wh<-which(data1[,'state']==state)     # identify rows from the required state
          st<-data1[wh,]                        # store that data in st
          nume<-as.numeric(st[,outcome])         # subsects st based on the outcome (function input)
          minval<-min(nume , na.rm=TRUE)         # minimum value (lowest 30-day death) in numn is stored 
          result<-st[,'hospital'][which(nume==minval)]   ## Return hospital name in that state with lowest 30-day death
          output<-result[order(result)]	
        }
  return(output)
  
  }

