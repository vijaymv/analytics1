# create vector o students nmaes divide into 2 groups

studentname = paste('student',1:10000,sep='-')

# = 60%
#group2 = 40%

(index =sample(length(studentname),size = .6 * length(studentname)))
(trian = studentname[index])
(test = studentname[-index])

#create a large data frame
snmae = paste('5',1:1000,sep = '-')
gender = sample(x=c('male','female'),size =1000,prob=c(.6,.4),replace=T)

marks = ceiling(rnorm(1000,60,10))
df = data.frame(snmae,gender,marks)
head(df)
table(df$gender)
nrow(df)


#split DF into 2 parts 70% and 30%
#train - 70% of DF
#test - 30% of DF

(index1 = sample(nrow(df), size = nrow(df)*.7))
(train = df[index1,])
(test = df[-index1,])

library(caTools)  ###using catools package
set.seed(123)
splt <-sample.split(df,SplitRatio = 0.7) 
splt
head(splt)
(train=subset(df, splt==TRUE))
(test <- subset(df,splt ==FALSE))
nrow(train)
nrow(test)

library(caret) ###using caret library
table(df$gender) # tells s how many males any females in the whole data set
prop.table(table(df$gender)) # to get the proportion of males and females  in the table
index3 = createDataPartition(y=df$gender,p=.7,list=F) # the same proportion of gender should be maintained in both the groups. list =F ie do not want to be printed in the list form
length(index3)
(train3=df[index3,])
(test3=df[-index3,])
(t3a = table(train3$gender)) ; prop.table(t3a)
(t3b = table(test3$gender)) ; prop.table(t3b)
?women

#proportion of male anf female is almost same in both the samples as compared to the DF`