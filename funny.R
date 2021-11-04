x<-sample(1:400,7)
plot(x, cos(x),type="l",col="green")
stellaor<-c(1.3,141,181,350,23,363,317)
plot(stellaor, cos(stellaor),type="l",col="green")

#-------------
rm(list=ls())
# Create two vectors of different lengths.
vector1 <- c(5, 9, 3)
vector2 <- c(10, 11, 12, 13, 14, 15)
# Take these vectors as input to the array.
result <- array(c(vector1, vector2), dim = c(3, 3, 2))
print(result)
dim(result)<- c(6,3,1,4)#Error: rimensions don't match the length of the object
result <- array(c(vector1, vector1), dim =c(6, 3, 1, 4))#recycling
result
result[vector1]
result[vector2]
#---
# Create the data frame.
rm(list=ls())

subjects <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Mike","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Print the data frame.			
print(emp.data)

#---------------
#from the net: adds percent
addPercent <- function(x, mult = 100, FUN = round, ...){
  percent <- FUN(x * mult, ...)
  paste(percent, "%", sep = "")
}
new.numbers<- c(0.21, 0.14, 0.35, 0.52)
addPercent(new.numbers, FUN = signif, digits = 3)
#-------
#all arguments after an ellipses must have default values
#all arguments after an ellipses must have default values
#all arguments after an ellipses must have default values
#all arguments after an ellipses must have default values
#all arguments after an ellipses must have default values
#all arguments after an ellipses must have default values
#all arguments after an ellipses must have default values
#all arguments after an ellipses must have default values
#all arguments after an ellipses must have default values
#all arguments after an ellipses must have default values
#all arguments after an ellipses must have default values
#all arguments after an ellipses must have default values
#all arguments after an ellipses must have default values
#all arguments after an ellipses must have default values

#reverse complement
rev_compl<-function(s){
  s<-gsub("A","_",s)
  s<-gsub("T","A",s)
  s<-gsub("_","T",s)
  s<-gsub("C","_",s)
  s<-gsub("G","C",s)
  s<-gsub("_","G",s)
  print(s)
  s<-paste(rev(strsplit(s,split="")[[1]]),sep = "",collapse = "")
}

x<-rev_compl("AACCCT");x

#step by step
x<-"ciao"
x<-strsplit(x,split="")
x<-rev(x[[1]])
x<-paste(x,sep = "",collapse = "")


#----------------
#substitution of elements in strings
x <- "ATCGTACGTACGTCGATCGTACGTACGTACAC"
x <- "AAATAAA"
x<-gsub("A","C",x)
#compact things
q<-"Astrid Vincze"
q<-gsub(" ","",q)
#-----
# prime numbers
is_prime<- function(num){
  flag = 0
  if(num > 1) {
    # check for factors
    flag = 1
      for(i in 2:(num-1)) {
        if ((num %% i) == 0) {
        flag = 0
        break
        }
      }
  } 
  if(num == 2)    flag = 1
  if(flag == 1) {
    print(paste(num,"is a prime number"))
  } else {
    print(paste(num,"is not a prime number"))
  }
}
x = as.integer(readline(prompt="Enter a number: "))
x<-as.integer(readline())
is_prime(x)
is_prime(11)
is_prime(138443)
#----
