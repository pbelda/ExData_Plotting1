setwd("~/Documents/Coursera//Exploratory_Data_Analysis/Assignment_1/")
data <- read.table("household_power_consumption.txt", na.strings = "?", sep= ";", header = T, stringsAsFactors = F)


subdata <- data[ data$Date %in% c("1/2/2007", "2/2/2007"), ]

submet1 <- as.numeric(subdata$Sub_metering_1)
submet2 <- as.numeric(subdata$Sub_metering_2)
submet3 <- as.numeric(subdata$Sub_metering_3)

date <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")


png(filename = "plot3.png", width = 480, height = 480)
plot( x = date, y = submet1, type = "l", xlab = "", ylab = "Energy sub metering")
legend( x = "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
lines(x = date, y = submet2, type = "l", col = "red")
lines(x = date, y = submet3, type = "l", col = "blue")
dev.off()