#  University : Stevens Institute of Technology
#  Course     : CS 513-A
#  Project    : Final Exam (Problem 4)
#  Purpose    : Hierarchical and K-means
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

# Hierarchical clustering
# Computes and returns the distance matrix
data_dist <- dist(data[, 1:3])

# Perform Hierarchical clustering
hclust_results <- hclust(data_dist)
plot(hclust_results)
dev.off()

# Cuts a tree from "hclust_results" into 3 groups
hclust_3 <- cutree(hclust_results, k=3)
table(h_cluster=hclust_3, data[, 4])

# K-Means
# Perform k-means clustering on a data matrix with 3 clusters
kmeans_3 <- kmeans(data[, 1:3], centers=3)
kmeans_3$cluster
kmeans_3$centers
table(k_means_cluster=kmeans_3$cluster, data[, 4])

