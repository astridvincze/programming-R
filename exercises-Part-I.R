# Exercise 1
# Create a directory "exercisesR". Inside the folder create another
# directory named "Es" and set it as working directory for R
# ----------------------------------------------------------
getwd()#gives me the current location
dir.create("exercisesR")#create a directory
dir.create("exercisesR/Es")
setwd("exercisesR/Es")#set a directory as working directory

# ----------------------------------------------------------

# Exercise 2
# Open a help window for the mean function
# ------------------------------------------------------------------------------------------------------
?mean
# ------------------------------------------------------------------------------------------------------
# Exercise 3
# Execute the operation sqrt(2*10 + 5), put the result in the variable x and print it to the screen.
# ------------------------------------------------------------------------------------------------------
x<-sqrt(2*10+5)
x
# ------------------------------------------------------------------------------------------------------
# Exercise 4
# Define a vector v1 = (1,2,3,4,5), v2 = (23,13,1,33,2). Calculate the vector v3 = v1 + v2. Execute the 
# log10 of each element of v3 and put the result in v4. Print the square of each element of v4 
# ------------------------------------------------------------------------------------------------------
v1<-c(1,2,3,4,5)
v2<-c(23,13,1,33,2)
v3<-v1+v2

v4<-log(10,v3)
v5<-v4*v4
v5<-v4^2
v5
# ------------------------------------------------------------------------------------------------------
# Exercise 5
# Print the sum of the squares of the first ten numbers using sequences. 
# Hint: the function sum(v) calculate the sum of the elements of the vector v.
# ------------------------------------------------------------------------------------------------------
#my_seq<-1:10
#my_seq<-my_seq*my_seq
#r=sum(my_seq)
#r
sum((1:10)^2)
# ------------------------------------------------------------------------------------------------------
# Exercise 6
# Print the sum of the first ten even numbers.
# ------------------------------------------------------------------------------------------------------
rm(list = ls())
#s<-seq(0,20,by=2)
#r=sum(s)
#r
sum(seq(0,20,by=2))
# ------------------------------------------------------------------------------------------------------
# Exercise 7
# Create a vector v with ten numbers in the range (1,100). Print how many numbers are
# greater than 50.
# Hint: Use the function sum.
# ------------------------------------------------------------------------------------------------------
rm(list = ls())
my_seq <-sample(1:100, 10)
my_seq
a<-sum(my_seq>50)
a
# ------------------------------------------------------------------------------------------------------
# Exercise 8
# Define the following vector: v <- c(NA, NA, NA, NA, 1:100). Create a vector v2 from v with elements greater than 50
# but lower than 80. Exclude NA values.
# ------------------------------------------------------------------------------------------------------
rm(list = ls())
v <- c(NA, NA, NA, NA, 1:100)
v1<-v[!is.na(v) & v>50 & v<80]#we are subsetting a vector
v1
#I put replace=TRUE to be able to use a population which is smaller than the sample that I'm creating
v2<-sample(v1,31,replace=TRUE)
v2

# ------------------------------------------------------------------------------------------------------
# Exercise 9
# Define a vector v with elements from 1 to 20. Create a vector v2 with the odd elements of v.
# Assign to v2 a names vector with the letters of even position (from variable LETTERS). Print v2. 
# Use the negative indexing.
# ------------------------------------------------------------------------------------------------------
#here I have to use module to find out the rest of the division
rm(list = ls())
v<-c(1:20)
v2<- v[(v%%2)!=0]
#v2<-v[seq(1,20,by=2)]
v2
m<-length(v2)

letter_vector <- LETTERS
n <- length(letter_vector)
letter_vector<-c(letter_vector[seq(n) %% 2 == 0])
letter_vector
letter_vector<-letter_vector[c(0:m)]
letter_vector
names(v2)<-letter_vector
v2
#-------------------------
#esercizio 9 versione elena
v
# ------------------------------------------------------------------------------------------------------
# Exercise 10
# Build a factor of 25 elements (strings) formed by 3 different levels
# ------------------------------------------------------------------------------------------------------
rm(list=ls())
trt <- factor(rep(c("first","second","third"),c(8,11,4)))
trt
summary(trt)
# ------------------------------------------------------------------------------------------------------
# Exercise 11
# Which data structures could be used to model a data set with a set of patients
# healthy and sick, subjected to 5 different types of clinical analysis?
# ------------------------------------------------------------------------------------------------------
#data frame
rm(list=ls())
n<-c("Peter","Alex","Luke")
s<-c("Red","Sparks","Cornell")
stst<-c("healthy","healthy","sick")
age<-c(48,21,34)

#c1#info and results...
#c2
#c3
#c4
#c5
trt <- data.frame(n,s,stst,age)
trt
# ------------------------------------------------------------------------------------------------------
# Exercise 12
# Create a list l with the following elements:
#   - a vector named seq with the first 10 numbers
#   - a vector named letters with the first 10 letters from LETTERS
#   - a vector named bool with some boolean values
rm(list=ls())
vector <- sample(x = c("TRUE","FALSE"), size = 7, replace = TRUE)
l<-list(seq=1:10, letters=LETTERS[c(1:10)],bool=vector)
l

# Print the length of l
length(l)
# Print the elements of the vector "seq" using its name and its numerical index
l$seq
l[1]
# Print the second element of vector letters
l[["letters"]][2]
# Add to l, as last element, the string "last"
l<- c(l,"last")
#l<-list(l,"last")
l
# ------------------------------------------------------------------------------------------------------

# Exercise 13
# Given the list li <- list(m = matrix(rnorm(64), nrow = 8), s = c(rep("T", 3), rep("G", 5))) 
# - extract the second column of the matrix
# - the "G"s of the vector s
# Add to the list a vector of 10 random numbers.
# Access in 3 different ways to the second component of the list
# What is the difference between li[1] and li[[1]]?
# With the function diag, print the diagonal of the matrix of li 
# ------------------------------------------------------------------------------------------------------
rm(list = ls())
li <- list(m = matrix(rnorm(64), nrow = 8), s = c(rep("T", 3), rep("G", 5))) 
li[[1]][,2]#extract...
#y<-li[["s"]][s(li[["s"]]=="G")]#the G...
li[["2"]][li[["2"]] =="G"]
x<-li[2]#dà anche il nome
x1<-li[[2]]#non dà il nome
x 
x1 

my_seq <-sample(1:100,10)#random elements
li[[length(li)+1]]<-my_seq
li$v<-my_seq#aggiungo un'altra volta my_seq
my_seq
li
#dare in 3 modi 
x<-li[2]#dà anche il nome
x1<-li[[2]]#non dà il nome
li$s

#diag
diag(li$m)
# ------------------------------------------------------------------------------------------------------
# Exercise 14
# Define a 5x5 matrix m formed by the numbers from 1 to 25. Assign names to columns and rows with the first 5 letters. 
# Create a new matrix m2, that is m without column 1 and 3 but a last column with all one named 'O'.
# ------------------------------------------------------------------------------------------------------
rm(list = ls())
my_matrix<-matrix(1:25,5,5)
my_matrix
t2 <- my_matrix[,-c(1,3)]
t2
colnames(t2)<-c(LETTERS[1:3])
rownames(t2)<-c(LETTERS[1:5])
colnames(t2)
colnames(t2)[ncol(t2)]<-"0"
t2

