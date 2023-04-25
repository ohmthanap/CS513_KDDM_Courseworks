#  Course          : Data Mining
#  First Name      : Khasha
#  Last Name       : Dehnad
#  Id              : 12345
#  purpose         : apply knn to iris dataset

## Step 0 clean up!!!


## remove all objects
rm(list=ls())

?install.packages
# check to see if you have the kknn package
installed.packages()
install.packages("kknn")
#Use the R library("kknn") 

library(kknn)
?kknn()
#Load the iris dataset and attach it
data(iris)
View(iris)


mmnorm3 <-function(x)
{z<-((x-min(x))/(max(x)-min(x))) 
return(z)                              
}
mmnorm3
lmmnorm3=lapply(x,mmnorm3)

iris_normalized<-iris 
iris_normalized$Sepal.Length<-mmnorm3(iris_normalized$Sepal.Length)
iris_normalized$Sepal.Width<-mmnorm3(iris_normalized$Sepal.Width)
iris_normalized$Petal.Length<-mmnorm3(iris_normalized$Petal.Length)
iris_normalized$Petal.Width<-mmnorm3(iris_normalized$Petal.Width)

summary(iris_normalized)


idx<-sort(sample(nrow(iris_normalized),as.integer(.65*nrow(iris_normalized))))

training<-iris[idx,]

test<-iris[-idx,]

predict_k5n <- kknn(formula=factor(Species) ~., training, test, k=5,kernel ="triangular")
summary(predict_k5n)
 
 
fit <- fitted(predict_k5n)
table(Actual=test$Species,Fitted=fit)


#install.packages('VIM')

library('VIM')
?kNN
iris_missing<-iris
iris_missing[c(3,30,40),3]<-NA

iris_missing2<-kNN(iris_missing,variable ='Petal.Length',k=3,
                   dist_var=c('Sepal.Length','Sepal.Width'))

 
predict_k7n <-kknn(formula = formula=Species ~., train, test, na.action = na.omit(), 
     k = 7, distance = 2, kernel = "optimal", ykernel = NULL, scale=TRUE,
     contrasts = c('unordered' = "contr.dummy", ordered = "contr.ordinal"))


predict_k7n <- kknn(formula=Species ~., training, test, k=7,kernel ="rectangular")
