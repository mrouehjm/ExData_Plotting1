plot3 <- function() {
        ## Household Power metering plot
        data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?", stringsAsFactors = F)
        datasub <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
        timeS <- paste(datasub$Date,datasub$Time)
        timeS <- strptime(timeS, format = "%d/%m/%Y %H:%M:%S")
        png(file = "plot3.png", width = 480, height = 480)
        plot(timeS,datasub$Sub_metering_1,type = "n", ylab = "Energy sub metering", xlab ="")
        legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        lines(timeS,datasub$Sub_metering_1)
        lines(timeS,datasub$Sub_metering_2, col = "red")
        lines(timeS,datasub$Sub_metering_3, col = "blue")
        dev.off()        
}

