#install_from_swirl("R Programming") to install the course
#swirl() to start swirl
#exit swirl and return to the R prompt (>): Esc key.When you are at the R prompt (>):
# skip() allows you to skip the current question.
# play() lets you experiment with R on your own; swirl will ignore what you do...
#... until nxt() which will regain swirl's attention.
# bye() causes swirl to exit. Your progress will be saved.
# main() returns you to swirl's main menu.
# info() displays these options again.

#`?` command: for more information on the c() function, type ?c without the parentheses
# When given two vectors of the same length, R simply performs the specified arithmetic operation (`+`, `-`, `*`, etc.) element-by-element
#when you ask R to compute z * 2 + 100, what it really computes is this: z * c(2, 2, 2) + c(100, 100, 100)


x <- c(1, 2, 3, 4) + c(0,10,100) #Warning message: longer object length is not a multiple of shorter object length

#Use up/down arrow to cycle through commands
