#plot1.R
library(data.table)
library(dplyr)
library(datasets)
source("read_data.R")

data <- read_data()                       # call to the function read_data to 
                                          # get the data from the file

png("plot1.png", width=480, height=480)   # define the size of the image

# Define the plot with "x","y" labels and color
hist(data$Global_active_power, col="red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")

dev.off()
