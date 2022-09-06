# Basic Commands ----------------------------------------------------------

# Loading the package for
# Introduction to Statistical Learning 2
library(ISLR2)

# The following command tells R to join together the numbers
# 1, 3, 2 and 5 and store them as a vector
x <- c(1, 3, 2, 5)

# Printing the output of x
x

# Checking the length of a vector
length(x)

# Removing the x variable from the current environment
rm(x)

# Creating a matrix
x <- matrix(data = c(1, 2, 3, 4),
            nrow = 2,
            ncol = 2)


# Graphics ----------------------------------------------------------------

x <- rnorm(100)
y <- rnorm(100)
plot(x,
     y,
     xlab = "x-axis",
     ylab = "y-axis",
     main = "Scatterplot")

# Indexing Data -----------------------------------------------------------

# Creating a square matrix
A <- matrix(1:16, 4, 4)

# Printing the matrix
A

# Getting the element in the second row and third column
A[2, 3]

# Getting the following elements, using vector indexing:
# 1st row, 2nd column
# 1st row, 4th column
# 3rd row, 2nd column
# 3rd row, 4th column
A[c(1, 3), c(2, 4)]

# Printing the dimensions of a matrix
dim(A)

# Loading Data ------------------------------------------------------------

# Loading a csv file,using the read.csv function
df <-
  read.csv("../data/College.csv")

# Names of each dataframe column
names(df)


# Graphical and Numerical Summaries ---------------------------------------

cylinders <- Auto$cylinders
mpg <- Auto$mpg

# Plotting a dot plot
plot(cylinders, mpg)

# Refactoring cylinders data type to a factor
cylinders_factor <- as.factor(cylinders)

# Plotting a box plot
plot(cylinders_factor,
     mpg,
     main = "Miles per gallon by cylinders",
     xlab = "Cylinders",
     ylab = "Miles per Gallon")

# Plotting a histogram
hist(mpg , col = 2, breaks = 15)

# Multiple scatter plots for every pair of variables
pairs(Auto)

# Numerical summary of the dataset
summary(Auto)
