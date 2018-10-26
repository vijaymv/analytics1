women
# predict for height
(new =data.frame(height=c(56,38,87))
(p2 = predict(fit1,newdata=new))
cbind(new,p2)   


mtcars  

names(mtcars)

fit3 = lm(mpg ~ wt, data=mtcars)
range(mtcars$wt)

summary(fit3)
#p < .05 ie there is 
#predict mpg for wt =2 and 3

(new4 = data.frame(wt=c(2,3)))
(p4 = predict(fit3, newdata = new4))

