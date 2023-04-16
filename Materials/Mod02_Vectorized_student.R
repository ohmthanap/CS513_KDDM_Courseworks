
#################################################
#  Company    : Stevens 
#  Project    : R Bootcamp 
#  Purpose    : Vectorization
#  First Name  : Khasha
#  Last Name  : Dehnad
#  Id			    : 12345
#  Date       :
#  Comments   :

rm(list=ls())
#################################################
##   Step:
##        length()
##        nchar()
##        is.vector() etc.
##        seq()
##        as.integer()etc.
##        typeof()
##        rm(list=ls())
################################################# 

x1<-c(10,5,6,6,6,7)

x2<-c(1,2,3) 



hello<-c("Hello World")


?is.vector()



x1<-c(10,5,6,6,6,7)
x1
mode(x1)
x2<-c(1,2,3) 
x2


x3<-x1+x2

x1
x2
x3


?seq()
x3<-seq(from=10.2,to=26.5,by=2.1)


x5<-seq(from=1,to=6,by=1)



x6<-1:6


x7<-as.integer(x3)
typeof(x7)


x8<-c(x7,x3)

typeof(x8)



x9<-c(x8,hello)
typeof(x9)




mixed_vector<-c(1,2,'3')
mode(mixed_vector)
typeof(mixed_vector)




?as.integer()
intger_vector<-as.integer(mixed_vector)
typeof(intger_vector)

?integer()
x<-5
typeof(x)
is.integer(x)
y<-integer(length=0)
y
typeof(y)
is.integer(y)



ls()
objects<-ls()
?rm()

objects<-ls()
?rm()


