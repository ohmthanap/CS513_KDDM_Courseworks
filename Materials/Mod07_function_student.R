#################################################
#  Company    : Stevens 
#  Project    : R Bootcamp 
#  Purpose    : Function
#  First Name  : Khasha
#  Last Name  : Dehnad
#  Id			    : 12345
#  Date       :
#  Comments   :

rm(list=ls())
#################################################
##   Step:
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
##
##
######################
## Define a funcition!!!


mmnorm <-function(parms)
{ 
return()                              
}
myvector<-1:20




f_print <-function(x1,x2,x3,x4,x5)
{ 
  print(c('value of x1',x1))
  print(c('value of x2',x2))
  print(c('value of x3',x3)) 
  print(c('value of x4',x4)) 
  print(c('value of x5',x5)) 
}
f_print(10,5,3,2,1)

f_print(x2=10,x5<-5,4,3,2)

# difference between x=2 and x<-2
f_print(x2<-10,x5=5,4,3,2)

x<-c(1,2,6,6,6,6,7,7)
unique(x)
match(x, unique(x) )
tabulate(match(x,  unique(x)))
which.max( tabulate(match(x,  unique(x))))

mfv <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

mfv(x)

#installed.packages()
install.packages("modeest")
#require(devtools)
#install.packages("modeest",version = "3.3.2")
library(modeest)
?mlv()
x_mfv<-mlv(x , method = "mfv",na.rm = TRUE,) 

