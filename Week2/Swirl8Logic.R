# All AND operators are evaluated before OR operators

5 > 8 || 6 != 8 && 4 > 3.9  # [1] TRUE
isTRUE(6 > 4)               # [1] TRUE
identical('twins', 'twins') # [1] TRUE
xor(5 == 6, !FALSE)         # [1] TRUE. Exclusive OR: TRUE if one argument TRUE and other argument FALSE 

ints <- sample(10)          # ints: [1]  3  2  1 10  8  4  6  5  7  9
which(ints>7)               # [1]  4  5 10
any(ints<0)                 # [1] FALSE
all(ints>0)                 # [1] TRUE