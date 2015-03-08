#plot3.R
library(data.table)
library(dplyr)
library(datasets)
source("read_data.R")

data <- read_data()                       # call to the function read_data to 
                                          # get the data from the file

png("plot3.png", width=480, height=480)   # define the size of the image


# Define the plot with x and y labels, color, and different lines and the related variables
plot(data$Time,data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", col="black")
lines(data$Time, data$Sub_metering_2, col="red")
lines(data$Time, data$Sub_metering_3, col="blue")

# Define the legend with the different variables and the colors
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col=c("black", "red", "blue"), lty=c(1,1,1))

dev.off()
