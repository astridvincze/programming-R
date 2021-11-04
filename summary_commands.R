
# R recycling values 
my_sqrt <- sqrt(z-1)
my_div <- z/my_sqrt 
c(1, 2, 3, 4) + c(0,10)
# Sequences of numbers
1:20
pi:10
15:1
seq(1,20)
seq(0, 10, by=0.5)
#---
my_seq <-seq(5, 10, length=30) 
my_seq
1:length(my_seq)
seq_along(my_seq)
#---
rep(0, times = 40)
rep(c(0, 1, 2), times = 10)
rep(c(0, 1, 2), each = 10)

# Logical Vector
#---
num_vect <- c(0.5, 55,-10,6) 
tf <- num_vect < 1
num_vect >= 6
log_vect <- ((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)
#---

# Character Vector
#---
my_char <- c("My", "name", "is")
my_char
paste(my_char, collapse = " ")
#---
my_name <- c(my_char, "Pippo")
my_name
paste(my_name, collapse=" ")
#---
paste("Hello", "world!", sep = " ")
paste(1:3, c("X","Y","Z"),sep="")
paste(1:3, c("X","Y","Z"),sep=" ")
paste(LETTERS, 1:4, sep = "-") 

#Missing values
x<-c(44, NA, 5, NA)
x*3

y <- rnorm(1000)  
z <- rep(NA, 1000)
my_data <- sample(c(y, z), 100)

my_na <-  is.na(my_data)
my_na

sum(my_na)
my_data == NA  
0/0
Inf-Inf

#Subsetting vectors
x <- sample (c(rnorm(20), rep(NA, 20)), 40)
x
x[1:10]

#Indexing with logical values
x[is.na(x)] 
x #3: A vector of all NAs

y<-x[!is.na(x)]
y
y[y > 0]

#Indexing with a vector of positive integers
x[c(3,5,7)]
x[3000]
x[1]

#Indexing with a Vector of negative integers
x[c(-2, -10)]
x[-c(2, 10)]

#Indexing with a Vector of character strings
vect <- c(foo = 11, bar = 2, norf = NA)
vect
names(vect)

vect2 <- c(11, 2, NA) 
names(vect2) <- c("foo","bar", "norf")
identical(vect,vect2)

vect[c("foo", "bar")]

trt <- factor(rep(c("Control","Treated"),c(3,4)))
trt

summary(trt)

s<-c(rep("A",3),rep("T",3),rep("G",3),rep("C",3))
fs <- factor(s)
fs

ofs <- factor(s, ordered = TRUE)
ofs

#List
Lst <- list(name="Fred", wife="Mary", no.children=3, child.ages=c(4,7,9))  #no same type
Lst

class(Lst)
length(Lst)
Lst$child.ages[1]#first element of child.ages
Lst[["name"]]#access the name
Lst$name #access "name" by name
Lst[[1]] #access "name" by position
Lst[1] #gives me the name of the first element in the list and its element

#concatenating lists
A <- list(nameA="E", no.childrenA=1) 
B <- list(nameB="F", no.childrenB=2) 
C <- list(nameC="G", no.childrenC=3) 
listABC <- c(A,B,C)
listABC
listABC <- list(A,B,C)
listABC

#Workspace
getwd() #Determine which directory your R session is
ls() #List all the objects in your local workspace. Some R commands are the same as their equivalents commands on Linux or on a Mac
x<-7 #x is an object in your workdirector
list.files() #or dir() List all the files in your working directory
args(list.files) #List the arguments of a function
old.dir <- getwd() #Assign the value of the current working directory to a variable called "old.dir"
dir.create("testdir") #Create a director testdir in your working director
setwd("testdir") #Set your working directory to "testdir"
file.create("mytest.R") #Create a file mytest.R
file.exists("mytest.R") #Verify if the file mytest.R exists
file.info("mytest.R")# More info for the file
file.info("mytest.R")$mode #to grab specific info of the file
file.rename("mytest.R","mytest2.R") #change file name
file.remove("mytest.R") #remove a file
file.copy("mytest2.R","mytest3.R") #copy a file
file.path("mytest3.R") #Provide the path
file.path('folder1','folder2') #folder1/folder2
dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE) #delete file with recursive =TRUE if contains subdirectors

