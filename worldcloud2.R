#Word Cloud 2

#(https://www.r-graph-gallery.com/the-wordcloud2-library/)

# library : install it first
library(wordcloud2) 

# have a look to the example dataset
head(demoFreq)

word = c('hardwork','skill','dedication','determination','passion','analytics','mamba mentality','black mamba')
freq = c(35,20,15,25,22,35,22,33)
df1 = data.frame(word,freq)
rownames(df1) = word
head(df1)
wordcloud2(df1, size=.8, backgroundColor="black", shape = 'star')

wordcloud2(demoFreq, size=1.6)

# Gives a proposed palette
wordcloud2(demoFreq, size=1.6, color='random-dark')

# or a vector of colors. vector must be same length than input data
wordcloud2(demoFreq, size=1.6, color=rep_len( c("green","blue"), nrow(demoFreq) ) )

# Change the background color
wordcloud2(demoFreq, size=1.6, color='random-light', backgroundColor="black")


# Change the shape:
wordcloud2(demoFreq, size = 0.7, shape = 'star')
#It is possible to change the shape of the wordcloud. Several shapes are available within the package: 'circle' (default), 'cardioid', 'diamond' (alias of square), 'triangle-forward', 'triangle', 'pentagon', and 'star').

#It is also possible to use any image you have as a mask! Just insert the image in the current working directory and use it as in the code below
# Change the shape using your image - not working
#wordcloud2(demoFreq, figPath = "peace.png", size = 1.5, color = "skyblue", backgroundColor="black")


#rotation
ww=wordcloud2(demoFreq, size = 2.3, minRotation = -pi/6, maxRotation = -pi/6, rotateRatio = 1)
ww

#chinese
demoFreqC
wordcloud2(demoFreqC, size = 2, fontFamily = "????????????", color = "random-light", backgroundColor = "grey")


#notworking : clear the plot area
#The lettercloud function allows to use a letter or a word as a shape for the wordcloud.
letterCloud( demoFreq, word = "R", color='random-light' , backgroundColor="blue")
letterCloud( demoFreq, word = "PEACE", color="white", backgroundColor="pink")


#see the link : https://www.r-graph-gallery.com