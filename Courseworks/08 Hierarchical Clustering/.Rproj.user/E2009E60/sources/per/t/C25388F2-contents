#  University : Stevens Institute of Technology
#  Course     : CS 513-A
#  Project    : Homework 8
#  Purpose    : H Cluster and K-Means
#  First Name	: Thanapoom
#  Last Name	: Phatthanaphan
#  Id			    : 20011296
#  Date       : 18 Apr 2023

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

# Hierarchical clustering
# Computes and returns the distance matrix (Exclude column 1 and 2)
data_dist <- dist(data[, 3:ncol(data)])

# Perform Hierarchical clustering
hclust_results <- hclust(data_dist)
plot(hclust_results)
dev.off()

# Cuts a tree from "hclust_results" into 2 groups
hclust_2 <- cutree(hclust_results, 2)
table(h_cluster=hclust_2, data[, 2])

# K-Means
# Perform k-means clustering on a data matrix with 2 clusters
kmeans_2 <- kmeans(data[, 3:ncol(data)], centers=2)
kmeans_2$cluster
kmeans_2$centers
table(k_means_cluster=kmeans_2$cluster, data[,2])

