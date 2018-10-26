# data analysis using pacjkage dplyr
df1
library(dplyr)

#install.packages(dplyr)

df1 %>% group_by(gender)  %>% summarise(mean(marks), mean(marks2))

df1 %>% group_by(gender)  %>% summarise(mean(marks), min(marks2))
