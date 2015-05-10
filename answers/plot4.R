#package for getZip()
require("Hmisc")
#load in and format dates
#data <- read.table(getZip("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"), header=TRUE, sep=";", colClasses=c('character', 'character', rep('numeric', 7)), na.strings='?')
#data$Date <- as.Date(data$Date, format="%d/%m/%Y")
#select sepecific dates
#data <- data[(data$Date == '2007-02-01' | data$Date == '2007-02-02'),]
#format times
#data$Time <- paste(as.character(data$Date), data$Time)
#data$Time <- strptime(data$Time, format="%Y-%m-%d %H:%M:%S")

#generate plot
png(file="answers/plot4.png")
par(mfrow=c(2,2))
with(data, {
  plot(Time, Global_active_power, type="l", xlab="", ylab="Global Active Power")
  plot(Time, Voltage, type="l", xlab="datetime", ylab="Voltage")
  plot(Time, Sub_metering_1, type='l', xlab="", ylab="Energy sub metering")
  lines(Time, Sub_metering_2, col='red')
  lines(Time, Sub_metering_3, col="blue")
  legend("topright", col=c('black','red','blue'), lty=c(1,1,1), legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
  plot(Time, Global_reactive_power, type='l', xlab="datetime")
})
dev.off()