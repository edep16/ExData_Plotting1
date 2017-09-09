#Read relevant data and tronsform the date and time varibles into Time objects stored
#in dates_of_measurement 
power_data <- read.table("./exdata_data_household_power_consumption/household_power_consumption.txt", na.strings = "?", nrows = 2880, col.names = c('Date','Time','Global_active_power','Global_reactive_power','Voltage','Globale_intensity','Sub_metering_1','Sub_metering_2','Sub_metering_3'), sep = ';', skip = 66637)
dates_of_measurement <- with(power_data, strptime(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"))

#Generate plot2
par(mfrow = c(1,1))

plot(dates_of_measurement, power_data$Global_active_power, xlab = '', ylab = "Global Active Power (kilowatts)", type = "n")
lines(dates_of_measurement, power_data$Global_active_power)