#  University : Stevens Institute of Technology
#  Course     : CS 513-A
#  Project    : Homework 7
#  Purpose    : ANN
#  First Name	: Thanapoom
#  Last Name	: Phatthanaphan
#  Id			    : 20011296
#  Date       : 15 Apr 2023

rm(list=ls())
colcls=c("diagnosis"="factor")

# Upload data set
name <- file.choose()
data <- read.csv(name, header = TRUE, na.strings = '?', colClasses = colcls)
View(data)

# Identify missing values
missing_values <- is.na(data)
missing_values

# Remove the rows with missing values
data <- na.omit(data)

# Split data into 2 parts: 70% as training data, and 30% as testing data
split_data <- sample(1:nrow(data), 0.7 * nrow(data))
train_data <- data[split_data, ]
test_data <- data[-split_data, ]

# ANN Methodology
# Import necessary library for ANN methodology and evaluation
library("neuralnet")
library(class)
library(caret)

# Set the seed to reproduce a particular sequence of 'random' numbers
set.seed(123)

# Define the neural network architecture (With 5 nodes in the hidden layer)
ann <- neuralnet(diagnosis~., data=train_data[, 2:ncol(train_data)], hidden=5, threshold=0.01)

# Plot the neural network
plot(ann)

# Test the neural network
predictions <- compute(ann, test_data[, 3:ncol(test_data)])
predictions$net.result
predictions_cat <- ifelse(predictions$net.result[, 1] > predictions$net.result[, 2], 'B', 'M')

# Check levels and lengths between predictions_cat and test_data$diagnosis
# Set them to have the same levels and lengths in order to create confusion matrix
predictions_cat <- factor(predictions_cat, levels = c('B', 'M'))
length(predictions_cat)
levels(predictions_cat)
length(test_data$diagnosis)
levels(test_data$diagnosis)

# Create a confusion matrix to compare the prediction to original data
confusion_matrix <- confusionMatrix(data = predictions_cat, reference = test_data$diagnosis)
cat(sprintf("Accuracy: %f\n", confusion_matrix$overall['Accuracy']))
cat(sprintf("Precision: %f\n", confusion_matrix$byClass['Precision']))
cat(sprintf("Specificity: %f\n", confusion_matrix$byClass['Specificity']))
cat(sprintf("Recall: %f\n", confusion_matrix$byClass['Recall']))
cat(sprintf("F1 Score: %f\n", confusion_matrix$byClass['F1']))
print(confusion_matrix)





