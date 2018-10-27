# factor

(gender = sample(c('M','F'),size= 20,replace=T))
summary(gender)
genderF = factor(gender)
summary(genderF)


(likscale = sample(c('ex','gd','sat','poor'),size = 20,replace = T))
summary(likscale)

faclkrt = factor(likscale)
faclkrt
summary(faclkrt)
class(faclkrt)

(likscaleOF =factor(likscale, ordered = T, levels = c('poor','sat','gd','ex'))) # we are giving the order for the scale which is to be printed.
summary(likscaleOF)
likscaleOF

barplot(table(faclkrt),col=1:4)
barplot(table(likscaleOF),col=1:4)

        