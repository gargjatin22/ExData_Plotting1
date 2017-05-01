getwd()
setwd("C:/Users/jatin/Documents/Rcode/household_power_consumption")
rm(list = ls())

source("load_data.R")

png(filename='plot1.png', width=480, height=480, units='px')
hist(hpc$Global_active_power,main = "Global Active Power",xlab = "Global Active Power (kilowatts)",col = "red")
dev.off()