setwd("~/Documents/Coursera//Exploratory_Data_Analysis/Assignment_1/")
data <- read.table("household_power_consumption.txt", na.strings = "?", sep= ";", header = T, stringsAsFactors = F)


subdata <- data[ data$Date %in% c("1/2/2007", "2/2/2007"), ]

png(filename = "plot1.png", width = 480, height = 480)
hist(subdata$Global_active_power, col = "red", xlab ="Global_active_power", main = "Global_active_power" )
dev.off()
