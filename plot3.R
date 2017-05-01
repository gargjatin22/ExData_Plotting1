getwd()
setwd("C:/Users/jatin/Documents/Rcode/household_power_consumption")
rm(list = ls())

source("load_data.R")

png(filename='plot3.png', width=480, height=480, units='px')

with(hpc, {
  plot(Sub_metering_1~dateTime, type="l",
       ylab="Energy Sub meeting", xlab="")
  lines(Sub_metering_2~dateTime,col='Red')
  lines(Sub_metering_3~dateTime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()