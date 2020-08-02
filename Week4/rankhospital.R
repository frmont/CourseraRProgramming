rankhospital <-function(state, outcome, num) { 
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character", stringsAsFactors = FALSE) ## Read outcome data
  data1 <- as.data.frame(cbind(data[, 2],   # extracting particular outcomes: hospital
                               data[, 7],   # state
                               data[, 11],  # heart attack
                               data[, 17],  # heart failure
                               data[, 23]), # pneumonia
                         stringsAsFactors = FALSE) 
  
  colnames(data1) <- c("hospital", "state", "heart attack", "heart failure", "pneumonia")       #rename columns
  
  if (!state %in% data1[,'state']){                                           # Check state is valid
    stop('invalid state')
  }
  else if (!outcome %in% c('heart attack',"heart failure", 'pneumonia')){    # Check outcome is valid
    stop('invalid outcome')
  }
  
  else { # subsect based on required state and outcome (function inputs)
    wh<-which(data1[,'state']==state)     # identify rows from the required state
    st<-data1[wh,]                        # store data (hospital names, state, 3 column coutcomes) from that state in st
    df <- data.frame(st[,1], st[,2],st[,outcome])     # put hospital names, state, required coutcomein a data frame
    colnames(df) <- c("hospital", "state", outcome)  # rename columns
    df <- df[which(df[,outcome] !="Not Available"),]  # eliminate rows with outcome"Not Avilable"  
  }
  
  if(num == "best") {                 #assign num: best 
      num = 1
    }
  else if(num == "worst") {           #assign num: worst 
      num = nrow(st)
    }
  else if (is.numeric(num) && (num < 1 || num > nrow(st))){ #NA if num is (-)ve or greater than no. of hospitals
      return(NA)
    }
  
  rankdf <- data.frame(rank(df[,outcome], ties.method = "min")) # ignore NA values, lower rank in ties
  ranking <- cbind(df, rankdf)
  colnames(ranking) <- c("hospital", "state", outcome, "ranking")
    
  result<-df[,'hospital'][which(ranking[,4]==num)]## Return hospital name in that state with the given rank 30-day death rate
  output<-result[order(result)]
  output <- as.character(output)
  return(output)
    
}
