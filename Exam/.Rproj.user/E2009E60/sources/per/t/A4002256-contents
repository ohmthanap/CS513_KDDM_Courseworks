#  University : Stevens Institute of Technology
#  Course     : CS 513-A
#  Project    : Midterm question 2
#  First Name	: Thanapoom
#  Last Name	: Phatthanaphan
#  Id			    : 20011296
#  Date       : 27 Mar 2023

rm(list=ls())

# Upload data set file "CS513_targeting_num.csv"
name <- file.choose()
data <- read.csv(name, header = TRUE, na.strings = '?')
View(data)

# Summarize each column of data
summary_data <- summary(data)
summary_data

# Identify missing values
missing_values <- is.na(data)
missing_values

# As the above missing values checking, there is only column "Income"
# that contains missing values
# Replace missing values with the median of the column
column_median <- median(data[, 4], na.rm = TRUE)
data[is.na(data[, 4]), 4] <- column_median
View(data)

# Display scatter plot of the columns "Age" and "Income"
plot(data$Age, 
     data$Income, 
     xlab="Age", 
     ylab="Income", 
     main="Scatter plot of Age and Income", 
     pch=20)

# Display box plots of the columns "Age" and "Income", separately
boxplot(data$Age, 
        ylab="Age", 
        main = "Box plot of Age")

boxplot(data$Income, 
        ylab="Income", 
        main = "Box plot of Income")

# Display box plots of the columns "Age" and "Income"
boxplot(Age~Income,
        data=data,
        main="Box plots of Age and Income",
        xlab="Income",
        ylab="Age",
        col="red",
        border="black")
