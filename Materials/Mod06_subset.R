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
typeof(avector)
second<-avector[2]
names(avector)<-c("first","second","third","fourth" )
second_el<-avector["second"]

v_na<-c(1,2,3,NA,5,6)
x<- -c(4:6)
v_nona<-v_na[-4]
v_1to3<-v_na[-c(4:6)]
v_TF<-v_na[c(T,F,T,F,T,F)]
is.na(v_na)
v_nona2<-v_na[is.na(v_na)==FALSE]

avector<-c(1,2,3,4)

avector
avector[2]<-22 
avector
avector<-c(1,2,3,x=5,6,7)
avector<-c(1,2,3,x<-5,6,7)

my.lst <- list(34453, c("Khasha", "Dehand"), c(14.3,12,15,19))
my.lst[2]
typeof(my.lst[2])

my.lst[2]
my.lst3<-my.lst[[2]] 
typeof(my.lst3)
is.vector(my.lst3)
my.lst3[1]

my.lst
str(my.lst)

is.list(my.lst[2])
my.lst
element2<-my.lst[[2]] 
is.list(element2)
is.vector(element2)
ln<-my.lst[[2]][2]


typeof(element2)
is.list(element2)
is.vector(element2)
last_name<-my.lst[[2]][2] 

data()
data(iris)
View(iris)
iris[4,2]
iris[,]
temp1<-iris[,-3]
temp2<-iris[-3,]
temp<-iris[c(13,5,10),c(5,2,4)]

thirdcol_allrows<-iris[,3]
iris[3,]

subset4<-iris[c(T,F,F,F),]

subset1<-iris[-c(5,1,20,23),-5]

subset2<-iris[100:120,]

subset3<-iris[c(T,F,F,F,F),c(2,3,4)]


indx<-2:20

subset2<-iris[-indx,-5]

subset1<-iris[c(1,2,5,8), ]
subset3<-iris[-c(1,2,5,8), ]
subset4<-iris[c(T,F),]

subset2<-iris[c(T,F),c(2,3,4)]

name <-file.choose()
dsn <- read.csv(name )
View(dsn)

table(Class=dsn$Class,Survival=dsn$Survived)
ftable(Class=dsn$Class,Sex=dsn$Sex,Age=dsn$Age, Survived=dsn$Survived)

Sex
dsn$Sex
attach(dsn)
Sex
Sex<-c("Yes","No")
rm("Sex")
detach(dsn)
## again error appears 
Sex
iris
attach(iris)
Sepal.Width
Sepal.Width<-1.9999
iris$Sepal.Width
iris[[1]]
detach(iris)
rm(list="Sepal.Width")


Sepal.Width<-'this is a test'
rm("Sepal.Width")

data("iris")
View(iris)
?sample
sample(100:200,50)
sample(150,97)
nrow(iris)

idx<-sample(nrow(iris),as.integer(.65*nrow(iris)))

training<-iris[idx,]
test<-iris[-idx,]


idx<-seq(1,nrow(iris),5)

training<-iris[-idx,]
test<-iris[idx,]



# stop here


new_agi_stub<-income_zip[is.na(income_zip$agi_stub)==FALSE,"agi_stub" ]

#<-cbind(,)
#<-rbind(pcs1,mcs1)
#typeof()
#is.data.frame()
#is.matrix()
#<-as.data.frame(cbind( ,)) 


indx<-seq(from=1, to=nrow(iris), by=5)

test<-iris[indx,]
training<-iris[-indx,]

data("iris")
View(iris)
?subset()
hist(iris$Sepal.Length)
summary(iris$Sepal.Length)
iris_subset<-subset(iris,Sepal.Length<6.4,select = -Species)
length(iris)
nrow(iris)