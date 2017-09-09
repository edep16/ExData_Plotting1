#Read relevant data 
power_data <- read.table("./exdata_data_household_power_consumption/household_power_consumption.txt", na.strings = "?", nrows = 2880, col.names = c('Date','Time','Global_active_power','Global_reactive_power','Voltage','Globale_intensity','Sub_metering_1','Sub_metering_2','Sub_metering_3'), sep = ';', skip = 66637)

#Generate the plot1
par(mfrow = c(1,1))

with(power_data, hist(Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))