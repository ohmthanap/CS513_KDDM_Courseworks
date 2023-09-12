#  University : Stevens Institute of Technology
#  Course     : CS 513-A
#  Project    : Final Exam (Problem 3)
#  Purpose    : CART
#  First Name	: Thanapoom
#  Last Name	: Phatthanaphan
#  Id			    : 20011296
#  Date       : 08 May 2023

rm(list=ls())

# Upload data set
name <- file.choose()
data <- read.csv(name, header = TRUE)
View(data)

# Identify missing values
missing_values <- is.na(data)
missing_values

# Remove the rows with missing values
data <- na.omit(data)

# Define the outcome variable as a factor
data$Abs_cat <- as.factor(data$Abs_cat)

# Split data into 2 parts: 70% as training data, and 30% as testing data
split_data <- sample(1:nrow(data), 0.7 * nrow(data))
train_data <- data[split_data, ]
test_data <- data[-split_data, ]

# CART methodology classification
# Import necessary library for CART methodology and evaluation
library(rpart)
library(rpart)
library(rpart.plot)  			# Enhanced tree plots
library(rattle)           # Fancy tree plot
library(RColorBrewer)     # colors needed for rattle
library(class)
library(caret)

# Set the seed to reproduce a particular sequence of 'random' numbers
set.seed(123)

# Build classification tree model using CART algorithm
CART_classification <- rpart(Abs_cat~., data = train_data, method="class")
rpart.plot(CART_classification)

# Predict target class using predict function
predictions <- predict(CART_classification, test_data, type="class")
View(predictions)

# Create a confusion matrix to compare the prediction to original data
confusion_matrix <- confusionMatrix(data = predictions, reference = test_data$Abs_cat)
cat(sprintf("Accuracy: %f\n", confusion_matrix$overall['Accuracy']))
tp <- sum(predictions == "Abs_High" & test_data$Abs_cat == "Abs_High")
fp <- sum(predictions == "Abs_High" & test_data$Abs_cat != "Abs_High")
precision <- tp / (tp + fp)
cat(sprintf("Precision: %f\n", precision))
print(confusion_matrix)