#rbind or cbind to add a new row or new column
my_matrix<-rbind(my_matrix,rep(0, times=ncol(my_matrix)))

# ------------------------------------------------------------------------------------------------------
# Exercise 15
# Define a 5x5 matrix m with all one
# Define a 5x2 matrix m2 with the first 10 numbers.
# Put in m3 the result of matrix multiplication m*m2.
# Use %*% to multiply matrices
# Put m, m2 and m3 in a list l
# Print l
# ------------------------------------------------------------------------------------------------------
rm(list=ls())
m<-matrix(1,5,5)
m2<-matrix(1:10,5,2)
m3<-m%*%m2 #returns a 5x2 matrix
m;m2;m3
l<-list(m,m2,m3)  
l
# ------------------------------------------------------------------------------------------------------
# Exercise 16
# Create a 4x4 matrix m with the first 16 letters. Fill the matrix by rows.  
# Define a matrix m2 with all columns of m except the third
# Define a vector v with 4 arbitrary strings
# Create a matrix m3 which is the concatenation of m and v by columns
# ------------------------------------------------------------------------------------------------------
rm(list=ls())
m<-matrix(c(LETTERS[1:16]),4,4,byrow = T)
m2<-m[,-3]
v<-c("is","an","arbitrary","string")
m3 <- cbind(m2, v)# to put a column in front of matrix
m3
# ------------------------------------------------------------------------------------------------------
# Exercise 17
# Build 2 matrices M and N with 5 columns. Build (if possible) with rbind a matrix with
# 5 columns and as rows, the rows of M and N. Is it possible build a matrix from M and N
# using cbind?
# ------------------------------------------------------------------------------------------------------
rm(list=ls())
M<-matrix(1:15,ncol = 5)
N<-matrix(16:25,ncol = 5)
M; N;
R<-rbind(M,N)
#R<-cbin(M,N) #Error in cbind(M, N) : number of rows of matrices must match (see arg 2)
# ------------------------------------------------------------------------------------------------------
# Exercise 18
# Given 2 square matrices A and B (3x3) formed by random numbers, compute their element-wise
# product and their rows times columns product. Define a vector b with 3 elements and solve
# (function "solve") the linear system Ax = b.
# ------------------------------------------------------------------------------------------------------
rm(list=ls())
A<-matrix(2,3,3)
B<-matrix(sample(2:10, 9),3,3)
A;B;
C<-A%*%B
C
C<-A*B
C
#---apply solve() function
r<-c(3,6,12)
solve(C, r)
solve(C, r,.Machine$double.eps)

# ------------------------------------------------------------------------------------------------------
# Exercise 19
# Build a 10x10 matrix composed by random numbers using at least two different ways.
# Use the functions matrix and array
# ------------------------------------------------------------------------------------------------------
rm(list = ls())
#function matrix
A<-matrix(sample(1:1000,100),10,10)
A
c<- matrix(1:9, nrow = 3)
c
#function array
rm(list=ls())
B <- array(sample(1:1000,100),dim = c(10,10))
B
#cbind and rbind
rm(list=ls())
i=0
r<-sample(1:100,10)
while(i<10){
  x<-sample(1:100,10)
  r<-cbind(r,x)
  i<-i+1
}
r

rm(list=ls())
i=0
r<-sample(1:100,10)
while(i<10){
  x<-sample(1:100,10)
  r<-rbind(r,x)
  i<-i+1
}
r
# ------------------------------------------------------------------------------------------------------
# Exercise 20
# Build 2 matrices x (3x4) and y (5x3) of characters. Change the matrix x with a unique
# assignment in order to replace its first two columns with the last two rows of y
# ------------------------------------------------------------------------------------------------------
rm(list = ls())
#---
i=0
A<-LETTERS[sample(1:24,1)]
x<-rep(A, times = 4)
while(i<2){
  A<-LETTERS[sample(1:24,1)]
  r<-rep(A, times = 4)
  x<-rbind(x,r)
  i<-i+1
}
x
rownames(x)=c("one","two","three")
#---
i=0
A<-LETTERS[sample(1:24,1)]
y<-rep(A, times = 3)
while(i<4){
  A<-LETTERS[sample(1:24,1)]
  r<-rep(A, times = 3)
  y<-rbind(y,r)
  i<-i+1
}
y
rownames(y)=c("first","second","third","fourth","fifth")

#first two columns x
x
y
#second column of x is now the last of y
x[,c(1,2)]<-t(tail(y,2))#not in the right order.
x
#------------------------------------
#transpose x and change rows
#------------------------------------
#v<-c(x[,1],x[,2])
#v<-c(tail(y,2))
#v

#mlml<-length(y[1,])
#x[,c(1,2)]<-y[c(mlml-1,mlml),]#not in the right order.
#x
# ------------------------------------------------------------------------------------------------------
# Exercise 21
# Build a 3x4x5 array formed by the first 60 positive natural numbers. Multiply a with
# an array with the same dimensions characterized by random numbers. Is it possible
# multiply "a" with a vector with 60 numbers? If yes, what do you get?
# Modify "a" in order to obtain an array 4-D of dimensions 3x5x2x2.
rm(list = ls())
a<-array(1:60,dim = c(3,4,5))
a
r<-array(c(sample(1:100),60),dim=c(3,4,5))
r
p<-a*r
p
v<-rep(2, times = 60)
v
r<-a*v
r#I get an array of the same dimension
a<-array(c(a[]),dim=c(3,5,2,2))
a
# ------------------------------------------------------------------------------------------------------

# Exercise 22
# Create a data frame df from an arbitrary 5x5 matrix.
# Add to df a factor with levels "1" and "0".
# ------------------------------------------------------------------------------------------------------
rm(list=ls())
m<-matrix(sample(1:100),5,5)
m
df <- data.frame(m)
df

data <- c(0,0,1,0,1)
factor_data <- factor(data)#gives me the levels too
#df<-rbind(df, factor_data)#not correct
df<-cbind(df, factor_data)

df
factor_data
str(df)
# ------------------------------------------------------------------------------------------------------
# Exercise 23
# Create a data frame df using three vectors and 1 factor (lengths > 5)
# Create a data frame df2 that is a subset of df binded with a 4x4 matrix
# ------------------------------------------------------------------------------------------------------
rm(list=ls())
Age<-sample(18:24,6)
h<-sample(150:200,6)
w<-sample(70:80,6)
f<-factor(c(0,1,1,0,1,0))
df<-data.frame(Age,h,w,f)
df

m<-matrix(sample(18:90,16),4,4)
m
df2<-df[c(1,2,3,4),]#same n of rows
df2

