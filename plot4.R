plot4 <- function() {
        ## Household Power multiple plots
        data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?", stringsAsFactors = F)
        datasub <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
        timeS <- paste(datasub$Date,datasub$Time)
        timeS <- strptime(timeS, format = "%d/%m/%Y %H:%M:%S")
        png(file = "plot4.png", width = 480, height = 480)
        par(mfrow = c(2,2))
        plot(timeS, datasub$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power")
        lines(timeS, datasub$Global_active_power)
        plot(timeS, datasub$Voltage, type = "n", xlab = "datetime", ylab = "Voltage")
        lines(timeS, datasub$Voltage)
        plot(timeS,datasub$Sub_metering_1,type = "n", ylab = "Energy sub metering", xlab ="")
        legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        lines(timeS,datasub$Sub_metering_1)
        lines(timeS,datasub$Sub_metering_2, col = "red")
        lines(timeS,datasub$Sub_metering_3, col = "blue")
        plot(timeS, datasub$Global_reactive_power, type = "n", xlab = "datetime", ylab = "Global_reactive_power")
        lines(timeS, datasub$Global_reactive_power)
        dev.off()        
}

