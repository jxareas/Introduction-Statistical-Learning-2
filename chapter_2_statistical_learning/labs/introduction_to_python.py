# %% Basic Commands
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Creating a numpy array
x = np.array([1, 3, 2, 5])

# Printing the value of x
x

# Checking the length of a numpy array
len(x)

# Removing the x variable from the current environment
del x

# Creating a matrix
x = np.array([[1, 2], [4, 5]])

# %% Graphics

# Creating a pandas dataframe
df = pd.DataFrame(data={"x": [1, 2, .5, .89, 1.6, 1.2],
                        "y": [3, 4, 5, 6, 3.4, 2.9]})
sns.scatterplot(x="x", y="y", data=df).set(title="Scatter-plot")
plt.show()

# %% Indexing Data

# Creating a square matrix and trna
A = np.array(range(1, 17)).reshape(4, 4, order="F")

# Printing the matrix
A

# Getting the element in the second row and third column
A[1, 2]

# Printing the dimensions of the Matrix
np.shape(A)

#%% Loading Data

# Loading a dataset using the pd.read_csv function
Auto = pd.read_csv("../../data/Auto.csv")

# Getting the name of each column
column_names = [column for column in Auto.columns]
column_names

#%% Graphical and Numerical Summaries

# Printing a dotplot
sns.scatterplot("cylinders", "mpg", data=Auto)
plt.show()

# Printing a boxplot
sns.boxplot("cylinders", "mpg", data=Auto)
plt.show()

# Plotting a Histogram
sns.histplot(data=Auto, x="mpg")
plt.show()

# Plotting a scatter plot for each pair of variables
sns.pairplot(Auto)
plt.show()

# Numerical summary of the dataset
Auto.describe()

