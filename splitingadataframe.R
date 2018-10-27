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