df2 <- unname(df2)
df3<-data.frame(df2, m)#subscript out of bounds
#df2<-rbind(df[c(1,2,3),], m)
# ------------------------------------------------------------------------------------------------------
# Exercise 24
# Create a data frame df using a list containing 2 matrices with a 
# different number of columns  
# ------------------------------------------------------------------------------------------------------
rm(list=ls())
x<-matrix(rep(8,times=12),4,3)
y<-matrix(rep(1,times=48),4,8)
x;y;
l<-list(x,y)
l
df<-data.frame(l[1],l[2])
colnames(df)=c(LETTERS[1:ncol(df)])
df
# ------------------------------------------------------------------------------------------------------
# Exercise 25
# Create a data frame containing the data frame of the previous exercise plus a vector
# Extract one of the columns in three ways
# ------------------------------------------------------------------------------------------------------
v<-sample(1:100,4)#at least 4 elements
v
df2<-data.frame(df,v)
df2
v2<-sample(1:100,12)#with a number of elements multiple of the nrow of df
v2
df3<-data.frame(df,v2)
df3
# ------------------------------------------------------------------------------------------------------
# Exercise 26
# Print the following attributes of the iris dataset:
# - class
class(iris)
# - dimensions
dim(iris)
# - number of rows
nrow(iris)
# - number of columns
ncol(iris)
# - space occupied by the dataset
object.size(iris)
# - names attribute
names(iris)
# ------------------------------------------------------------------------------------------------------

# Exercise 27 - Summary - Objects in R
rm(list=ls())
# Define a vector v with the following numbers: 27, 22, 23, 19, 21, 30 
v<-c(27, 22, 23, 19, 21, 30)
# Print v
v
# Print the dimensions of v
dim(v)
# Print the length of v
length(v)
# Print the class of v
class(v)
# Assign to v the dimension (2,3)
dim(v)<-c(2,3)
# Print v
v
# Print the dimensions of v
dim(v)
# Print the class of v
class(v)
# Assign to v the dimension NULL
dim(v)<-NULL
# Define a factor s with the values: "M", "F", "M", "F", "F", "F"
s<-factor(c("M", "F", "M", "F", "F", "F"))
# Print s
s
# Define a vector p with the strings: "Marco", "Monica", "Simone", "Giuliana", "Maria", "Marta"
p<-c("Marco", "Monica", "Simone", "Giuliana", "Maria", "Marta")
# Print the class of p
class(p)
# Use cbind to create a matrix M with columns p, v and s
M<-cbind(p,v,s)
str(M)
# Print the class of each column of M
class(M[,1])
class(M[,2])
class(M[,3])
apply(M, 2, class)

# Define a list l with the elements p, v and s
l<-list(p,v,s)
l
# Assign to l the names "Name", "Age" and "Gender"
#a<-c("Name", "Age", "Gender")
#colnames(l)<-a
names(l)[1] <- c('Name')
names(l)[2] <- c('Age')
names(l)[3] <- c('Gender')
# Print 
l
# Create a data frame using the list l
df<-data.frame(l)
# Print the class of df
class(df)
typeof(df)
# Print df
df
# Print the class of each column of df
class(df$Name)
class(df$Age)
class(df$Gender)
typeof(df[1,])
typeof(df[2,])
typeof(df[3,])
# ------------------------------------------------------------------------------------------------------

# ------------------------------------------------------------------------------------------------------
# Exercise 28
# Define a vector v with 20 numbers between 1 and 100
# Using a for loop, iterate over v and put in s the sum of the numbers greater than 50
# ------------------------------------------------------------------------------------------------------
rm(list = ls())
v<-sample(1:100,20)
#v<-rep(1,times=20)
#v<-c(v,51,51,51)
s=0
for (i in v) {
  if(i>50)
  s=s+i
  }
s
#alternativa molto più semplice
#in one line without for
v<-rep(1,times=20)
v<-c(v,51,51,51)
sum(v[v>50])
# ------------------------------------------------------------------------------------------------------
# Exercise 29
# Define a 10x10 matrix m
# Iterate over m and set each element m[i,j] based on these rules:
# - if i != j then  m[i,j] = i*j
# - otherwise       m[i,j] = 1
# ------------------------------------------------------------------------------------------------------
rm(list=ls())
m<-matrix(rep(0,times=100),10,10)
m
v<-1:10
for(i in v){
  for (j in v) {
    if(i!=j){m[i,j] = i*j}
    else{m[i,j] = 1}
  }
}
m
# ------------------------------------------------------------------------------------------------------
# Exercise 30
# Define a 5x5 matrix m1 with numbers between 1 and 10 and a 5x2 matrix m2 with numbers from 1 to 10
# Using for loops calculate the matrix multiplication m1*m2. Put the result in m3
# ------------------------------------------------------------------------------------------------------
rm(list=ls())
#m1<-matrix(sample(1:10,25,replace = TRUE),5,5)
#m2<-matrix(sample(1:10,10,replace = TRUE),5,2)
m1<-matrix(rep(1,times=25),5,5)
m2<-matrix(rep(3,times=10),5,2)
m3<-matrix(rep(0,times=10),5,2)
dim(m3)
for(i in 1:ncol(m2)){
  v1<-m2[,i]
  for (j in 1:nrow(m1)) {
    v2<-m1[j,]
    m3[j,i]<-sum(v1*v2)#somma del prodotto
  }
}
m1;m2;m3
# ------------------------------------------------------------------------------------------------------
# Exercise 31
# You're about to write your first function! Just like you would assign a value 
# to a variable with the assignment operator, you assign functions in the following
# way:
#
# function_name <- function(arg1, arg2){
#	# Manipulate arguments in some way
#	# Return a value
# }
#
# The "variable name" you assign will become the name of your function. arg1 and
# arg2 represent the arguments of your function. You can manipulate the arguments
# you specify within the function. After sourcing the function, you can use the 
# function by typing:
# 
# function_name(value1, value2)
#
# Below we will create a function called boring_function. This function takes
# the argument `x` as input, and returns the value of x without modifying it.
# Delete the pound sign in front of the x to make the function work! Be sure to 
# save this script and type submit() in the console after you make your changes.

boring_function <- function(x) {
  x
}
boring_function()
# ------------------------------------------------------------------------------------------------------

# ------------------------------------------------------------------------------------------------------
# Exercise 32
#Implement the function my_mean
# You're free to implement the function my_mean however you want, as long as it
# returns the average of all of the numbers in `my_vector`.
#
#v<-c(3,3,3,1,1,1,2,2,2)
my_mean<-function(x){
  sum(x)/length(x)
}
my_mean(v)

# Hint #1: sum() returns the sum of a vector.
# 	Ex: sum(c(1, 2, 3)) evaluates to 6
#
# Hint #2: length() returns the size of a vector.
# 	Ex: length(c(1, 2, 3)) evaluates to 3
#
# Hint #3: The mean of all the numbers in a vector is equal to the sum of all of
#		   the numbers in the vector divided by the size of the vector.
#
# Note for those of you feeling super clever: Please do not use the mean()
# function while writing this function!!!!!!

# ------------------------------------------------------------------------------------------------------

