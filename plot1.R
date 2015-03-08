#plot1.R
library(data.table)
library(dplyr)
library(datasets)
source("read_data.R")

data <- read_data()

png("plot1.png", width=480, height=480)

hist(data$Global_active_power, col="red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")

dev.off()
