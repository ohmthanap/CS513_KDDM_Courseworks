#  University : Stevens Institute of Technology
#  Course     : CS 513-A
#  Project    : Homework 6 (6.1)
#  Purpose    : C5.0 Methodology
#  First Name	: Thanapoom
#  Last Name	: Phatthanaphan
#  Id			    : 20011296
#  Date       : 04 Apr 2023

rm(list=ls())

# Upload data set
name <- file.choose()
data <- read.csv(name, header = TRUE, na.strings = '?')
View(data)

# Identify missing values
missing_values <- is.na(data)
missing_values

# Remove the rows with missing values
data <- na.omit(data)

# Convert diagnosis class, 2 for "Benign" and 4 for "Malignant"
data$Class <- factor(data$Class, levels = c("2","4"), labels = c("Benign","Malignant"))

# Split data into 2 parts: 70% as training data, and 30% as testing data
split_data <- sample(1:nrow(data), 0.7 * nrow(data))
train_data <- data[split_data, ]
test_data <- data[-split_data, ]

# C5.0 methodology classification
# Import necessary library for C5.0 methodology and evaluation
library('C50')
library(class)
library(caret)

# Set the seed to reproduce a particular sequence of 'random' numbers
set.seed(123)

# Fit classification tree model using C5.0 algorithm
C50_classification <- C5.0(Class~., data = train_data)
summary(C50_classification)
plot(C50_classification)

# Predict target class using predict function
predictions <- predict(C50_classification, test_data, type = "class")

# Create a confusion matrix to compare the prediction to original data
confusion_matrix <- confusionMatrix(data = predictions, reference = test_data$Class)
cat(sprintf("Accuracy: %f\n", confusion_matrix$overall['Accuracy']))
cat(sprintf("Precision: %f\n", confusion_matrix$byClass['Precision']))
cat(sprintf("Specificity: %f\n", confusion_matrix$byClass['Specificity']))
cat(sprintf("Recall: %f\n", confusion_matrix$byClass['Recall']))
cat(sprintf("F1 Score: %f\n", confusion_matrix$byClass['F1']))
print(confusion_matrix)