# ------------------------------------------------------------------------------------------------------
# Exercise 33
# You're going to write a function called "remainder." remainder() will take
# two arguments: "num" and "divisor" where "num" is divided by "divisor" and
# the remainder is returned. Imagine that you usually want to know the remainder
# when you divide by 2, so set the default value of "divisor" to 2. Please be
# sure that "num" is the first argument and "divisor" is the second argument.
#
# Hint #1: You can use the modulus operator %% to find the remainder.
#   Ex: 7 %% 4 evaluates to 3. 
#
# Remember to set appropriate default values!

remainder <- function(num, divisor=2) {
  # Write your code here!
  # Remember: the last expression evaluated will be returned! 
  num%%divisor
}

remainder(6)
remainder(12,5)
remainder(divisor = 3,num = 13)

# ------------------------------------------------------------------------------------------------------

# Exercise 34
# You can pass functions as arguments to other functions just like you can pass
# data to functions. Let's say you define the following functions:
#
# add_two_numbers <- function(num1, num2){
#    num1 + num2
# }
#
# multiply_two_numbers <- function(num1, num2){
#	num1 * num2
# }
#
# some_function <- function(func){
#    func(2, 4)
# }
#
# As you can see we use the argument name "func" like a function inside of 
# "some_function()." By passing functions as arguments 
# some_function(add_two_numbers) will evaluate to 6, while
# some_function(multiply_two_numbers) will evaluate to 8.
# 
# Finish the function definition below so that if a function is passed into the
# "func" argument and some data (like a vector) is passed into the dat argument
# the evaluate() function will return the result of dat being passed as an
# argument to func.
#
# Hints: This exercise is a little tricky so I'll provide a few example of how
# evaluate() should act:
#    1. evaluate(sum, c(2, 4, 6)) should evaluate to 12
#    2. evaluate(median, c(7, 40, 9)) should evaluate to 9
#    3. evaluate(floor, 11.1) should evaluate to 11

add_two_numbers <- function(num3, num4){
  num3 + num4
}

multiply_two_numbers <- function(num1, num2){
  num1 * num2
}
some_function <- function(add_two_numbers=1){
  add_two_numbers(2, 4)
}
some_function()

some_function <- function(multiply_two_numbers=1){
  multiply_two_numbers(2, 4)
}
some_function()

#other attempts
some_function <- function(num1,num2,n=1,multiply_two_numbers=1){
  multiply_two_numbers(num1, num2)+n
}
some_function(2,2,6)
some_function(2,7,14)
some_function(3,3)


some_function(5,5,5)
some_function(n=6,num2=4,num1=5)

another_function <- function(num1=1,num2=2,num3=3,add_two_numbers=1,multiply_two_numbers=1,){add_two_numbers(multiply_two_numbers(num1,num2),num3)}

another_function()
another_function(1,3,3)
another_function(num2=6,num1=3)

# Finish the function definition below so that if a function is passed into the
# "func" argument and some data (like a vector) is passed into the dat argument
# the evaluate() function will return the result of dat being passed as an
# argument to func.
d<-c(3,4)
some_function <- function(func,dat){
  func(dat[1],dat[2])
}
some_function(multiply_two_numbers,d)
some_function(add_two_numbers,d)
#--------------
evaluate <-function(func,dat){
  func(dat)
}
# Hints: This exercise is a little tricky so I'll provide a few example of how
# evaluate() should act:
#    1. evaluate(sum, c(2, 4, 6)) should evaluate to 12
evaluate(sum, c(2,4,6))
#    2. evaluate(median, c(7, 40, 9)) should evaluate to 9
evaluate(median, c(7,40,9))
#    3. evaluate(floor, 11.1) should evaluate to 11
evaluate(floor,11.1)
# ------------------------------------------------------------------------------------------------------

# Exercise 35
# The syntax for creating new binary operators in R is unlike anything else in
# R, but it allows you to define a new syntax for your function. I would only
# recommend making your own binary operator if you plan on using it often!
#
# User-defined binary operators have the following syntax:
#      %[whatever]% 
# where [whatever] represents any valid variable name.
# 
# Let's say I wanted to define a binary operator that multiplied two numbers and
# then added one to the product. An implementation of that operator is below:
#
"%mult_add_one%" <- function(left, right){ # Notice the quotation marks!
  left * right + 1
}
#
# I could then use this binary operator like `4 %mult_add_one% 5` which would
# evaluate to 21.

4%mult_add_one%5
12%mult_add_one%6

# Write your own binary operator below from absolute scratch! Your binary
# operator must be called %p% so that the expression:
#
#       "Good" %p% "job!"
#
# will evaluate to: "Good job!"

"%p%" <- function(left,right){ # Remember to add arguments!
  paste(left,right)
}
"Good" %p% "job!"

#You made your own binary operator! Let's test it out. Paste together the strings: 'I', 'love', 'R!'
#| using your new binary operator.

"I" %p% "love" %p% "R!"
# ------------------------------------------------------------------------------------------------------

# Exercise 36
# Define a function even_count that takes in input a vector v and return the number of even elements of it.
rm(list=ls())
even_count<-function(v){
  sum((v%%2)==0,na.rm = TRUE)
}
even_count(c(1,6,3,3,3,3))
even_count(c(2,2))
even_count(c(NA,4,3,3,3))
even_count(0)
# ------------------------------------------------------------------------------------------------------

# Exercise 37
# Define a function m_create that takes 2 vectors v1, v2 and a variable n (by default = 10) 
#that returns a matrix with n columns, 
# where each column is the concatenation of v1 and v2
rm(list=ls())
m_create<-function(v1,v2,n=10){
  v3<-c(v1,v2);l<-length(v3);m<-matrix(v3,l,n,byrow = FALSE)
}
a<-rep(1,times=3);b<-rep(3,times=5)
m<-m_create(a,b);m
m<-m_create(a,b,4);m
m<-m_create(n=100,a,b);m
# ------------------------------------------------------------------------------------------------------

# Exercise 38
# The ellipses can be used to pass on arguments to other functions that are
# used within the function you're writing. Usually a function that has the
# ellipses as an argument has the ellipses as the last argument. The usage of
# such a function would look like:
#
# ellipses_func(arg1, arg2 = TRUE, ...)
#
# In the above example arg1 has no default value, so a value must be provided
# for arg1. arg2 has a default value, and other arguments can come after arg2
# depending on how they're defined in the ellipses_func() documentation.
# Interestingly the usage for the paste function is as follows:
#
# paste (..., sep = " ", collapse = NULL)
#
# Notice that the ellipses is the first argument, and all other arguments after
# the ellipses have default values. This is a strict rule in R programming: all
# arguments after an ellipses must have default values. Take a look at the
# simon_says function below:
#
simon_says <- function(...){
 paste("Simon says:", ...)
}
#
# The simon_says function works just like the paste function, except the
# begining of every string is prepended by the string "Simon says:"
#
# Telegrams used to be peppered with the words START and STOP in order to
# demarcate the beginning and end of sentences. Write a function below called 
# telegram that formats sentences for telegrams.
# For example the expression `telegram("Good", "morning")` should evaluate to:
# "START Good morning STOP"
telegram<-function(...){
  paste("START",...,"STOP")
}
telegram("Good", "morning")
# ------------------------------------------------------------------------------------------------------

