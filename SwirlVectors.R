# create a numeric vector num_vect that contains the values 0.5, 55, -10, and 6

num_vect <- c(0.5, 55, -10, 6)

#num_vect is less than 1

tf <- num_vect < 1 # tf is a vector of 4 logical values

# Two logical expressions, A and B: 
# - at least one is TRUE with A | B (logical 'or' a.k.a. 'union')
# - they are both TRUE with A & B (logical 'and' a.k.a. 'intersection')
# - !A is the negation of A and is TRUE when A is FALSE and vice versa.

#Double quotes are used to distinguish character objects
my_char <- c("My", "name", "is")
my_char

paste(my_char, collapse = " ") #join elements of my_char together into one continuous character string (i.e. a character vector of length 1)

my_name <- c(my_char, "Francesca") #'concatenate' name to the end of my_char

paste(my_name, collapse = " ")

paste("Hello", "world!", sep = " ") # "sep" means separate the joined elements with a single space

paste(1:3, c("X", "Y", "Z"), sep = "") # join two vectors, each of length 3. sep = "" to leave no space

paste(LETTERS, 1:4, sep = "-") #if vectors are of different length, recycling: repeats, 1:4 until it matches the length of LETTERS (all 26 letters).







