data <- read.table(unz('exdata_data_household_power_consumption.zip', 'household_power_consumption.txt'), header=TRUE, sep=";", colClasses=c('character', 'character', rep('numeric', 7)), na.strings='?')
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data <- data[(data$Date == '2007-02-01' | data$Date == '2007-02-02'),]
png(file="plot1.png")
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
dev.off()