# Exercise 39
# Let's explore how to "unpack" arguments from an ellipses when you use the
# ellipses as an argument in a function. Below I have an example function that
# is supposed to add two explicitly named arguments called alpha and beta.
# 
 add_alpha_and_beta <- function(...){
#   # First we must capture the ellipsis inside of a list
#   # and then assign the list to a variable. Let's name this
#   # variable `args`.
#
   args <- list(...)
#
#   # We're now going to assume that there are two named arguments within args
#   # with the names `alpha` and `beta.` We can extract named arguments from
#   # the args list by using the name of the argument and double brackets. The
#   # `args` variable is just a regular list after all!
#   
   alpha <- args[[1]]
   beta  <- args[[2]]
#
#   # Then we return the sum of alpha and beta.
#
   alpha + beta 
 }
add_alpha_and_beta(c(1,1,1,1),c(2,2))
#
# Have you ever played Mad Libs before? The function below will construct a
# sentence from parts of speech that you provide as arguments. We'll write most
# of the function, but you'll need to unpack the appropriate arguments from the
# ellipses.

mad_libs <- function(...){
  # Do your argument unpacking here!
  args <- list(...)
  place<-args[[1]]
  adjective<-args[[2]]
  noun<-args[[3]]
  # Don't modify any code below this comment.
  # Notice the variables you'll need to create in order for the code below to
  # be functional!
  paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}
mad_libs("uni","green","tree")
# ------------------------------------------------------------------------------------------------------

# Exercise 40
# Define a function sum_vector that takes in input a undetermined number of vectors and returns a
# the sum of all elements. NA values on vectors must be ignored
# Use ellipsis function
rm(list=ls())
#nofita
sum_vector<-function(...){
  args<-list(...)
  sum(unlist(args),na.rm = TRUE)
}
#pro
sum_vector<-function(...){
  args<-list(...)
  sum(sapply(args, sum,na.rm=TRUE))
}

#tolto args
sum_vector<-function(...){
  sum(sapply(list(...), sum,na.rm=TRUE))
}

#sofia's solution
sum_vector<-function(...){
  sum(...,na.rm=TRUE)
}

e<-rep(5,times=7)
e
sum_vector(e,e)
sum_vector(c(1,1,1),c(1,1,1),c(1,1,1),c(1,1,1),c(1,1,1),e,e)
sum_vector(c(2,2,2),c(2,2,2),c(2,2,2),c(2,2,2))
sum_vector(rep(3,times=7),rep(11,times=2),c(NA,NA))
# ------------------------------------------------------------------------------------------------------

# Exercise 41
# Define a matrix_by_row function, with the same parameters of function "matrix()", 
# which fills the matrix by rows.
# Use ellipsis function
rm(list=ls())

matrix_by_row <- function(nr,nc,...){
  args<-list(...)
  v<-unlist(args)
  v
  l<-length(v)
  m<-rep(0, times=nc*nr)
  dim(m<-c(nr,nc))
  k=1
  if (nr*nc==l){
    for (i in 1:nr) {
      for (j in 1:nc) {
        m[i,j]<-v[k]
        k<-k+1
      }
    }
  }
  else{paste("The given list doesn't fit a matrix with",nr,"rows and",nc,"columns")}
}
#e<-matrix_by_row(1,10,c(sample(1:100,2, replace = TRUE),rep(1,times=2),rep(3,times=3)))
e<-c(rep(0,times=5),rep(1,times=4),rep(3,times=3))
e
w<-matrix_by_row(3,4,e)

#---
#try_args<-function(...){
#  args<-list(...)
#  v<-unlist(args)
#}
#res<-try_args(c(rep(1,times=2),rep(3,times=3)))
#res
# ------------------------------------------------------------------------------------------------------

# Exercise 42 
# Dataset mtcars
rm(list=ls())
data<-mtcars
# Show the number of cars by the number of cylinders (cyl)
table(data$cyl)
# Show the average consumption (mpg) by the number of cylinders (cyl)
# Use only one instruction
#table(data$mpg)
table(data$mpg,data$cyl) #not correct, she wants the mean of the mpgs
#table(data$cyl,data$mpg)
#tapply:average of mpg, we'll have the result in a table
tapply(data$mpg,data$cyl,mean)
# ------------------------------------------------------------------------------------------------------

# Exercise 43
# Visualize the first rows of the dataset iris
head(iris)
# Define a function iris_mean that takes as parameter a type of iris specie and returns
# a vector of the means of each column of that specie
# Use the function sapply
table(iris$Species,iris$Sepal.Length)

iris_mean<-function(s){
  r<-iris[iris$Species==s,]
  print(sapply(r[,1:ncol(r)-1],mean))
}
iris_mean('setosa')

# Apply the previous function to all species
# Use for loop
for(i in levels(iris$Species)){
  print(i)
  iris_mean(i)
}

# ------------------------------------------------------------------------------------------------------

# Exercise 44
# Define a function "between" that takes as parameter: v, p and q. 
# The function returns the number of elements of v that are between the values p and q (included).
rm(list = ls())
between <-function(v,p,q){
  sum(!is.na(v) & v>p & v<q)
  }
e<-c(1,1,1,1,1,3,3,3,5,5,5,5,5,5,NA)
m<-between(e,1,5)
m
# Define the following list: l <- list(c(23,232,112,2), c(23,33,33,22,32), c(12,34,65,67)).
l <- list(c(23,232,112,2), c(23,33,33,22,32), c(12,34,65,67))
l
# Apply the function between to l to obtain a vector of results
res<-sapply(l, between,p=10,q=50)
res
# Apply the function between to l to obtain a list of results
res<-lapply(l, between,p=10,q=50)
res
# ------------------------------------------------------------------------------------------------------

# Exercise 45
rm(list = ls())
# Create a data frame df with 4 columns. 
# The first with a sample of 20 numbers between 1 and 100,
first<-sample(1:100,20)
#first<-c(2,3,4,5)
# the second with the value TRUE if the corresponding element is even (FALSE otherwise),
second<-first%%2==0
# the third with the cube of the x elements.
third<-first^2
fourth<-first^3
df<-data.frame(first,second,third,fourth)
df
# The names of the columns are: x, even, square and cube
cnames<-c("x","even","square","cube")
colnames(df) <-cnames
df
# Write the first 10 rows of df (with the function write.table) in a file "powers1.csv". 
# Each element of a row must be separated with a ",". Hold the column names but not the row names.
write.table(df[1:10,],file="powers1.csv",append = FALSE,sep=',',row.names = FALSE,col.names = TRUE)
# Write the last 10 rows of df (with the function write.csv) in a file "powers2.csv".
# Don't hold the row names.
write.table(df[1:10,],file="powers2.csv",append = FALSE,sep=',',row.names = FALSE,col.names = TRUE)
#write.csv(df[nrow(df)-10:nrow(df),],file="powers2.csv",row.names = FALSE)
# Merge the contents of files "powers1.csv" and "powers2.csv" in a file "powers3.csv".
# Use the function "read.table" or "read.csv"
p1<- read.csv('powers1.csv',header=TRUE,sep=',')
p2<- read.csv('powers2.csv',header=TRUE,sep=',')

