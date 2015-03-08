#Read Data
library(data.table)
library(dplyr)
library(datasets)

# Read the household_power_consumption.txt file
# merge the columns Date and Time with format
# filter the data related to the days 2007/02/01 and 2007/02/02
# return the data

read_data <- function(){
  data <- read.table("household_power_consumption.txt", 
                     sep=";", header=T, stringsAsFactors=F, na.strings="?",
                     colClasses=c(rep("character",2), rep("numeric",7)),
                     dec=".")
  
  data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  data$Date <- as.Date(data$Date,format="%d/%m/%Y")
  
  dates <- as.Date(c("2007/02/01", "2007/02/02"), "%Y/%m/%d")
  data <- subset(data, Date %in% dates)
  data
}