x1 = 2
x2 = 3
x1
x2
(x3=4)
data()
data(women)
?women
?mtcars
mtcars
attach(mtcars)
mtcars$mpg
attach(mtcars)
library()
?library
mpg # after attachging we can direclty access mpg variable
rm(list =ls(all = TRUE)) # to delete all the varibles.
?mean # ? means seeking help
x <- c(0:10, 50)
x
print(x)
xm <- mean(x)
xm
c(xm, mean(x, trim = 0.10))# concatinating mean with another mean but trimming the extreme 10%

# create values but not assigned
1:100
seq(0,100,by =2) #to get even numbers
seq(1,10,length.out =5) # divide 1 to 10 in 5 parts
x = c(0:10,0:100)
x
rep(c(1,4),times = 4) # to repeat 1,4 four times
rep(c(1,4),times =c(2,6) # to repeat 1 twice and 4 six times
Sys.Date() #todays
plot(1:10) # to plot a graph

# TO CLEAR CONSOLE CNTRL + L
source('test1.R') # to run all the script at once

