# Determine which directory your R session is using as its current working directory: getwd()
# List all the objects in your local workspace using ls()
# List all the files in your working directory using list.files() or dir()

# Using the args() function on a function name is also a handy way to see what arguments a function can take
args(list.files) 

# Use dir.create() to create a directory in the current working directory called "testdir"
dir.create("testdir")

#Set your working directory to "testdir"
setwd("testdir")

#Create a file in your working directory called "mytest.R"
file.create("mytest.R")

#Let's check this is the only file in this newly created directoryby listing all the files in the current directory.
dir()

#Check to see if "mytest.R" exists in the working directory
file.exists("mytest.R")

#Access information about the file "mytest.R" by using file.info()
file.info("mytest.R")

# Change the name of the file "mytest.R" to "mytest2.R"
file.rename("mytest.R","mytest2.R")

#Make a copy of "mytest2.R" called "mytest3.R" using file.copy().
file.copy("mytest2.R","mytest3.R")

# Provide the relative path to the file "mytest3.R" by using file.path()
file.path("mytest3.R") #You can use file.path to construct file and directory paths that are independent 
# of the operating system your R code is running on. Pass 'folder1' and 'folder2' as arguments to file.path 
# to make a platform-independent pathname.
file.path("folder1", "folder2")

# Create a directory in the current working directory called "testdir2" and a subdirectory for it called "testdir3",
# all in one command by using dir.create() and file.path().

dir.create(file.path("testdir2", "testdir3"), recursive = TRUE) # In order to create nested directories, 'recursive'= TRUE.

#Go back to your original working directory using setwd()
setwd(old.dir)

unlink("testdir")

