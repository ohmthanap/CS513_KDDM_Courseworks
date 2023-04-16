#  University : Stevens Institute of Technology
#  Course     : CS 513-A
#  Project    : Homework 3
#  Purpose    : KNN
#  First Name	: Thanapoom
#  Last Name	: Phatthanaphan
#  Id			    : 20011296
#  Date       : 28 Feb 2023

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

# KNN Methodology
# Normalize data
normalized_data <- apply(data[, 2:10], 2, function(x) (x - min(x)) / (max(x) - min(x)))
View(normalized_data)

# Split data into 2 parts: 70% as training data, and 30% as testing data
split_data <- sample(1:nrow(data), 0.7 * nrow(data))
cl_data <- data['Class']
train_data <- normalized_data[split_data, ]
cl_train_data <- cl_data[split_data, ]
test_data <- normalized_data[-split_data, ]
cl_test_data <- cl_data[-split_data, ]

# load the necessary packages
library(class)

# Doing KNN methodology and evaluate the result for k = 3, 5, and 10
for (k in c(3, 5, 10)){
  
  # KNN function for each k
  knn_k <- knn(train_data, test_data, cl=cl_train_data, k=k)
  
  # Create confusion matrix
  confusion_matrix <- table(knn_k, cl_test_data)
  cat("Confusion Matrix for k =", k, ":\n")
  print(confusion_matrix)
  
  # Compute accuracy
  accuracy <- function(x) {sum(diag(x)/(sum(rowSums(x)))) * 100}
  cat("Accuracy for k =", k, ":", accuracy(confusion_matrix), "%\n")
  
  # Compute error rate
  error_rate <- sum(knn_k != cl_test_data) / length(cl_test_data)
  cat("Error rate:", error_rate * 100, "%\n")

}
