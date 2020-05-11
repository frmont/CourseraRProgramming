# I've created for you a vector (x) that contains a random ordering of 20 numbers (from a standard normal distribution) and 20 NAs
# subsetting: 'index vector' in square brackets immediately following the name of the vector.

x[1:10] # first ten elements of x

# LOGICAL VECTORS

x[is.na(x)] #A vector of all NAs
y <- x[!is.na(x)] #A vector of no NAs
y[y > 0] #A vector of all the positive elements of y

x[!is.na(x) & x > 0]

#POSITIVE INTEGER VECTOR
x[c(1,3,5)] #subset the 3rd, 5th, and 7th elements of x

# 'one-based indexing': first element of a vector is considered element 1.
# R does not prevent from asking things with unusuful outcomes, e.g.
x[0] #zeroth element of x
x[3000] #x only has 40 elements

#NEGATIVE INTEGER VECTOR
x[c(-2, -10)] #all elements of x EXCEPT the 2nd and 10th
x[-c(2, 10)] #all elements of x EXCEPT the 2nd and 10th

#NAMED ELEMENTS VECTOR
vect <- c(foo = 11, bar = 2, norf = NA) #create vector with names straightaway
vect
names(vect)

vect2 <- c(11, 2, NA) #first create vector
names(vect2) <- c("foo", "bar", "norf") #then assign names

identical(vect, vect2) #check they are the identical

vect["bar"] #give second element of vect
vect[c("foo", "bar")] # or can specify a vector of names

#
#
#