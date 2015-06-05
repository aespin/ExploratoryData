#Setting working directory
setwd("C:/Users/a.espin/Downloads")
#Reading document
electricity <- read.table("household_power_consumption.txt", header = T, sep=";", comment.char="%", stringsAsFactors=FALSE, na.strings="?")
#subsetting data to ensure that we use only data required for February 1 and 2
dataplott<- subset(electricity, electricity$Date=="1/2/2007"|electricity$Date=="2/2/2007") 
#Plot
library("ggplot2")
qplot <-  ggplot(data=dataplott, aes(x=dataplott$Time, y=dataplott$Global_active_power, colour=black))
qplot<-qplot+geom_line()
