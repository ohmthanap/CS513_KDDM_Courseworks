#  University : Stevens Institute of Technology
#  Course     : CS 513-A
#  Project    : Homework 4
#  Purpose    : NB
#  First Name	: Thanapoom
#  Last Name	: Phatthanaphan
#  Id			    : 20011296
#  Date       : 11 Mar 2023

rm(list=ls())

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
data$Class<- factor(data$Class , levels = c("2","4") , labels = c("Benign","Malignant"))

# NB Methodology

# load the necessary packages
library(e1071)
library(class)

# Split data into 2 parts: 70% as training data, and 30% as testing data
split_data <- sample(1:nrow(data), 0.7 * nrow(data))
train_data <- data[split_data, ]
test_data <- data[-split_data, ]

# Implement naiveBayes function
model_naiveBayes <- naiveBayes(Class ~ ., data = train_data)

# Predict target class using predict function
predict_naiveBayes <- predict(model_naiveBayes, test_data)

# Create a confusion matrix to compare the prediction to original data
confusion_matrix <- table(predict_naiveBayes = predict_naiveBayes, class = test_data$Class)
print(confusion_matrix)

# Compute accuracy
accuracy <- function(x){sum(diag(x)/(sum(rowSums(x)))) * 100}
accuracy(confusion_matrix)

# Compute error rate
naiveBayes_error <- sum(predict_naiveBayes!=test_data$Class)/length(predict_naiveBayes)
print(naiveBayes_error * 100)

