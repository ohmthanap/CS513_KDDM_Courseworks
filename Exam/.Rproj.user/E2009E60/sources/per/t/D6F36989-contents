#  University : Stevens Institute of Technology
#  Course     : CS 513-A
#  Project    : Midterm question 4
#  First Name	: Thanapoom
#  Last Name	: Phatthanaphan
#  Id			    : 20011296
#  Date       : 27 Mar 2023

rm(list=ls())

# Upload data set "CS513_targeting_cat_full.csv"
name <- file.choose()
data <- read.csv(name, header = TRUE, na.strings = '?')
View(data)

# Summary data, see the overall of input data
summary(data)

# Identify missing values
missing_values <- is.na(data)
missing_values

# Remove the rows with missing values
data <- na.omit(data)

# NB Methodology

# load the necessary packages
library(e1071)
library(class)
library(caret)

# Split data into 2 parts: 70% as training data, and 30% as testing data
set.seed(123)
split_data <- sample(1:nrow(data), 0.7 * nrow(data))
train_data <- data[split_data, ]
test_data <- data[-split_data, ]

# Implement naiveBayes function
model_naiveBayes <- naiveBayes(Purchase ~ ., data = train_data)

# Predict target class using predict function
predict_naiveBayes <- predict(model_naiveBayes, test_data)

# Create a confusion matrix to compare the prediction to original data
test_data$Purchase <- factor(test_data$Purchase, levels = c("Yes", "No"))
predict_naiveBayes <- factor(predict_naiveBayes, levels = c("Yes", "No"))
confusion_matrix <- confusionMatrix(data = predict_naiveBayes, reference = test_data$Purchase)
cat(sprintf("Accuracy: %f\n", confusion_matrix$overall['Accuracy']))
cat(sprintf("Precision: %f\n", confusion_matrix$byClass['Precision']))
cat(sprintf("Specificity: %f\n", confusion_matrix$byClass['Specificity']))
cat(sprintf("Recall: %f\n", confusion_matrix$byClass['Recall']))
cat(sprintf("F1 Score: %f\n", confusion_matrix$byClass['F1']))
print(confusion_matrix)
