# R exercises

# Solve the following exercises WITHOUT USING FOR/WHILE LOOPS! 

# ------------------------------------------------------------------------------
# EX 1
# 
# Create a data frame of size 1000 (rows) x 12 (columns).
#
rm(list = ls())
m<-matrix(rep(0,times=36),3,12)
#m<-matrix(rep(0,times=12000),1000,12)
df<-data.frame(m)
# Assign to colnames the vector month.name (Hint: R enviroment variable). 
names(df)<-month.name
# Create a vector called UserID of 1000 random integer numbers 
# (hint: 1000 unique values) and assign it to data frame rownames.
UserID<-sample(100:200,3)
#UserID<-sample(1000)
rownames(df)<-UserID
df

# Fill the data frame with random continuos values between 0 and 1 milion. 
# The values represent the average account balance of our users in each month.
df[]<-data.frame(matrix(sample(0:100,36),3,12))
#df[]<-data.frame(matrix(sample(0:1000000,12000),1000,12))
df

# Which is the month with the highest average balance? 
e<-sapply(df[,names(df)],mean)
t<-max(e)
e[which(e==t)]
# ------------------------------------------------------------------------------
# EX 2
# 
# Consider the data frame created during the previous exercise.
# 
# Compute the average balance of each user during the whole year.
# Store the value in a new column called "year_avg_balance".
#r<-data.frame(matrix(c(1,1,1,2,2,2,3,3,3),nrow = 3,byrow = TRUE))
year_avg_balance<-apply(df,1,mean)
year_avg_balance
df<-cbind(df,year_avg_balance)
df
# ------------------------------------------------------------------------------
# EX3
#
# Normalize each average balance value (Hint: exclude year_avg_balance column) 
# creating a function that implements the following formula:
#  (x[i,j] - min(x)) / (max(x)-min(x))
normalization<-function(x){
  nr<-(x - min(x)) / (max(x)-min(x))
}
#v<-c(1:20)
#t<-normalization(v)
res<-apply(df[,-ncol(df)], 2, normalization)
res
# ------------------------------------------------------------------------------
# EX4
#
# Create a list of 12 elements (Hint: list names should be the months) 
# Each list element should contain the ID of the user with the highest averge
# account balance during that month. 

l<-list()
length(l)<-12
names(l)<-month.name
l
#---
#let's find id user
#which is the id of the user with max value in a column
#I take in input the column of my df
#firstly I take the index of the position of the maximum element
#then I return the name of the row corresponding to that index
#gives me the id of the user using the index of the row

df
gimme_id<-function(v){
  #index<-which(v==max(v)) #control on column
  #e<-row.names(df[index,]) #returns the name of row, so the user id
  row.names(df[which(v==max(v)),])
}
#l<-apply(df[,-ncol(df)],2,gimme_id) #questo fa stringa character!
l[]<-apply(df[,-ncol(df)],2,gimme_id);l
#class(l)

#---testing code on a single column
v<-c(1,70,3)
index<-which(v==max(v))  
e<-row.names(df[index,])
#---

