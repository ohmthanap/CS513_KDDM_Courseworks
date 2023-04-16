############################################## ###
#  Company    : Stevens 
#  Project    : R Bootcamp 
#  Purpose    : external data
#  First Name  : Khasha
#  Last Name  : Dehnad
#  Id			    : 12345
#  Date       :
#  Comments   :

rm(list=ls())
############################################## ###
##   Step:
## 
##       read.csv
##       file
##       close
##       write.csv
##       setdiff
##       getwd
##
##
##
##
##
################### ###

##       read.csv   ####

?read.csv()

Titanic<-
     read.csv("/Users/thanapoomphatthanaphan/Education/Master Degree/Courses/CS 513 - Knowledge Dicovery & Data Mining/Titanic_rows.csv")
 
name <-file.choose()
Titanic_temp<-read.csv(name)
View(Titanic)
is.data.frame(Titanic_temp)
dsn<-
  read.csv("/Users/thanapoomphatthanaphan/Education/Master Degree/Courses/CS 513 - Knowledge Dicovery & Data Mining/Titanic_rows.csv")

con<-file("/Users/thanapoomphatthanaphan/Education/Master Degree/Courses/CS 513 - Knowledge Dicovery & Data Mining/Titanic_rows.csv",'r')
Titanic2 <- read.csv(con)
close(con)
View(Titanic2)

lung<-
  read.csv("C://Users/Administrator/OneDrive - stevens.edu/___Data/CSV_files/lung.csv")


con<-file("C://Users/Administrator/OneDrive - stevens.edu/___Data/CSV_files/lung.csv",'r')
 
lung2 <- read.csv(con, 
                      header = TRUE,
                  colClasses=c("ID"="character","AREA"="factor",
                               "Gender_father"="NULL"))
 close(con)
 View(lung2)
 name <-file.choose()
 income_byzip<-read.csv(name)
 
 colcls=c("STATEFIPS"="integer"
          ,"STATE"="character"
          ,"zipcode"="integer"
          ,"agi_stub"="integer"
          , "N1"="double"
          ,"NUMDEP"="NULL"
 )
 name <-file.choose()
 income_zip<-
   read.csv( name 
            ,header = TRUE
            ,colClasses=colcls,na.strings="?"
   )
 #"C://Users/Administrator/OneDrive - stevens.edu/___Data/CSV_files/income_by_zip_2013.csv" 
 is.factor(income_zip$STATE)
 New_zip.frame<-
   data.frame(cbind(Zipchar=as.character(income_zip$zipcode),State_factor=as.factor(income_zip$STATE)))
 is.data.frame(mydata.frame) 
 
 
# read csv file into R

 
dsn <- read.csv("http://www.location/dsn.csv",
                colClasses=c("id"="character"))


 
##       write.csv   ####
?write.csv()
write.csv(dsn,"C://AIMS/Stevens_/R- Bootcamp/raw_data/dsn.csv")
write.csv(dsn,"C://AIMS/garbage/dsn.csv")



a<-c("a1","a2","a3","a4")
ax<-c("a1","a2")
setdiff(a,ax)

?rm
?setdiff()
keep<-c("Titanic","keep")
setdiff(ls(),keep)
rm(list=(setdiff(ls(),keep)))

getwd()
setwd("C:/AIMS/Stevens_/R- Bootcamp/wd")
setwd("C:/Users/Khasha/Documents")
rm(list=ls())    
 