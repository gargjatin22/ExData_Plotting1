getwd()
setwd("C:/Users/jatin/Documents/Rcode/household_power_consumption")
rm(list = ls())

hpc <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
hpc$Date = as.Date(hpc$Date,"%d/%m/%Y")
hpc <- subset(hpc,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))
hpc <- hpc[complete.cases(hpc),]
dateTime <- paste(hpc$Date, hpc$Time)
dateTime <- setNames(dateTime, "DateTime")
hpc <- hpc[ ,!(names(hpc) %in% c("Date","Time"))]
hpc <- cbind(dateTime,hpc)
hpc$dateTime <- as.POSIXct(dateTime)
rm(dateTime)

