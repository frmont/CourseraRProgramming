add2 <- function(x, y) {# for {}, press "alt", "shift", "[]"
          x + y
} #add2(3,5), should give out 8

above10 <- function(x){
  use <- x>10  #logical vector, which element of x >10
  x[use]
}

above <- function(x, n){
  use <- x > n
  x[use]
}

above(1:20, 12)

above <- function(x, n=10){ #specify n by default
  use <- x > n
  x[use]
}

columnmean <- function(y){   #y is a dataframe or matrix
  nc <- ncol(y) #number of columns
  means <- numeric(nc) #empty numeric vector with same length as number of columns
  for (i in 1:nc) { #integer vector, starts at 1, ends at nc, loops for
    means[i] <- mean(y[,i])
  }
  means #returns the mean
} 
# for example, use columnmean(airquality). Ouput: 6 means, two of which are NA

columnmean <- function(y, removeNA = TRUE){   #remove the NAs
  nc <- ncol(y)
  means <- numeric(nc) 
  for (i in 1:nc) { 
    means[i] <- mean(y[,i], na.rm = removeNA) #uses value of previous removeNA
  }
  means 
} 
# now check using columnmean(airquality). Previous behaviour if you use columnmean(airquality, FALSE)



