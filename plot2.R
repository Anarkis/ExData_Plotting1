#plot2.R
library(data.table)
library(dplyr)
library(datasets)
source("read_data.R")

data <- read_data()                       # call to the function read_data to 
                                          # get the data from the file

png("plot2.png", width=480, height=480)   # define the size of the image

# Define the plot with x and y labels
plot(data$Time,data$Global_active_power, type="l",xlab="", ylab="Global Active Power (kilowatts)")

dev.off()
