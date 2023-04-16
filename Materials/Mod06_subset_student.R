#################################################
#  Company    : Stevens 
#  Project    : R Bootcamp 
#  Purpose    : subset
#  First Name  : Khasha
#  Last Name  : Dehnad
#  Id			    : 12345
#  Date       :
#  Comments   :
rm(list=ls())

#################################################
##   Step:
##    [[]]
##     []
##
##
##
##
##
##
##
##
##
##
######################

#temp<- as.data.frame(installed.packages())

avector<-c(1,2,3,4)
names(avector)<-c("first","second","third","fourth" )



my.lst <- list(34453, c("Khasha", "Dehand"), c(14.3,12,15,19))





data()
data(iris)
View(iris)

thirdcol_allrows<-iris[,3]
iris[3,]




## read in Titanic rows
name <-file.choose()
dsn <- read.csv(name )
View(dsn)

table(Class=dsn$Class,Survival=dsn$Survived)
ftable(Class=dsn$Class,Sex=dsn$Sex,Age=dsn$Age, Survived=dsn$Survived)

