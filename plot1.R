plot1 <- function() {
        ## Household Power Consumption plots
        data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?", stringsAsFactors = F)
        datasub <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
        timeS <- paste(datasub$Date,datasub$Time)
        timeS <- strptime(timeS, format = "%d/%m/%Y %H:%M:%S")
        png(file = "plot1.png", width = 480, height = 480)
        hist(datasub$Global_active_power, main = "Global Active Power", col = "orangered", xlab = "Global Active Power (kilowatts)")
        dev.off()        
}

