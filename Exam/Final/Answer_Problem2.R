#  University : Stevens Institute of Technology
#  Course     : CS 513-A
#  Project    : Final Exam (Problem 2)
#  Purpose    : Random Forest
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

# Random Forest methodology classification
# Import necessary library for Random Forest methodology and evaluation
library(randomForest)
library(class)
library(caret)

# Set the seed to reproduce a particular sequence of 'random' numbers
set.seed(123)

# Fit classification tree model using Random Forest algorithm
random_forest_classification <- randomForest(Abs_cat~., data = train_data, importance = TRUE, ntree = 500)
randomForest::importance(random_forest_classification)
varImpPlot(random_forest_classification)
print(random_forest_classification)

# Predict target class using predict function
predictions <- predict(random_forest_classification, test_data, type = "class")

# Create a confusion matrix to compare the prediction to original data
confusion_matrix <- confusionMatrix(data = predictions, reference = test_data$Abs_cat)
cat(sprintf("Accuracy: %f\n", confusion_matrix$overall['Accuracy']))
tp <- sum(predictions == "Abs_High" & test_data$Abs_cat == "Abs_High")
fp <- sum(predictions == "Abs_High" & test_data$Abs_cat != "Abs_High")
precision <- tp / (tp + fp)
cat(sprintf("Precision: %f\n", precision))
print(confusion_matrix)
