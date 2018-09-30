#Factors

?seq
(grades= sample(c('A','B','C','D'),size=30,replace=T,prob=c(.4,.2,.3,.1)))
summary(grades)
(gradesF=factor(grades))
summary(gradesF)
table(grades)
(table(gradesF))
class(gradesF)
(gradesF0=factor(grades,ordered=T))
(gradesF01=factor(grades,ordered=T,levels=c('B','C','A','D')))#to specify out own order
summary(gradesF01)

(marks=ceiling(rnorm(30,mean=60,sd=5)))
(student1=data.frame(marks,gradesF01))
boxplot(marks~gradesF01,data=student1)

(boxplot(marks))
(summary(marks))
abline(h=summary(marks))  
quantile(marks)
