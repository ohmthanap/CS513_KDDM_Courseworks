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

?sample()
#range_1_100<- 1:100
#sample(range_1_100,80)
#smpl80 <- sort(sample(range_1_100,80))
?sort()

idx<-sort(sample(nrow(iris),as.integer(.65*nrow(iris))))

training<-iris[idx,]

test<-iris[-idx,]



index <- seq(1,nrow(iris),by=5)

test<-iris[index,]
training <-iris[-index,]

?kknn()

predict_k5 <- kknn(formula=Species~., training, test[,-5], k=5,kernel ="rectangular")

fit <- fitted(predict_k5)
table(Actual=test$Species,Fitted=fit)

 

summary(iris)

 
##Define max-min normalization function
mmnorm <-function(x,minx,maxx) {z<-((x-minx)/(maxx-minx))
return(z) 
}

iris_normalized<-cbind.data.frame (         
           Sepal.Length=mmnorm(iris[,1],min(iris[,1]),max(iris[,1]))
         , sepal.Width=mmnorm(iris[,2],min(iris[,2]),max(iris[,2] ))
         ,Petal.Length=mmnorm(iris[,3],min(iris[,3]),max(iris[,3] ))
         , Petal.Width=mmnorm(iris[,4],min(iris[,4]),max(iris[,4] ))
         ,Species=iris[,5]
         
)

summary(iris_normalized)



predict_k5 <- kknn(formula=factor(Species)~., training, test[,-5], k=5,kernel ="triangular" )
summary(predict_k5 )
fit <- fitted(predict_k5)
table(Actual=test$Species,Fitted=fit)


#install.packages('VIM')

library('VIM')
?kNN
iris_missing<-iris
iris_missing[c(3,30,40),3]<-NA

iris_missing2<-kNN(iris_missing,variable ='Petal.Length',k=3,
                   dist_var=c('Sepal.Length','Sepal.Width'))

 


