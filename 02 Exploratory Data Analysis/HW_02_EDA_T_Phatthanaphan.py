# Course:   CS 513-A
# Subject:  Homework 2
# Fullname: Thanapoom Phatthanaphan
# Date:     19 Feb 2023


import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# import csv file
data = pd.read_csv("breast-cancer-wisconsin.csv", na_values='?')
data = pd.set_option('display.max_columns', 'display.max_rows', None)
print(data)

# summary date (eg. max, min, mean)
summary_data = data.describe()
print(summary_data)

# check
missing_values = data.isna()
print(missing_values)

for i in data.columns:
    column_mean = data[i].mean(skipna=True)
    data[i] = data[i].fillna(column_mean)

freq_class_vs_f6 = data.groupby(['Class', 'F6']).size()
print(freq_class_vs_f6)

plt.scatter(data.iloc[:, 1], data.iloc[:, 2], c='blue', label='F1 vs F2')
plt.xlabel('F1')
plt.ylabel('F2')
plt.title('Scatter plot of F1 to F2')
plt.show()

plt.scatter(data.iloc[:, 1], data.iloc[:, 3], c='red', label='F1 vs F3')
plt.xlabel('F1')
plt.ylabel('F3')
plt.title('Scatter plot of F1 to F3')
plt.show()

plt.scatter(data.iloc[:, 1], data.iloc[:, 4], c='green', label='F1 vs F4')
plt.xlabel('F1')
plt.ylabel('F4')
plt.title('Scatter plot of F1 to F4')
plt.show()

plt.scatter(data.iloc[:, 1], data.iloc[:, 5], c='orange', label='F1 vs F5')
plt.xlabel('F1')
plt.ylabel('F5')
plt.title('Scatter plot of F1 to F5')
plt.show()

plt.scatter(data.iloc[:, 1], data.iloc[:, 6], c='purple', label='F1 vs F6')
plt.xlabel('F1')
plt.ylabel('F6')
plt.title('Scatter plot of F1 to F6')
plt.show()

plt.scatter(data.iloc[:, 2], data.iloc[:, 1], c='blue', label='F2 vs F1')
plt.xlabel('F2')
plt.ylabel('F1')
plt.title('Scatter plot of F2 to F1')
plt.show()

plt.scatter(data.iloc[:, 2], data.iloc[:, 3], c='blue', label='F2 vs F3')
plt.xlabel('F2')
plt.ylabel('F3')
plt.title('Scatter plot of F2 to F3')
plt.show()

plt.scatter(data.iloc[:, 2], data.iloc[:, 4], c='red', label='F2 vs F4')
plt.xlabel('F2')
plt.ylabel('F4')
plt.title('Scatter plot of F2 to F4')
plt.show()

plt.scatter(data.iloc[:, 2], data.iloc[:, 5], c='green', label='F2 vs F5')
plt.xlabel('F2')
plt.ylabel('F5')
plt.title('Scatter plot of F2 to F5')
plt.show()

plt.scatter(data.iloc[:, 2], data.iloc[:, 6], c='orange', label='F2 vs F6')
plt.xlabel('F2')
plt.ylabel('F6')
plt.title('Scatter plot of F2 to F6')
plt.show()

plt.scatter(data.iloc[:, 3], data.iloc[:, 1], c='purple', label='F3 vs F1')
plt.xlabel('F3')
plt.ylabel('F1')
plt.title('Scatter plot of F3 to F1')
plt.show()

plt.scatter(data.iloc[:, 3], data.iloc[:, 2], c='purple', label='F3 vs F2')
plt.xlabel('F3')
plt.ylabel('F2')
plt.title('Scatter plot of F3 to F2')
plt.show()

plt.scatter(data.iloc[:, 3], data.iloc[:, 4], c='purple', label='F3 vs F4')
plt.xlabel('F3')
plt.ylabel('F4')
plt.title('Scatter plot of F3 to F4')
plt.show()

plt.scatter(data.iloc[:, 3], data.iloc[:, 5], c='green', label='F3 vs F5')
plt.xlabel('F3')
plt.ylabel('F5')
plt.title('Scatter plot of F3 to F5')
plt.show()

plt.scatter(data.iloc[:, 3], data.iloc[:, 6], c='orange', label='F3 vs F6')
plt.xlabel('F3')
plt.ylabel('F6')
plt.title('Scatter plot of F3 to F6')
plt.show()

