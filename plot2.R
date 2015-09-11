setwd("~/Documents/Coursera//Exploratory_Data_Analysis/Assignment_1/")
data <- read.table("household_power_consumption.txt", na.strings = "?", sep= ";", header = T, stringsAsFactors = F)


subdata <- data[ data$Date %in% c("1/2/2007", "2/2/2007"), ]

act_power <- as.numeric(subdata$Global_active_power)
date <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")


png(filename = "plot2.png", width = 480, height = 480)
plot( x = date, y = act_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)" )
dev.off()