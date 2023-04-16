#  University : Stevens Institute of Technology
#  Course     : CS 513-A
#  Project    : Homework 5 (5.2)
#  Purpose    : DTree
#  First Name	: Thanapoom
#  Last Name	: Phatthanaphan
#  Id			    : 20011296
#  Date       : 20 Mar 2023

rm(list=ls())

library(rpart)
library(rpart.plot)
library(rattle)
library(RColorBrewer)

# Upload data set
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

# Convert diagnosis class, 2 for "Benign" and 4 for "Malignant"
data$Class <- factor(data$Class, levels = c("2","4"), labels = c("Benign","Malignant"))

# Split data into 2 parts: 70% as training data, and 30% as testing data
split_data <- sample(1:nrow(data), 0.7 * nrow(data))
train_data <- data[split_data, ]
test_data <- data[-split_data, ]

set.seed(123)
# Builds a classification tree
model <- rpart(Class~., data = train_data)
rpart.plot(model)

# Predict target class using predict function
predictions <- predict(model, test_data)
View(predictions)
CART_predictions <- ifelse(predictions[,1]<=0.5, 'Malignant', 'Benign')

# Create a confusion matrix to compare the prediction to original data
confusion_matrix <- table(CART_predictions = CART_predictions, class = test_data$Class)
print(confusion_matrix)

# Compute accuracy
accuracy <- function(x){sum(diag(x)/(sum(rowSums(x)))) * 100}
accuracy(confusion_matrix)

# Compute error rate
error <- sum(CART_predictions!=test_data$Class)/length(CART_predictions)
print(error * 100)
