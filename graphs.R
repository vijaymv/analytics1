# Combined Plots
#plot, histogram, pie, boxplot, linechart, correlation plot

plot(women)
plot(women, type='p', pch=15, col='red') # p = point pch = plotting symbols
plot(women, type='l')
plot(women, type='b') # l = line p = point b = both
plot(women, type='b', pch=18, lty=2, col=2) 
plot(women, xlim=c(30,100), ylim=c(min(women$weight)-10, 200), pch=10)

#more features with plot
plot(x=women$weight, y=women$height, pch=15, xlab='Weight', ylab='Height', col='red', cex=2, type='b')
# cer for making dots stronger

title(main='Main Title', sub='Sub Title')
#see cheat sheet on base graphs
plot(women)
abline(lm(women$weight ~ women$height), col='red', lty=2, lwd=4) #lty = line type lwd = line width lm = to create linear regression model

#boxplot
boxplot(women$height)
abline(h=c(58, 62,65,68,72))

#draw lines on plot for number summary
summary(women)
quantile(women$height)
quantile(women$height, seq(0,1,.1))
quantile(women$height, seq(0,1,.01))
stem(women$height)
boxplot(women$height, col='green')
abline(h=quantile(women$height))
text(1+.2, quantile(women$height), labels=c('min','1Q','median','3Q','max'))