write.table(p1,file='powers3.csv',sep=',',row.names=FALSE)
read.csv("powers3.csv")

write.table(p2,file='powers3.csv',sep=',',append = TRUE,row.names=FALSE,col.names = FALSE)
read.csv("powers3.csv")
# ------------------------------------------------------------------------------------------------------

# Exercise 46
# Use "read.table" to read data from the link "http://data.princeton.edu/wws509/datasets/effort.dat" with following:
rm(list = ls())
x <- read.table(url("http://data.princeton.edu/wws509/datasets/effort.dat"))
# - "a", "b", "c" as columns names
names(x)<-letters[1:3]
x

# - number from 1 to 10 as row names
p1<-x[1:10,]
p2<-x[11:nrow(x),]
p1;p2

row.names(p1)<-NULL
p3<-rbind(p1,p2)

# - rows from 3 to 12
p4<-p3[3:12,]
# ------------------------------------------------------------------------------------------------------

# Exercise 47
# Read the first 10 lines of the html page "http://www.r-project.org" in the variable x
rm(list = ls())
x <- head(read.table(url("https://www.r-project.org/about.html"),header = TRUE,sep = ","),10)
# Print the class of x
class(x)
# Put the elements of x with odd position in y
y<-x[seq(1,9,by=2),]
x;y
# Write the elements of y in a file "y_output.txt"
write.table(y,file='y_output.txt')
#write.table(y,file='y_output.txt',sep=',',row.names=FALSE)
# ------------------------------------------------------------------------------------------------------


#Exercise 48
#Create two numeric vectors x and y of length 3 and 5 respectively. 
#What happens when you execute their product?
rm(list = ls())
x<-c(1,2,3)
y<-c(2,4,6,8,10)
z<-x*y
z
#---

#Exercise 49
#(a) Check if the current file is present in your current directory.
file.exists("exercises-Part-I.R")

#printing sentences:
if (file.exists("exercises-Part-I.R")) {
  
  print("The file exists")
} else {
  
  print("The file does not exist")
}
if (file.exists("funny.R")) {
  
  print("The file exists")
} else {
  
  print("The file does not exist")
}
#(b) Then, choose another file from your current directory and get some information about it. 
#Do point (b) it in a single command.

file.info("Economist.txt")
#---
#esercizi da fare per domani
#44,45,49,52,58,65,70,77 e i 4 es advanced
#----
#Exercise 50
#Write down the R code required to produce the following:
#(a) [1] 1 5 1 5 1 5 1 5 1 5 1 5 1 5 1 5 1 5 1 5 1 5 1 5 1 4 7 10 13 16 19
#(b) [1] 2 4 6 2 4 6 1 1 1 3 3 5 5 5 5

#---
a<-c(rep(c(1,5),times=12),
seq(1,19,by=3))

b<-c(rep(seq(2,6,by=2),times=2),
rep(1,times=3),
rep(3,times=2),
rep(5,times=4))

#Exercise 51
#Calculate the sum of i^2 for i=3:177
sum((c(3:177))^2)
#---
#Exercise 52
#Use paste to obtain the following
#[1] "Ab-Bc-Cd-De-Ef-Fg-Gh-Hi-Ij-Jk-Kl-Lm-Mn-No-Op-Pq-Qr-Rs-St-Tu-Uv-Vw-Wx-Xy-Yz-Za"
#What is the difference between the parameters sep and collapse?
l<-c(letters[-1],letters[1])
e<-paste(LETTERS, l,sep="",collapse = "-")
e

#---
#Exercise 53
#Sample 50 values from x<-rep(NA,300) and y<-1:300 and put the result in a vector z
#Find the proportion of NAs in z in a single command.
vec<-c(x<-rep(NA,300),y<-1:300)
z<-sample(vec,50)
#z<-c(rep(NA,10),rep(1,40))
#is.na(z)
#sum(is.na(z))
prop<-sum(is.na(z))*100/50
paste("The NAs are",prop,"%")
#---
#Exercise 54
#Consider the vector z of the previous exercise. Modify it such that it contains only values greater than -50 
#but lower than 100(in a single command). NA values must be kept.
z<-c(1,2,3,10000,1000,900,NA,NA,-90,-3,-100,200)
z
w<-z[which((z<100&z>-50)|is.na(z))]
w
#What should be added in order to remove NA values?
w<-z[which(z<100&z>-50)]
w
#---
#Exercise 55
#Create a vector x with named elements. Obtain the first element using three different ways. 
rm(list=ls())
v<-c("it's a string",3,"hi","A")
names(v) <- c("first","second", "third", "fourth")
v
#v[[1]]
#v["first"]
#v[1:1]

#Then modify x such that it does not contain the third element anymore. Do it by using names.
v<-v[c("first", "second","fourth")]
v
#v<-v[-"third"]
#---
#Exercise 56
#Create a factor f containing the following levels: "BD Student" "MD Student". The repetitions should be 4 and 5 
#respectively.
#Then add a new level "PhD Student" for which the repetitions are still 0.
rm(list = ls())
f<-factor(rep(c("BD Student", "MD Student"),c(4,5)))
#vect<-c("BD Students", "MD Students","PhD Students")
levels(f)<-c(levels(f),"PhD Student")
f
summary(f)
#---
#Exercise 57
#Create a list l composed by the two following lists: 
l1<-list(name=c("Alberto","Antonio"),age=c(25,40),work=c("Student","Engineer"))
l2<-list(surname=c("Rossi","Bianchi"),nation=c("Italy","Malta"))

#(a)What happens if you use list to create l?

l<- list(l1,l2)#length will be 2
l[[2]][2]

l<- c(l1,l2)#length will be 5
l[5]

#(b)What happens when you type l$n and why? What should you type in order to obtain the nation component?
#there is a conflict between name and nation
l$nation #nation content
l$name #name content
l$w #no conflict

#---
#Exercise 58
#Create a numeric matrix m 4x5.
rm(list = ls())
m<-matrix(seq(1:20),4,5,byrow = F)
#(a) Bind to m a numeric 4x2 matrix called n. Do both cbind and rbind work? If no, why?
n<-matrix(3,4,2)
m<-cbind(m,n)#works because we need the same number of rows
m
#m<-rbind(m,n)#doesn't work because we need the same number of columns
#(b) Remove from the newly obtained m, the central column. Do this by exploiting the ncol function.
m <- m[,-((ncol(m)/2)+1)]
m
#(c) Multiply the new m matrix by n to obtain the row by columns product. Is it possible in this case?
#If not, how can we solve it?
r<-t(n)%*%m
r
#---
#Exercise 59
#(a) Create a matrix m 5x5 containing letters by using the sample function such that an element can appear more than once.
#Check the class of one of the elements of m.
rm(list = ls())
m<-matrix(sample(LETTERS,25,replace = TRUE),5,5)
class(m[1,ncol(m)])

#(b) Add a column of numbers. Check the class of one of the new elements of m. Is there something strange about it?
num<-c(sample(1:100,5))
m<-cbind(m,num)
class(m[1,ncol(m)])

