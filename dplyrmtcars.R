#analysis of dataset mtcars using dplyr
# file name :dplyr-mtcars.R

#learn to use deplyr package for mtcars datasets

library(dplyr)
?mtcars

str(mtcars)# finding structure of dataset
dim(mtcars) # finding rows x columns
names(mtcars) #col names
rownames(mtcars) #row names
summary(mtcars) # summary

#summary activities on mtcars

t1 = table(mtcars$am) # to find the number of cars having automatic transmission
pie(t1)
pie(t1, labels =c('auto','manual')) #pie plot for am

t2 = table(mtcars$gear)
t2
pie(t2,labels = c('three','four','five')) #pie plot for gear
barplot(t2,col=1:3,xlab ='gears',ylab='no of cars',ylim=c(0,20)) # bar plot for gear
title(main ='Distribution of Gears of cars',sub='nonof gears')

#using dlpyr %>% is chaining function
mtcars %>% select(mpg) %>% slice(1:5) #slice for row and select for columns
mtcars %>% select(mpg,gear) %>% slice(c(1:5,10))
mtcars %>% arrange(mpg)
mtcars %>% arrange(am, desc(mpg)) %>% select(am,mpg) #descending order of milage and ascending order of am
mtcars %>% mutate(rn = rownames(mtcars)) %>% select(rn,mpg) #display row name with mpg
mtcars %>% slice(seq(1,32,2)) # select every alternate row
mtcars %>% sample_n(3) #to get a random number of cars
mtcars %>% select(sample(x=c(1:11),size=2)) %>% head # to select ramdom column
mtcars %>% mutate(newmpg =mpg *1.1)
mtcars %>% group_by(am) %>% summarise(mpgMean = mean(mpg),MaxHP = max(hp),MinWT =min(wt))
mtcars %>% group_by(carb) %>% summarise(mpgMean = mean(mpg),MaxHP = max(hp),MinWT =min(wt))
count(mtcars,carb)
