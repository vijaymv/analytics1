#https://cran.r-project.org/web/packages/olsrr/olsrr.pdf
#install.packages('olsrr')
library(olsrr)
names(mtcars)
mtcars[c('disp','hp','wt','qsec')]
model <- lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
k <- ols_step_all_possible(model) # olsrr function 
plot(k)
k # the output will say that which variables combination will give us best prediction we have to take the combination having highest value of r square.
fit3 =lm(mpg ~ hp + wt + qsec, data = mtcars)
summary(fit3) # since the value of p is more than .05 there is a significant relationship between the the dependent variable and independent vairiables.
summary(lm(mpg ~ wt, data=mtcars))
summary(lm(mpg ~ wt+ hp, data=mtcars))
AIC(fit3) # akiake information criteria

fit4 = lm(mpg ~.,data=mtcars)
AIC(fit4) # AIC of fit3 (by olsrr)< fit4 ie, fit 3 is better model.
