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
#Matrices----

#Arrays----

#Data Frames----

#Factors----

#Lists----