#(c) Which data structure could you use instead of the matrix? Create an appropriate data structure n
#containing the same elements of m.
n<-data.frame(m[,-ncol(m)])
n<-cbind(n,num)
class(n[1,ncol(n)])
#Then name your columns C1,...,C5 and your rows R1,...,R5 (do not use c())
cn<-paste("C",1:6,sep = "")
rn<-paste("R",1:5,sep = "")
colnames(n)<-cn
rownames(n)<-rn
#(d) Access to an element of n in 3 different ways. Does it remind you of another data structure?
n[2,1]
n$C3[1]
n[[1]][1]
#---
#Exercise 60
#Create a 3D array a 3x3x4 containing numbers from 1:18.
rm(list = ls())
a<-array(seq(1:18),c(3,3,4))

#(a) Does recycling occur?
#yes, we see that a[1,1,1]is equal to a[1,1,3]
a[1,1,1]==a[1,1,3]

#(b) Select only the first row and all but the first column. Leave the third dimension intact. Do not subscribe a.
a[1,c(-1),c(1,2,3,4)] #all the first rows but no the first column

#(c) Copy a to a2.What happens if you set dim(a2) to NULL?
a2<-a
dim(a2)
dim(a2)<-NULL #

#(d) Transform a into a matrix.
m<-matrix(a,byrow = TRUE ,nrow = 6)
dim(m)
#---
#Exercise 61
#Analyze the trees dataset.
#(a)Report its class,summary,structure,dimensions,size in bit,colnames and rownames.
rm(list = ls())
class(trees)
summary(trees)
structure(trees)
dim(trees)
object.size(trees)
colnames(trees)
row.names(trees)

#(b) What does R return if you type length(trees)?
length(trees)

#(c)Show the last 7 rows.
tail(trees)

#(d) What is the frequency of the different values of Height? Round your result.
#table(trees$Height)
#round(11,2)
#round(11.70)

freq<-function(x){
  paste(round(x*100/length(trees$Height)),"%",sep = "")
}

res<-sapply(table(trees$Height),freq);res

#---
#Exercise 62
rm(list = ls())
#Consider the following matrix 
m<-matrix(sample(-20:20,50,replace=T),nrow=5)
#(a) Check if it contains any 0.
1&sum(m==0)
#(b) Check if it contains all positive integers
sum(m<0)==0
#(c) Which elements are greater than 15? How many are them?
which(m>15)
sum(m>15)
#---
#Exercise 63
#Replace each negative element of m with the corresponding positive one. Replace positive elements
#with their cube.Use control structures.
#a<-m
#dim(a)<-NULL
rm(list = ls())
m<-matrix(sample(-10:10,50,replace=T),nrow=5)
substitution<-function(x){
  if(x>0){x<-x^3}
  else if(x<0){x<-x*-1}
  else {x<-x}
}

e<-sapply(m,substitution)
e<-matrix(e,5,10);e

#---
#Exercise 64
#Build a cycle where each time you sample a new integer between -20 and 30.
rm(list = ls())
cycle<-function(){
  sample(-6:6,1)
  #sample(-20:30,1)
}
#Whenever you encounter an even number (not 0), print the square of the sum of all even numbers sampled until
#that moment.
#When 0 is sampled, exit from the cycle.

s=0 #sum of all even elements
x<-1 #is one to be able to enter the while

while (x!=0) {
  x<-cycle()
  if (x%%2==0){
    print(paste("new even value:",x))
    print(paste("the square of",s," is:",s^2))###Whenever you encounter an even number
    s<-s+x;
  }
  else {print(x)}
}

#---
#Exercise 65
#Define a function f that given a numeric vector, returns its maximum, minimum, median and mean value.
#Put these values in a vector, and return NULL if the input is not numeric. Test the function.
rm(list = ls())

f<-function(v){
  if(class(v)!="numeric" || is.na(v)){
    return(NULL)
  }
  res<-c(maximum=max(v),minimum=min(v),median=median(v),mean=mean(v))
}

r<-c(NA,3,4,5)
s<-c("a","b")
z<-c(3,6,9)

x<-f(r)
s<-f(s)
y<-f(z)

x;s;y
#---
#Exercise 66
#Define a function euclidean_dist that given a matrix return the euclidean distance between its rows 
#Do not use the dist function. 
rm(list = ls ())
m<-matrix(seq(1,16),4,4)
m3<-matrix(seq(16,31),4,4)
m2<-matrix(rep(1,times=16),4,4)
v<-c(1,2,3,4,5,6)
nene<-c(4,7,3,5)
colnames(m3)<-nene
s<-dist(m3, method = "euclidean");s
s<-dist(m2, method = "euclidean");s
s<-dist(m, method = "euclidean", diag = TRUE, upper = TRUE, p = 2);s



#Test the function(compare it with dist).

#---
#Exercise 67
#Define a function fact that given a number returns its factorial. Try not to use for loops
rm(list = ls())
fact_w<-function(x){
  f=1
  while (x>1) {
    f<-f*x
    x<-x-1
  }
  f
}
fact<-function(y){
  f=y
  y<-y-1
  if(y>1) {
    f<-f*fact(y)
  }
  else {
    f
  }
}

print(fact(6))
print(fact(2))#2
print(fact(3))#6
print(fact(4))#24
print(fact(5))#120
print(fact(6))#720

#---
#Exercise 68
#Define a function that given a character vector, returns the frequency of the characters.
#HINT: Use the function strsplit to split the string.
#Test it with the following: AAAACCGGTCGACGGGACGG
rm(list = ls())
v<-"AAAACCGGTCGACGGGACGG"
#v<-"AAACCC"
v<-strsplit(v, split="", fixed=T)[[1]] #returns a list with one vector, so I put the vector in v
#length(v)
u<-unique(v)

#function freq_of_element with two parameters: an original char vector and 
#another char vector with unique elements of the original one

freq_of_element<-function(x,y){
  paste(sum(x==y)*100/length(y),"%",sep = "")
  }

r<-sapply(u, freq_of_element, v)
r

#---
#Exercise 69
#Define a function with a variable number of input numeric arguments (minimum two) that does the following:
#(((a+b)*c)+d)*e and so on. Example: if the input is 4,5,6,7 what we want is ((4+5)*6)+7=61
#Test it using also length 1 vectors.
rm(list = ls())
other<-c(4,5,6,7,4,6,2)#61*4=244+6=250*2=500

trial<-function(x,y){ #x as char and y as vector of unique values 
  a<-other[1]
  b<-other[2]
  v1<-other[seq(3,length(other),by=2)]#posizioni dispari da 3 fino a length di other
  v2<-other[seq(4,length(other),by=2)]#posizioni pari da 4 fino a length di other

s<-a+b#fuori dal ciclo
l1<-1
l2<-1

while (l1==l2 && l1<=(length(v2))) {
  p<-s*v1[l1]
  s<-p+v2[l2]
  l1<-l1+1
  l2<-l2+1
  print(s)
}
if(length(v1)>length(v2)){
  s<-s*v1[length(v1)]
  print(s)
}
print(s)
}



