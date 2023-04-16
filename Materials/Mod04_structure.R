
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
mode(x)
typeof(x)
is.vector(x)
length(x)

avector<-c(1,2,3,4)
avector


names(avector)<-c("one","two","three","four")
avector

typeof(avector)
elmentnames<-names(avector)


names(avector)<-c("new 1","new 2","new 3","new 4")
avector
names(avector)
myvectornames<-names(avector)




## Factor()  ####
?factor()



cat<-c("good","bad","good","bad","bad","bad","good")


typeof(cat)
cat2<-factor(cat) # level (default):sort by alphabet a->z
cat2
typeof(cat2)
as.integer(cat2)

cat3<-factor(cat,levels=(c("good","bad")))
cat3
catnumb<-as.numeric(cat3)
as.integer(cat3)


days<-c("Monday", "Sunday","Tuesday", "Wednesday"
        ,"Thursday",  "Saturday" )
days
days_factor<-factor(days)


days_factor<-factor(days,levels=(c("Monday", "Tuesday", "Wednesday"
                        ,"Thursday", "Friday", "Saturday", "Sunday"))
)

asint<-as.integer(days_factor)

mode(days_factor)
typeof(days_factor)
typeof(days)
is.factor(days)

asnumb<-as.numeric(days)


days_factor<-factor(days)


days_factor
typeof(days_factor)
asnum_days_factor<-as.numeric(days_factor)
print(days_factor)
 


 

## Matrix   ####
x<-1:9
?matrix()
is.matrix(x)
 
mx1<- matrix(x, nrow = 3, ncol = 3,byrow = FALSE)
is.matrix(mx1)
mx1


colnames(mx1)<-c("col1","col2","col3")
rownames(mx1)<-c("row1","row2","row3")
mx1

dimnames(mx1) <- list(c("a", "b","c"), c("d", "e","f"))
mx1


?str()
str(mx1)


mx1<- matrix(1:9, nrow = 3, ncol = 3,byrow = FALSE)
mx2<- matrix(c(3,2,1,1), nrow = 2, ncol = 2,byrow = FALSE) 




is.matrix(mx2)
colnames(mx2)<-c("c1","c2")
rownames(mx2)<-c("r1","r2")
mx2

## error appears 
mxadd<-mx1+mx2

mx1<- matrix(x, nrow = 3, ncol = 3,byrow = FALSE)
mx1

mx3<-matrix(11:19,nrow = 3, ncol = 3,byrow =TRUE)
mx3



mxadd1_3<-mx1+mx3
mx1
mx3
mxadd1_3


mxmult1_3<-mx1*mx3

mx1
mx3
mxmult1_3 


mxmult1_3_correct<- mx1 %*% mx3

mx1
mx3
mxmult1_3_correct

## transposing Matrix
 
mxt1<-t(mx1)

## inversing Matrix

c<-c(1,2,2,1)
mxc<-matrix(c,nrow=2, ncol=2, byrow =TRUE )
mrh<-matrix(c(5,4),nrow=2,ncol=1,byrow=TRUE)
invmc<-solve(mxc)
value<-invmc%*%mrh





## mx1 is singular matrix

invmx1<-solve(mx1)


## list   ####
my.lst <- list(34453, c("khasha", "Dehnad"), c(14.3,12,15,19))
my.lst



my.lst <- list(stud.id=34453, 
               stud.name=c("First Name", "Last Name"),
               stud.marks=c(14.3,12,15,19))
is.list(my.lst)
mode(my.lst)
typeof(my.lst)
length(my.lst)
my.lst

my.lst2<-list(seq=1:10,my.lst)
my.lst2
length(my.lst2)




## data.frame   ####
my.dataset <- data.frame(site=c('A','B','C','D','E'),ph=c(7.4,6.3,8.6,7.2,8.9))
is.list(my.dataset)
is.data.frame(my.dataset)
is.matrix(my.dataset)
typeof(my.dataset)
class(my.dataset)
length(my.dataset)

View(my.dataset)



data() # to view R data set


data(iris) # import data iris

View(iris) # display data iris
mode(iris) # check mode of data iris
typeof(iris) # check type of data iris
class(iris) # check class of data iris
 
length(iris) # count the number of vectors (in this case is columns of data set)
nrow(iris) # count the number of rows
is.data.frame(iris)
x<-c(1,5,10) 
y<-c(22,33,44)  

ls()
## managing the enviornment
drop<-c("x","iris","drop")
?rm()
rm(list=drop)

rm(list=ls())


## download the following CSV files
# income_zip.csv lung.csv Titani_rows

