##question1
data1=read.csv(file="data.csv",header=T)
head(data1)

x=data1[,1]
y1=data1[,2]
y2=data1[,3]

install.packages("plotrix")
library(plotrix)
xpos=1:15

fName = "rate1.pdf"
pdf(file=fName,width=7.5,height=5)

twoord.plot(xpos,y1,xpos,y2,lcol=2,rcol=4,xlab="Monthly_rent_specified_renter_units",ylab="Second_Quarter_2017 Rental_Vacancy_Rate",rylab="Second_Quarter_2018_Rental_Vacancy_Rate",type=c("bar","b"),xticklab=x,halfwidth=0.2)

dev.off()

##question 2
install.packages("tidyverse")
install.packages("micromapST")

library(tidyverse)
library(micromapST)

data <- read.csv(
  file="Table.csv",
   header=T)
head(data)      

panelDesc <- data.frame(
type=c('map','id','dot','dot'),
lab1=rep("",4),
lab2=c('' ,'','Second.Quarter.2018','Second.Quarter.2017'),
lab3=c('','','Rental Vacancy Rate','Rental Vacancy Rate'),
col1 = c(NA,NA,'Second.Quarter.2018','Second.Quarter..2017')
)

The transpose of the description file is suggestive of the
the plot appearance. 

t(panelDesc) 

fName = "rate.pdf"
pdf(file=fName,width=5,height=10)

micromapST(data, panelDesc,
  rowNamesCol='State',
  rowNames='full',
  sortVar='Second.Quarter.2018',ascend=FALSE,
  title=c("Rental Vacancy Rate in USA"),
  ignoreNoMatches=TRUE)

dev.off()