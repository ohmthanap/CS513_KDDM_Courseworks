#  University : Stevens Institute of Technology
#  Course     : CS 513-A
#  Project    : Midterm question 6
#  First Name	: Thanapoom
#  Last Name	: Phatthanaphan
#  Id			    : 20011296
#  Date       : 27 Mar 2023

rm(list=ls())

# Upload data set "CS513_targeting_num.csv"
name <- file.choose()
data <- read.csv(name, header = TRUE, na.strings = '?')
View(data)

# Summary data, see the overall of input data
summary(data)

# From summary, we can see that column 'F6' contains missing values
# Identify missing values
missing_values <- is.na(data)
missing_values

# Remove the rows with missing values
data <- na.omit(data)

# Convert data in column "Gender", "M" for 1 and "F" for 2
data$Gender <- factor(data$Gender , levels = c("M","F") , labels = c(1, 2))
data$Gender <- as.numeric(data$Gender)

# KNN Methodology
# Normalize data
normalized_data <- apply(data[, 2:4], 2, function(x) (x - min(x)) / (max(x) - min(x)))
View(normalized_data)

# Split data into 2 parts: 70% as training data, and 30% as testing data
set.seed(123)
split_data <- sample(1:nrow(data), 0.7 * nrow(data))
cl_data <- data['Purchase']
train_data <- normalized_data[split_data, ]
cl_train_data <- cl_data[split_data, ]
test_data <- normalized_data[-split_data, ]
cl_test_data <- cl_data[-split_data, ]

# load the necessary packages
library(e1071)
library(class)
library(caret)

# Doing KNN methodology and evaluate the result for k = 3
knn <- knn(train_data, test_data, cl=cl_train_data, k=3)

# Create a confusion matrix to compare the prediction to original data
cl_test_data <- factor(cl_test_data, levels = c("Yes", "No"))
knn <- factor(knn, levels = c("Yes", "No"))
confusion_matrix <- confusionMatrix(data = knn, reference = cl_test_data)
cat(sprintf("Accuracy: %f\n", confusion_matrix$overall['Accuracy']))
cat(sprintf("Precision: %f\n", confusion_matrix$byClass['Precision']))
cat(sprintf("Specificity: %f\n", confusion_matrix$byClass['Specificity']))
cat(sprintf("Recall: %f\n", confusion_matrix$byClass['Recall']))
cat(sprintf("F1 Score: %f\n", confusion_matrix$byClass['F1']))
print(confusion_matrix)

