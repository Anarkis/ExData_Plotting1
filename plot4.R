#plot4.R
library(data.table)
library(dplyr)
library(datasets)
source("read_data.R")

data <- read_data()                       # call to the function read_data to 
                                          # get the data from the file

png("plot4.png", width=480, height=480)   # define the size of the image

par(mfrow = c(2,2))                       # 2x2 plots will be in the image

# First plot: Global Active Power
plot(data$Time,data$Global_active_power, type="l", ylab="Global Active Power", xlab="")

# Second plot: Voltage/Datetime
plot(data$Time,data$Voltage, type="l", ylab="Voltage", xlab="datetime")

# Third plot: Energy sub metering
plot(data$Time,data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="",
     col="black")
lines(data$Time, data$Sub_metering_2, col="red")
lines(data$Time, data$Sub_metering_3, col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col=c("black", "red", "blue"), lty=c(1,1,1), bty="n")

# Fourth plot: Global reactive power / datetime
plot(data$Time,data$Global_reactive_power, type="l",xlab="datetime")
  


dev.off()
