#################################################
#  Company    : Stevens 
#  Project    : R Bootcamp 
#  Purpose    : EDA
#  First Name  : Khasha
#  Last Name  : Dehnad
#  Id			    : 12345
#  Date       : replacing and removing missing values
#  Comments   :

rm(list=ls())
dev.off()

data(iris)
View(iris)

length(iris)
nrow(iris)
iris_missing<-iris
iris_missing[c(3,30,40),3]<-NA

summary(iris_missing)



?boxplot()
boxplot(iris[1:3])
?hist()
hist(iris$Sepal.Length)
?pairs()
pairs(iris[1:2] )
 
pairs(iris[1:4])
pairs(iris[1:4], main = "Iris Data ",      pch = 10 )
 
 pairs(iris[1:4], main = "Anderson's Iris Data -- 3 species",
      pch = 21, bg = c("red", "green3", "blue")[factor(iris$Species)])
 mtext(c('Red=Sotosa','Green=Versicolor','Blue=Virginica'), col=c("red", "green3","Blue"),side=1, line=c(2,3,4) )

  ?mtext()
?plot 
 plot(iris[1:2] )
 points(iris[1:2], cex = .5, col = "blue") 

iris_missing<-iris
iris_missing[c(3,30,40),3]<-NA
?na.omit
iris_notmissing<-na.omit(iris_missing)


iris_missing<-iris
iris_missing[c(3,30,40),3]<-NA
#installed.packages()
install.packages("modeest")
#require(devtools)
#install.packages("modeest",version = "3.3.2")
library(modeest)
?mlv()

PL_mfv<-mlv(iris_missing$Petal.Length , method = "mfv",na.rm = TRUE,) 
 
PL_mfv
is.na(iris_missing$Petal.Length)
iris_missing[is.na(iris_missing$Petal.Length),"Petal.Length"]<-PL_mfv


iris_missing<-iris
iris_missing[c(3,30,40),3]<-NA
#Stop Here
#;
#require(devtools)
#install_version("VIM", version = "3.3.2")
#install.packages("abind")
install.packages("VIM")
install.packages("VIM", dependencies = TRUE)
library('VIM')
?kNN

iris_imput<-kNN(iris_missing,variable ='Petal.Length',k=3,
         dist_var=c('Sepal.Length','Sepal.Width'))






