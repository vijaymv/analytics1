# custuring simple example

marks1 = ceiling(rnorm(10,6,2))
marks2 = ceiling(rnorm(10,5,2))
df= data.frame(marks1,marks2)
df
km = kmeans(df,centers = 2)
km$cluster
df2 =cbind(df,cluster=km$cluster)
df2[order(df2$cluster),]
plot(df$marks1,df$mark2,col =2:3,)
