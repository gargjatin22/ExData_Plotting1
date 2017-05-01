getwd()
setwd("C:/Users/jatin/Documents/Rcode/household_power_consumption")
rm(list = ls())

source("load_data.R")

png(filename='plot2.png', width=480, height=480, units='px')


plot(hpc$Global_active_power~hpc$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

dev.off()