#Read relevant data and tronsform the date and time varibles into Time objects stored
#in dates_of_measurement
power_data <- read.table("./exdata_data_household_power_consumption/household_power_consumption.txt", na.strings = "?", nrows = 2880, col.names = c('Date','Time','Global_active_power','Global_reactive_power','Voltage','Globale_intensity','Sub_metering_1','Sub_metering_2','Sub_metering_3'), sep = ';', skip = 66637)
dates_of_measurement <- with(power_data, strptime(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"))
#Generate plot4
par(mfcol = c(2,2))

#Generates plot4(1,1)
plot(dates_of_measurement, power_data$Global_active_power, xlab = '', ylab = "Global Active Power", type = "n")
lines(dates_of_measurement, power_data$Global_active_power)

#Generates plot4(2,1)
plot(dates_of_measurement, power_data$Sub_metering_1, xlab = '', ylab = "Engergy sub metering", type = "n")
lines(dates_of_measurement, power_data$Sub_metering_1)
lines(dates_of_measurement, power_data$Sub_metering_2, col = "red")
lines(dates_of_measurement, power_data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = c(1,1,1,1), col = c("black", "red", "blue"))

#Generates plot4(1,2)
plot(dates_of_measurement, power_data$Voltage, type = 'n', xlab = 'datetime', ylab = 'Voltage')
lines(dates_of_measurement, power_data$Voltage)

##Generates plot4(2,2)
plot(dates_of_measurement, power_data$Global_reactive_power, type = 'n', xlab = 'datetime', ylab = 'Global_reactive_power')
lines(dates_of_measurement, power_data$Global_reactive_power)
