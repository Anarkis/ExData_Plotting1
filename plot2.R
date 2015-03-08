#plot2.R
library(data.table)
library(dplyr)
library(datasets)
source("read_data.R")

data <- read_data()

png("plot2.png", width=480, height=480)

plot(data$Time,data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)")

dev.off()
