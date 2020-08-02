# What is the mean of 'Sepal.Length' for the species virginica
library(datasets)
data(iris)
sapply(split(iris, iris$Species), function(x) colMeans(x[,c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")]))

# What R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'
apply(iris[,1:4], 2, mean)    # [] excludes "Species", dimension 2(columns is kept)

# Calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)? Select all that apply.
library(datasets)
data(mtcars)

tapply(mtcars$cyl, mtcars$mpg, mean)        # this computes the mean number of cylinders by mpg.
tapply(mtcars$mpg,mtcars$cyl, mean)         # √
sapply(split(mtcars$cyl, mtcars$mpg), mean) # √
sapply(mtcars, cyl, mean)
mean(mtcars$cyl, mtcars$mpg)               
lapply(mtcars, mean)
with(mtcars, tapply(mpg, cyl, mean))        # √

# What's the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?
tapply(mtcars$hp,mtcars$cyl, mean) 
diff <- 209.21429-82.63636 # [1] 126.5779
diff

