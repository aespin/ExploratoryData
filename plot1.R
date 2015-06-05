#Setting working directory
setwd("C:/Users/a.espin/Downloads")
#Reading document
electricity <- read.table("household_power_consumption.txt", header = T, sep=";", comment.char="%", stringsAsFactors=FALSE, na.strings="?")
#subsetting data to ensure that we use only data required for February 1 and 2
dataplott<- subset(electricity, electricity$Date=="1/2/2007"|electricity$Date=="2/2/2007") 
#Plot
plot1 <- hist(dataplott$Global_active_power, col = "red", main="Global active power", xlab = "Global active power (Kilowatts)")
plot1 <- png("plot1.png", width=480, height=240, res=120)
dev.copy(png,'plot1.png')
dev.off()
