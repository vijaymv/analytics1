# Decision Tree - Classification tree
#we want predict for combination of input variables, is a person likely to servive or not

#import data from online site
path = 'https://raw.githubusercontent.com/thomaspernet/data_csv_r/master/data/titanic_csv.csv'
titanic <-read.csv(path)
head(titanic)
names(titanic)
data = titanic[,c(2,3,5,6,7)]  #select few columns only
head(data)

#load libraries
library(rpart)
library(rpart.plot)

#Decision Tree
fit <- rpart(survived~., data = data, method = 'class')
fit
rpart.plot(fit, extra = 106, cex=.8,nn=T)  #plot #nn = node number , cex - amplificaiton factor

printcp(fit) # to select complexity parameter get the cp value having less error value. we can choose the cp value according to the number of splits we want. number od split is given by nsplit.
prunetree2 = prune(fit, cp=.010)
rpart.plot(prunetree2, cex=.8,nn=T)
prunetree2 # 61 % of the people didnot survive.
nrow(data)

#Predict class category or probabilities
library(dplyr)
(testdata = sample_n(data,2))
predict(prunetree2, newdata=testdata, type='class')
predict(prunetree2, newdata=testdata, type='prob')

#Use decision trees for predicting
#customer is likely to buy a product or not with probabilities
#customer is likely to default on payment or not with probabilities
#Student is likely to get selected, cricket team likely to win etc

#Imp steps
#select columns for prediction
#load libraries, create model
#prune the tree with cp value
#plot the graph
#predict for new cases