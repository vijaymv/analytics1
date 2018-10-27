library(rpart)
library(rpart.plot)

gender = sample(c('M','F'),size =10000, prob=c(.6,.4),replace=T)
age = ceiling(rnorm(10000,35,5))
buy =sample(c('YES','NO'), size = 10000, prob = c(.5,.5), replace = T)
df = data.frame(buy,age,gender)
head(df)
dtree1 = rpart(buy ~ gender + age, data=df,minsplit=10,minbucket=4,cp=-1) # cp = -1 for fully grown tree
# min bucket = by default it is 1/3 of minsplit.,minsplit = says if you have a certain number of observations then only we can split ,cp =complexity parameter
#gini index finds out the important variable.
dtree1 
dtree1$variable.importace
rpart.plot(dtree1,cex = .8,nn=T) #cex is amplificaion factor
?rpart.plot
