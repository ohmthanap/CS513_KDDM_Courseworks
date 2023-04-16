
#  Company    : Stevens 
#  Project    : R Bootcamp 
#  Purpose    : structures 
#  First Name  : Khasha
#  Last Name  : Dehnad
#  Id			    : 12345
#  Date       :
#  Comments   :

rm(list=ls())

############################################## ###
##   Step:
## 
##        matrix()
##        factor()
##        str()
##        %*%
##        t()
##        solve()
##        list()
##        rownames(),colnames()
##        dimnames()
##        data.frame()
##        View()
################### ###

## vector  ####
x<-1:9



avector<-c(1,2,3,4)


names(avector)<-c("one","two","three","four")






## Factor()  ####
?factor()



cat<-c("good","bad","good","bad","bad","bad","good")






days<-c("Monday", "Sunday","Tuesday", "Wednesday"
        ,"Thursday",  "Saturday" )


 

## Matrix   ####
x<-1:9
?matrix()
is.matrix(x)
 
mx1<- matrix(x, nrow = 3, ncol = 3,byrow = FALSE)



colnames(mx1)<-c("col1","col2","col3")
rownames(mx1)<-c("row1","row2","row3")





mx1<- matrix(1:9, nrow = 3, ncol = 3,byrow = FALSE)
mx2<- matrix(c(3,2,1,1), nrow = 2, ncol = 2,byrow = FALSE) 





mx1<- matrix(x, nrow = 3, ncol = 3,byrow = FALSE)
mx1

mx3<-matrix(11:19,nrow = 3, ncol = 3,byrow =TRUE)
mx3








## transposing Matrix
 
mxt1<-t(mx1)

## inversing Matrix

c<-c(1,2,2,1)
mxc<-matrix(c,nrow=2, ncol=2, byrow =TRUE )
mrh<-matrix(c(5,4),nrow=2,ncol=1,byrow=TRUE)

 



## mx1 is singular matrix




## list   ####
my.lst <- list(34453, c("First Name", "Last Name"), c(14.3,12,15,19))
my.lst



my.lst <- list(stud.id=34453, 
               stud.name=c("First Name", "Last Name"),
               stud.marks=c(14.3,12,15,19))
is.list(my.lst)


my.lst2<-list(seq=1:10,my.lst)
length(my.lst2)




## data.frame   ####
my.dataset <- data.frame(site=c('A','B','C','D','E'),ph=c(7.4,6.3,8.6,7.2,8.9))



