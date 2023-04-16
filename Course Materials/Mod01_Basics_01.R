


###  Company    : Stevens 
#  Project    : R Bootcamp 
#  Purpose    : Basic R
#  First Name	: Khasha
#  Last Name	: Dehnad
#  Id			    : 12345
#  Date       :
#  Comments   :

rm(list=ls())
######     simple statement  ####

x<-25
x


hello<-"Hello World"
print(hello)
hello

# to clear the Console cntl-L
######     getting help  ####


#################################################
##   Step:
##        help()
##        ?
##        example()
##        help.start()
##        c()
##        mean()
##        summary()
##        ls()
##        rm()
#################################################
help()
help(c)
?c()
example(c)
help.start()

######  use  c   ####
x<-c(1,2,2,NA,5,10)
#x<-c(1,2,2,2,5,10)
x


min(x)
max(x)
mean(x)

?min()


min(x, na.rm=TRUE)
max(x,na.rm=TRUE)
mean(x,na.rm=TRUE)

y<-mean(x,na.rm=TRUE)
y
?summary()
summary(x)


?length()

length(x)
hello <-"Hello World"

length(hello) 



nchar(hello)

############   ls()  #############
ls()

#######        rm() ##############
rm("x")
rm(y)
rm("hello")
rm("ll")

