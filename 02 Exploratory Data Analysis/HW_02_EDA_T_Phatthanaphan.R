#  University : Stevens Institute of Technology
#  Course     : CS 513-A
#  Project    : Homework 2
#  Purpose    : EDA
#  First Name	: Thanapoom
#  Last Name	: Phatthanaphan
#  Id			    : 20011296
#  Date       : 19 Feb 2023

# Upload data set
name <- file.choose()
data <- read.csv(name, header = TRUE, na.strings = '?')
View(data)

# Summarize each column of data
summary_data <- summary(data)
summary_data

# Identify missing values
missing_values <- is.na(data)
missing_values

# Replace missing values with the mean of the column
for (i in 1:ncol(data)){
  column_mean <- mean(data[, i], na.rm = TRUE)
  data[is.na(data[, i]), i] <- column_mean
}
View(data)

# Display the frequency table of the columns "Class" and "F6"
freq_class_vs_f6 <- table(Class=data$Class, F6=data$F6)
View(freq_class_vs_f6)

# Display scatter plot of the columns from "F1" to "F6", one pair at a time
pairs(~ F1 + F2, data = data, main = "Scatter plot of F1 vs F2", pch = 20)
pairs(~ F1 + F3, data = data, main = "Scatter plot of F1 vs F3", pch = 20)
pairs(~ F1 + F4, data = data, main = "Scatter plot of F1 vs F4", pch = 20)
pairs(~ F1 + F5, data = data, main = "Scatter plot of F1 vs F5", pch = 20)
pairs(~ F1 + F6, data = data, main = "Scatter plot of F1 vs F6", pch = 20)
pairs(~ F2 + F3, data = data, main = "Scatter plot of F2 vs F3", pch = 20)
pairs(~ F2 + F4, data = data, main = "Scatter plot of F2 vs F4", pch = 20)
pairs(~ F2 + F5, data = data, main = "Scatter plot of F2 vs F5", pch = 20)
pairs(~ F2 + F6, data = data, main = "Scatter plot of F2 vs F6", pch = 20)
pairs(~ F3 + F4, data = data, main = "Scatter plot of F3 vs F4", pch = 20)
pairs(~ F3 + F5, data = data, main = "Scatter plot of F3 vs F5", pch = 20)
pairs(~ F3 + F6, data = data, main = "Scatter plot of F3 vs F6", pch = 20)
pairs(~ F4 + F5, data = data, main = "Scatter plot of F4 vs F5", pch = 20)
pairs(~ F4 + F6, data = data, main = "Scatter plot of F4 vs F6", pch = 20)
pairs(~ F5 + F6, data = data, main = "Scatter plot of F5 vs F6", pch = 20)

# Display scatter plot of the columns from "F1" to "F6"
pairs(data[2:7], main = "Scatter plot of F1 to F6", pch = 20)

# Display histograms of the columns from "F7" to "F9"
hist(data$F7, col = "red", main = "Histogram of F7 to F9", density=30)
hist(data$F8, col = "blue", add = TRUE, density=50)
hist(data$F9, col = "green", add = TRUE, density=70)
legend("topright", c("F7", "F8", "F9"), fill = c("red", "blue", "green"))

# Display box plots of the columns from "F7" to "F9"
boxplot(data[8:10], main = "Box Plots of F7 to F9")

# Delete all the objects and re-upload the data set
rm(list=ls())
name <- file.choose()
data <- read.csv(name, header = TRUE, na.strings = '?')
View(data)

# Remove all rows that contain missing values
data_del_missing_values <- na.omit(data)
View(data_del_missing_values)
