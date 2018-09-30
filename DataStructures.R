#Data Structures

#ctrl+enter when you wnated to execute a line

#Vectors----
x=1:10 
#creates seq of nos from 1 to 10
x   #to print value of x
x1<-1:20 # <- or = can be used for assigning
x1
(x1=1:30)  # is used to create a variable and print simultaneously 
(x2=c(1,2,13,4,5))
class(x2)  # tells about the type of vector
(x3=letters[1:10]) 
#letter is used to create a vectorof small letter alphabets.Here vector of 10 charaters is created
class(x3)
LETTERS[1:26]
LETTERS[21:26]
(x3b=c('a',"Vijay","4"))  
x3b
?c     #helps to know more about a function.Use "?function name"
(x4=c(T,TRUE,FALSE,T,F))  #true and false are inbuilt
x4
x5=c(3L,5L)
x5
x5a=c(3,5)
class(x5a)
#access element
(x6=seq(0,100,by=3))
methods(class='data.frame') #this method will help us know whcoh all functions can be used for that data type
?seq
x6[20] #access 20th element of x6
x6[3]
ls()#list of all variables in that environment
 length(x6)  #gives length of a vector
x6[c(2,4)]   #access 2nd and 4th element
x6[-10]    #access all elements excluding the 10th element
x6[c(2,-10)] #cannot give positive and negative integers
x6[-c(1:10)] #removes the 1st to 10 values
x6[c(2.24,3.256)] #truncates the value to integers
length(x6)
x6
x6[-(length(x6)-1)] #removes the last but one value
(x7=c(x6,x2))  #creates new vector combining the old vectors

#modify
sort(x6)
sort(x6,decreasing=T)
(sort(x6[-c(1,2)]))  #sorts and prints removing the forst 2 elements
rev(x6)
seq(-3,10,by=.2)
(x=-3:2)
x[2]<-0;x  #replaces the second position by 0 and printing. ;is uesed to separate commands
x
x[x<0]=5;x  #modify elements less than 0 with 5
x=x[1:2];x  #truncate x to first 2 elements
x[x>4]=9;x
x
x
x[x<=1 & x>=-1] =100 #modify elements that satisfies the condition with 100
x
#delete Vector
(x=seq(1,5,length.out=10))  #divides the data in the given range into number of small numbers specified in the range
#Ans: [1] 1.000000 1.444444 1.888889 2.333333 2.777778 3.222222 3.666667 4.111111 4.555556 5.000000
x=NULL
x
(x=rnorm(100)) #normal distribution values
(x1=rnorm(100000,mean=50,sd=4))
plot(density(x1))  #plots a normal distribution curve
plot(density(x))
abline(v=mean(x1),h=0.04)


#Matrices----
1:12






#Arrays----
(m1=matrix(1:12,nrow=4)) #creates a matrix with range given first and no of rows
(m1=matrix(1:11,nrow=4))
(m2=matrix(1:12,ncol=3,byrow=T))
m2
x=101:124
length(x)
matrix(x,ncol=6)
class(m1)
attributes(m1)  #displays all the attributes dislayed for that matrix
dim(m1)  #dimension of a matrix

#access elements of a matrix
m1[1,2:3] #displays first row and 2 and 3rd cloumns
m1[c(1,3),]#displays 1 amd 3rd row and all columns
m1[1:3,] #displys 1-3 rows and all columns
m1[-c(1,3),] #displays only the 2 and 4th row excluding the 1st and 3rd row

paste("C","D",sep='-')

m1
(colnames(m1)=paste('R',1:2,sep=''))
#vector to matrix
(m3=1:24)
(dim(m3)=c(6,4))
m2
m2[1:6]#prints matrix as a vector if row and column , id not available and vector will be order (a11,a12,a13,b11 etc)

m2[m2>5 || m2<12]

#changing value of matrix
m2[2,2]
(m2[2,2]=100)  
m2

#add a row temporarily
rbind(m2,c(1,2,3))     #cbind for column adding temporarily
m2       #(row and column bind is temporary and are not added to             the matrix permanantly)
m1
colSums(m1) #rowsums() for sum of each row elements 
# Ans: [1] 10 26 31
t(m1)#transpose of a matrix
#for any permanant saving we can assign the value and then the change becomes permanant
(m1=t(m1))
(m1=sweep(m1,MARGIN=1,STATS=c(2,3,4,5),FUN="+"))#row wise
sweep(m1,MARGIN=2,STATS=c(2,3,4),FUN="*") #col wise Margin=2 means columnwise operation..here multiplys the specific numbers to specific column elements as mentioned

#addmargins
addmargins(m1,margin=1,sum)#colwise function
addmargins(m1,c(1,2),mean)#rowwse and col wise function for finding mean

addmargins(m1,c(1,2),list(list(mean,sum,max),list(var,sd)))#row & col wise function helps in finding all these mentioned values for a single matrix

#Data Frames----

#create Vectors to be combined into DF
(rollno = 1:30)#create roll nos
(sname = paste('student',1:30,sep=''))#paste the students to numbers
(gender = sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))#create 30 values of M and F and replacement of the selected value is done thru replace command.The prob is used to specify the distribution % .here male is wnated to be 70% and female to be 30%

(marks = floor(rnorm(30,mean= 50,sd=10)))#floor takes the lower value and ceiling takes the highest value
#set.seed concept is used to create same type of interval in same systyem.else the distribution will be random usually.
(marks2 = ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA'), size=30, replace=T, prob=c(.5,.5)))
rollno; sname; gender
marks ; marks2; course

#create DF
df1= data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F) #convert in to factors as they are not factors individually
str(df1) #structure of DF
head(df1) #top 6 rows
head(df1,n=3) #top 3 rows
tail(df1) #last 6 rows
class(df1) # DF
summary(df1) #summary
df1$gender = factor(df1$gender)
df1$course = factor(df1$course)
str(df1)
summary(df1)


df1  #full data
df1$gender  # one column
df1[ , c(2,4)] #multiple columns
df1[1:10 ,] #select rows, all columns
#as per conditionis
df1[ marks > 50 & gender=='F', c('rollno', 'sname','gender', 'marks')]
df1[ marks > 50 & gender=='F', c(1,2)]
df1[ marks > 50 | gender=='F', ]

names(df1)  # names of columns
dim(df1)  #Dimensions

aggregate(df1$marks, by=list(df1$gender), FUN=max)
aggregate(marks ~ gender, data=df1, FUN=max)


(df2 = aggregate(cbind(marks,marks2) ~ gender + course, data=df1, FUN=mean))


#Factors----

#Lists----