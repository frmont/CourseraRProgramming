y <- rnorm(1000) #vector containing 1000 draws from a standard normal distribution
z <- rep(NA, 100)

my_data <- sample(c(y, z), 100) #select 100 elements at random from these 2000 values (combining y and z): 
# we don't know how many NAs we'll wind up with or what positions they'll occupy in our final vector

my_na <- is.na(my_data) # whether each element of a vector is NA
my_na

sum(my_na)  #compute the total number of NAs. TRUE= 1, FALSE= 0

0/0 # NaN means 'not a number'