#Matrices and DataFrames
my_vector <- 1:20
my_vector
length(my_vector)
dim(my_vector) <- c(4, 5) #Give a dimension to a R object
dim(my_vector)
my_vector
class(my_vector)

my_matrix <- my_vector
my_matrix2 <- matrix(1:20,4,5)
identical(my_matrix, my_matrix2)

x <-1:12
m<-matrix(x,ncol=4)
m

m<-matrix(x,ncol=4, byrow=TRUE)  
m

m<-matrix(x, ncol=5, byrow=TRUE)

x<-1:3
y<-4:6
m<-cbind(x,y) #pay attention to the recycling of the elements
m

x<-1:3
y<-4:6
m<-rbind(x,y)
m

x<-1:12
y<-13:24
m1 <- matrix(x,nrow=3)
m2 <- matrix(y,nrow=3)
m <- cbind(m1,m2)
m

m2 <- matrix(y,nrow=2)
m2
m1
m <- cbind(m1,m2) #Error: number of rows of matrices must match

#Matrix operations
A <- matrix( 1:12,nrow=3)
A + 2

A <- matrix(1:12, ncol=4)
A

B <- matrix(13:24, ncol=4)
B

A+B
A*B

C<-A%*%t(B)
C

#Implicit coercion
patients <- c("Bill", "Gina", "Kelly", "Sean")
cbind(patients,my_matrix) #everything becomes a string

#DataFrame construction
my_data <- data.frame(patients, my_matrix)
my_data
class(my_data)
cnames <- c("patient", "age", "weight", "bp", "rating", "test")
colnames(my_data) <-cnames
my_data

m<-matrix(13:18,nrow=3)
m1 <- data.frame(m)
m
m1
m1 <- data.frame(v=m)
m1

li<-list(a=matrix(1:12,nrow=3),v=c("G","G","C"))
li

m<-matrix(13:18,nrow=3)
daf<-data.frame(li,m)
daf

daf.comp<-data.frame(v1= c("A","B","C"),v2=c("D","E","F"))
daf.comp

daf2<-data.frame(li,daf.comp)
daf2

daf[[1]]
daf[1]
daf$a.1
daf["a.1"]
daf[["a.1"]]

# Looking at Data 
class(PlantGrowth)
dim(PlantGrowth)
nrow(PlantGrowth)
ncol(PlantGrowth)
object.size(PlantGrowth)
names(PlantGrowth)
head(PlantGrowth)
head(PlantGrowth,10)
tail(PlantGrowth,15)
summary(PlantGrowth)
table(PlantGrowth$group) #To see how many times each value actually occurs in the data with
str(PlantGrowth)

# Logic operations
(TRUE != FALSE) == !(6 == 7)

isTRUE(6 > 4)
identical(5 > 4, 3 < 3.1)

TRUE & c(TRUE, FALSE, FALSE)
TRUE && c(TRUE, FALSE, FALSE)

xor(5 == 6, !FALSE) #exlusive or
xor(TRUE,FALSE)
xor(FALSE,TRUE)
xor(TRUE,TRUE)

which(c(TRUE, FALSE, TRUE))

#---

ints <- sample(10)
ints
ints > 5
which(ints>7)
any(ints<0)
all(ints!=0)
#---

# Control Structures

if(condition) {
  ## do something
} else {
  ## do something else
}
#---

if(condition1) {
  ## do something
} else if(condition2) {
  ## do something different
} else {
  ## do something different
}

#---
## Generate a uniform random number
x <- runif(1, 0, 10)

if(x > 3) {
  y <- 10
} else {
  y <- 0
}
# this expression can be written also:

y <- if(x > 3) {
  10
} else {
  0
}

#---

for(i in 1:10) {
  print(i)
}

## Generate a sequence based on length of 'x'
x <- c("a", "b", "c", "d") 
for(i in seq_along(x)) {
  print(x[i])
}

