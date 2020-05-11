#matrices can only contain a single class of data, data frames can consist of many different classes of data.

my_vector <- 1:20 #remember that you don't need the c() function when using `:`
dim(my_vector) #Since my_vector is a vector, it doesn't have a `dim` attribute (so it's just NULL)
length(my_vector)

dim(my_vector) <- c(4, 5) #give my_vector a `dim` attribute, 4 rows and 5 columns.

# dim() function allows you to get OR set the `dim` attribute

#Check the dim
dim(my_vector)
attributes(my_vector)

my_vector #see how it is now a matrix. A matrix is simply an atomic vector with a dimension attribute
class(my_vector)
my_matrix <- my_vector

my_matrix2 <- matrix(1:20, 4, 5) #direct method of creating the same matrix
identical(my_matrix, my_matrix2) 


patients <- c("Bill", "Gina", "Kelly", "Sean") 
cbind(patients, my_matrix)#label rows
#now a matrix of character strings, R was forced to 'coerce' the numbers to characters ('implicit coercion')
my_data <- data.frame(patients, my_matrix) #data.frame():  store our character vector of names right alongside our matrix of numbers
#can also assign names to the individual rows and columns of a data frame

cnames <- c("patient", "age", "weight", "bp", "rating", "test") #assigning names to the columns
colnames(my_data) <- cnames #set the `colnames` attribute for our data frame



