# Read data into R
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Subset the the data for February 1st and 2nd, 2007 
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Create a variable called "datetime" for the x axis of the plots by combining the "Date" and "Time" variabes into one, and converting
#them from character data into a format that displays the data as "day/month/year followed by hour:minute:second" 
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#Convert the variables needed for the analyses from characer data to numeric data
globalActivePower <- as.numeric(subSetData$Global_active_power)
voltnum <- as.numeric(subSetData$Voltage)
globalReactivePower <- as.numeric(subSetData$Global_reactive_power)
submet1 <- as.numeric(subSetData$Sub_metering_1)
submet2 <- as.numeric(subSetData$Sub_metering_2)
submet3 <- as.numeric(subSetData$Sub_metering_3)

#Open .png device 
png("plot4.png", width=480, height=480)

#Create the margins for the plot and specify that there are to be 4 plots arranged 2x2 in the field
par(mar= c(4,4,2,2))
par(mfrow = c(2, 2))

#Create the first plot (which will automatically be placed in the top left according to the "mfrow" plotting scheme used above)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

#Create the second plot (top right, per "mfrow" plotting scheme)
plot(datetime,voltnum, type= "l", xlab="datetime", ylab= "Voltage")

#Create the third plot (bottom left, per the "mfrow" plotting scheme)
plot(datetime, submet1, type="l", xlab="", ylab="Energy sub metering")
        lines(datetime, submet2, type="l", col="red")
        lines(datetime, submet3, type="l", col="blue")
legend("topright",legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1, col=c("black", "red", "blue"), bty="n")

#Create the fourth plot (bottom right, per the "mfrow" plotting scheme)
plot(datetime,globalReactivePower, type= "l", xlab="datetime", ylab= "Global_reactive_power")

#Close the png device
dev.off()