#while
count <- 0
while(count < 10) {
  print(count)
  count <- count + 1
}

#---

#Functions
increment <-function(number, by = 1){ 
  number + by
}
increment(5)
increment(5,2)
increment(by=5, number=3)  
increment(5, b=1) 
args(increment)

#---

evaluate <- function(func, dat){
  func(dat)
}

evaluate(function(x){x[c(1)]},c(8, 4, 0))
evaluate(function(x){x[c(length(x))]},c(8, 4, 0))

#---

#Ellipsis
paste("Programming", "is", "fun!")

telegram <- function(...){
  paste("START", ..., "STOP")
}

#---

add_alpha_and_beta <- function(...){   
  args <- list(...)  
  alpha <- args[["alpha"]]    
  beta  <- args[["beta"]]  
  alpha + beta   
}

#---

# lapply and sapply 

#---
cls_list <- lapply(PlantGrowth, class)
cls_list

as.character(cls_list)

cls_vect <- sapply(PlantGrowth,class)
class(cls_vect)
#---

PG<-PlantGrowth
str(PG)

PG<-cbind(PG,"weight2"=rnorm(30))
sapply(PG[,c(1,3)],sum) #sapply returns a vector

sapply(PG[,c(1,3)], range) #sapply returns a matrix
class(sapply(PG[,c(1,3)], range)) #returns min and max values
unique(c(3, 4, 5, 5, 5, 6, 6))
unique_vals <- lapply(PG, unique)
unique_vals

sapply(unique_vals,length)       
table(PG$group)

lapply(unique_vals,length)#To determine the length of each element of unique_vals
sapply(unique_vals,length)

table(PG$group) #How many observations i have for each group label (ctrl, trt1, trt2)? 

#---
# Getting Data In and Out of R

read.table()
read.csv()

readLines()
source()
load() #reading in saved workspace
unserialize() #reading single R object in binary form
write.table() #
writeLines()
cat(...,file="",sep = "",fill = FALSE,labels = NULL,append = FALSE)
serialize()

#---
#read a file
x <- read.table("Economist.txt", dec=".", sep=',',quote = "\"", header=TRUE )
names(x)

x <- read.table("Economist.txt", dec=".", sep=',',quote = "\"", header=FALSE )
names(x)

x <- read.table("Economist.txt", dec=".", sep=',',quote = "\"", header=FALSE, col.names= c("a", "b", "c", "d","e","g"))
names(x)

x <- read.table("Economist.txt", dec=".", sep=',',quote = "\"", header=FALSE, row.names=1)
row.names(x)

x <- read.table("Economist.txt", dec=".", sep=',',quote = "\"", header=TRUE )
names(x)

head(x$CPI)

class(x$CPI)

x2 <- read.table("EconomistWithCPICharacter.txt", dec=".", sep=',',quote = "\"", header=TRUE )
head(x2$CPI)

class(x2$CPI)

x2 <- read.table("EconomistWithCPICharacter.txt", dec=".", sep=',',quote = "\"", header=TRUE, stringsAsFactors=FALSE )
class(x2$CPI)

#sep
#nrows
#skip
#stringAsFactors

# Write in a file
#write.table(x,file = "",append = FALSE, quote = TRUE,)
#write.csv(.)
#write.csv2(.)

sample(1:6, 4, replace = TRUE)

sample(1:20, 10)

LETTERS
sample(LETTERS)

flips <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7))
flips

sum(flips)

rbinom(1,size = 100, prob = 0.7) #one observation of size 10

flips2 <- rbinom(n=100,size = 1, prob = 0.7) #100 observations of size 1, probability of success 0.7
flips2
sum(flips2)

rnorm(10)
rnorm(10, 100, 25)

# Graphics
plot(PlantGrowth)
plot(x = PlantGrowth$weight, y = PlantGrowth$group)

plot(x = PlantGrowth$weight, y = PlantGrowth$group, xlab ="weight", ylab="group", type="s", main ="my  first plot")
boxplot(formula=PlantGrowth$weight~PlantGrowth$group, data= PlantGrowth, xlab ="group", ylab="weight") # details in ?boxplot()


























