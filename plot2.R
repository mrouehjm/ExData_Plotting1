plot2 <- function() {
        ## Household Power Consumption plot versus days
        data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?", stringsAsFactors = F)
        datasub <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
        timeS <- paste(datasub$Date,datasub$Time)
        timeS <- strptime(timeS, format = "%d/%m/%Y %H:%M:%S")
        png(file = "plot2.png", width = 480, height = 480)
        plot(timeS,datasub$Global_active_power,type = "n", ylab = "Global Active Power (kilowatts)", xlab ="")
        lines(timeS,datasub$Global_active_power)
        dev.off()        
}

