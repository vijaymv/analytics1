#datastructure

#vectors

x = 1:10
x
x1 = 1:20
x1

(x1=1:30)
(x2=(c(1,4,5,5)))
x2
(x3=letters[1:10]) # to print a to j
class(x3)
LETTERS[1:26] # TO PRINT A TO Z using LETTERS FUNCTION
(x3b = c('a',"dhiraj","4")) # cannot mix data types in vectors. output will be all charactor
class(x3b)

(x4=c(T,FALSE,TRUE,T,F))
class(x4)
x2b = c(2L, 3L, 4L) #to get numeric vector not integer
x2b
LETTERS[seq(1,26,2)] 
# access elements
(x6 = seq(0,100,by=3))
length(x6) #to find the number of elements in the variable
x6[3] # access the 3rd value
x6
x6[seq(1, length(x6),2)]
x6[-1] # access al but 1st element
rev(x6) # to print reverse
x6[c(2.4,3.54)] # real number truncation
x6[-c(1,5,20)]
x7 = c(x6,x2)
x7 
(x6 = sample(1:20)) # to get random samples
sort(x6[-c(1,2)])

set.seed(12)
(x6 = sample(1:20))
sort(x6[-c(2,4)])
(x = -3:2)
x[2]= 10 # modify second element
x

x = 1:50
x< 5
x[x<4 | x>6] # to ge values less than 4 and greater than 6
x[x<4 | x>6] = 100
x
 ######################     matrix   #######################
(m1 = matrix(100:111, nrow =4))
(m2 = matrix(100:111, ncol =3))

m3 = matrix(1:50, ncol=6)
class(m3)
attributes(m3)
m3 = matrix(x,ncol=6)

m1
m1[1,] # 1st row
m1[1,2:3]
m1[c(1,3)] # 1st and 3rd element of 1st column

paste("c","d",sep="-") # to concatinate two chars with -

(colnames(m1) = paste('c',1:3, sep='')) # to give name to the columns
m1
(rownames(m1) = paste('a',1:4,sep =' '))
m1
colSums(m1) # to ge the sum of columns
colMeans(m1) #to ge the mean of columns
colMeans(m1) ;rowMeans(m1) # to print both
attributes(m1)

t(m1) # transpose
m1
sweep(m1, MARGIN = 1, STATS = c(2,3,4,5), FUN="+") 
sweep(m1, MARGIN = 2, STATS = c(2,3,4), FUN="+")  # ROWWISE
m1
addmargins(m1,margin = 2,sum) #add column wise
m1
addmargins(m1,1,mean) # to get the value at centre
cbind(m1,rowSums(m1)) # to add columnwise
m1
round(addmargins(m1,1,sd),2) #colwise functn
addmargins(m1,c(1,2),mean) # row and col wise functn
addmargins(m1,c(1,2),list(list(mean,sum,max), list(var,sd)))

