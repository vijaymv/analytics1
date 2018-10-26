# import/ export data
#check for files and folders

list.files('./data2')
list.files('./data')
file.exists("./data/mtcars.csv")

# reading from a flat file into vector
list.file('./data2')
data = scan("./data2/hhe",what = "character")
head(data)

#csv read form CSV


write.csv(iris, "./data/iris.csv",row.names=F) #first create as csv file form iris data set

# write to csv
read1 = read.csv(file="./data/iris.csv",header =TRUE,sep =",") #go to folder data and see iris.csv
str(read1);class(read1) # to find structure and class
head(read1)

#csv file from web
read_web1 = read.csv('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat')
head(read_web1)

#import from google sheets
library(gsheet)
url_gsheet = "https://docs.google.com/spreadsheets/d/1QogGSuEab5SZyZIw1Q8h-0yrBNs1Z_eEBJG7oRESW5k/edit#gid=107865534"
df_gsheet = as.data.frame(gsheet2tbl(url_gsheet))
head(df_gsheet)

#Import from Excel
# read in the first worksheet from the workbook myexcel.xlsx
# first row contains variable names
library(xlsx)

library(rJava)
Sys.setenv(JAVA_HOME='c:\\Program Files\\Java\\jrel1.8.0_181')

df_excel1 = read.xlsx("./data2/myexcel.xlsx", 1)
df_excel1
# read in the worksheet named mysheet
df_excel2a = read.xlsx("./data2/myexcel.xlsx", sheetName = "bowlers")
df_excel2a
df_excel2b = read.xlsx("./data2/myexcel.xlsx", sheetIndex = 2)
df_excel2b