sopos<-function(a=1,b=0,...){
  other<-c(a,b,...)
  #print(other)
  if(length(other)==2){return(a+b)}
  else if(length(other)==3){return(a+b*other[3])}
  v1<-other[seq(3,length(other),by=2)]#posizioni dispari da 3 fino a length di other
  v2<-other[seq(4,length(other),by=2)]
  
  s<-a+b
  l1<-1
  l2<-1
  
  while (l1==l2 && l1<=(length(v2))) {
    p<-s*v1[l1]
    s<-p+v2[l2]
    l1<-l1+1
    l2<-l2+1
    
  }
  if(length(v1)>length(v2)){
    s<-s*v1[length(v1)]
    #print(s)
  }
  print(s)
}
sopos(4,5,6,7,4,6,2)
sopos(4,5,6,7)
sopos(1,2)
sopos()
#---
#versione elena, molto più compatta
ok<-function(a=1,b=0,...) {
  i=1
  args<-c(...)
  result<-a+b
  while(i<=length(args)){
    if(i%%2==0){
      result<-result+args[i]
    }
    else if(i%%2!=0){
      result<-result*args[i]
    }
    else{
    }
    i=i+1
  }
  return(result)
}
ok(4,5,6,7,4,6)
ok(4,5,1)
ok()
#---
#Exercise 70
#Consider the dataset esoph, which contains data from a case-control study of esophageal cancer in France.
#Analyze the dataset (how many features, how many samples, the size of the dataset).
rm(list=ls())
ncol(esoph)
#nrow(esoph) 
sum(esoph$ncases)
object.size(esoph)

#Provide a summary of it.
summary(esoph)
#Then
#(a) See how many people are there per each age group
table(esoph$agegp)
#(b) Find the classes of each feature
lapply(esoph,class)
#(c) Compute how many controls are in each age group 
tapply(esoph$ncontrols,esoph$agegp,sum)
#tapply(esoph$agegp,esoph$ncontrols,sum)#non viene
#(d) Find how many unique vals exist per each feature. Do it in a single command
#length(unique(esoph$agegp))
#sapply(esoph[,names(esoph)],unique)
#sapply(sapply(esoph[,names(esoph)],unique),length)
sapply(sapply(esoph,unique),length)
#---
#Exercise 71
#What is the difference between using vapply, sapply and lapply?
#vapply you can specify the type of returned element
#sapply returns a vector
#lapply returns a list

#When do sapply and lapply return the result in the same format?
#sapply returns a vector with vectors in input
#lapply returns a list with list in input
#---
#Exercise 72
#Consider the dataset state.x77, which contains statistics about the US. Consider also state.region,
#which indicates the location of each state.
df<-data.frame(state.x77,state.region)
row.names(df)
#dim(df)

#(a) Find the population for those states with an area greater than 100000 square miles(Single command).
Population<-df[which(df$Area>100000),"Population"]

res<-data.frame(Population)
rownames(res)<-rownames(df[which(df$Area>100000),])
res


#(b) Compute the mean of life Expectancy for each region(Northeast,South,North,Central,West)
life_exp<-tapply(df$Life.Exp,df$state.region,mean);life_exp

#---
#Exercise 73
#Make sure that that salary.txt is in your working directory.
rm(list = ls())
file.exists("salary.txt") #Verify if the file mytest.R exists
#(a)Then execute the command below. What can you say about the first row of your file? How would you solve it?
sal<-read.table("salary.txt")
sal<-read.table("salary.txt",header = TRUE)#adding parameter header=T
sal
#class(sal)
#(b) Select only those rows for which the degree is "doctorate" and put them into a new file called "doc_salary.txt".
#Remove the dg column. When writing the data to your file, specify new column names(sex,rank,year,year_since_deg,salary). 
#Use write.table.
#sal[,-which(colnames(sal)=="dg")]#removes the dg col
write.table(sal[which(sal$dg=="doctorate"),-which(colnames(sal)=="dg")],
            file="doc_salary.txt",
            append = FALSE,sep=' ',
            row.names = TRUE,
            col.names = c('sex','rank','year','year_since_deg','salary'))

#(c)Consider your doc_salary.txt file. Skip the first 5 lines and read only the first 10 among the remaining 
#ones. Use read.csv.
t<-head(tail(read.csv("salary.txt",header=TRUE,sep=','),length(nrow(sal))-5),10)

#---
#Exercise 74
#Use the command sample to generate a vector x of 20 random numbers between 1 and 20. Do it using the fewest number
#of parameters.
x<-sample(20)
#What can you say about the frequency of the numbers in x?
#any number is taken only once time

#Now create a vector y of 20 random numbers between 1 and 20 but with the parameter replace to TRUE.
y<-sample(20,replace = TRUE)
#What is the difference between y and x?
#using y you can take more times the same parameter

#---
#Exercise 75
#Generate using two different R functions, 100 random and independent events which result can be either success
#or failure, knowing that in 85% of cases you will fail. Encode,if needed, 0 as failure and 1 as success.
rm(list = ls())

v1 <- rbinom(n=100,size = 1, prob = 1-0.85) #100 observations of size 1, probability of success 0.7
v1

v2 <- sample(c(0,1), 100, replace = TRUE, prob = c(0.85, 1-0.85))
v2

#Then verify the proportion of successes and compare it with the expected probability. Is it different?
sum(v1)*100/length(v1)
sum(v2)*100/length(v2)

sum(v1)*100/length(v1)==15
sum(v2)*100/length(v2)==15

#---
#Exercise 76
#(a)Generate a vector x of 100 random numbers extracted from a normal distribution with 0 mean and 1 sd.
#Using the function hist() plot the vector. Give a name to your plot.
#rnorm(100, 100, 25)#mean 100 sd=25
rm(list = ls())
x<-rnorm(100) #default mean is 0 and sd 1
hist(x,main = paste("Histogram of a normal distribution"))

#(b) Using the same command, generate a vector y of 1000 numbers, but with mean 10 and 30 sd.
#Plot the histogram and compare it with the one you've obtained before.
y<-rnorm(1000, 10, 30)
hist(y,main = paste("Another histogram of a normal distribution"))

#(c) Compute the mean, standard deviation and variance of y and compare them with the theoretical values
#(look at the parameters of your command). Are they completely equal?
mean(y)
sd(y)
var(y)

mean(y)==10
sd(y)==30

#---
#Exercise 77
#Find the number of hours that are missing from December 25,2017. Use opportune data formats. 
#Find the weekday of December 25,2017 as well.
 b1 = ISOdate(1977,7,13)
 b2 = ISOdate(2003,8,14)
 b3=(b2 - b1)*24
 b3
format(b2,"%a")
#---
#Exercise 78
#Consider the setosa objects of the iris dataset.
#Make a plot with the sepal.width on the x axis, and the sepal.length on the y axis.
#Color your points dark green, and change their shape to crosses (hint:use the help)
#Assign a title to your plot and your axis.
plot(x=iris$Sepal.Width,y=iris$Sepal.Length, col="dark green",title("Iris"))