plt.scatter(data.iloc[:, 4], data.iloc[:, 1], c='purple', label='F4 vs F1')
plt.xlabel('F4')
plt.ylabel('F1')
plt.title('Scatter plot of F4 to F1')
plt.show()

plt.scatter(data.iloc[:, 4], data.iloc[:, 2], c='purple', label='F4 vs F2')
plt.xlabel('F4')
plt.ylabel('F2')
plt.title('Scatter plot of F4 to F2')
plt.show()

plt.scatter(data.iloc[:, 4], data.iloc[:, 3], c='purple', label='F4 vs F3')
plt.xlabel('F4')
plt.ylabel('F3')
plt.title('Scatter plot of F4 to F3')
plt.show()

plt.scatter(data.iloc[:, 4], data.iloc[:, 5], c='purple', label='F4 vs F5')
plt.xlabel('F4')
plt.ylabel('F5')
plt.title('Scatter plot of F4 to F5')
plt.show()

plt.scatter(data.iloc[:, 4], data.iloc[:, 6], c='purple', label='F4 vs F6')
plt.xlabel('F4')
plt.ylabel('F6')
plt.title('Scatter plot of F4 to F6')
plt.show()

plt.scatter(data.iloc[:, 5], data.iloc[:, 1], c='orange', label='F5 vs F1')
plt.xlabel('F5')
plt.ylabel('F1')
plt.title('Scatter plot of F5 to F1')
plt.show()

plt.scatter(data.iloc[:, 5], data.iloc[:, 2], c='orange', label='F5 vs F2')
plt.xlabel('F5')
plt.ylabel('F2')
plt.title('Scatter plot of F5 to F2')
plt.show()

plt.scatter(data.iloc[:, 5], data.iloc[:, 3], c='orange', label='F5 vs F3')
plt.xlabel('F5')
plt.ylabel('F3')
plt.title('Scatter plot of F5 to F3')
plt.show()

plt.scatter(data.iloc[:, 5], data.iloc[:, 4], c='orange', label='F5 vs F4')
plt.xlabel('F5')
plt.ylabel('F4')
plt.title('Scatter plot of F5 to F4')
plt.show()

plt.scatter(data.iloc[:, 5], data.iloc[:, 6], c='orange', label='F5 vs F6')
plt.xlabel('F5')
plt.ylabel('F6')
plt.title('Scatter plot of F5 to F6')
plt.show()

plt.scatter(data.iloc[:, 6], data.iloc[:, 1], c='purple', label='F6 vs F1')
plt.xlabel('F6')
plt.ylabel('F1')
plt.title('Scatter plot of F6 to F1')
plt.show()

plt.scatter(data.iloc[:, 6], data.iloc[:, 2], c='purple', label='F6 vs F2')
plt.xlabel('F6')
plt.ylabel('F2')
plt.title('Scatter plot of F6 to F2')
plt.show()

plt.scatter(data.iloc[:, 6], data.iloc[:, 3], c='purple', label='F6 vs F3')
plt.xlabel('F6')
plt.ylabel('F3')
plt.title('Scatter plot of F6 to F3')
plt.show()

plt.scatter(data.iloc[:, 6], data.iloc[:, 4], c='purple', label='F6 vs F4')
plt.xlabel('F6')
plt.ylabel('F4')
plt.title('Scatter plot of F6 to F4')
plt.show()

plt.scatter(data.iloc[:, 6], data.iloc[:, 5], c='purple', label='F6 vs F5')
plt.xlabel('F6')
plt.ylabel('F5')
plt.title('Scatter plot of F6 to F5')
plt.show()

sns.pairplot(data.iloc[:, 1:7])
plt.show()

plt.hist(data['F7'], bins=20, color='red', label='F7', alpha=0.5)
plt.hist(data['F8'], bins=20, color='blue', label='F8', alpha=0.5)
plt.hist(data['F9'], bins=20, color='green', label='F9', alpha=0.5)
plt.xlabel('Values')
plt.ylabel('Frequency')
plt.title('Histogram of F7 to F9')
plt.legend()
plt.show()

data.iloc[:, 7:10].boxplot()
plt.title('Box Plots of F7 to F9')
plt.show()

data = pd.read_csv("breast-cancer-wisconsin.csv", na_values='?')
data.dropna(inplace=True)
print(data)