# dataframe
# to make a structure like in excel
(rollno = 1:30)
(sname=paste('student',1:30,sep=''))
sname
(gender = sample(c('M','F'),size =30, replace = TRUE,prob=c(.7,.3)))
table(gender)
prop.table(table(gender)) # to get the value proportion
(marks= floor(rnorm(30,mean=40,sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course =sample(c('BBA','MBA'),size=30,replace =T,prob=c(.5,.5)))
rollno;sname;gender
marks;marks;course
trunc(3.7)
signif(3.567334,5)
?trunc
#create DF
df1 = data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F)
df1
(x=rnorm(100,60,10))
plot(x) 
summary(x) #summary of x
quantile(x,seq(0,1,.1)) #decile
quantile(x,seq(0,1,.01)) #percentile
fivenum(x)
boxplot(x)
abline(h=fivenum(x))
plot(density(x))
abline(v=60, col="blue") ################### didnt get output
hist(x)
df1$gender = factor(df1$gender) #converting gender column into factor and saving it as a df again ie assign number to those names
df1$course = factor(df1$course)
summary(df1)
df1
df1$gender # column
df1[,c(2,4)] # multiple columns
df1[1:10,] #select rows, all columns

df1[marks> 40 & gender=="F",c(1,2)] # all people who scored more than 50 and gender is female
df1[marks> 40 | gender=="F",-c(1,2)] # all people who scored more than 50 or gender is female

(df2 = aggregate(cbind(marks,marks2)))