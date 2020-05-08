#in the case of an operator like 1:20, you must enclose the symbol in backticks like this: ?`:`
#seq(): ore control over a sequence we're creating than  `:`
#E.g. allows to choose increment or length
seq(0, 10, by=0.5)
my_seq <- seq(5, 10, length=30)

length(my_seq) #To confirm that my_seq has length 30

# want to generate a sequence of integers from 1 to N, where N represents the length (unknown) of the my_seq vector
1:length(my_seq) #Option 1
seq(along.with = my_seq) #Option 2
seq_along(my_seq) #Option 3

#If R has a built-in function for a particular task, function is highly optimized for that purpose (best option)

#rep() stands for 'replicate'. 
rep(0, times = 40) #Vector that contains 40 zeros
rep(c(0, 1, 2), times = 10) # vector contains 10 repetitions of the vector (0, 1, 2)
rep(c(0, 1, 2), each = 10) # vector contains 10 zeros, then 10 ones, then 10 twos

